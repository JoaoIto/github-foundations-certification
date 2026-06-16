#!/bin/bash

# ==============================================================================
# Script: Part-1/01-Introduction-to-Git/commands.sh
# Objetivo: Demonstrar o fluxo básico do Git localmente.
# ==============================================================================

# Imprime o passo atual
echo "Iniciando demonstração do fluxo básico do Git..."

# 1. Cria o diretório do projeto e entra nele
echo "-> 1. Criando diretório 'meu-novo-projeto'"
mkdir meu-novo-projeto
cd meu-novo-projeto

# 2. Inicializa o repositório Git local
echo "-> 2. Inicializando repositório Git"
git init

# 3. Cria um arquivo com algum conteúdo
echo "-> 3. Criando arquivo main.py"
echo "print('Olá, GitHub Foundations!')" > main.py

# 4. Verifica o status (opcional num script automático, mas útil para visualizar)
echo "-> 4. Verificando status atual do Git"
git status

# 5. Adiciona o arquivo à Staging Area
echo "-> 5. Adicionando arquivo ao Staging"
git add main.py

# 6. Faz o commit da alteração
echo "-> 6. Realizando o commit"
git commit -m "feat: commit inicial do projeto"

# 7. Exibe o log em uma linha para confirmar o commit
echo "-> 7. Verificando o histórico"
git log --oneline

echo "Demonstração concluída com sucesso."
# Sai do diretório e apaga a pasta de teste para não sujar o ambiente local
cd ..
rm -rf meu-novo-projeto
