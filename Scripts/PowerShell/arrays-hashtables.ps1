# Array
$array = @(1,4,9,15,5,11,24,13,7,10)
$array
$array.Count
$array[4]

[string[]]$stringArray1 = "Welcome", "To", "The", "ITI", "DOJO"
$stringArray2 = @("Welcome", "To", "The", "ITI", "DOJO")
$stringArray1
Write-Host ""
$stringArray2
$stringArray1.GetType()
$stringArray2.GetType() # You can see the Type is converted to Object[] and the base type is converted to System.Array. Object[] array means it can accept multiple strings. (= [string[]] > unlike normal [string] type)

# Hashtable
$hashTable = @{}
$key = 'iti-dojo'
$value = 1
$hashTable.Add( $key, $value )
$hashTable
$hashTable.GetType()

$dojoMembers = @{
    Dieter = 1
    Jozua = 2
    Stijn = 3
    Wouter = 4
    Dirk = 5
    Peter = 6
    Aagje = 7
    Michaël = 8
    Arthur = 9
    Thiemen = 10
    Tessa = 11
    Mathias = 12
}
$dojoMembers
$dojoMembers.GetEnumerator() | Sort-Object Value # GetEnumerator() method that lets you deal with the individual hashtable entries


# In DevOps we can't provide values for an array via @() but we can make use of string arrays [string[]].
# For example, there's a variable in DevOps to store email target addresses $emailTo
# In the ps1 script you've defined in the param( [string[]]$emailTo)
# To be able to send an email to each value in that string array you must first split it into an array, like a comma-separated list.
param(
    [string[]]$emailTo = "demo@itineris.net,test@itineris.net"
)

# The below indicates that the values provided in the DevOps variable must be comma separated.
[array]$toEmailAddresses = $emailTo.Split(',') 
$toEmailAddresses

