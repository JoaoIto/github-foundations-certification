#!/bin/bash

# ==============================================================================
# Script: Part-2/05-Authenticate-authorize-identities/commands.sh
# Objetivo: Mostrar comandos de autenticação via CLI oficial (gh) e credenciais git.
# ==============================================================================

echo "--------------------------------------------------------"
echo "1. Salvando credenciais do Git (Windows)"
echo "Isso evita que o terminal peça a senha em cada push/pull."
echo "$ git config --global credential.helper manager-core"
echo ""
echo "--------------------------------------------------------"
echo "2. Autenticando com a GitHub CLI (gh)"
echo "A ferramenta mais moderna e segura. Recomendada para empresas com SSO."
echo ""
echo "$ gh auth login"
echo ""
echo "Isso abrirá um prompt interativo perguntando:"
echo "- Qual conta? (GitHub.com ou GitHub Enterprise Server)"
echo "- Protocolo? (HTTPS ou SSH)"
echo "- Como autenticar? (Login via Browser ou colar um Token)"
echo ""
echo "Se a organização usar SAML SSO, o login via browser automaticamente"
echo "fará o redirecionamento para o Provedor de Identidade (ex: Azure AD)."
echo ""
echo "--------------------------------------------------------"
echo "3. Verificando se a autenticação funcionou"
echo "$ gh auth status"
echo "--------------------------------------------------------"
