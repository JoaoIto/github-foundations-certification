[⬅️ Módulo Anterior (Parte 1)](../../Part-1/08-Communicate-using-Markdown/README.md) | [🏠 Voltar ao Início](../../README.md) | [Próximo Módulo ➡️](../02-Manage-InnerSource-program/README.md)
***

# Contribute to an open-source project on GitHub

> [!NOTE]
> Este módulo explora como encontrar, avaliar e contribuir efetivamente para projetos de código aberto (Open Source) hospedados no GitHub, além de explicar as etiquetas padrão usadas pelas comunidades.

## 1. Encontrando Projetos Open Source

Contribuir para o código aberto é uma excelente maneira de melhorar suas habilidades, construir um portfólio e ajudar a comunidade. 

**Como achar projetos?**
- **GitHub Explore:** Sugere repositórios com base nos seus interesses.
- **Tópicos:** Busque por tags como `#hacktoberfest`, `#good-first-issue`.
- **Organizações que você usa:** Se você usa o React, Vue, ou bibliotecas Python no seu dia a dia, procure o repositório deles.

## 2. Etiquetas (Labels) Importantes

Os mantenedores de projetos usam labels nas Issues para ajudar os recém-chegados:

| Label | Significado |
|-------|-------------|
| `good first issue` | Problemas relativamente simples, ideais para quem nunca contribuiu para o projeto. Geralmente têm instruções passo-a-passo no corpo da issue. |
| `help wanted` | O mantenedor precisa de ajuda para resolver isso. Pode ser simples ou complexo, mas a comunidade é bem-vinda para assumir. |
| `bug` | Um problema no código que não está funcionando como esperado. |
| `enhancement` | Sugestão de nova funcionalidade ou melhoria. |

## 3. O Fluxo de Contribuição (Fork and Pull Model)

Como você geralmente *não tem permissão de escrita* num repositório público famoso (como o `torvalds/linux`), você não pode simplesmente criar uma branch lá. Você usa o processo de Fork.

```mermaid
graph TD
    A[Repositório Original (Upstream)] -->|1. Fork| B[Seu Repositório Forkado (Origin)]
    B -->|2. Clone| C[Seu Computador Local]
    C -->|3. Cria Branch & Commita| C
    C -->|4. Push| B
    B -->|5. Open Pull Request| A
```

## 4. Arquivos Críticos de um Projeto Open Source

Antes de contribuir, sempre leia os arquivos da raiz do projeto:
- `README.md`: O que o projeto faz e como rodá-lo.
- `CONTRIBUTING.md`: **O guia sagrado.** Diz exatamente como o mantenedor quer que você envie código (regras de commit, testes necessários, etc).
- `CODE_OF_CONDUCT.md`: Regras de comportamento e respeito mútuo dentro da comunidade.
- `LICENSE`: Define como o código pode ser usado, modificado e distribuído. (Ex: MIT, GPL, Apache).

## 5. Boas Práticas

1. **Nunca envie um PR "frio":** Antes de gastar dias codificando uma feature gigante, abra uma Issue primeiro para discutir a ideia com os mantenedores.
2. **Mantenha os PRs pequenos:** É muito mais fácil revisar um PR de 50 linhas focado em *um* problema do que um PR de 1000 linhas que muda três coisas diferentes.
3. **Mantenha seu Fork atualizado:** Sempre puxe as mudanças do repositório original (upstream) antes de criar uma nova branch no seu fork para evitar conflitos (merge conflicts).
