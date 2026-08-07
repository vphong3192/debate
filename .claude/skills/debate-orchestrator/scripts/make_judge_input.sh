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
# Guard (vá audit 07/08/2026): heading la load-bearing — xem quy uoc trong
# templates/transcript_template.md. Script FAIL neu:
#   (a) khong tim thay marker mo dau '## Vòng 1 — Mở đầu' (output se rong);
#   (b) transcript co phu luc steelman audit (cum 'steelman audit') nhung KHONG co
#       heading '## Phụ lục B' → marker dung khong bao gio khop → audit LOT VAO
#       input cua judge = vi pham Quy tac thong tin.
# Luu y: chi bat cum "steelman audit" — tu "steelman" don le xuat hien HOP LE trong
# luot advocate (steelman doi phuong), khong duoc dung lam tin hieu.
#
# Usage: make_judge_input.sh <transcript.md> [output.md]
#   Khong co output → in ra stdout.
TR="$1"; OUT="$2"
[ -f "$TR" ] || { echo "ERROR: file not found: $TR" >&2; exit 1; }

# (a) Marker mo dau phai ton tai — khong co thi output rong, fail ngay cho ro.
if ! grep -q '^## Vòng 1 — Mở đầu' "$TR"; then
  echo "ERROR: khong tim thay marker '## Vòng 1 — Mở đầu' trong $TR — heading transcript lech quy uoc (xem templates/transcript_template.md). KHONG duoc go lai tay; sua heading transcript roi chay lai." >&2
  exit 1
fi

# (b) Co audit ma khong co marker dung chuan → audit se lot vao input cua judge.
if grep -qi 'steelman audit' "$TR" && ! grep -q '^## Phụ lục B' "$TR"; then
  echo "ERROR: $TR chua 'steelman audit' nhung KHONG co heading '## Phụ lục B' — marker dung khong khop, phu luc audit se LOT VAO input cua judge (vi pham Quy tac thong tin). Sua heading phu luc audit thanh '## Phụ lục B — Steelman audit …' (xem templates/transcript_template.md) roi chay lai." >&2
  exit 3
fi

extract() {
  awk '
    /^## Vòng 1 — Mở đầu/ { p = 1 }
    /^## Phụ lục B/       { p = 0 }
    p { print }
  ' "$TR"
}

check_leak() {
  # Vong kiem cuoi tren OUTPUT: HEADING cua bao cao audit ('## Steelman audit — Bên …'
  # theo format cua debate-auditor, hoac '## Phụ lục B…') khong bao gio duoc co mat
  # trong input cua judge (bat truong hop audit dat truoc Phu luc A/thu tu la).
  # KHONG grep cum tu trong van xuoi: ghi chu "dieu kien thi nghiem" cua vong E
  # duoc phep NHAC den steelman audit (protocol bat buoc ghi) — chi heading moi la leak.
  if grep -Eqi '^#{1,6}[^#]*steelman audit|^## Phụ lục B' "$1"; then
    echo "ERROR: output chua HEADING cua phu luc/bao cao steelman audit — audit dang nam TRUOC marker dung (thu tu phu luc sai?). Kiem tra transcript; KHONG nap ban nay cho judge." >&2
    return 1
  fi
  return 0
}

if [ -n "$OUT" ]; then
  extract > "$OUT"
  words=$(wc -w < "$OUT"); chars=$(wc -c < "$OUT")
  if ! check_leak "$OUT"; then exit 3; fi
  echo "OK: viet $OUT (chars=$chars words=$words). Dan NGUYEN VAN noi dung file nay cho judge." >&2
else
  TMP="${TMPDIR:-/tmp}/make_judge_input.$$"
  extract > "$TMP"
  if ! check_leak "$TMP"; then rm -f "$TMP"; exit 3; fi
  cat "$TMP"
  rm -f "$TMP"
fi
exit 0
