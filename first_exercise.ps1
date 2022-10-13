
[int]$first_num = Read-Host "First number"
[int]$second_num = Read-Host "Second number"

$addition = $first_num+$second_num
$subtraction = $first_num-$second_num 
$multiplication = $first_num*$second_num
$division = $first_num/$second_num

Write-Host "$addition"
Write-Host "$subtraction"
Write-Host "$multiplication"
Write-Host "$division"