$potterInfo = (Get-Content './potter.json' | Out-String | ConvertFrom-Json)

$runningTotalSales = 0
$runningTotalWords = 0
$runningTotalWordsSold = 0
$potterInfo.books | ForEach-Object{ 
    Write-Output ("{0}:" -f $_.Title)
    Write-Output ("  Sales: {0:N0}" -f $_.Sales)
    Write-Output ("  Words: {0:N0}" -f $_.Words)
    Write-Output ("  Words Sold: {0:N0}" -f ($_.Sales * $_.Words))

    $runningTotalSales += $_.Sales
    $runningTotalWords += $_.Words
    $runningTotalWordsSold += ($_.Sales * $_.Words)
}
Write-Output ("Total: ")
Write-Output ("  Sales: {0:N0}" -f $runningTotalSales)
Write-Output ("  Words: {0:N0}" -f $runningTotalWords)
Write-Output ("  Words Sold: {0:N0}" -f $runningTotalWordsSold)