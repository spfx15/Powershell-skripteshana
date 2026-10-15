$os = Get-CimInstance Win32_OperatingSystem
$processCount = (Get-Process).Count

Write-Output "Datora nosaukums: $env:COMPUTERNAME"
Write-Output "Operētājsistēmas nosaukums: $($os.Caption)"
Write-Output "Būvējuma numurs: $($os.BuildNumber)"
Write-Output "PowerShell versija: $($PSVersionTable.PSVersion)"
Write-Output "Pašreizējais datums un laiks: $(Get-Date)"
Write-Output "Procesu skaits šobrīd: $processCount"
