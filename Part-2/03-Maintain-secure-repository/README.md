[⬅️ Módulo Anterior](../02-Manage-InnerSource-program/README.md) | [🏠 Voltar ao Início](../../README.md) | [Próximo Módulo ➡️](../04-Introduction-GitHub-administration/README.md)
***

# Maintain a secure repository by using GitHub best practices

> [!NOTE]
> Este módulo foca nas ferramentas e práticas que o GitHub oferece para manter repositórios seguros contra vazamentos de dados, vulnerabilidades e acesso não autorizado.

## 1. Protegendo a Branch Principal (Branch Protections)

Regras de proteção de branch impedem que usuários enviem código (push) diretamente para branches cruciais (como `main` ou `master`), ou deletem essas branches acidentalmente.

**Regras Comuns de Proteção:**
- Exigir Pull Request (proibir push direto).
- Exigir aprovação de pelo menos 1 (ou mais) revisores (Reviewers).
- Exigir aprovação dos Code Owners (baseado no arquivo `CODEOWNERS`).
- Exigir que as verificações de status passem antes do merge (ex: os testes unitários via GitHub Actions devem dar "verde").
- Exigir histórico linear (proibir commits de merge que poluem o histórico, obrigando a fazer rebase).

## 2. Dependabot e Vulnerabilidades de Dependências

O software moderno depende de centenas de bibliotecas externas (packages do npm, pip, nuget). Se uma delas tem uma falha, seu sistema tem uma falha.

- **Dependabot Alerts:** O GitHub verifica os arquivos de manifesto (ex: `package.json`, `requirements.txt`) contra o GitHub Advisory Database. Se você usa uma versão vulnerável de um pacote, o GitHub gera um alerta.
- **Dependabot Security Updates:** O Dependabot pode abrir automaticamente um Pull Request para atualizar a biblioteca vulnerável para a versão segura mais próxima.

## 3. Secret Scanning (Varredura de Segredos)

É incrivelmente comum desenvolvedores "comitarem" acidentalmente senhas, chaves de API da AWS, tokens do GitHub ou chaves privadas.
Se o repositório for público, bots capturam essas chaves em segundos.

**O que o Secret Scanning faz?**
- Escaneia todo o código submetido (commits e pull requests).
- Tenta identificar padrões de chaves conhecidas de dezenas de provedores (AWS, Azure, Google, Stripe).
- Se encontrar, gera um alerta (em repositórios privados).
- Se o repositório for *público*, o GitHub pode notificar o provedor automaticamente (ex: a AWS) para revogar a chave imediatamente.

### Push Protection
Uma funcionalidade avançada do Secret Scanning. Quando ativada, o GitHub rejeita o comando `git push` do desenvolvedor *antes* mesmo do segredo chegar ao servidor do GitHub, exigindo que o desenvolvedor resolva a situação localmente.
