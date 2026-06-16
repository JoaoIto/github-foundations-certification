[⬅️ Módulo Anterior](../07-Manage-work-with-GitHub-Projects/README.md) | [🏠 Voltar ao Início](../../README.md) | [Próximo Módulo (Parte 2) ➡️](../../Part-2/01-Contribute-open-source/README.md)
***

# Communicate effectively on GitHub using Markdown

> [!NOTE]
> Este módulo aborda o uso do Markdown, a linguagem de marcação leve usada extensivamente em todo o GitHub (nos arquivos README, nas Issues, Pull Requests, comentários e Wikis).

## 1. O que é Markdown?

O Markdown é uma forma de estilizar texto na web. Você controla a exibição do documento; formatando palavras como negrito ou itálico, adicionando imagens e criando listas. A principal vantagem é que o texto em si continua muito legível mesmo antes de ser renderizado.

O GitHub usa uma versão específica chamada **GitHub Flavored Markdown (GFM)**, que adiciona recursos voltados para desenvolvedores (como menções, tabelas e listas de tarefas).

## 2. Sintaxe Básica

### Títulos (Headers)
Usa-se o símbolo `#`.
```markdown
# Título 1 (h1)
## Título 2 (h2)
### Título 3 (h3)
```

### Formatação de Texto
```markdown
*Este texto está em itálico* ou _assim_
**Este texto está em negrito** ou __assim__
~~Este texto está riscado (strikethrough)~~
```

### Listas
**Desordenada:**
```markdown
* Item 1
* Item 2
  * Sub-item
```
**Ordenada:**
```markdown
1. Primeiro passo
2. Segundo passo
```

### Links e Imagens
```markdown
[Texto do link visível](https://github.com)
![Texto alternativo da imagem](https://url-da-imagem.png)
```

## 3. GitHub Flavored Markdown (Recursos Extras)

### Código
Para código embutido na linha, use crases duplas: `` `codigo` ``.
Para blocos de código com destaque de sintaxe, use três crases e a linguagem:

<pre>
```python
def ola_mundo():
    print("Olá, GitHub!")
```
</pre>

### Listas de Tarefas (Task Lists)
Muito útil em Issues e PRs para criar checklists que renderizam caixas de seleção clicáveis.
```markdown
- [x] Tarefa concluída
- [ ] Tarefa pendente
- [ ] Outra tarefa pendente
```

### Menções e Referências
- `@username` irá notificar o usuário mencionado.
- `#123` criará automaticamente um link para a Issue ou PR de número 123 no repositório atual.
- Pressione `h` no teclado em qualquer repositório para ver atalhos de menções.

### Tabelas
```markdown
| Coluna 1 | Coluna 2 |
|----------|----------|
| Dado A   | Dado B   |
| Dado C   | Dado D   |
```

## 4. GitHub Alerts

O GitHub também suporta renderização de alertas especiais usando sintaxe de bloco de citação especial:

```markdown
> [!NOTE]
> Informação útil que o usuário deve saber.

> [!WARNING]
> Informação urgente que precisa de atenção imediata.
```
