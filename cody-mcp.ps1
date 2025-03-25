# Main application entry point

# Import foundation layer
. (Join-Path $PSScriptRoot "src/1.foundation/1.foundation.ps1")

# Initialize foundation
$foundationState = Initialize-CodyFoundation

# Display initialization status
Write-Host "Cody MCP initialized. Environment loaded: $($foundationState.EnvironmentInitialized)"