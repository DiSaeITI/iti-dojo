# define parameters
param(
    $text = "No secret code to be found here."
)

# import modules

# define functions
function writeSomething($textMessage)
{
    Write-Host "This is a test script. $textMessage"
}

# run code
writeSomething -textMessage $text
