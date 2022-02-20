# The module autoloading feature was introduced in PowerShell version 3.
# To take advantage of module autoloading, a script module needs to be saved in a folder with the same base name 
# as the .PSM1 file and in a location specified in $env:PSModulePath.
$env:PSModulePath -split ';'
# Store the 'PowerShell-ITI-DOJO.psm1' file (module script) in one of the directories listed by the script above to enable autoloading.

# Manually import the module file by specifying its location
Import-Module "$PSScriptRoot\PowerShell-ITI-DOJO.psm1"

# Auto load module after storing it in local folder
Import-Module PowerShell-ITI-DOJO

Get-PSVersion

Get-PowerShellProcess

Write-Log -message ("{0} : No time like today to learn PowerShell scripting." -f (Get-Date)) 

Get-ComputerName

