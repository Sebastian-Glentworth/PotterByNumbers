$potterInfo = (Get-Content './potter.json' | Out-String | ConvertFrom-Json)

$runningTotal = 0
$potterInfo.books | ForEach-Object{ 
    Write-Output ("{0}: {1:N0}" -f $_.Title, ($_.Sales * $_.Words))
    $runningTotal += ($_.Sales * $_.Words)
}
Write-Output ("Total: {0:N0}" -f $runningTotal)