# Caso de Uso Prático: Analisando Código em Busca de Vulnerabilidades

## Cenário
Você é responsável pela segurança de um repositório Open Source. Para evitar que código inseguro seja enviado para a branch principal através de Pull Requests de terceiros, você decide configurar o CodeQL.

## Objetivo
Configurar um workflow de GitHub Actions que execute o CodeQL toda vez que um Pull Request for aberto visando a branch `main`.

## Passo a Passo (Simulação)

### Via Interface Gráfica do GitHub
Embora a configuração primária do CodeQL seja feita pela UI do GitHub, os bastidores envolvem a criação de um arquivo no repositório.

1. Navegue até o repositório.
2. Clique na aba **Security**.
3. Em "Code scanning", selecione **Configure**.
4. O GitHub sugere o workflow do **CodeQL Analysis**. Clique em **Configure**.

### Estrutura do Workflow (O que o GitHub cria pra você)

Se você fosse criar o arquivo `.github/workflows/codeql.yml` via linha de comando ou editor, ele seria semelhante a isso:

```yaml
# Arquivo: .github/workflows/codeql.yml
name: "CodeQL"

on:
  push:
    branches: [ "main" ]
  pull_request:
    # O workflow rodará para PRs apontados para a main
    branches: [ "main" ]

jobs:
  analyze:
    name: Analyze
    runs-on: ubuntu-latest
    permissions:
      actions: read
      contents: read
      security-events: write # Permissão crucial para postar alertas na aba Security

    strategy:
      fail-fast: false
      matrix:
        language: [ 'javascript' ] # Defina a linguagem do seu projeto

    steps:
    - name: Checkout repository
      uses: actions/checkout@v3

    # Inicializa o CodeQL com as regras e queries padrão
    - name: Initialize CodeQL
      uses: github/codeql-action/init@v2
      with:
        languages: ${{ matrix.language }}

    # Faz a análise do código fonte
    - name: Perform CodeQL Analysis
      uses: github/codeql-action/analyze@v2
      with:
        category: "/language:${{matrix.language}}"
```

## Testando na Prática (Bash)

Como testaríamos se isso funciona? Comitaríamos o arquivo acima e criaríamos um PR com uma falha intencional.

```bash
# 1. Atualize seu repo local
git pull origin main

# 2. Crie uma pasta para workflows se não existir
mkdir -p .github/workflows

# 3. Crie o arquivo codeql.yml e cole o conteúdo acima nele.
touch .github/workflows/codeql.yml

# 4. Adicione e faça o commit do setup de segurança
git add .github/workflows/codeql.yml
git commit -m "ci: configura análise de segurança do CodeQL"
git push origin main

# 5. Crie uma branch com código propositalmente inseguro (ex: SQL Injection)
git checkout -b feature-insegura

echo "const query = 'SELECT * FROM users WHERE id = ' + req.query.id;" > db.js
git add db.js
git commit -m "feat: adiciona consulta insegura ao banco"
git push -u origin feature-insegura
```

> [!IMPORTANT]
> Ao abrir o Pull Request da branch `feature-insegura` para a `main` no GitHub, o workflow de Actions `CodeQL` será acionado. Ele detectará a concatenação de strings na query SQL e gerará um alerta na PR, bloqueando ou avisando o revisor.
