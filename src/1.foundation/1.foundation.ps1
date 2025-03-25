# Import modules
$modules = @(
    "1.1.environment.ps1",
    "1.2.configuration.ps1",
    "1.3.paths.ps1"
)

$modulesLoaded = @{}

foreach ($module in $modules) {
    $modulePath = Join-Path $PSScriptRoot $module
    if (Test-Path $modulePath) {
        . $modulePath
        $modulesLoaded[$module] = $true
    }
    else {
        $modulesLoaded[$module] = $false
    }
}

function Initialize-CodyFoundation {
    $envInitialized = Initialize-CodyEnvironment
    Ensure-CodyPaths
    $config = Get-CodyConfig
    
    $foundationState = @{
        EnvironmentInitialized = $envInitialized
        ModulesLoaded = $modulesLoaded
        Config = $config
        Paths = Get-CodyPaths
    }
    
    return $foundationState
}

# Export-ModuleMember removed as it's only valid in module files (.psm1)
# The function is available because the script is dot-sourced