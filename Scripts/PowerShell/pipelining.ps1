Get-Process | Where-Object {$psitem.ProcessName -eq "explorer"}
Get-Process | Where-Object {$_.ProcessName -ne "explorer"} | Sort-Object ProcessName

Get-Help Get-Service -Full