#!/bin/bash

# ==============================================================================
# Script: Part-1/02-Introduction-to-GitHub/commands.sh
# Objetivo: Demonstrar a conexão com o repositório remoto e criação de branches.
# ==============================================================================

echo "Iniciando demonstração de conexão remota e branches..."

mkdir demo-remoto && cd demo-remoto
git init
echo "Hello World" > index.html
git add index.html
git commit -m "init: projeto inicial"

# 1. Adicionando o repositório remoto (simulado)
echo "-> 1. Adicionando origin"
git remote add origin https://github.com/JoaoIto/repositorio-ficticio.git

# 2. Verificando remotos
echo "-> 2. Remotos configurados:"
git remote -v

# 3. Criando uma nova branch
echo "-> 3. Criando a branch 'feature-texto'"
git checkout -b feature-texto

# 4. Alterando e commitando na nova branch
echo "-> 4. Alterando o arquivo na branch"
echo "<p>Nova Funcionalidade</p>" >> index.html
git add index.html
git commit -m "feat: adiciona paragrafo de nova funcionalidade"

# 5. O comando de push (comentado pois o repositório não existe de verdade)
echo "-> 5. Comando para enviar (push):"
echo "   git push -u origin feature-texto"

echo "Demonstração concluída. Limpando..."
cd ..
rm -rf demo-remoto
