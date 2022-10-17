$Date = [DateTime]::Today.AddDays(-90)
Get-ADComputer -Filter 'PasswordLastSet -ge $Date' -Properties PasswordLastSet | Format-Table Name,PasswordLastSet