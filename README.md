# Sistema de Escrita Acadêmica IA (ABNT)

Este repositório contém um framework estratégico para a produção de textos acadêmicos (TCC, Artigos, Monografias) utilizando agentes de Inteligência Artificial.

## 🚀 Como Funciona

O sistema utiliza uma abordagem modular e orientada a "Essência Autoral" para garantir que a IA não apenas escreva, mas preserve a lógica e o rigor do autor.

### Estrutura do Projeto
- **`language-style.md`**: Diretrizes de estilo, normas ABNT e a essência intelectual do autor.
- **`onboarding.md`**: Manual de governança para a IA. Cole o conteúdo deste arquivo no início de qualquer chat com Gemini, Claude ou ChatGPT.
- **`TCC/`**: Pasta do projeto com arquivos modulares (`00-capa.md` a `06-revisao.md`).
- **`TCC/references/`**: Coloque aqui seus PDFs e fontes de pesquisa.
- **`compile-docx.ps1`**: Script PowerShell para converter o projeto Markdown em um arquivo Word (.docx) formatado.

## 🛠️ Requisitos para Exportação
Para gerar o arquivo `.docx` final:
1. Instale o **Pandoc** (https://pandoc.org).
2. Tenha um arquivo chamado `template-abnt.docx` na raiz (estilos de referência).
3. Execute no terminal: `./compile-docx.ps1 -ProjectDir TCC`

## 🧠 Governança de IA
Ao iniciar um novo projeto, o agente de IA é instruído a ser proativo, realizando um diagnóstico completo do tema e objetivos antes de iniciar a redação, garantindo que o texto siga a lógica de **Causa e Consequência**.
