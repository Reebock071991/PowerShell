
##
The below script compare the sha 256 keys of a file downloaded and the key on the web
##
$wc = [System.Net.WebClient]::new()
$pkgurl = ' C:\Users\Reebo\Downloads\VirtualBox-6.1.10-138449-Win.exe '
$publishedHash = '5bc643d09a15bb105f1df37f14e2024f88e82019921ead3cd9a43bee7290c762'
$FileHash = Get-FileHash -Algorith SHA256 -InputStream ($wc.OpenRead($pkgurl))
$FileHash.Hash.ToLower() -eq $publishedHash