# Scrpt to create new file

param(
    [parameter(mandatory)]$path)
New-Item $path
write-host "file $path created sucessfully"
