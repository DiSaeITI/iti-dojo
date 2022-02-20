# Windows PowerShell needs to be in Interactive mode to be able to use Read and Prompt functionality.

#region do-until
$number = 0
do
{        
    $number
    Write-Host "Number is not 10."
    Start-Sleep -Seconds 2
    $number++
}
until ($number -eq 10)
#endregion

#region do-while
Start-process notepad
$p = "notepad"
do
{
    "$p found at $(get-date)"
    $proc = Get-Process
    Start-Sleep 2
} 
while ($proc.name -contains 'notepad') 
#endregion

#region while
while($i -ne 10)
{
    $i++
    Write-Host $i
}
#endregion