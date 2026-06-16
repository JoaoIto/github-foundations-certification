# Caso de Uso Prático: Tokens de Acesso Pessoal (PAT) e Linha de Comando

## Cenário
Você usa 2FA (Autenticação de Dois Fatores) no GitHub e, como sua empresa ativou o SAML SSO, você não pode usar sua senha da interface web para se autenticar quando faz operações do Git via terminal HTTPS. Você precisa criar um Token e configurá-lo.

## Objetivo
Gerar um Personal Access Token (PAT) com os escopos corretos, autorizá-lo para a Organização (SAML SSO) e usá-lo para autenticar no terminal (bash).

## Passo a Passo

### 1. Criando o PAT (Interface Web)
1. Vá em **Settings** > **Developer settings** > **Personal access tokens** > **Tokens (classic)** (ou use os novos Fine-grained tokens).
2. Clique em **Generate new token**.
3. Selecione o escopo principal `repo` (Acesso completo a repositórios privados).
4. Clique em **Generate token** e copie a string alfanumérica gerada (ex: `ghp_1234abcd...`).

### 2. Autorizando o PAT para o SSO Corporativo
Como sua empresa usa SSO, o token não funcionará nos repositórios da empresa até você "autorizá-lo".
1. Na lista de tokens, clique no botão **Configure SSO** ao lado do token que você acabou de criar.
2. Clique em **Authorize** ao lado do nome da sua Organização/Empresa. O GitHub pedirá para você fazer o login no provedor da sua empresa (ex: tela da Microsoft).

### 3. Usando o Token no Terminal (Bash)

Agora, simularemos como o `git` usaria esse token na prática.

```bash
# 1. Tente clonar um repositório corporativo privado (via HTTPS)
git clone https://github.com/SuaEmpresa/projeto-secreto.git

# 2. O terminal vai pedir seu "Username"
# Digite seu nome de usuário do GitHub (ex: JoaoIto)

# 3. O terminal vai pedir sua "Password"
# AQUI ESTÁ O SEGREDO: NÃO DIGITE SUA SENHA.
# Cole o PAT (Personal Access Token) que você gerou e autorizou (ex: ghp_1234abcd...).
```

### Automatizando a Autenticação (Git Credential Manager)

Para não ter que colar o token toda vez, você pode mandar o Git guardar as credenciais:

```bash
# Para Windows:
git config --global credential.helper manager-core

# Para Mac:
git config --global credential.helper osxkeychain

# Para Linux:
git config --global credential.helper cache
```

### Alternativa: GitHub CLI (`gh`)

A maneira mais moderna de evitar lidar com tokens manualmente é usar a CLI oficial do GitHub.

```bash
# Instale a gh CLI (se não tiver) e inicie o processo de login
gh auth login

# O prompt interativo vai perguntar se você quer fazer login no GitHub.com ou GitHub Enterprise.
# Depois, vai abrir seu navegador padrão.
# Você fará o login, a aprovação do SSO (se necessário), e a CLI salvará um token de OAuth super seguro automaticamente no seu sistema.

# Testando se funcionou (veja seus repositórios da empresa):
gh repo list SuaEmpresa
```
