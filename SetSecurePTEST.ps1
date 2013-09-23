## versin information
## $id$
## changes by PAF
$username = "local\svc-dataprotector" 
$cred = Get-Credential -Credential $username 
$password = $cred.Password | ConvertFrom-SecureString
Start-Process powershell.exe -Credential $cred -NoNewWindow -ArgumentList "Start-Process powershell.exe -Verb runAs"
Write-Host
Write-Output "Script to encrypt the password securely for use in scripts"
Write-Output "scrtipts will only be able to use this if runas $username"
$password | convertfrom-securestring | out-file securecred.txt
Write-Output "Secure Password stored in securecred.txt"
Write-Output " you can use in the script with  `$password = get-content securecred.txt | convertto-securestring "
Write-Host "Press any key to continue ..."
$response = read-host
Write-Host

