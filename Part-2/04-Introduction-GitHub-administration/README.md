[⬅️ Módulo Anterior](../03-Maintain-secure-repository/README.md) | [🏠 Voltar ao Início](../../README.md) | [Próximo Módulo ➡️](../05-Authenticate-authorize-identities/README.md)
***

# Introduction to GitHub administration

> [!NOTE]
> Este módulo fornece uma visão geral do papel do administrador de uma Conta Enterprise ou Organização no GitHub.

## 1. O Papel do Administrador

O administrador não é necessariamente quem escreve o código (embora possa ser). A responsabilidade principal é governança: garantir que a plataforma seja segura, as permissões estejam corretas e as políticas da empresa sejam seguidas.

## 2. Níveis de Administração

A administração ocorre em três níveis hierárquicos:

1. **Enterprise Account (Conta Enterprise):** Nível mais alto. Administradores aqui (Enterprise Owners) gerenciam configurações globais, políticas de segurança, faturamento e podem criar ou apagar organizações inteiras.
2. **Organization (Organização):** Administradores da Organização gerenciam repositórios, equipes (Teams) e o acesso diário dos desenvolvedores aos projetos.
3. **Repository (Repositório):** Administradores de Repositório possuem acesso total a um projeto específico (podem mudar visibilidade, configurar GitHub Actions, gerenciar proteções de branch).

## 3. Políticas Base (Base Policies)

Administradores Enterprise podem criar políticas que se aplicam em "cascata" para todas as organizações abaixo deles.
Por exemplo, um administrador Enterprise pode forçar que *nenhum* repositório na empresa inteira possa ser criado como Público, para evitar vazamentos acidentais de código proprietário.

## 4. O Audit Log (Log de Auditoria)

Ferramenta crucial para administradores. O Audit Log rastreia atividades administrativas, de segurança e de acesso em toda a organização ou empresa.

**O que o log captura?**
- Mudanças nas permissões de usuários (ex: João virou Admin).
- Mudanças na visibilidade do repositório (ex: Projeto X mudou de Privado para Público).
- Criação e exclusão de repositórios ou equipes.
- Logins de SSO configurados.

Administradores Enterprise (no GitHub Enterprise Cloud/Server) podem exportar esses logs via API ou streaming automático para plataformas SIEM (como Splunk, Datadog ou Azure Sentinel) para análise avançada de segurança.
