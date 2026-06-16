# Caso de Uso Prático: Inicializando e Versionando um Projeto Local

## Cenário
Você acabou de iniciar um novo projeto web localmente e precisa começar a rastrear as alterações usando o Git antes de enviá-lo para o GitHub.

## Objetivo
Inicializar um repositório Git, criar arquivos iniciais, preparar (stage) esses arquivos e realizar o primeiro commit.

## Passo a Passo e Comandos

```bash
# 1. Crie uma nova pasta para o projeto e entre nela
mkdir meu-novo-projeto
cd meu-novo-projeto

# 2. Inicialize o repositório Git
git init
# Saída esperada: Initialized empty Git repository in /caminho/meu-novo-projeto/.git/

# 3. Crie um arquivo inicial (ex: um script Python ou HTML)
echo "print('Olá, GitHub Foundations!')" > main.py

# 4. Verifique o status. O Git verá o arquivo como 'Untracked' (não rastreado)
git status
# O arquivo main.py estará em vermelho.

# 5. Adicione o arquivo à Staging Area (Preparação)
git add main.py

# 6. Verifique o status novamente
git status
# O arquivo main.py agora estará em verde (Changes to be committed).

# 7. Faça o commit para salvar a alteração no repositório local
git commit -m "feat: commit inicial do projeto"

# 8. Verifique o histórico de commits
git log --oneline
```

> [!IMPORTANT]
> Lembre-se: Neste ponto, as alterações estão **apenas no seu computador (local)**. O repositório ainda não tem conexão com o GitHub. Isso será abordado em módulos posteriores.
