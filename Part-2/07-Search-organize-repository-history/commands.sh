#!/bin/bash

# ==============================================================================
# Script: Part-2/07-Search-organize-repository-history/commands.sh
# Objetivo: Demonstrar o uso do git blame, busca no log e formatação de cross-linking
# ==============================================================================

echo "Iniciando demonstração de investigação de código..."

# 1. Preparar o repositório de teste
mkdir demo-history && cd demo-history
git init

# Criar um arquivo simulando o bug
echo "function Sidebar() {" > sidebar.js
echo "  return 'Sidebar Normal';" >> sidebar.js
echo "}" >> sidebar.js
git add sidebar.js
# Simulamos uma configuração de usuário para os commits
git config user.name "Alice Dev"
git config user.email "alice@empresa.com"
git commit -m "feat: cria sidebar inicial"

# Outro dev faz uma alteração que causa o "bug"
git config user.name "Bob Dev"
git config user.email "bob@empresa.com"
echo "function Sidebar() {" > sidebar.js
echo "  return 'Sidebar QUEBRADA';" >> sidebar.js
echo "}" >> sidebar.js
git add sidebar.js
git commit -m "fix: ajusta margens da sidebar"

# 2. Investigando com Git Blame
echo "--------------------------------------------------------"
echo "-> 1. O código quebrou na linha 2. Vamos usar o git blame para ver quem alterou:"
echo "$ git blame sidebar.js"
git blame sidebar.js
echo ""

# 3. Pesquisando palavras-chave no histórico do Git
echo "-> 2. Como pesquisar a palavra 'sidebar' no histórico local:"
echo "$ git log -S 'sidebar'"
git log -S 'sidebar'
echo "--------------------------------------------------------"

echo "Na interface do GitHub, a resolução seria:"
echo "1. Abrir a Issue #42."
echo "2. Deixar o comentário: \"@bob-dev, parece que o commit (hash do commit do bob) causou o erro.\""
echo "3. Ao criar a nova branch para corrigir, colocar no PR a tag: 'Closes #42'."

cd ..
rm -rf demo-history
