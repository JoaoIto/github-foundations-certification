[⬅️ Módulo Anterior](../02-Manage-InnerSource-program/README.md) | [🏠 Voltar ao Início](../../README.md) | [Próximo Módulo ➡️](../04-Introduction-GitHub-administration/README.md)
***

# Maintain a secure repository

> [!NOTE]
> Este módulo foca nas ferramentas e práticas que o GitHub oferece para manter repositórios seguros contra vazamentos de dados, vulnerabilidades e acesso não autorizado.

## 1. Protegendo a Branch Principal (Branch Protections)

Regras de proteção de branch impedem que usuários enviem código (push) diretamente para branches cruciais (como `main` ou `master`), ou deletem essas branches acidentalmente.

**Regras Comuns de Proteção:**
- Exigir revisões em solicitações de pull (Code Review) antes do merge.
- Exigir verificações de status (Status Checks) bem-sucedidas (ex: testes automatizados passarem).
- Exigir assinaturas em commits (Commits assinados com GPG para provar a identidade do autor).

## 2. GitHub Dependabot

O Dependabot é a ferramenta do GitHub para manter suas dependências seguras e atualizadas.

### Funcionalidades:
- **Dependabot Alerts:** O GitHub varre seu repositório em busca de vulnerabilidades de segurança conhecidas em pacotes que você utiliza (ex: bibliotecas npm, pacotes python) e notifica os administradores.
- **Dependabot Security Updates:** Quando ativado, o Dependabot cria automaticamente Pull Requests para atualizar as dependências vulneráveis para versões corrigidas.
- **Dependabot Version Updates:** Cria PRs automáticos para manter todas as suas dependências na versão mais recente, mesmo que não haja vulnerabilidades de segurança (configurado via arquivo `dependabot.yml`).

## 3. Secret Scanning (Vazamento de Segredos)

É muito comum (e perigoso) que desenvolvedores acidentalmente commitem chaves de API, senhas ou tokens de acesso nos repositórios.
- O **Secret Scanning** varre repositórios inteiros (inclusive histórico de commits) atrás de padrões conhecidos de segredos.
- Em repositórios **Públicos**, se um segredo for encontrado, o GitHub notifica automaticamente o provedor do serviço (como AWS, Azure, Google Cloud) para que eles possam revogar a chave vazada.
- Em repositórios **Privados** (usando GitHub Advanced Security), o administrador do repositório é alertado.
- É possível ativar a **Push Protection**, que impede ativamente o desenvolvedor de fazer o *push* caso o Git identifique um segredo na alteração.

## 4. Fixando Versões de Dependências

Para evitar que bibliotecas de terceiros quebrem o seu projeto com atualizações inesperadas, recomenda-se fixar as versões ou usar hashes.
- Em vez de usar `@v1`, você pode referenciar o hash específico de um commit de uma Action do GitHub: `uses: actions/checkout@a1b2c3d4e5f6`.
- O Git armazena um hash identificando a versão exata que você usou, garantindo reprodutibilidade.

---

> [!TIP]
> **📚 Leituras Oficiais Recomendadas:**
> Para um mergulho profundo em segurança visual, confira os [diagramas que desenhamos na aba de documentações extras](../../docs/README.md#🧠-deep-research-documentação-oficial-avançada):
> - **[Segurança de Suprimentos (Dependabot)](../../docs/README.md#2-segurança-de-cadeia-de-suprimentos-dependabot):** Entenda o fluxo de detecção.
> - **[Secret Scanning](../../docs/README.md#3-segurança-de-segredos-secret-scanning):** Veja como o GitHub previne vazamentos de credenciais nas nuvens AWS/Azure.

---

## 5. CODEOWNERS (Proprietários do Código)

Você pode criar um arquivo chamado `CODEOWNERS` na raiz do repositório (ou na pasta `.github/`) para definir quem são os responsáveis por áreas específicas do projeto.
- Quando um Pull Request afeta arquivos definidos no `CODEOWNERS`, as pessoas/equipes listadas são automaticamente solicitadas para revisar as mudanças.
- Exemplo de arquivo `CODEOWNERS`:
  ```text
  # Qualquer alteração em arquivos .js exigirá revisão do @frontend-team
  *.js    @frontend-team
  ```
