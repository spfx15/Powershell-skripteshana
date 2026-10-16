$thresholdGB = 20
$disks = Get-CimInstance Win32_LogicalDisk | Where-Object {$_.DriveType -eq 3}

foreach ($disk in $disks) {
    $sizeGB = [Math]::Round($disk.Size / 1GB, 2)
    $freeGB = [Math]::Round($disk.FreeSpace / 1GB, 2)
    
    Write-Output "Disks: $($disk.DeviceID) | Kopējais izmērs: $sizeGB GB | Brīvā vieta: $freeGB GB"
    
    if ($freeGB -lt $thresholdGB) {
        Write-Warning "BRĪDINĀJUMS: Diskam $($disk.DeviceID) brīvā vieta ($freeGB GB) ir mazāka par noteikto robežu ($thresholdGB GB)!"
    }
}
