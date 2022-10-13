# Assinging both numbers to variables through user input
[int]$first_num = Read-Host "First number"
[int]$second_num = Read-Host "Second number"


# The logic that handles all the mathematical operations
$addition = $first_num+$second_num
$subtraction = $first_num-$second_num 
$multiplication = $first_num*$second_num
$division = $first_num/$second_num

# Outputting to the users screen
Write-Host "$addition"
Write-Host "$subtraction"
Write-Host "$multiplication"
Write-Host "$division"
