#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""quote_check.py — Kiểm chống-bịa-trích của judge.

Mỗi chuỗi trong "..." của scorecard phải tồn tại NGUYÊN VĂN trong transcript,
sau khi chuẩn hóa (KHÔNG khớp mờ — khớp mờ mở cửa cho trích-bịa-gần-giống).

Cải tiến so với bản awk cũ (P0-1, 14/07/2026):
  - Unicode casefold: hết cờ oan với chữ hoa tiếng Việt đầu câu (Đ/Ư/Ô/Ấ…).
  - Chuẩn hóa dấu câu: – — - → "-"; “ ” „ ‟ « » → '"'; ‘ ’ → "'"; … → "..."; NBSP → space.
  - Đọc TOÀN FILE (không theo dòng) → bắt được trích trải nhiều dòng trong scorecard.
  - Đếm `cells_unquoted`: dòng bảng điểm có cột điểm nhưng KHÔNG có trích "..." hợp lệ
    (chống né kiểm bằng cách không trích gì) — chỉ cảnh báo, không tính FAIL.

Usage: quote_check.py <scorecard> <transcript> [min_words=4]
Exit:  0 = mọi trích khớp; 2 = có MISSING; 1 = lỗi input.
"""
import sys, re, unicodedata

def norm(s: str) -> str:
    s = unicodedata.normalize("NFC", s)
    # bỏ ký tự nhấn mạnh markdown
    s = re.sub(r"[*_`]", "", s)
    # chuẩn hóa dấu câu Unicode → ASCII tương đương
    trans = {
        "–": "-", "—": "-", "−": "-",           # – — −
        "“": '"', "”": '"', "„": '"', "‟": '"',  # “ ” „ ‟
        "«": '"', "»": '"',                          # « »
        "‘": "'", "’": "'", "ʼ": "'",           # ‘ ’ ʼ
        "…": "...",                                        # …
        " ": " ", " ": " ", " ": " ",           # NBSP, narrow, thin
    }
    s = s.translate({ord(k): v for k, v in trans.items()})
    s = re.sub(r"\s+", " ", s).strip()
    return s.casefold()  # casefold Unicode: Đ→đ, Ư→ư, v.v.

def main() -> int:
    if len(sys.argv) < 3:
        print("Usage: quote_check.py <scorecard> <transcript> [min_words=4]")
        return 1
    sc_path, tr_path = sys.argv[1], sys.argv[2]
    minw = int(sys.argv[3]) if len(sys.argv) > 3 else 4
    try:
        sc_raw = open(sc_path, encoding="utf-8").read()
        tr_norm = norm(open(tr_path, encoding="utf-8").read())
    except FileNotFoundError as e:
        print(f"ERROR: file not found: {e.filename}")
        return 1

    # Gom trích: mọi chuỗi trong "..." (đã đồng nhất “ ” về "), cho phép trải nhiều dòng.
    sc_uni = sc_raw.replace("“", '"').replace("”", '"')
    quotes = re.findall(r'"([^"]+)"', sc_uni, flags=re.DOTALL)

    total = missing = 0
    for q in quotes:
        # trích có ellipsis được tách thành mảnh; mỗi mảnh >= min_words phải khớp
        for frag in re.split(r"\.\.\.|…", q):
            f = norm(frag).strip(" .")
            if len(f.split()) < minw:
                continue
            total += 1
            if f not in tr_norm:
                missing += 1
                # in lại mảnh ở dạng chuẩn hóa (để đối chiếu) — cắt ngắn nếu quá dài
                show = f if len(f) <= 90 else f[:87] + "..."
                print(f'MISSING: "{show}"')

    # cells_unquoted: dòng bảng điểm (bắt đầu bằng | và có số 0–10) mà không có "..."
    cells_unquoted = 0
    for line in sc_raw.splitlines():
        if line.lstrip().startswith("|") and re.search(r"\|\s*(?:10|[0-9])\s*\|", line):
            if '"' not in line and "“" not in line:
                cells_unquoted += 1

    status = "FAIL" if missing > 0 else "OK"
    print(f"quotes_checked={total} missing={missing} cells_unquoted={cells_unquoted} status={status}")
    return 2 if missing > 0 else 0

if __name__ == "__main__":
    sys.exit(main())
