$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $PSScriptRoot
Push-Location $root
try {
    python scripts/fetch-cores.py @args
    if ($LASTEXITCODE -ne 0) { throw "Core download failed with exit code $LASTEXITCODE" }
} finally {
    Pop-Location
}
