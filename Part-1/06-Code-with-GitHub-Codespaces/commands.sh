#!/bin/bash

# ==============================================================================
# Script: Part-1/06-Code-with-GitHub-Codespaces/commands.sh
# Objetivo: Simular a criação da pasta e configuração do devcontainer.
# ==============================================================================

echo "Iniciando demonstração da configuração de Devcontainers (Codespaces)..."

mkdir demo-codespace && cd demo-codespace
git init

# 1. Cria a pasta do devcontainer
echo "-> 1. Criando o diretório .devcontainer"
mkdir .devcontainer

# 2. Cria o arquivo json
echo "-> 2. Gerando devcontainer.json para ambiente Python"
cat << 'EOF' > .devcontainer/devcontainer.json
{
    "name": "Meu Projeto Python",
    "image": "mcr.microsoft.com/devcontainers/python:3.10",
    "customizations": {
        "vscode": {
            "extensions": [
                "ms-python.python"
            ]
        }
    },
    "postCreateCommand": "pip install -r requirements.txt"
}
EOF

# 3. Cria o requirements
echo "-> 3. Criando requirements.txt"
echo "requests" > requirements.txt

# 4. Commita
echo "-> 4. Commitando a padronização do ambiente"
git add .
git commit -m "build: setup codespaces com python"

echo "Configuração gerada."
echo "Para gerenciar codespaces via CLI (se a gh CLI estiver instalada):"
echo "  gh codespace list"
echo "  gh codespace ssh"

cd ..
rm -rf demo-codespace
