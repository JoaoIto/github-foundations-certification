# Caso de Uso Prático: Fluxo Completo de Pull Request

**Cenário:**  
Você faz parte da equipe de desenvolvimento e recebeu a tarefa de criar uma nova funcionalidade (uma página de contato) para o site da empresa. O repositório possui regras de proteção na branch `main`, então você não pode fazer push direto nela. Você precisará usar branches, criar um Pull Request, passar pelos testes e realizar o merge.

**Objetivo:**  
Praticar a criação de branches, commits isolados, e simular a criação de um Pull Request no GitHub.

## Passos da Prática (Simulação)

1. **Sincronizar a máquina local com o servidor:** Garantir que você tem a versão mais recente da `main`.
2. **Criar a branch de feature:** Criar um ambiente isolado para o seu trabalho.
3. **Desenvolver e commitar:** Fazer as alterações necessárias e registrar no histórico da branch.
4. **Enviar para o GitHub:** Fazer o push da nova branch para o repositório remoto.
5. **Criar o Pull Request:** Entrar na interface do GitHub.com, comparar sua branch com a `main` e abrir o PR.
6. **Revisão e Merge:** Selecionar a estratégia de merge (Merge commit, Squash ou Rebase) para integrar o código.

> **Dica:** Para os comandos de terminal que executam esse cenário passo a passo, veja o arquivo `commands.sh` nesta mesma pasta!
