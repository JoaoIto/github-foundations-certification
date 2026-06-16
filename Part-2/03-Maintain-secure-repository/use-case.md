# Caso de Uso Prático: Resolvendo Vulnerabilidades com Dependabot e CODEOWNERS

## Cenário
Você configurou a proteção de branch no seu projeto e habilitou o Dependabot. Um belo dia, o Dependabot alerta que a biblioteca `lodash` no seu projeto React possui uma vulnerabilidade crítica e abre um Pull Request para atualizá-la.

## Objetivo
Analisar como o Dependabot trabalha no fluxo, quem aprova baseado no `CODEOWNERS` e os comandos relacionados.

## Configuração Prévia (Simulada)

Você criou o arquivo `CODEOWNERS` na raiz do projeto:
```text
* @JoaoIto
/package.json @equipe-seguranca
```

Você também definiu a proteção de branch para a `main` exigindo a aprovação de Code Owners.

## Fluxo do Dependabot

1. **O Alerta:** O Dependabot detecta que o `package.json` está usando `lodash@4.17.15`, que tem falhas conhecidas.
2. **O PR Automático:** Um Pull Request é aberto pelo bot: "Bump lodash from 4.17.15 to 4.17.21".
3. **Bloqueio de Segurança:** O PR altera o `package.json`. O GitHub lê o `CODEOWNERS` e bloqueia o merge automático do PR, notificando o grupo `@equipe-seguranca` para revisar.

## Comandos Práticos (Testando a Atualização Localmente)

Geralmente, você aprovaria o PR via interface gráfica, mas você quer testar se a atualização do `lodash` quebra sua aplicação localmente antes de aprovar.

```bash
# 1. Obtenha as branches remotas (incluindo a branch criada pelo Dependabot)
git fetch origin

# 2. As branches do Dependabot costumam ter o padrão dependabot/ecossistema/pacote
# Liste as branches para encontrar o nome exato
git branch -a

# 3. Mude para a branch do Dependabot
git checkout dependabot/npm_and_yarn/lodash-4.17.21

# 4. Instale as dependências com a nova versão localmente
npm install

# 5. Rode seus testes locais para garantir que a atualização não quebrou nada
npm test

# 6. Se os testes passarem, você volta para a interface web do GitHub, 
# dá o "Approve" (pois você é da @equipe-seguranca) e clica em "Merge Pull Request".

# 7. Volte para a main e atualize seu repositório local
git checkout main
git pull origin main
```
