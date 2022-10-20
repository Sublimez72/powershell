Import-Module ActiveDirectory

Write-Host "Choose option by typing 1, 2 or 3"
Write-Host "1: Connect to domaincontroller with SSH"
Write-Host "2: Create a domain user"
Write-Host "3: Disable a domain user"

$choice = Read-Host "Choice"

if ($choice -eq "1"){
    ssh admin@server19dc01.iths.local
}
elseif ($choice -eq "2"){
    New-ADUser -Name "NewUser" -Accountpassword (Read-Host -AsSecureString "poiLKJ987" -Enabled $true)
    Write-Host "New User Created called NewUser"
}
elseif ($choice -eq "3") {
    Write-Host "Disabling user"
}
else{
    Write-Host "Wrong option!"
}