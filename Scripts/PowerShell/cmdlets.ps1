Get-Command

Get-Help

Get-Command -Verb "Get"
Get-Command -Noun "Service"
Get-Command -Verb "Get" -Noun "Service"

Get-Verb | Sort-Object -Property Verb

# Get detailed information about the Get-ChildItem cmdlet, including the alias and examples
Get-Help Get-ChildItem -Detailed

# Find alias
Get-Alias -Definition Get-ChildItem
Get-Alias ac

# Before running the below, install the Az PowerShell module
Install-Module -Name Az
# If not automatically activated, run the cmdlet 'import-module'
Import-Module -Name Az

# Cmdlets + Parameters 
Get-Help Get-AzVM -Examples
Get-Help Get-AzVM -Detailed
Get-Help Get-AzVM -Full
