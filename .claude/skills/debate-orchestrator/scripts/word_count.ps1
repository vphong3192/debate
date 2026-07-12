param(
    [Parameter(Mandatory = $true)][string]$Path,
    [Parameter(Mandatory = $true)][int]$Limit
)
# Dem tu cho mot luot phat bieu va so voi ngan sach (+10% dung sai theo CLAUDE.md).
# Cung thuoc do voi word_count.sh. Quy uoc thuoc do (tu 2026-07-12):
#   - bo dong tieu de dau tien neu bat dau bang '#'
#   - bo toan bo phan tu dong "**Nguồn trích dẫn" tro di (danh sach nguon cuoi luot)
#   - bo cac tag trich nguon inline: [Nguồn: ...], [Case file ...], [CẦN ...]
# Ly do: trich nguon la hanh vi rubric khuyen khich — khong duoc de no an vao ngan sach tu,
# neu khong advocate co dong co cat nguon de tiet kiem tu.
if (-not (Test-Path $Path)) { Write-Output "ERROR: file not found: $Path"; exit 1 }
$lines = Get-Content -Encoding UTF8 $Path
if ($lines.Count -gt 0 -and $lines[0] -match '^#') { $lines = $lines | Select-Object -Skip 1 }
$kept = New-Object System.Collections.Generic.List[string]
foreach ($line in $lines) {
    if ($line -match '^\*\*Nguồn trích dẫn') { break }
    $kept.Add($line)
}
$text = $kept -join ' '
$text = $text -replace '\[Nguồn:[^\]]*\]', ''
$text = $text -replace '\[Case file[^\]]*\]', ''
$text = $text -replace '\[CẦN[^\]]*\]', ''
$count = ([regex]::Matches($text, '\S+')).Count
$max = [math]::Floor($Limit * 1.1)
$status = if ($count -le $max) { 'OK' } else { 'OVER' }
Write-Output "words=$count limit=$Limit max_allowed=$max status=$status"
if ($status -eq 'OVER') { exit 2 } else { exit 0 }
