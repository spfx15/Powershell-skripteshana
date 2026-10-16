try {
    $processes = Get-CimInstance Win32_Process -ErrorAction Stop
    foreach ($p in $processes) {
        $owner = Invoke-CimMethod -InputObject $p -MethodName GetOwner -ErrorAction SilentlyContinue
    }
}
catch {
    $_.Exception.Message | Out-File -FilePath "izvade.txt" -Encoding utf8
}
