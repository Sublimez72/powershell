# Read in date and username
[datetime]$date = Read-Host "What is todays date?"
$username = Read-Host "What is your name?"
[int]$age = Read-Host "What is your age? "
$age_5 = $age+5

# print out strings

Write-Host "Todays date is $date "
Write-Host "Your name is $username"
Write-Host "You are $age years old and in 5 years you will be $age_5"
Write-Host 'This will not change $age $username'