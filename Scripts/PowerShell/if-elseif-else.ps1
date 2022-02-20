$number = 7
if($number -eq 7){
    Write-Host "Yey, number is 7."
}
########################################################################################

$color = "magenta"
if($color -eq "magenta"){
    Write-Host "Color is magenta."
}
else {
    Write-Host "Color is not magenta."
}
########################################################################################

$sport = "hockey"
if($sport -eq "hockey"){
    Write-Host "Sport is hockey"
}
elseif ($sport -eq "tennis") {
    Write-Host "Sport is tennis."
}
else {
    Write-Host "Sport is not tennis or hockey."
}
########################################################################################

$path = "C:\Windows\SysWOW64\WindowsPowerShell\v1.0"

$child = Get-ChildItem -Path $path -Name "powershell.exe"

if($child){
    Write-Host "PowerShell executable found on computer $env:ComputerName."
}
########################################################################################

$letters = "a b c d e f"
if($letters.Contains("d")){
    Write-Host "Letter found." -ForegroundColor Green
}
else
{
    Write-Error "Letter not found."
}
########################################################################################

# Checks if string is not empty or null
# You can also use ! as an alternative to -not.
[string]$version = $PSVersionTable.PSVersion#.GetType()
if (-not ([string]::IsNullOrEmpty($version)))
{
    $output = "The installed PowerShell version is: " + $version
}
Write-Host $output -ForegroundColor Cyan

$version.GetType()