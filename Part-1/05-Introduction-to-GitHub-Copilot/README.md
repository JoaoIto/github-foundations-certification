[⬅️ Módulo Anterior](../04-Configure-code-scanning/README.md) | [🏠 Voltar ao Início](../../README.md) | [Próximo Módulo ➡️](../06-Code-with-GitHub-Codespaces/README.md)
***

# Introduction to GitHub Copilot

> [!NOTE]
> Este módulo aborda o GitHub Copilot, um assistente de codificação alimentado por inteligência artificial, treinado em bilhões de linhas de código, que sugere código e funções inteiras em tempo real a partir da sua IDE.

## 1. O que é o GitHub Copilot?

O GitHub Copilot é uma ferramenta baseada em IA que age como um programador em par (*pair programmer*). Desenvolvido em colaboração com a OpenAI, ele ajuda os desenvolvedores a escreverem códigos de forma mais rápida e com menos trabalho braçal.

### Como funciona?
- Ele analisa o contexto do arquivo que você está editando e dos arquivos relacionados.
- Entende comentários descritivos escritos em linguagem natural (ex: `// Crie uma função que calcula o IMC`).
- Sugere código (linhas simples ou blocos inteiros) enquanto você digita (autocomplete-style).

## 2. Diferentes Versões do Copilot

| Produto | Foco | Características |
|---------|------|-----------------|
| **Copilot Individual** | Desenvolvedores independentes e freelancers. | Autocomplete em IDEs, chat na IDE. |
| **Copilot Business** | Organizações. | Gerenciamento de licenças, privacidade de código (seus prompts não são usados para treinar o modelo público), políticas de bloqueio de código público. |
| **Copilot Enterprise** | Grandes empresas. | Respostas baseadas no conhecimento *da sua empresa* (bases de código e documentos internos), resumos automáticos de PRs, etc. |

## 3. GitHub Copilot Chat

Além da funcionalidade clássica de autocompletar código ("fantasminha"), o Copilot possui a versão "Chat".
É uma janela na sua IDE (como VS Code ou Visual Studio) ou no site do GitHub (para contas Enterprise) onde você pode conversar com a IA.

**O que você pode pedir ao Chat?**
- *"Explique esse trecho de código para mim."*
- *"Gere testes unitários para a função `calcularTributos`."*
- *"Encontre e corrija o bug que está causando esse erro NullReferenceException."*
- *"Traduza essa função de Python para Go."*

## 4. Dicas de Ouro (Engenharia de Prompt)

Para obter os melhores resultados do Copilot, você precisa dar um bom contexto (bons *prompts*).

1. **Seja Específico:** Diga exatamente o que quer. Em vez de `// busca dados`, use `// Faz requisição GET para a API de clima usando fetch e retorna a temperatura em Celsius`.
2. **Forneça Exemplos:** Mostre como você quer a entrada e a saída.
3. **Mantenha abas relevantes abertas:** O Copilot lê os arquivos que estão abertos na sua IDE para entender o contexto do projeto.
4. **Itere:** Se a sugestão não for perfeita, aceite-a, corrija a parte errada, ou refine seu comentário e tente de novo.
