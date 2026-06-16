[⬅️ Módulo Anterior](../06-Introduction-to-pull-requests/README.md) | [🏠 Voltar ao Início](../../README.md) | [Próximo Módulo ➡️](../08-Use-GitHub-Copilot/README.md)
***

# Search and Organize Repository History

> [!NOTE]
> Este módulo ensina como encontrar informações, ganhar contexto rapidamente e organizar projetos no GitHub utilizando filtros de busca, marcos (milestones), rótulos, e referências cruzadas.

## 1. Pesquisando no GitHub

Quando você entra em um projeto novo, resgatar o contexto de uma alteração antiga é essencial. O GitHub oferece dois modos principais de busca:

### Busca Global vs. Busca Contextual
- **Busca Global:** Fica na barra superior. Permite buscar em **todo o GitHub** (código, repositórios, usuários, issues). É ótima para encontrar um termo solto (ex: "sidebar") em múltiplas frentes.
- **Busca Contextual (Scoped):** Fica dentro das abas de *Issues* e *Pull Requests* de um repositório. É restrita àquele repositório e permite usar menus suspensos (filtros) otimizados para aquele tipo de item.

### Utilizando Filtros de Pesquisa
O GitHub suporta uma sintaxe de busca avançada:
- `is:open is:issue assignee:@me` → Issues abertas atribuídas a você.
- `is:closed is:pr author:contoso` → PRs fechados criados pelo usuário `contoso`.
- `is:open is:issue label:bug -linked:pr` → Issues de bug abertas que não possuem PR vinculado.

## 2. Organizando o Trabalho

### Marcos (Milestones)
Os marcos agrupam *issues* e *PRs* em objetivos comuns (ex: um Sprint, uma versão `v1.0`).
- Monitoram o progresso automaticamente através de uma barra de porcentagem.
- Você pode buscar itens dentro de um marco específico usando: `milestone:"Sprint 1"`.

### Rótulos (Labels)
Categorizam os tipos de problema (ex: `bug`, `enhancement`, `documentation`). Podem ser combinados em buscas:
- `is:open is:issue label:bug`

### Responsáveis (Assignees)
Mostram claramente quem é a pessoa **responsável** por resolver aquela issue ou PR no momento.

## 3. Investigando o Histórico de Código

### Git Blame
Apesar do nome "culpar", o comando `git blame` exibe o histórico de commits de um arquivo linha por linha.
- Ele mostra **quem** alterou aquela linha específica e **quando**.
- Na interface do GitHub, o botão "Blame" fornece uma visão super amigável para você descobrir quem é o "especialista" naquele trecho de código para fazer perguntas.

## 4. Estabelecendo Conexões (Cross-linking e Templates)

O GitHub brilha quando conectamos informações para criar um contexto rico:

### Auto-linking (Links Automáticos)
- Se você digitar `#8` em um comentário, o GitHub transforma isso num link clicável para a Issue 8.
- Se você colar o hash de um commit (os primeiros 7 caracteres, ex: `a1b2c3d`), ele também vira um link automaticamente.

### @Menções (@mentions)
Chamar um usuário usando `@nomeDeUsuario` notifica essa pessoa para trazê-la para a discussão, sendo a melhor prática ao relatar um bug relacionado a um código feito por ela.

### Templates de Issue vs. Respostas Salvas
- **Modelos de Issue (Issue Templates):** Padronizam a *entrada* de dados. Ao clicar em "New Issue", o usuário já vê um formulário estruturado (ex: Passos para reproduzir, Comportamento esperado). Ficam na pasta `.github/ISSUE_TEMPLATE`.
- **Respostas Salvas (Saved Replies):** Atalhos do teclado ou do menu para mensagens prontas (ex: "Por favor, adicione testes antes de fechar o PR"). Ajudam mantenedores a responder problemas comuns.

---

## 📝 Avaliação do Módulo (Simulado)

**1. Como a barra de pesquisa principal do GitHub difere das opções de pesquisa disponíveis nas abas do repositório?**
- [ ] Além de estarem localizados em partes diferentes da interface do usuário, eles são iguais em todos os aspectos.
- [ ] Eles suportam diferentes opções de sintaxe de filtro.
- [ ] A barra de pesquisa principal permite pesquisar em todo o GitHub, enquanto as pesquisas nas abas do repositório são restritas a tipos específicos no repositório atual.
<details>
<summary><b>Ver Resposta</b></summary>
<b>A barra de pesquisa principal permite pesquisar em todo o GitHub, enquanto as pesquisas nas abas do repositório são restritas a tipos específicos no repositório atual.</b> A busca contextual nas abas é ideal para filtrar issues/PRs daquele projeto em específico.
</details>

**2. O que `git blame` faz?**
- [ ] Isso cria um bug atribuído à última pessoa que confirmou alterações no arquivo especificado.
- [ ] Exibe o histórico de commits do arquivo.
- [ ] Reverte os efeitos de um `git praise` comando.
<details>
<summary><b>Ver Resposta</b></summary>
<b>Exibe o histórico de commits do arquivo.</b> Ele mostra linha a linha quem fez a última alteração, ajudando a identificar o autor da modificação.
</details>

**3. Suponha que um bug seja relatado em seu projeto e você saiba qual pull request introduziu o problema. Qual das seguintes opções não é uma boa prática de vinculação cruzada?**
- [ ] Não crie links cruzados quando a causa raiz do problema já for conhecida.
- [ ] Adicione um comentário ao relatório de erro que inclua o autor da solicitação de pull usando uma @menção.
- [ ] Adicione um comentário ao relatório de erro que vincule a solicitação de pull request a ele usando a sintaxe #ID.
<details>
<summary><b>Ver Resposta</b></summary>
<b>Não crie links cruzados quando a causa raiz do problema já for conhecida.</b> Esta NÃO é uma boa prática. A boa prática determina que você deve SEMPRE criar links cruzados para manter o histórico claro para auditores ou futuros desenvolvedores, mesmo que você já saiba a resposta.
</details>

**4. Qual é a vantagem de atribuir um marco a problemas ou solicitações de pull?**
- [ ] Isso impede que outros usuários editem a issue ou o PR.
- [ ] Isso ajuda a acompanhar o progresso em direção a um objetivo comum, como um lançamento.
- [ ] Ele envia notificações por e-mail para todo o repositório.
<details>
<summary><b>Ver Resposta</b></summary>
<b>Isso ajuda a acompanhar o progresso em direção a um objetivo comum, como um lançamento.</b> Marcos (Milestones) exibem barras de progresso que conectam várias tarefas de uma mesma entrega (ex: Sprint 1).
</details>

**5. Qual consulta mostra todos os problemas em aberto classificados como bugs em um marco específico?**
- [ ] `is:open is:issue label:bug milestone:"Sprint 1"`
- [ ] `Etiqueta: bug; marco: concluído`
- [ ] `É: rótulo pr: bug`
<details>
<summary><b>Ver Resposta</b></summary>
<b>`is:open is:issue label:bug milestone:"Sprint 1"`</b> (A sintaxe nativa do GitHub Search). A consulta une o status, tipo, rótulo e marco numa pesquisa só.
</details>

**6. Como inserir uma resposta salva em um comentário de issue ou pull request?**
- [ ] Clique no ícone de resposta salva no campo de comentários e selecione uma das suas respostas salvas.
- [ ] Digite `@saved` e selecione na lista suspensa de respostas.
- [ ] Use o comando de barra `/reply` para abrir suas respostas salvas.
<details>
<summary><b>Ver Resposta</b></summary>
<b>Clique no ícone de resposta salva no campo de comentários e selecione uma das suas respostas salvas.</b> Há um botão específico (balão de fala com linhas) logo acima da caixa de texto para inserir Saved Replies.
</details>

**7. O que significa atribuir alguém a uma tarefa ou solicitação de pull request?**
- [ ] Essa pessoa é responsável por trabalhar nisso.
- [ ] Essa pessoa é o autor original.
- [ ] Essa pessoa receberá automaticamente um crachá.
<details>
<summary><b>Ver Resposta</b></summary>
<b>Essa pessoa é responsável por trabalhar nisso.</b> Atribuir (Assign) uma pessoa indica claramente à equipe de quem é a responsabilidade atual pela resolução ou andamento do item.
</details>
