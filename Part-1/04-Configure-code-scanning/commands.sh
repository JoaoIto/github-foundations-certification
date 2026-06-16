#!/bin/bash

# ==============================================================================
# Script: Part-1/04-Configure-code-scanning/commands.sh
# Objetivo: Simular a criação de um workflow do CodeQL para code scanning.
# ==============================================================================

echo "Iniciando demonstração de configuração do CodeQL..."

mkdir demo-codeql && cd demo-codeql
git init

# 1. Criar a estrutura de pastas do GitHub Actions
echo "-> 1. Criando diretórios do GitHub Actions (.github/workflows)"
mkdir -p .github/workflows

# 2. Criar o arquivo de workflow yaml
echo "-> 2. Gerando o arquivo codeql.yml"
cat << 'EOF' > .github/workflows/codeql.yml
name: "CodeQL"
on:
  push:
    branches: [ "main" ]
  pull_request:
    branches: [ "main" ]
jobs:
  analyze:
    name: Analyze
    runs-on: ubuntu-latest
    permissions:
      security-events: write
    steps:
    - uses: actions/checkout@v3
    - name: Initialize CodeQL
      uses: github/codeql-action/init@v2
      with:
        languages: 'javascript'
    - name: Perform CodeQL Analysis
      uses: github/codeql-action/analyze@v2
EOF

# 3. Commitar o workflow
echo "-> 3. Commitando a configuração do Code Scanning"
git add .
git commit -m "ci: configura análise de segurança do CodeQL"

echo "Demonstração concluída. O arquivo foi gerado localmente."
echo "Na prática, ao dar o 'git push', o GitHub executaria o scan."

cd ..
rm -rf demo-codeql
