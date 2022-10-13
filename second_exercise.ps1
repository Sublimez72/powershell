
$pre_bak = Read-Host "What folder do you want to backup?"
$post_bak = Read-Host "Where do you want to place the backup?"

Compress-Archive $pre_bak $post_bak

Write-Host "Created backup of $pre_bak and placed it in $post_bak"