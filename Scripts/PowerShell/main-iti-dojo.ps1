# The module autoloading feature was introduced in PowerShell version 3.
# To take advantage of module autoloading, a script module needs to be saved in a folder with the same base name 
# as the .PSM1 file and in a location specified in $env:PSModulePath.
$env:PSModulePath -split ';'
# Store the 'PowerShell-ITI-DOJO.psm1' file (module script) in one of the directories listed by the script above to enable autoloading.

# Manually import the module file by specifying its location
Import-Module "$PSScriptRoot\PowerShell-ITI-DOJO.psm1"

Get-PSVersion

Get-PowerShellProcess

Write-Log -Message "{0} : No time like today to learn PowerShell scripting." -f (Get-Date)
Write-Log ("{0} : No time like today to learn PowerShell scripting." -f (Get-Date)) 

Get-ComputerName 

