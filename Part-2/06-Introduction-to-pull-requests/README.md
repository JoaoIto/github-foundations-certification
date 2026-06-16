[⬅️ Módulo Anterior](../05-Authenticate-authorize-identities/README.md) | [🏠 Voltar ao Início](../../README.md) | [Próximo Módulo ➡️](../07-Search-organize-repository-history/README.md)
***

# O que são pull requests? (Introdução a Pull Requests)

> [!NOTE]
> Este módulo explora como o GitHub gerencia alterações de código-fonte de forma colaborativa e segura usando **Pull Requests (PRs)**. O domínio sobre branches e PRs é essencial para a certificação GitHub Foundations.

## 1. Branches (Ramificações)
Branches são espaços de trabalho isolados onde você pode desenvolver sem afetar o código principal (ou outros desenvolvedores).
- Eles permitem a criação de novas funcionalidades, correção de bugs e experimentação com segurança.
- **Merge (Mesclagem):** Eventualmente, o trabalho feito em uma branch precisa ser integrado à branch principal (geralmente chamada de `main` ou `master`).

## 2. O que é um Pull Request?
Um Pull Request (PR) é o principal mecanismo de colaboração no GitHub. Ele:
- Documenta as alterações feitas em uma branch.
- Comunica à equipe que as alterações estão prontas para serem mescladas.
- Abre um espaço para revisão de código (Code Review) e discussões antes da integração.

Um PR sempre compara duas branches:
- **Compare branch (Ramo de comparação):** A branch onde o desenvolvedor fez as alterações.
- **Base branch (Ramo base):** A branch principal que receberá as alterações (ex: `main`).

## 3. Status de um Pull Request

Um PR pode ter os seguintes estados ao longo do seu ciclo de vida:

| Status | Descrição |
|--------|-----------|
| 📝 **Draft (Rascunho)** | O PR foi criado, mas ainda está em desenvolvimento. Não pode ser mesclado e os revisores não são notificados automaticamente. |
| 🟢 **Open (Aberto)** | O PR está ativo e pronto para revisão. Colaboradores podem discutir, revisar e o autor pode continuar fazendo commits na branch. |
| 🔴 **Closed (Fechado)** | O PR foi encerrado sem ser mesclado. Útil se a funcionalidade foi descartada ou resolvida de outra forma. |
| 🟣 **Merged (Mesclado)** | As alterações foram aprovadas e integradas definitivamente na branch base. |

## 4. Estratégias de Mesclagem (Merge)

Na hora de aprovar e fechar o PR, o GitHub oferece três opções principais (se habilitadas pelo administrador):

1. **Create a merge commit:** Combina todos os commits e gera um novo commit de "merge" na branch base. Mantém o histórico exato de como as coisas aconteceram.
2. **Squash and merge (Combinar e mesclar):** Agrupa todos os commits do PR em **um único commit** na branch base. Ideal para manter o histórico da branch principal limpo e legível.
3. **Rebase and merge:** Pega os commits da branch de comparação e os reaplica na ponta da branch base, sem criar um commit de merge extra. Mantém um **histórico linear**.

## 5. Opções Avançadas e Proteção de Qualidade

Para garantir a qualidade do código, as equipes utilizam:
- **Request Reviewers:** Solicitar que pessoas específicas (com acesso de gravação) revisem o código.
- **Branch Protection Rules (Regras de Proteção):** Exigir aprovações de revisores ou aprovação em verificações de status antes que o botão de mesclar seja liberado.
- **Status Checks (CI/CD):** Execução automática de testes unitários e varreduras de segurança (ex: via GitHub Actions). O PR só pode ser mesclado se as verificações passarem.

## 6. Dicas de Produtividade
- **Starring (Estrelas):** Salve repositórios interessantes clicando na ⭐ (Estrela) para encontrá-los facilmente em "Seus favoritos".
- **Atalhos de Teclado:** Pressione `?` em qualquer página do GitHub para ver a lista de atalhos.
- **Command Palette:** Pressione `Ctrl+K` (Win/Linux) ou `Cmd+K` (Mac) para abrir a paleta de comandos e navegar rapidamente pelo GitHub sem usar o mouse.

---

## 📝 Avaliação do Módulo (Simulado)

Teste seus conhecimentos baseados neste módulo.

**1. A team member attempted to merge a pull request but encountered a failed status check. What action should be taken to resolve this?**
- [ ] Ignore the failed status check and proceed with the merge.
- [ ] Investigate the cause of the failed status check and make necessary corrections.
- [ ] Request a review from an additional team member to bypass the failed status check.
<details>
<summary><b>Ver Resposta</b></summary>
<b>Investigate the cause of the failed status check and make necessary corrections.</b> As verificações de status (Status Checks) falhas indicam que um teste ou análise de segurança não passou. O desenvolvedor deve corrigir o código no seu branch para que o teste passe.
</details>

**2. Your organization uses GitHub for version control. A developer has completed a new feature on a separate branch and needs to propose these changes to the main branch. What is the first step they should take to create a pull request on GitHub?**
- [ ] Merge the feature branch directly into the main branch without review.
- [ ] Navigate to the main page of the repository and select the feature branch from the Branch menu.
- [ ] Request a code review from another developer before creating a pull request.
<details>
<summary><b>Ver Resposta</b></summary>
<b>Navigate to the main page of the repository and select the feature branch from the Branch menu.</b> Este é o primeiro passo na interface web do GitHub para iniciar a comparação e criar o PR.
</details>

**3. A developer on your team has created a pull request, but it cannot be merged yet. The status shows that it's a draft. What does this status indicate about the pull request's readiness and actions needed before it can be merged?**
- [ ] The pull request needs further development or review before it can be merged.
- [ ] The pull request is ready to be merged and awaiting final approval.
- [ ] The pull request has been closed and is no longer under consideration.
<details>
<summary><b>Ver Resposta</b></summary>
<b>The pull request needs further development or review before it can be merged.</b> Draft PRs indicam que o trabalho ainda está em andamento e previnem mesclagens acidentais.
</details>

**4. What must you do to ensure you are credited as the author of the merge commit if you have multiple email addresses linked to your GitHub account?**
- [ ] Remove all other email addresses from your GitHub account
- [ ] Make the commit from the email associated with your GitHub account
- [ ] Select the correct email address in the commit author dropdown
<details>
<summary><b>Ver Resposta</b></summary>
<b>Select the correct email address in the commit author dropdown.</b> Na interface do GitHub, na hora de confirmar o merge, você pode selecionar qual dos seus e-mails verificados deseja associar ao commit.
</details>

**5. A contributor has opened a pull request, but it is in draft status. What does this mean for the review process?**
- [ ] The pull request has been closed and will not be reviewed.
- [ ] The pull request is ready for review and can be merged immediately.
- [ ] The pull request is not yet ready for review and cannot be merged.
<details>
<summary><b>Ver Resposta</b></summary>
<b>The pull request is not yet ready for review and cannot be merged.</b> Draft PRs não disparam notificações automáticas para revisores (Code Owners) justamente por ainda não estarem prontos.
</details>

**6. Your team is working on a project where maintaining a clean history is paramount. Which merge strategy should you use to ensure a linear project history without merge commits?**
- [ ] Rebase and merge
- [ ] Merge commit
- [ ] Squash and merge
<details>
<summary><b>Ver Resposta</b></summary>
<b>Rebase and merge.</b> Essa opção pega os commits e os aplica diretamente no topo da branch base, sem criar um commit de junção (merge commit), mantendo o histórico 100% linear.
</details>

**7. You notice a pull request in your repository marked as 'closed'. What action should you take if you want the proposed changes to be included in the base branch?**
- [ ] Create a new pull request from the same branch and merge it.
- [ ] Reopen the pull request and review it again if necessary.
- [ ] Directly merge the pull request from the closed state.
<details>
<summary><b>Ver Resposta</b></summary>
<b>Reopen the pull request and review it again if necessary.</b> Desde que a branch original não tenha sido deletada, você pode reabrir o PR para voltar a avaliá-lo.
</details>

**8. A collaborator is unable to merge a pull request due to failing status checks. What should be the first step to resolve this issue?**
- [ ] Override the status checks and merge anyway
- [ ] Request additional reviews to bypass the checks
- [ ] Investigate and fix the failing status checks
<details>
<summary><b>Ver Resposta</b></summary>
<b>Investigate and fix the failing status checks.</b> (Idêntica à questão 1, formulada de forma diferente). A ação correta é sempre investigar o motivo da falha na pipeline/CI e corrigir o código.
</details>

**9. Your project has a pull request marked as 'closed'. What does this status indicate about the changes in the pull request?**
- [ ] The pull request is still under consideration and awaiting further review.
- [ ] The changes were successfully merged and the pull request is now complete.
- [ ] The changes were not merged and the pull request was closed, possibly to propose a different solution.
<details>
<summary><b>Ver Resposta</b></summary>
<b>The changes were not merged and the pull request was closed, possibly to propose a different solution.</b> "Closed" significa encerramento sem merge. O status "Merged" indica que as mudanças foram incluídas.
</details>
