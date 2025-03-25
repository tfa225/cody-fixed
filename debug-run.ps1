# Development feedback wrapper

# Capture all output for debugging
try {
    $output = & "$PSScriptRoot\cody-mcp.ps1" 2>&1
    Write-Host "=== DEBUG OUTPUT ===" -ForegroundColor Cyan
    $output
    Write-Host "=== END DEBUG OUTPUT ===" -ForegroundColor Cyan
}
catch {
    Write-Host "=== ERROR ===" -ForegroundColor Red
    $_.Exception.Message
    Write-Host "=== END ERROR ===" -ForegroundColor Red
}