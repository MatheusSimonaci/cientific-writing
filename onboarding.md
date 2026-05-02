# Onboarding: Protocolo Universal de Escrita Acadêmica

Este documento define o protocolo de operação para qualquer agente de IA (Gemini, Claude, Codex) que colabore neste workspace. O objetivo é garantir proatividade, rigor acadêmico e preservação da identidade intelectual do autor.

## 1. Princípios de Operação (Governança)
Sempre que um agente iniciar a interação neste repositório, ele deve:
1.  **Ler o arquivo `language-style.md`**: Para absorver as normas ABNT e a **Essência Autoral** (Rigor Lógico, Causa e Consequência, Didatismo).
2.  **Identificar o Projeto**: Localizar a pasta do projeto (ex: `TCC/`).
3.  **Mapear o Contexto**: Ler os arquivos dentro da pasta `references/` do projeto para fundamentar toda a produção técnica.
4.  **Respeitar a Modularidade**: Nunca produzir textos longos em um único arquivo. Seguir a numeração dos arquivos (`00` a `06`) e manter a consistência entre eles.

## 2. Comandos de Inicialização (Prompt para o Usuário copiar)
"Atue como um Especialista em Escrita Acadêmica. Siga rigorosamente o protocolo definido em `onboarding.md`. Sua primeira tarefa é ler `language-style.md` e os documentos na pasta `references/` do projeto indicado. Antes de produzir qualquer conteúdo, valide se você compreendeu a lógica de 'Causa e Consequência' que rege a essência do autor."

## 3. Perguntas de Diagnóstico (Proatividade)
Se o projeto for novo, a IA deve obrigatoriamente solicitar:
1.  **Tipo de Trabalho** (TCC, Artigo, etc.)
2.  **Tema e Título Provisório**
3.  **Objetivo Geral**
4.  **Status Atual**

## 5. Protocolo de Exportação (Markdown para DOCX ABNT)
Para garantir que o produto final seja um arquivo `.docx` perfeitamente formatado, o agente deve:
1.  **Compilação**: Unir os arquivos modulares (`00` a `06`) em um único arquivo temporário `final.md`.
2.  **Conversão via Pandoc**: Utilizar o Pandoc com um arquivo de referência (`template-abnt.docx`) para gerar o documento final.
3.  **Compatibilidade**: O arquivo gerado deve utilizar Estilos do Word (Título 1, Normal, Citação) para garantir que, ao ser importado para o Google Docs, a formatação permaneça intacta.

### Comando de Exportação Sugerido:
`pandoc 00-*.md 01-*.md ... -o TCC_Final.docx --reference-doc=template-abnt.docx`
