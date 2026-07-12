#!/bin/sh
# Dem tu cho mot luot phat bieu va so voi ngan sach (+10% dung sai).
# Cung thuoc do voi word_count.ps1. Quy uoc thuoc do (tu 2026-07-12):
#   - bo dong tieu de dau tien neu bat dau bang '#'
#   - bo toan bo phan tu dong "**Nguồn trích dẫn" tro di (danh sach nguon cuoi luot)
#   - bo cac tag trich nguon inline: [Nguồn: ...], [Case file ...], [CẦN ...]
# Ly do: trich nguon la hanh vi rubric khuyen khich — khong duoc de no an vao ngan sach tu,
# neu khong advocate co dong co cat nguon de tiet kiem tu.
# Usage: word_count.sh <file> <limit>
if [ ! -f "$1" ]; then echo "ERROR: file not found: $1"; exit 1; fi
count=$(awk '
NR == 1 && /^#/ { next }
/^\*\*Nguồn trích dẫn/ { stop = 1 }
stop { next }
{
  gsub(/\[Nguồn:[^]]*\]/, "")
  gsub(/\[Case file[^]]*\]/, "")
  gsub(/\[CẦN[^]]*\]/, "")
  print
}' "$1" | wc -w | tr -d ' ')
limit="$2"
max=$((limit * 11 / 10))
if [ "$count" -le "$max" ]; then status=OK; code=0; else status=OVER; code=2; fi
echo "words=$count limit=$limit max_allowed=$max status=$status"
exit $code
