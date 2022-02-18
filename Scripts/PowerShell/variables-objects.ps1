# Working with variables

###################################################################################################
## Best practice: You should declare variable type when setting the variable for the first time. ##
###################################################################################################

[int]$var1 = 5
$var2 = 10
$sum = $var1 + $var2
$sum

$hello = "Hi magenta family"
$hello

# Spaces can be in variable names, but I do not recommend this
${This is a variable} = "No way.."
Write-Host ${This is a variable}

# Personally I like the below more, feels easier to type/use
$variableTestResult = "Yes way.."
$variableTestResult

# Get object type of variable
$var1.GetType()
[bool]$var1 = $true
$var1.GetType()

$var1 | Get-Member

$date = Get-Date
$date # Date could be a string object or could be a datetime object, when just seeing the output we don't know...

Get-Date | Get-Member
Get-Date | Get-Member -MemberType Properties # Run without 'MemberType' to also see the Methods that can be used with Get-Date cmdlet

#Get-Date | fl *
Get-Date | Format-List *

$day = $date.DayOfWeek # Specified property name
$day

# Working with a method from the object
$date.AddDays(30)