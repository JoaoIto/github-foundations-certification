# Caso de Uso Prático: Padronizando o Ambiente com Codespaces

## Cenário
Sua equipe passa por muitas dificuldades quando um novo desenvolvedor entra. Configurar Python, PostgreSQL, instalar extensões no VS Code... Você decide resolver isso criando uma configuração de Codespace.

## Objetivo
Criar a configuração de um Devcontainer que garanta que todo desenvolvedor que abrir o repositório terá um ambiente Python já pronto para rodar.

## Passo a Passo (Simulação Local e no GitHub)

### 1. Criando a estrutura de configuração localmente

Na raiz do seu projeto local, você precisa criar a pasta do Devcontainer.

```bash
# 1. Crie o diretório de configuração do devcontainer
mkdir .devcontainer
cd .devcontainer

# 2. Crie o arquivo principal de configuração
touch devcontainer.json

# 3. Defina a configuração no arquivo devcontainer.json
```

**Conteúdo de `devcontainer.json`:**
```json
{
    "name": "Meu Projeto Python",
    "image": "mcr.microsoft.com/devcontainers/python:3.10",
    "customizations": {
        "vscode": {
            "extensions": [
                "ms-python.python",
                "ms-python.vscode-pylance"
            ]
        }
    },
    "postCreateCommand": "pip install -r requirements.txt"
}
```

### 2. Enviando para o GitHub

```bash
cd ..
# Crie um requirements fake apenas para teste
echo "requests" > requirements.txt

git add .devcontainer/devcontainer.json requirements.txt
git commit -m "build: adiciona configuracao do codespaces para python"
git push origin main
```

### 3. A Experiência do Novo Desenvolvedor (No GitHub)

Agora, o fluxo de um novo membro da equipe não envolve o terminal local:
1. Ele acessa a página do repositório no GitHub.
2. Clica no botão verde **Code**.
3. Seleciona a aba **Codespaces**.
4. Clica em **Create codespace on main**.

> [!IMPORTANT]
> A partir desse momento, uma máquina na nuvem será provisionada com o sistema operacional base, instalará o Python 3.10, iniciará um VS Code Web, instalará as extensões de Python para a IDE e, por fim, rodará `pip install -r requirements.txt`. Em poucos instantes, o dev está pronto para trabalhar sem instalar nada na própria máquina!

### Comandos úteis da CLI do GitHub (para gerenciar Codespaces)

Se você instalar o GitHub CLI (`gh`), você pode gerenciar Codespaces pelo terminal local:

```bash
# Lista todos os seus codespaces ativos
gh codespace list

# Conecta o terminal local via SSH a um codespace rodando na nuvem
gh codespace ssh

# Para o codespace (para de cobrar horas de uso)
gh codespace stop
```
