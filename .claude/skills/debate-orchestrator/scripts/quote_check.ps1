# Kiem tra chong bia trich dan cua judge (ban Windows, cung thuoc do voi quote_check.sh):
# moi doan trich trong "..." cua scorecard phai ton tai nguyen van trong transcript
# (sau khi chuan hoa khoang trang/markdown). Trich dan co ellipsis duoc tach thanh manh;
# moi manh >= MinWords tu phai khop, manh ngan hon duoc bo qua.
# Usage: powershell -File quote_check.ps1 -Scorecard <file> -Transcript <file> [-MinWords 4]
# Exit: 0 = tat ca khop; 2 = co trich dan khong tim thay; 1 = loi input.
param(
    [Parameter(Mandatory = $true)][string]$Scorecard,
    [Parameter(Mandatory = $true)][string]$Transcript,
    [int]$MinWords = 4
)
if (-not (Test-Path $Scorecard)) { Write-Output "ERROR: file not found: $Scorecard"; exit 1 }
if (-not (Test-Path $Transcript)) { Write-Output "ERROR: file not found: $Transcript"; exit 1 }

function Normalize([string]$s) {
    $s = $s -replace '[*_`]', ''
    $s = $s -replace '\s+', ' '
    return $s.Trim()
}

$tx = Normalize((Get-Content -Raw -Encoding UTF8 $Transcript))
$total = 0; $missing = 0
$lineNo = 0
foreach ($line in (Get-Content -Encoding UTF8 $Scorecard)) {
    $lineNo++
    $line = $line -replace '[“”]', '"'
    foreach ($m in [regex]::Matches($line, '"([^"]+)"')) {
        $nq = Normalize($m.Groups[1].Value)
        foreach ($f in ($nq -split '\.\.\.|…')) {
            $f = $f.Trim(' .')
            if (($f -split ' ').Count -lt $MinWords) { continue }
            $total++
            if (-not $tx.Contains($f)) {
                $missing++
                Write-Output "MISSING (scorecard dong ${lineNo}): `"$f`""
            }
        }
    }
}
$status = if ($missing -gt 0) { 'FAIL' } else { 'OK' }
Write-Output "quotes_checked=$total missing=$missing status=$status"
if ($missing -gt 0) { exit 2 } else { exit 0 }
