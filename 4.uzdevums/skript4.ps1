$services = Get-Service | Where-Object {$_.StartType -eq 'Automatic' -and $_.Status -eq 'Stopped'}

if (-not $services) {
    Write-Output "Atrasto servisu skaits: 0"
} else {
    $services | Start-Service -WhatIf *>&1 | Out-File -FilePath "whatif.txt" -Encoding utf8
    $services | Start-Service *>&1 | Out-File -FilePath "izvade.txt" -Encoding utf8
}
