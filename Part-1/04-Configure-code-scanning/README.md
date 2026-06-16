[⬅️ Módulo Anterior](../03-Introduction-to-GitHubs-products/README.md) | [🏠 Voltar ao Início](../../README.md) | [Próximo Módulo ➡️](../05-Introduction-to-GitHub-Copilot/README.md)
***

# Configure Code Scanning on GitHub

> [!NOTE]
> Este módulo foca na segurança do código, especificamente em como configurar varreduras automatizadas para encontrar vulnerabilidades antes que elas cheguem à produção.

## 1. O que é o Code Scanning?

O Code Scanning é um recurso de segurança do GitHub que analisa o código em um repositório para encontrar vulnerabilidades de segurança e erros de codificação (bugs). 
Quando a varredura encontra um problema potencial, ela cria um alerta no repositório.

### Principais Benefícios
- **Shift-Left Security:** Encontra problemas no início do ciclo de desenvolvimento (diretamente no Pull Request).
- **Prevenção:** Impede que vulnerabilidades conhecidas sejam incorporadas (merged) na branch principal.
- **Integração:** Funciona nativamente com o GitHub Actions.

## 2. CodeQL: O motor de análise do GitHub

Embora o Code Scanning suporte ferramentas de terceiros, o motor de análise padrão e mais poderoso do GitHub é o **CodeQL**.

- Trata o código como se fosse um banco de dados.
- Permite escrever "queries" (consultas) para encontrar padrões de código vulnerável.
- Suporta diversas linguagens (C/C++, C#, Go, Java, JavaScript/TypeScript, Python, Ruby).

## 3. Como o Code Scanning funciona via GitHub Actions

Na maioria dos casos, o Code Scanning é implementado através de um workflow do GitHub Actions.

```mermaid
graph TD
    A[Developer opens a PR] --> B(Trigger GitHub Actions Workflow)
    B --> C[Checkout Code]
    C --> D[Initialize CodeQL]
    D --> E[Build Code (if compiled language)]
    E --> F[Run CodeQL Analysis]
    F --> G[Upload results to GitHub Security tab]
    G --> H{Are there severe alerts?}
    H -->|Yes| I[Block PR Merge (configurable)]
    H -->|No| J[Allow PR Merge]
```

## 4. Configuração Básica

Para ativar o CodeQL em um repositório:
1. Vá até a aba **Security** no repositório.
2. Em "Vulnerability alerts", encontre **Code scanning** e clique em "Configure scanning tool".
3. O GitHub irá gerar um arquivo YAML de workflow (`.github/workflows/codeql-analysis.yml`).
4. Faça o commit desse arquivo.

A partir desse momento, a cada *push* ou *pull request* nas branches configuradas (ex: `main`), o GitHub Actions executará a varredura.
