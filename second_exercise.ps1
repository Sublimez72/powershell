# Assigning paths to variables
param(
    [parameter(Mandatory)][string]$pre_bak,
    [parameter(Mandatory)][string]$post_bak
)

# Compression of folder
Compress-Archive $pre_bak $post_bak

# Output to screen
Write-Host "Created backup of $pre_bak and placed it in $post_bak"
