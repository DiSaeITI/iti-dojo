$site = Get-IISSite "AOSService"

if ($site.State -eq "Started")
{
    Write-Host "OK to continue..."
}
else
{
    do
    {
        $site = Get-IISSite "AOSService"
        Write-Host "AOSService site has state '$($site.State)'. Checking again in 15 seconds."
        Start-Sleep -Seconds 15
        Write-Host " "
    }
    while ($site.State -ne "Started")
}

Write-Host "AOSService site has state '$($site.State)'."