param(
    [Parameter(Mandatory = $true)][string]$Path,
    [Parameter(Mandatory = $true)][int]$Limit
)
# Dem tu cho mot luot phat bieu va so voi ngan sach (+10% dung sai theo CLAUDE.md).
# Loai cac dong khung dinh dang (tieu de ###, dong **Nguon trich dan**) khoi ngan sach? KHONG —
# quy uoc: dem toan bo noi dung luot, tru dong tieu de dau tien, de hai ben chiu cung mot thuoc do.
if (-not (Test-Path $Path)) { Write-Output "ERROR: file not found: $Path"; exit 1 }
$lines = Get-Content -Encoding UTF8 $Path
if ($lines.Count -gt 0 -and $lines[0] -match '^#') { $lines = $lines | Select-Object -Skip 1 }
$text = $lines -join ' '
$count = ([regex]::Matches($text, '\S+')).Count
$max = [math]::Floor($Limit * 1.1)
$status = if ($count -le $max) { 'OK' } else { 'OVER' }
Write-Output "words=$count limit=$Limit max_allowed=$max status=$status"
if ($status -eq 'OVER') { exit 2 } else { exit 0 }
