#!/bin/bash

# ==============================================================================
# Script: Part-2/06-Introduction-to-pull-requests/commands.sh
# Objetivo: Demonstrar o fluxo de Branching e preparação para um Pull Request
# ==============================================================================

echo "Iniciando simulação de preparação para um Pull Request..."

# 1. Simulação do repositório local
mkdir demo-pr && cd demo-pr
git init
echo "Página Inicial" > index.html
git add .
git commit -m "init: projeto base na main"

# 2. Criando a branch para a nova funcionalidade (Compare Branch)
echo "-> 1. Criando e mudando para a branch 'feature/pagina-contato'"
git checkout -b feature/pagina-contato

# 3. Desenvolvendo a funcionalidade
echo "-> 2. Desenvolvendo o código..."
echo "Página de Contato" > contato.html
git add contato.html

# 4. Commitando as alterações isoladas
echo "-> 3. Realizando commit na branch da feature"
git commit -m "feat: adiciona pagina de contato"

echo "--------------------------------------------------------"
echo "Na Vida Real, você faria agora o envio para o GitHub:"
echo "$ git push -u origin feature/pagina-contato"
echo ""
echo "E então usaria o GitHub CLI para criar o PR direto do terminal:"
echo "$ gh pr create --title \"Adiciona Página de Contato\" --body \"Cria a página de contato conforme solicitado na issue #42\""
echo ""
echo "Ou acessaria o site do GitHub e clicaria no botão amarelo 'Compare & pull request'."
echo "--------------------------------------------------------"

cd ..
rm -rf demo-pr
