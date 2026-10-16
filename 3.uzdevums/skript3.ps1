$services = Get-Service
$runningCount = 0
$stoppedCount = 0

foreach ($s in $services) {
    if ($s.Status -eq 'Running') {
        $runningCount++
    }
    elseif ($s.Status -eq 'Stopped') {
        $stoppedCount++
    }
}

$sum = $runningCount + $stoppedCount
$total = $services.Count

Write-Output "Skrienošie servisi (Running): $runningCount"
Write-Output "Apturētie servisi (Stopped): $stoppedCount"
Write-Output "Kopējā summa: $sum"
Write-Output "Kopējais servisu skaits sistēmā: $total"
