$timeLimit = (Get-Date).AddHours(-48)
$errors = Get-EventLog -LogName System -EntryType Error -After $timeLimit -ErrorAction SilentlyContinue

if (-not $errors) {
    Write-Output "Kļūdu skaits pēdējā 48 stundu laikā: 0"
} else {
    $count = $errors.Count
    $topSource = $errors | Group-Object Source | Sort-Object Count -Descending | Select-Object -First 1
    
    Write-Output "Kļūdu skaits: $count"
    Write-Output "Visbiežākais avots: $($topSource.Name) (ierakstu skaits: $($topSource.Count))"
}
