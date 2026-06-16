#!/bin/bash

# ==============================================================================
# Script: Part-2/08-Use-GitHub-Copilot/commands.sh
# Objetivo: Comandos utilizados para gerenciar Codespaces localmente via CLI
# ==============================================================================

echo "Demonstrando o poder da CLI do GitHub (gh) para Codespaces..."

echo "--------------------------------------------------------"
echo "1. Listando os seus Codespaces ativos atualmente:"
echo "$ gh codespace list"
# gh codespace list
echo ""

echo "2. Para criar um novo Codespace no repositório atual diretamente do terminal:"
echo "$ gh codespace create --repo MeuUsuario/meu-repositorio"
# gh codespace create --repo MeuUsuario/meu-repositorio
echo ""

echo "3. Para conectar via SSH no terminal a um Codespace existente:"
echo "$ gh codespace ssh -c nome-do-codespace-gerado"
echo ""

echo "4. O GitHub CLI também te permite pedir sugestões para a IA pelo terminal!"
echo "Caso você tenha a extensão copilot instalada no CLI:"
echo "$ gh copilot suggest \"Como eu inicio um servidor web simples em python?\""
echo "--------------------------------------------------------"

echo "No cenário prático do Codespace, após o Copilot gerar seu código, você rodaria a API assim:"
echo "$ uvicorn main:app --reload --host 0.0.0.0 --port 8000"
