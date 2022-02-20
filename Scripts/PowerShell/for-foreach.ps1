# for
$colors = @("Red","Magenta","Orange","Yellow","Green","Blue","Indigo","Violet")
for ($i=0; $i -lt $colors.Length; $i++)
{
    $colors[$i]
}


# foreach
[array]$emailList = @("fleet@itineris.net","Ziek@itineris.net","Marketing.Mailbox@itineris.net", "SA.Ticket@itineris.net")
foreach($email in $emailList)
{
    Write-Host "Email address is" $email
}


# foreach-object 
Get-Process | ForEach-Object ProcessName
# Using the -parallel parameter requires version 7+
$Message = "Output: "
1..8 | ForEach-Object -Parallel {
    "$using:Message $_"
    Start-Sleep 2
} -ThrottleLimit 4

