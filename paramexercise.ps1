# Scrpt to create new file

param($path)
if ((Test-Path $path)){
New-Item $path
write-host "file $path created sucessfully"}

else {Throw "Bad path chosen"}