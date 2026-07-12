#!/bin/sh
# Kiem tra chong bia trich dan cua judge: moi doan trich trong "..." cua scorecard
# phai ton tai nguyen van trong transcript (sau khi chuan hoa khoang trang/markdown).
# Trich dan co "..." hoac ellipsis … duoc tach thanh cac manh; moi manh >= min_words tu
# phai khop. Manh ngan hon min_words duoc bo qua (tranh false positive voi cum tu chung).
# Usage: quote_check.sh <scorecard> <transcript> [min_words=4]
# Exit: 0 = tat ca khop; 2 = co trich dan khong tim thay; 1 = loi input.
SC="$1"; TR="$2"; MINW="${3:-4}"
[ -f "$SC" ] || { echo "ERROR: file not found: $SC"; exit 1; }
[ -f "$TR" ] || { echo "ERROR: file not found: $TR"; exit 1; }

awk -v minw="$MINW" '
function norm(s) {
  gsub(/[*_`]/, "", s)
  gsub(/[[:space:]]+/, " ", s)
  sub(/^ /, "", s); sub(/ $/, "", s)
  return s
}
NR == FNR { tx = tx " " norm($0); next }
{
  line = $0
  gsub(/“|”/, "\"", line)
  while (match(line, /"[^"]+"/)) {
    q = substr(line, RSTART + 1, RLENGTH - 2)
    line = substr(line, RSTART + RLENGTH)
    nq = norm(q)
    n = split(nq, frag, /\.\.\.|…/)
    for (i = 1; i <= n; i++) {
      f = frag[i]
      sub(/^[ .]+/, "", f); sub(/[ .]+$/, "", f)
      if (split(f, tmp, " ") < minw) continue
      total++
      if (index(tx, f) == 0) {
        missing++
        printf "MISSING (scorecard dong %d): \"%s\"\n", FNR, f
      }
    }
  }
}
END {
  printf "quotes_checked=%d missing=%d status=%s\n", total, missing, (missing > 0 ? "FAIL" : "OK")
  exit (missing > 0 ? 2 : 0)
}' "$TR" "$SC"
