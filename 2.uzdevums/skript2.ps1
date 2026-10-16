Get-Process | Sort-Object WorkingSet | Select-Object -Last 10 | ForEach-Object {
    [PSCustomObject]@{
        "Nosaukums"   = $_.Name
        "Id"          = $_.Id
        "Atmiņa (MB)" = [Math]::Round($_.WorkingSet / 1MB, 1)
    }
} | Format-Table -AutoSize
