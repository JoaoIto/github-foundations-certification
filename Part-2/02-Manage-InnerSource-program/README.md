[⬅️ Módulo Anterior](../01-Contribute-open-source/README.md) | [🏠 Voltar ao Início](../../README.md) | [Próximo Módulo ➡️](../03-Maintain-secure-repository/README.md)
***

# Manage an InnerSource program by using GitHub

> [!NOTE]
> Este módulo introduz o conceito de InnerSource: a aplicação de práticas de Open Source dentro dos limites seguros e proprietários de uma corporação.

## 1. O que é InnerSource?

InnerSource é a adoção de metodologias e cultura de código aberto para o desenvolvimento de software interno de uma empresa. 

No modelo tradicional (silos), as equipes escrevem código e o escondem de outras equipes da mesma empresa. Se a Equipe A precisa de uma mudança na API da Equipe B, eles abrem um ticket e esperam semanas.

No modelo InnerSource, o código da Equipe B é visível para a Equipe A. A Equipe A pode clonar, fazer a alteração que precisam e enviar um Pull Request para a Equipe B aprovar. 

### Benefícios
- **Quebra de Silos:** Equipes colaboram mais.
- **Reaproveitamento:** Menos reinventar a roda (código duplicado).
- **Onboarding:** Código bem documentado (exigência do modelo) facilita a entrada de novos funcionários.

## 2. Descobrimento (Discoverability)

Para o InnerSource funcionar, os desenvolvedores precisam *saber* que o código existe. Como facilitar isso no GitHub?

- **Repositórios Internos:** Configure a visibilidade do repositório como `Internal`. Isso permite que qualquer membro da Conta Enterprise veja o código, mas pessoas de fora da empresa não.
- **Topics e READMEs:** Use tópicos padronizados (ex: `#frontend-library`) e READMEs claros para que a busca do GitHub funcione efetivamente.

## 3. Estruturando o Repositório para InnerSource

Assim como projetos Open Source, projetos InnerSource precisam de arquivos guia:

- `README.md`: O propósito do repositório.
- `CONTRIBUTING.md`: Como um colega de outra equipe pode contribuir sem quebrar tudo.
- `CODEOWNERS`: Um arquivo especial do GitHub (colocado em `.github/CODEOWNERS` ou na raiz) que define quais pessoas ou equipes *devem* aprovar um Pull Request que altera arquivos específicos.

**Exemplo de CODEOWNERS:**
```text
# Todo arquivo na pasta /src/api precisa da aprovação do time de backend
/src/api/*  @minha-empresa/backend-team

# O arquivo de configuração de build precisa do DevOps
/build.yaml @minha-empresa/devops
```
