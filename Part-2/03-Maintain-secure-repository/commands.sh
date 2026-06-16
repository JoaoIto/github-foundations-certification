#!/bin/bash

# ==============================================================================
# Script: Part-2/03-Maintain-secure-repository/commands.sh
# Objetivo: Simular o teste de uma atualização gerada pelo Dependabot.
# ==============================================================================

echo "Iniciando demonstração: Testando PR do Dependabot localmente."
echo "Simulando um repositório..."

mkdir demo-secure && cd demo-secure
git init

# Cria um arquivo simulando que estamos na branch main
echo "v1.0" > app.js
git add app.js
git commit -m "init"

# Simula que o Dependabot criou uma branch remotamente e baixamos ela
git checkout -b dependabot/npm_and_yarn/lodash-4.17.21

# O que o dev faria na vida real para testar o PR da vulnerabilidade
echo "--------------------------------------------------------"
echo "Na Vida Real, você faria os seguintes comandos:"
echo "1. Puxar todas as branches remotas (incluindo a do bot)"
echo "$ git fetch origin"
echo ""
echo "2. Mudar para a branch exata do dependabot"
echo "$ git checkout dependabot/npm_and_yarn/lodash-4.17.21"
echo ""
echo "3. Instalar os pacotes com a versão segura e rodar os testes"
echo "$ npm install"
echo "$ npm test"
echo ""
echo "4. Tudo certo? Voltar pra main, e aprovar o PR pela Web UI."
echo "$ git checkout main"
echo "--------------------------------------------------------"

cd ..
rm -rf demo-secure
