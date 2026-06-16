# GitHub Foundations - Bash Commands Cheatsheet

Este arquivo compila os principais comandos Bash e Git utilizados ao longo da preparação para a certificação do GitHub Foundations, focados em cenários práticos do dia a dia.

## 1. Configuração Inicial e Autenticação
```bash
# Configurar nome e e-mail globalmente
git config --global user.name "Seu Nome"
git config --global user.email "seuemail@exemplo.com"

# Fazer login usando a CLI oficial do GitHub (Recomendado para SSO e 2FA)
gh auth login

# Armazenar credenciais Git no Windows (evita digitar token sempre)
git config --global credential.helper manager-core
```

## 2. Inicializando um Projeto Localmente
```bash
# Criar pasta e entrar nela
mkdir meu-projeto && cd meu-projeto

# Inicializar o repositório Git
git init

# Adicionar todos os arquivos à Staging Area
git add .

# Criar o primeiro commit
git commit -m "feat: commit inicial do projeto"
```

## 3. Conectando e Trabalhando com Repositórios Remotos
```bash
# Clonar um repositório existente
git clone https://github.com/usuario/repo.git

# Adicionar um link remoto (quando o projeto começou localmente)
git remote add origin https://github.com/usuario/repo.git

# Verificar as conexões remotas
git remote -v

# Enviar (push) o código para a branch main na primeira vez
git push -u origin main

# Puxar (pull) as alterações mais recentes do remoto para o local
git pull origin main
```

## 4. O Fluxo de Branches e Pull Requests (GitHub Flow)
```bash
# Criar e já mudar para uma nova branch
git checkout -b feature-login
# Ou usando a sintaxe mais nova: git switch -c feature-login

# (Após alterar arquivos) Adicionar arquivos modificados
git add arquivo-modificado.js

# Fazer o commit
git commit -m "feat: adiciona validacao de login"

# Enviar a nova branch para o GitHub
git push -u origin feature-login

# Criar um Pull Request rapidamente usando a CLI do GitHub
gh pr create --title "Adiciona Validação de Login" --body "Resolve a issue #42 adicionando regex de email"
```

## 5. Contribuindo para Open Source (Fork and Pull)
```bash
# 1. (No GitHub) Faça o Fork do projeto.
# 2. Clone O SEU fork para o seu computador
git clone https://github.com/SeuUsuario/ProjetoOpenSource.git

# 3. Adicione o repositório ORIGINAL como "upstream"
git remote add upstream https://github.com/MantenedorOriginal/ProjetoOpenSource.git

# 4. Atualize a sua branch main local com as alterações do projeto original
git fetch upstream
git checkout main
git merge upstream/main

# 5. Crie sua branch, modifique e faça o push
git checkout -b fix-bug-xyz
# ... altera arquivos ...
git commit -m "fix: resolve o bug xyz"
git push -u origin fix-bug-xyz

# 6. Abra o Pull Request pela interface web do GitHub.
```

## 6. GitHub Codespaces (Gerenciamento via CLI)
```bash
# Listar os codespaces que você tem ativos
gh codespace list

# Conectar ao terminal do codespace remotamente (SSH)
gh codespace ssh

# Parar um codespace (para não consumir cota gratuita/paga de inatividade)
gh codespace stop
```

## 7. Dependabot e Vulnerabilidades (Testando Local)
```bash
# Se o Dependabot criou uma branch chamada dependabot/npm_and_yarn/lodash-4.17.21
# e você quer testar antes de dar o merge:

# Atualize sua lista de branches locais
git fetch origin

# Mude para a branch do bot
git checkout dependabot/npm_and_yarn/lodash-4.17.21

# Instale e teste
npm install
npm test
```
