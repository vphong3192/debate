#!/bin/sh
# make_judge_input.sh — Trich NGUYEN VAN (co hoc, khong go lai) phan transcript
# can nap cho judge: tu "## Vong 1" den het "## Phu luc A" (cac luot V1..vong cuoi
# + fact-check), BO "## Phu luc B" (steelman audit — judge khong duoc thay).
#
# Ly do ton tai (P0-2, 14/07/2026): orchestrator TUYET DOI khong duoc go lai/tom tat
# transcript khi nap cho judge — moi sai lech chuoi lam quote_check FAIL oan va (nghiem
# trong hon) lam LECH DIEM (xem output/_workspace/20260714_noise.md). Dung script nay
# tao file nap, roi dan NGUYEN VAN noi dung file do (hoac nap nhieu phan neu qua lon).
#
# Usage: make_judge_input.sh <transcript.md> [output.md]
#   Khong co output → in ra stdout.
TR="$1"; OUT="$2"
[ -f "$TR" ] || { echo "ERROR: file not found: $TR" >&2; exit 1; }

extract() {
  awk '
    /^## Vòng 1 — Mở đầu/ { p = 1 }
    /^## Phụ lục B/       { p = 0 }
    p { print }
  ' "$TR"
}

if [ -n "$OUT" ]; then
  extract > "$OUT"
  words=$(wc -w < "$OUT"); chars=$(wc -c < "$OUT")
  echo "OK: viet $OUT (chars=$chars words=$words). Dan NGUYEN VAN noi dung file nay cho judge." >&2
else
  extract
fi
