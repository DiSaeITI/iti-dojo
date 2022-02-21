# Simple functions
function Get-PSVersion 
{
    $PSVersionTable.PSVersion
}

function Get-PowerShellProcess 
{ 
    Get-Process PowerShell 
}

function Write-Log($message)
{
    Write-Output ($message)
}

# An advanced function
# Adding CmdletBinding adds the common parameters automatically. CmdletBinding requires a param block, but the param block can be empty.
function Get-ComputerName 
{
    <#
		.SYNOPSIS
		Get the computer name.	
		
		.DESCRIPTION
		Accepts one or more values for the computer name and outputs them to the shell.
		
		.PARAMETER ComputerName
		Specifies the computer name(s) that you want to display in the output window.	
	#>
    [CmdletBinding()]
    param (
        [ValidateNotNullOrEmpty()]
        [string[]]$ComputerName = $env:COMPUTERNAME
    )

    # BEGIN and END blocks are optional.
    PROCESS {
        foreach ($Computer in $ComputerName) {
            try {
                Write-Output $Computer
            }
            catch {
                Write-Warning -Message "Unable to get computer name: $Computer"
            }
        }
    }
}