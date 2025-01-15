#!/bin/bash

# 1. Definindo o novo nome do repositório
NEW_REPO_NAME="az-204-study"
OLD_REPO_NAME="az204-guia-completo"

# 2. Verifica se está no diretório correto
CURRENT_DIR=$(basename "$(pwd)")
if [ "$CURRENT_DIR" != "$OLD_REPO_NAME" ]; then
    echo "Você não está no diretório correto. Certifique-se de estar em '$OLD_REPO_NAME'."
    exit 1
fi

# 3. Renomear o diretório local (após renomear o repositório no GitHub)
mv "$OLD_REPO_NAME" "$NEW_REPO_NAME"
echo "Repositório renomeado para $NEW_REPO_NAME"

# 4. Navegar para o novo diretório
cd "$NEW_REPO_NAME" || exit

# 5. Atualizar a URL do repositório remoto no Git
# Certifique-se de que você já renomeou o repositório no GitHub antes
NEW_REPO_URL="git@github.com:usuario/az-204-study.git"
git remote set-url origin "$NEW_REPO_URL"
echo "URL do repositório remoto alterada para $NEW_REPO_URL"

# 6. Criar a estrutura de pastas
mkdir -p web-app/examples/{app-service-deployment,custom-domains-and-certificates,monitoring-and-logging,authentication-and-authorization,scaling-and-performance}
mkdir -p web-app/docs
mkdir -p web-app/scripts

# 7. Criar arquivos padrão
touch web-app/.webappdicas
touch web-app/README.md

# 8. Mensagem de confirmação
echo "Estrutura de pastas criada com sucesso no repositório $NEW_REPO_NAME!"

# 9. Adicionar, commitar e enviar mudanças para o repositório remoto
git add .
git commit -m "Estrutura inicial para o estudo AZ-204"
git push origin main

echo "Mudanças enviadas para o repositório remoto."
