Get-Process | Where-Object {$psitem.ProcessName -eq "explorer"}
Get-Process | Where-Object {$_.ProcessName -ne "explorer"} | Sort-Object ProcessName

$dir = "C:\Program Files"
$files = Get-ChildItem $dir -recurse
$list = $files | ? {$_.Extension -eq ".exe"}
$list | Sort-Object -Unique | Format-Table name

Get-Help Get-Service -Full # Check which parameters accept pipeline input

Get-Alias -Definition Where-Object
Get-Alias -Definition Sort-Object
Get-Alias -Definition Format-Table