# Script de Compilação Acadêmica (MD -> DOCX ABNT)
param (
    [string]$ProjectDir = "TCC"
)

Write-Host "Iniciando compilação do projeto: $ProjectDir" -ForegroundColor Cyan

# 1. Definir caminhos
$OutputDir = Join-Path $ProjectDir "output"
if (!(Test-Path $OutputDir)) { New-Item -ItemType Directory -Path $OutputDir }
$OutputFile = Join-Path $OutputDir "Trabalho_Final_ABNT.docx"
$ReferenceDoc = "template-abnt.docx"

# 2. Listar arquivos MD na ordem correta
$Files = Get-ChildItem -Path $ProjectDir -Filter "*.md" | Where-Object { $_.Name -match "^\d{2}-" } | Sort-Object Name

if ($Files.Count -eq 0) {
    Write-Error "Nenhum arquivo modular (.md) encontrado em $ProjectDir."
    return
}

Write-Host "Arquivos encontrados: $($Files.Count)"

# 3. Executar Pandoc
# Nota: Requer Pandoc instalado no sistema
try {
    if (Test-Path $ReferenceDoc) {
        pandoc ($Files.FullName) -o $OutputFile --reference-doc=$ReferenceDoc
        Write-Host "Sucesso! Arquivo gerado em: $OutputFile" -ForegroundColor Green
    } else {
        Write-Warning "Arquivo 'template-abnt.docx' não encontrado. Gerando com estilos padrão."
        pandoc ($Files.FullName) -o $OutputFile
        Write-Host "Arquivo gerado (sem template ABNT) em: $OutputFile" -ForegroundColor Yellow
    }
} catch {
    Write-Error "Erro ao executar Pandoc. Certifique-se de que ele está instalado (https://pandoc.org)."
}
