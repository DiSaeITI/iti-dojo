# Another method to run a specific set of code given specific conditions

# The switch statement is equivalent to a series of if statements
$team = "Bayern München"
switch ($team)
{
    "Real Madrid" {"The team is Real Madrid."}
    "Bayern München" {"The team is Bayern München."}
    "Ajax" {"The team is Ajax."}
    default {"Another team is entered."}
}

if ($team -eq "Ajax"){ "The team is Ajax." }
if ($team -eq "Bayern München"){ "The team is Bayern München." }
if ($team -eq "Real Madrid"){ "The team is Real Madrid." }
