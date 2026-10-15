$drivers = Get-CimInstance Win32_PnPSignedDriver | Where-Object {$_.Manufacturer -notlike "*Microsoft*"}
$drivers | Export-Csv -Path "drivers.csv" -NoTypeInformation -Encoding utf8
$csvLines = (Get-Content "drivers.csv").Count
"CSV failā ir $csvLines rindas (ieskaitot virsrakstu)." | Out-File -FilePath "izvade.txt" -Encoding utf8
