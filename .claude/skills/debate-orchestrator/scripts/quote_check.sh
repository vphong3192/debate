#!/bin/sh
# Wrapper: uu tien quote_check.py (python3 — casefold Unicode, chuan hoa dau cau,
# trich da dong). Neu khong co python3 → fallback bo kiem awk cu (chi lowercase
# ASCII; yeu hon, co the bao FALSE POSITIVE voi chu hoa tieng Viet dau trich).
# Usage: quote_check.sh <scorecard> <transcript> [min_words=4]
DIR=$(dirname "$0")
if command -v python3 >/dev/null 2>&1; then
  exec python3 "$DIR/quote_check.py" "$@"
fi

echo "[quote_check] WARNING: khong co python3 — dung fallback awk (chi lowercase ASCII)" >&2
SC="$1"; TR="$2"; MINW="${3:-4}"
[ -f "$SC" ] || { echo "ERROR: file not found: $SC"; exit 1; }
[ -f "$TR" ] || { echo "ERROR: file not found: $TR"; exit 1; }
awk -v minw="$MINW" '
function norm(s) {
  gsub(/[*_`]/, "", s); gsub(/[[:space:]]+/, " ", s)
  sub(/^ /, "", s); sub(/ $/, "", s); return tolower(s)
}
NR == FNR { tx = tx " " norm($0); next }
{
  line = $0; gsub(/“|”/, "\"", line)
  while (match(line, /"[^"]+"/)) {
    q = substr(line, RSTART + 1, RLENGTH - 2); line = substr(line, RSTART + RLENGTH)
    nq = norm(q); n = split(nq, frag, /\.\.\.|…/)
    for (i = 1; i <= n; i++) {
      f = frag[i]; sub(/^[ .]+/, "", f); sub(/[ .]+$/, "", f)
      if (split(f, tmp, " ") < minw) continue
      total++
      if (index(tx, f) == 0) { missing++; printf "MISSING (awk): \"%s\"\n", f }
    }
  }
}
END { printf "quotes_checked=%d missing=%d status=%s\n", total, missing, (missing>0?"FAIL":"OK"); exit (missing>0?2:0) }
' "$TR" "$SC"
