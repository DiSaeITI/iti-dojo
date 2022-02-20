# Writes customized output to a host.
Write-Host "Hello"

# Writes the specified objects to the pipeline.
Write-Output "World"

# Compare Write-Host vs Write-Output
$a = 'Testing Write-Output'  | Write-Output
$b = 'Testing Write-Host' | Write-Host
Get-Variable a,b

# Writes a warning message.
Write-Warning "OMF"

# Writes an object to the error stream.
Write-Error "OMF"

# Writes text to the verbose message stream.
Write-Verbose -Message "This text will be shown only when the verbose parameters is used." #-verbose

# Specifies how PowerShell handles information stream data for a command.
Write-Information -MessageData "Processes starting with 'P'" -InformationAction Continue
Get-Process -Name p*

# Adds content to the specified items, such as adding words to a file.
Add-Content -Path "C:\temp\content-file.txt" -Value 'Begin of file'
Add-Content -Path "C:\temp\content-file.txt" -Value ' '
Add-Content -Path "C:\temp\content-file.txt" -Value 'End of file'