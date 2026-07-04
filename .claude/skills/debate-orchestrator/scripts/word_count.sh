#!/bin/sh
# Dem tu cho mot luot phat bieu va so voi ngan sach (+10% dung sai).
# Cung thuoc do voi word_count.ps1: bo dong tieu de dau tien neu bat dau bang '#'.
# Usage: word_count.sh <file> <limit>
if [ ! -f "$1" ]; then echo "ERROR: file not found: $1"; exit 1; fi
count=$(awk 'NR==1 && /^#/ {next} {print}' "$1" | wc -w | tr -d ' ')
limit="$2"
max=$((limit * 11 / 10))
if [ "$count" -le "$max" ]; then status=OK; code=0; else status=OVER; code=2; fi
echo "words=$count limit=$limit max_allowed=$max status=$status"
exit $code
