# Import the Active Directory module so that all the commands work.
Import-Module ActiveDirectory

# Write instructions to the screen.
Write-Host "Choose option by typing 1, 2 or 3"
Write-Host "1: Connect to domaincontroller with SSH"
Write-Host "2: Create a domain user"
Write-Host "3: Disable a domain user"

# Store users choice in a variable.
$choice = Read-Host "Choice"

# If the user types 1 then the program connects to the domain controller with ssh.
if ($choice -eq "1"){
    Write-Host "Connecting to SERVER19DC01 with SSH"
    ssh admin@server19dc01.iths.local
    Start-Sleep 5
}
# If the user types 2 then the program creates a user called NewUser with the password poiLKJ987 and activates the user.
# the users password must be changed at logon.
elseif ($choice -eq "2"){
    New-ADUser -Name "NewUser" -Accountpassword (ConvertTo-SecureString "poiLKJ987" -AsPlainText -Force) -passThru -Enabled $true -ChangePasswordAtLogon $true
    Write-Host "New User Created called NewUser"
    Start-Sleep 5
}
# If the user types 3 then the program disables the user NewUser with no prompt required
elseif ($choice -eq "3") {
    Disable-ADAccount -Identity "NewUser" -Confirm
    Write-Host "User NewUser is now disabled"
    Start-Sleep 5
}
# if the user types something else we catch it here and write Wrong option.
else{
    Write-Host "Wrong option!"
    Start-Sleep 5
}