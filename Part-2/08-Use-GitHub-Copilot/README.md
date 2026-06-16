[⬅️ Módulo Anterior](../07-Search-organize-repository-history/README.md) | [🏠 Voltar ao Início](../../README.md)
***

# GitHub Copilot e Codespaces

> [!NOTE]
> Este módulo aborda o uso do GitHub Copilot, seu assistente de Inteligência Artificial baseado no OpenAI Codex, em conjunto com os Codespaces (ambientes de nuvem) para acelerar o desenvolvimento.

## 1. O que é o GitHub Copilot?
O Copilot é um "parceiro de programação em par" com IA. Ele mora dentro da sua IDE (como extensão) e oferece sugestões de código em tempo real, gerando blocos de código com base em seus **prompts** em linguagem natural.

- **Como ele lê comandos:** Através de comentários no seu código (ex: `# Create a web API using FastAPI` em `.py` ou `// fetch users from DB` em `.js`), ou através de arquivos Markdown.
- **Contexto:** Ele analisa não apenas o arquivo que você está editando, mas também as abas abertas no editor de código para gerar um contexto inteligente.

## 2. GitHub Codespaces
É um **ambiente de desenvolvimento hospedado na nuvem**, que roda o Visual Studio Code diretamente no seu navegador.
- **Vantagem:** Você pode pré-instalar extensões (como o próprio Copilot) e dependências da aplicação. Quando o Codespace carrega, você tem um ambiente 100% pronto, sem precisar instalar Node, Python ou Docker na sua máquina física.
- **Conta grátis:** Usuários do GitHub recebem até 60 horas gratuitas de uso de Codespaces mensais (nas instâncias mais básicas).

## 3. Como usar e interagir com o Copilot

### Aceitando sugestões
Quando você começa a digitar, o Copilot gera uma sugestão exibida em **texto cinza** (ghost text).
- Pressione a tecla `Tab` para **aceitar** a sugestão e incluí-la no código.
- Pressione `Ctrl + Enter` (ou `Cmd + Enter` no Mac) se ele tiver **mais de uma opção**, o que abrirá uma janela contendo as múltiplas sugestões de autocompletar para você escolher.

### Engenharia de Prompt (Prompt Engineering)
A qualidade do que o Copilot te devolve depende diretamente da clareza do seu *Prompt* (sua entrada de texto). 
- **Ruim:** `# Create an API endpoint`
- **Bom:** `# Create an API endpoint using the FastAPI framework that accepts a JSON payload in a POST request`

**Boas Práticas:**
1. Mantenha as instruções simples e vá detalhando conforme avança.
2. Formule a pergunta de forma específica.
3. Se não gostar da resposta, reformule a pergunta ou converse com ele usando o **GitHub Copilot Chat**.

---

## 📝 Avaliação do Módulo (Simulado)

**1. Como funciona o GitHub Copilot?**
- [ ] O GitHub Copilot usa instruções e texto em linguagem natural que você digita para fornecer sugestões de código.
- [ ] O GitHub Copilot usa destaques que você seleciona e fornece sugestões com base no que você destaca.
- [ ] O GitHub Copilot usa uma linguagem de rádio, que você digita, e fornece sugestões com base no que você digita.
<details>
<summary><b>Ver Resposta</b></summary>
<b>O GitHub Copilot usa instruções e texto em linguagem natural que você digita para fornecer sugestões de código.</b> Ele traduz seus comentários em linguagem natural para código executável.
</details>

**2. Quais são alguns dos recursos gratuitos do GitHub Copilot?**
- [ ] É uma ferramenta de IA gratuita e irrestrita que funciona independentemente de editores de código.
- [ ] Oferece diversas sugestões e chats por mês diretamente no seu IDE e no github.com.
- [ ] Uma opção para ativar respostas mais lentas, preservando sua cota do Copilot Pro.
<details>
<summary><b>Ver Resposta</b></summary>
<b>Oferece diversas sugestões e chats por mês diretamente no seu IDE e no github.com.</b> Na modalidade Free, a ferramenta entrega limites estipulados (como 2000 sugestões de auto-completar/mês).
</details>

**3. Como posso aceitar as sugestões do GitHub Copilot?**
- [ ] Pressione a `Tab` tecla.
- [ ] Pressione a `F1` tecla.
- [ ] Pressione a `F4` tecla.
<details>
<summary><b>Ver Resposta</b></summary>
<b>Pressione a `Tab` tecla.</b> A tecla Tab é o gatilho padrão universal nas IDEs para injetar o texto sugerido ("Ghost Text") da IA no arquivo atual.
</details>

**4. Identifique qual afirmação é válida e selecione a resposta correta:**
- [ ] Um prompt, que é a nossa saída, é uma coleção de músicas que indica ao nosso copiloto o que gerar.
- [ ] Um prompt, que é a nossa entrada, é um conjunto de instruções ou diretrizes que dizem ao nosso copiloto o que gerar.
- [ ] Um prompt, que é o nosso documento, é um conjunto de laptops que informa ao nosso Copilot o que gerar.
<details>
<summary><b>Ver Resposta</b></summary>
<b>Um prompt, que é a nossa entrada, é um conjunto de instruções ou diretrizes que dizem ao nosso copiloto o que gerar.</b> Prompt Engineering trata-se exatamente de refinar as "entradas" textuais (o Prompt).
</details>

**5. De que depende a qualidade dos resultados gerados pelo GitHub Copilot?**
- [ ] Seu editor de código.
- [ ] Quão bem suas extensões foram instaladas.
- [ ] Quão bem você elabora sua pergunta.
<details>
<summary><b>Ver Resposta</b></summary>
<b>Quão bem você elabora sua pergunta.</b> (Sua Engenharia de Prompts). Modelos de IA dependem da clareza, contexto e especificidade que você provê na instrução para evitar respostas genéricas ou erradas.
</details>
