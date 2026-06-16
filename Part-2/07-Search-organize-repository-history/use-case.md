# Caso de Uso Prático: Investigando um Bug e Conectando Informações

**Cenário:**  
Você acabou de entrar na equipe. Um bug crítico foi relatado na Issue `#42` em relação ao componente "Sidebar". Ninguém sabe de onde surgiu, mas todos dizem que "estava funcionando no mês passado". Seu objetivo é investigar e organizar o ambiente.

**Objetivo:**  
Praticar o uso de busca via terminal/Git, o `git blame` para achar o contexto histórico e entender como simular rótulos e atribuições num workflow diário.

## Passos da Prática (Simulação)

1. **Investigar o arquivo no projeto:** Usar o Git para descobrir quem alterou o componente da "Sidebar" recentemente e ler o histórico (Log/Blame).
2. **Cruzar referências:** Simular a escrita de um comentário no PR referenciando a issue (ex: `Fixes #42`) e marcando o autor da linha com defeito (`@nomeDoAutor`).
3. **Organização:** Compreender a mecânica de organizar tarefas através de Milestones e Labels via painel.

> **Dica:** Confira o `commands.sh` para ver como o `git blame` e a busca por histórico funcionam em nível de terminal!
