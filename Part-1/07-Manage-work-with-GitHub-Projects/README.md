[⬅️ Módulo Anterior](../06-Code-with-GitHub-Codespaces/README.md) | [🏠 Voltar ao Início](../../README.md) | [Próximo Módulo ➡️](../08-Communicate-using-Markdown/README.md)
***

# Manage work with GitHub Projects

> [!NOTE]
> Este módulo aborda o GitHub Projects, a ferramenta integrada de gerenciamento de projetos do GitHub, que permite rastrear issues, pull requests e planejar o trabalho diretamente onde o código reside.

## 1. O que é o GitHub Projects?

O GitHub Projects é uma ferramenta de planejamento de projetos adaptável e flexível construída no topo do GitHub. Ele permite criar visualizações de quadros Kanban, tabelas parecidas com planilhas e roadmaps para gerenciar o ciclo de desenvolvimento de software.

### Vantagens
- **Integração Nativa:** Issues e Pull Requests do seu repositório vivem diretamente no projeto. Quando uma issue é fechada no código, ela se move automaticamente no quadro.
- **Customização:** Diferente dos quadros antigos, os novos Projects permitem adicionar campos personalizados (Custom Fields) como Data de Início, Sprint, Prioridade, Estimativa de Tempo, etc.
- **Visualizações Múltiplas:** Você pode ver os mesmos dados como uma Lista, um Quadro (Board) ou um Gráfico/Roadmap de Gantt.

## 2. Issues e Pull Requests no Projeto

O bloco de construção básico de um Projeto no GitHub é a Issue.

- **Issue:** Uma solicitação formal de rastreamento de tarefa, bug ou nova funcionalidade.
- **Pull Request (PR):** Pode ser adicionado ao projeto para rastrear o status real do desenvolvimento de código que resolve uma Issue.

> [!TIP]
> Use a palavra-chave de fechamento nas mensagens do seu Pull Request (ex: `Fixes #42` ou `Closes #15`). Quando o PR for mesclado (merged), a Issue associada será fechada e movida para a coluna "Done" no Projeto automaticamente.

## 3. Elementos do GitHub Projects

| Elemento | Descrição |
|----------|-----------|
| **Draft Issues** | Tarefas rápidas adicionadas apenas ao quadro do projeto (não existem no repositório ainda). Podem ser convertidas em Issues completas depois. |
| **Custom Fields** | Campos que você cria, como `Single select` (ex: Status: Todo, In Progress, Review, Done), `Date`, `Number`, `Text`, ou `Iteration` (para Sprints). |
| **Views (Visualizações)** | Como os dados são mostrados. Um board (estilo Trello/Jira), uma Table (estilo Excel), ou um Roadmap (visualização de cronograma baseada em tempo). |
| **Workflows** | Automações integradas. Ex: "Quando um PR for aprovado, mude o status para 'In Review'". |

## 4. Tipos de Projetos

Você pode criar um projeto em dois níveis:
1. **Repository Level:** Pertence e é acessível através de um único repositório.
2. **Organization / User Level:** Pertence à sua conta ou organização, e pode abranger Issues de *múltiplos repositórios* simultaneamente. (Este é o padrão atual do Projects V2).
