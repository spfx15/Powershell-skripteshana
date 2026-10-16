$time1 = Measure-Command { Get-Service -Name "Spooler" }
$time2 = Measure-Command { Get-CimInstance -ClassName Win32_Service -Filter "Name='Spooler'" }

$ms1 =$time1.TotalMilliseconds
$ms2 =$time2.TotalMilliseconds

$resultText = "Get-Service laiks: $ms1 ms.`nGet-CimInstance laiks: $ms2 ms.`n"
if ($ms1 -lt $ms2) {$resultText += "Ātrāks bija Get-Service." } else { $resultText += "Ātrāks bija Get-CimInstance." }
$resultText | Out-File -FilePath "izvade.txt" -Encoding utf8
