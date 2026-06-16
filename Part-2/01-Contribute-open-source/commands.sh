#!/bin/bash

# ==============================================================================
# Script: Part-2/01-Contribute-open-source/commands.sh
# Objetivo: Demonstrar o fluxo "Fork and Pull" para Open Source no terminal.
# Aviso: Este script usa URLs fictícias, a execução real falhará se rodado direto.
# ==============================================================================

echo "Demonstração do fluxo Fork & Pull (Open Source)"
echo "Simulando que você já clicou em 'Fork' na UI do GitHub."

# 1. Clonar o SEU fork
echo "-> 1. Clonando o seu fork (origin)"
echo "$ git clone https://github.com/SeuUsuario/ProjetoOpenSource.git"

# 2. Adicionar o repositório original (upstream)
echo "-> 2. Adicionando o remoto upstream"
echo "$ cd ProjetoOpenSource"
echo "$ git remote add upstream https://github.com/MantenedorOriginal/ProjetoOpenSource.git"

# 3. Atualizar sua main com as novidades do upstream
echo "-> 3. Atualizando a main local com as novidades do projeto original"
echo "$ git fetch upstream"
echo "$ git checkout main"
echo "$ git merge upstream/main"

# 4. Criar branch para contribuição
echo "-> 4. Criando branch para trabalhar na issue"
echo "$ git checkout -b fix-bug-123"

# 5. Trabalhar, commitar e enviar para o SEU fork
echo "-> 5. Commit e Push"
echo "$ git add ."
echo "$ git commit -m \"fix: resolve o bug 123\""
echo "$ git push -u origin fix-bug-123"

echo "-> 6. Após o push, você vai no GitHub e clica em 'Compare & Pull Request'."
