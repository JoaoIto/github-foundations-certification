# Caso de Uso Prático: Contribuindo para um Repositório (Fork & Pull)

## Cenário
Você encontrou um projeto Open Source popular chamado `Awesome-Framework`. Você olhou as issues, encontrou uma marcada como `good first issue` sobre um erro de digitação na documentação e decidiu corrigi-la.

## Objetivo
Fazer um "Fork" do repositório, clonar o fork para o seu computador, adicionar o repositório original como "upstream", fazer a correção numa branch, enviar para o seu fork e abrir o Pull Request.

## Passo a Passo e Comandos

### Passo 1 e 2: Interface Gráfica (GitHub)
1. Acesse o repositório `https://github.com/mantenedor/Awesome-Framework`.
2. Clique no botão **Fork** no canto superior direito para copiar o repo para a sua conta (ex: `JoaoIto/Awesome-Framework`).

### Passo 3: Terminal Local

```bash
# 1. Clone o SEU fork para o seu computador
git clone https://github.com/JoaoIto/Awesome-Framework.git
cd Awesome-Framework

# 2. Por padrão, o seu fork local chama o seu GitHub de "origin".
# Adicione o repositório ORIGINAL como "upstream" para poder receber atualizações dele.
git remote add upstream https://github.com/mantenedor/Awesome-Framework.git

# 3. Verifique os remotos configurados
git remote -v
# Você deve ver "origin" apontando para JoaoIto e "upstream" para mantenedor.

# 4. Baixe as informações mais recentes do upstream e certifique-se que sua main está atualizada
git fetch upstream
git checkout main
git merge upstream/main

# 5. Crie uma nova branch para a sua contribuição
git checkout -b fix-typo-docs

# 6. Faça a correção no arquivo (simulação)
# Edite o README.md e salve
echo "Correção aplicada" >> README.md

# 7. Comite a alteração
git add README.md
git commit -m "docs: corrige erro de digitação no README"

# 8. Faça o push da sua branch para o SEU fork (origin)
git push -u origin fix-typo-docs
```

### Passo 4: Interface Gráfica (GitHub)
1. Acesse o seu fork no GitHub (`JoaoIto/Awesome-Framework`).
2. O GitHub mostrará um botão verde dizendo **"Compare & pull request"**.
3. Clique nele, preencha a descrição explicando o que você corrigiu e referencie a issue (ex: `Fixes #123`).
4. Clique em **Create pull request**.

> [!SUCCESS]
> Parabéns! Seu código foi enviado para a avaliação do mantenedor original.
