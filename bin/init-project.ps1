param(
    [string]$TargetDir = "."
)

$ErrorActionPreference = "Stop"

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$KitDir = Resolve-Path (Join-Path $ScriptDir "..")
$null = New-Item -ItemType Directory -Force -Path $TargetDir
$TargetPath = Resolve-Path $TargetDir

New-Item -ItemType Directory -Force -Path (Join-Path $TargetPath "docs/brain") | Out-Null
New-Item -ItemType Directory -Force -Path (Join-Path $TargetPath ".opencode") | Out-Null

function Copy-IfMissing {
    param(
        [string]$Src,
        [string]$Dst
    )

    if (Test-Path $Dst) {
        Write-Host "Existe, no se sobrescribe: $Dst"
    } else {
        Copy-Item $Src $Dst
        Write-Host "Creado: $Dst"
    }
}

function Copy-DirIfMissing {
    param(
        [string]$Src,
        [string]$Dst
    )

    if (Test-Path $Dst) {
        Write-Host "Existe, no se sobrescribe: $Dst"
    } else {
        Copy-Item -Recurse $Src $Dst
        Write-Host "Creado: $Dst"
    }
}

Copy-IfMissing (Join-Path $KitDir "templates/AGENTS.template.md") (Join-Path $TargetPath "AGENTS.md")
Copy-IfMissing (Join-Path $KitDir "templates/README.template.md") (Join-Path $TargetPath "README.md")
Copy-IfMissing (Join-Path $KitDir "templates/gitignore.template") (Join-Path $TargetPath ".gitignore")
Copy-IfMissing (Join-Path $KitDir "templates/CONTEXT_INDEX.template.md") (Join-Path $TargetPath "docs/brain/CONTEXT_INDEX.md")
Copy-IfMissing (Join-Path $KitDir "templates/PROJECT_BLUEPRINT.template.md") (Join-Path $TargetPath "docs/brain/PROJECT_BLUEPRINT.md")
Copy-IfMissing (Join-Path $KitDir "templates/DECISIONS.template.md") (Join-Path $TargetPath "docs/brain/DECISIONS.md")
Copy-IfMissing (Join-Path $KitDir "templates/MEMORY.template.md") (Join-Path $TargetPath "docs/brain/MEMORY.md")
Copy-IfMissing (Join-Path $KitDir "templates/ERRORS_SOLVED.template.md") (Join-Path $TargetPath "docs/brain/ERRORS_SOLVED.md")
Copy-IfMissing (Join-Path $KitDir "templates/ENV.example.template") (Join-Path $TargetPath ".env.example")

Copy-DirIfMissing (Join-Path $KitDir ".opencode/agents") (Join-Path $TargetPath ".opencode/agents")
Copy-DirIfMissing (Join-Path $KitDir ".opencode/commands") (Join-Path $TargetPath ".opencode/commands")
Copy-DirIfMissing (Join-Path $KitDir ".opencode/skills") (Join-Path $TargetPath ".opencode/skills")
Copy-IfMissing (Join-Path $KitDir ".opencode/opencode.jsonc") (Join-Path $TargetPath ".opencode/opencode.jsonc")

Write-Host ""
Write-Host "Proyecto inicializado con DevBrain OpenCode Kit."
Write-Host "Ruta: $TargetPath"
Write-Host "Siguiente paso:"
Write-Host "  Set-Location \"$TargetPath\""
Write-Host "  opencode"
Write-Host ""
Write-Host "Dentro de opencode:"
Write-Host "  /intake"
