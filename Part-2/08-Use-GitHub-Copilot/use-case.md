# Caso de Uso Prático: Gerando uma API com Copilot no Codespaces

**Cenário:**  
Você precisa prototipar uma API REST em Python usando o framework FastAPI rapidamente para um novo projeto de portfólio. Sua máquina atual não tem o Python instalado, e instalar tudo levaria um tempo valioso.

**Objetivo:**  
Utilizar um ambiente de nuvem do GitHub (Codespaces) e escrever um comentário em linguagem natural para que a Inteligência Artificial (Copilot) gere a estrutura da API por você.

## Passos da Prática (Simulação)

1. **Abrir o Codespaces:** Acessar o repositório no GitHub e clicar no botão "Code" > "Codespaces" > "Create codespace on main". Isso abrirá o VS Code diretamente no seu navegador, rodando num container já com Python e com a extensão do Copilot ativa.
2. **Escrever o Prompt:** Criar um arquivo `main.py` e escrever o seguinte comentário na primeira linha:
   `# Create an API endpoint using the FastAPI framework that accepts a JSON payload in a POST request`
3. **Aceitar a Sugestão:** O Copilot exibirá em texto cinza o código gerado em poucos segundos. Você apertará a tecla `Tab` para injetar o código no arquivo.
4. **Rodar a Aplicação:** Utilizar o terminal do Codespaces para rodar `uvicorn main:app --reload` e visualizar o servidor funcionando instantaneamente usando o navegador nativo integrado.

> **Nota de Estudo:** Como o Copilot depende de interface gráfica e inteligência artificial, você deve realizar as práticas dentro da sua IDE instalando a extensão do Copilot, ou usando o próprio ambiente do *github.com/codespaces*. Veja o script de atalhos abaixo para simular chamadas e configurações!
