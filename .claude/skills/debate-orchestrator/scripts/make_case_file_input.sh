#!/bin/sh
# make_case_file_input.sh — Rut gon case file cho judge MOT CACH CO GIOI (khong soan tay).
#
# Ly do ton tai (goi y 5, audit 07/08/2026): bai hoc P0-2 (go lai transcript lam LECH DIEM
# 0.46 he thong) ap dung y nguyen cho ban case file rut gon — truoc day orchestrator soan
# tay theo quy tac cua skill (giu header + §2/§3 + cac § duoc transcript trich; § khac
# thay stub). Quy tac von da co gioi → script hoa de loai rui ro paraphrase bat doi xung.
#
# Cach hoat dong:
#   - Quet <transcript> (nen dung file _judge_input.md — audit khong lot vao) tim moi tag
#     [Case file §...]; lay so § cap 1 (§6.4 → 6; §2-bis → 2).
#   - Giu NGUYEN VAN: phan header truoc §1, cac § duoc trich, va LUON giu §2 + §3
#     (loi doi chieu phap ly — quy tac 13/07/2026).
#   - Moi § khong duoc trich thay bang dung mot dong stub:
#     "### §N — [không được transcript trích, đã lược]"
#   - In ra stderr: danh sach § giu/luoc + dong metadata de dan vao scorecard.
#     Neu luoc duoc <= 1 § → khuyen dan case file DAY DU (skill: "khong luoc lat nhat").
#
# Usage: make_case_file_input.sh <case_file.md> <judge_input.md|transcript.md> [output.md]
#   Khong co output → in ra stdout.
CF="$1"; TR="$2"; OUT="$3"
[ -f "$CF" ] || { echo "ERROR: file not found: $CF" >&2; exit 1; }
[ -f "$TR" ] || { echo "ERROR: file not found: $TR" >&2; exit 1; }

# Cac § duoc transcript trich (chi lay so cap 1) + §2/§3 bat buoc.
cited=$(grep -o '\[Case file[^]]*\]' "$TR" | grep -o '§[0-9][0-9]*' | tr -d '§')
keep=$(printf '2\n3\n%s\n' "$cited" | grep -v '^$' | sort -nu)
keep_sp=$(printf '%s' "$keep" | tr '\n' ' ')

# Toan bo § cap 1 co trong case file.
all=$(grep -o '^## §[0-9][0-9]*' "$CF" | grep -o '[0-9][0-9]*' | sort -nu)

kept_list=""; elided_list=""
for n in $all; do
  if printf '%s\n' $keep_sp | grep -qx "$n"; then
    kept_list="$kept_list §$n"
  else
    elided_list="$elided_list §$n"
  fi
done

emit() {
  awk -v keep="$keep_sp" '
    BEGIN { p = 1; n = split(keep, a, " "); for (i = 1; i <= n; i++) k[a[i]] = 1 }
    /^## §[0-9]/ {
      s = $0; sub(/^## §/, "", s); sub(/[^0-9].*/, "", s)
      if (s in k) { p = 1; print; next }
      p = 0
      print "### §" s " — [không được transcript trích, đã lược]"
      print ""
      next
    }
    p { print }
  ' "$CF"
}

report() {
  echo "GIU nguyen van: header +$kept_list" >&2
  echo "LUOC (stub):${elided_list:- (khong § nao)}" >&2
  echo "Metadata scorecard: case file rút gọn (giữ:$kept_list)" >&2
  n_elided=$(printf '%s\n' $elided_list | grep -c '§' || true)
  if [ "$n_elided" -le 1 ]; then
    echo "LUU Y: chi luoc duoc $n_elided § — transcript trich gan het case file, nen dan DAY DU thay vi ban rut gon (skill: khong luoc lat nhat)." >&2
  fi
}

if [ -n "$OUT" ]; then
  emit > "$OUT"
  words=$(wc -w < "$OUT"); chars=$(wc -c < "$OUT")
  report
  echo "OK: viet $OUT (chars=$chars words=$words). Dan NGUYEN VAN noi dung file nay cho judge (chi danh cho judge — advocate/fact-checker/auditor van nhan case file DAY DU)." >&2
else
  emit
  report
fi
exit 0
