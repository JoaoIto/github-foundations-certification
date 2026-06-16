# Caso de Uso Prático: Conectando Local com Remoto e Trabalhando com Branches

## Cenário
Agora que você tem um repositório local, você quer salvá-lo no GitHub para fazer backup e colaborar. Você também quer criar uma nova funcionalidade de forma segura usando uma branch e simular o fluxo de Pull Request.

## Objetivo
Adicionar um `remote` do GitHub, fazer o push do código local, criar uma branch, alterar o código, fazer push da branch e entender onde o Pull Request ocorreria.

## Passo a Passo e Comandos

```bash
# 1. Crie um repositório vazio no GitHub (pela interface web). 
# Copie a URL gerada (ex: https://github.com/JoaoIto/meu-novo-projeto.git)

# 2. No seu terminal, dentro da pasta do projeto do módulo 1:
# Adicione a conexão com o repositório remoto e chame-a de "origin"
git remote add origin https://github.com/JoaoIto/meu-novo-projeto.git

# 3. Verifique se o remote foi adicionado corretamente
git remote -v
# Saída esperada:
# origin  https://github.com/JoaoIto/meu-novo-projeto.git (fetch)
# origin  https://github.com/JoaoIto/meu-novo-projeto.git (push)

# 4. Envie o seu código local (branch main) para o GitHub
git push -u origin main

# --- Trabalhando em uma Nova Funcionalidade ---

# 5. Crie e mude para uma nova branch chamada "feature-texto"
git checkout -b feature-texto
# Opcional (comando mais recente): git switch -c feature-texto

# 6. Altere o arquivo main.py
echo "print('Nova funcionalidade da branch!')" >> main.py

# 7. Adicione e faça o commit da alteração
git add main.py
git commit -m "feat: adiciona nova linha no main.py"

# 8. Envie a NOVA branch para o GitHub
git push -u origin feature-texto
```

> [!TIP]
> **Próximo Passo no GitHub:** Após o último comando, se você acessar o repositório no GitHub, verá um aviso amarelo sugerindo criar um **Pull Request**. É lá que você aprova e mescla (merge) essa `feature-texto` na `main`.
