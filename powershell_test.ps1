Write-Host "Choose option by typing 1, 2 or 3"
Write-Host "1: Connect to domaincontroller with RDP"
Write-Host "2: Create a domain user"
Write-Host "3: Disable a domain user"

$choice = Read-Host "Choice"

if ($choice -eq "1"){
    $c = New-PSSession -ComputerName SERVER19DC01.iths.local -Credential iths\admin
    $EXIT = 0
    while ($EXIT -ine 1) {
        $COMMAND = Read-Host "What command do you want to run?"
        if ($COMMAND -eq "q") {
            $EXIT = 1
        }
        Invoke-Command -Session $c -ScriptBlock {$COMMAND}
    }
    Write-Host "Connecting to domaincontroller"
}
elseif ($choice -eq "2"){
    Write-Host "Creating new user"
}
elseif ($choice -eq "3") {
    Write-Host "Disabling user"
}
else{
    Write-Host "Wrong option!"
}