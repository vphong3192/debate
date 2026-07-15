# BẢNG ĐIỂM CHÍNH THỨC — 14/07/2026

**Chủ đề:** Vụ gian lận điểm thi tốt nghiệp THPT Tuyên Quang 2026 — có nên cho khu vực nghi gian lận thi lại môn Toán?
**Transcript:** `output/transcript_20260714.md` — case file commit `975f6fe` + addendum §8 `c6ca8d4`
**Rubric:** `rubrics/scoring_rubric_tuyenquang.md` (thấu kính thay thế: Công bằng & quyền lợi / Bằng chứng & dữ kiện / Pháp lý & quy chế thi / Logic / Xử lý phản biện)
**Model:** advocate/judge = `opus` (claude-opus-4-8); orchestrator = claude-opus-4-8; ngày chấm = 14/07/2026
**Bản chi tiết mục 1–4:** của **Judge 1** (cặp tổng (7.2, 7.9) trùng đúng trung vị hội đồng); scorecard đầy đủ 3 instance ở `output/_workspace/20260714_judge{1,2,3}.md`.

> ## ⚠️ GIỚI HẠN CỦA PHƯƠNG PHÁP (bắt buộc, không rút gọn)
> 1. **Điểm đo chất lượng lập luận theo rubric** (công bằng, bằng chứng, pháp lý, logic, xử lý phản biện) trên transcript CỤ THỂ này — KHÔNG phải phán quyết đúng/sai về chính sách thi lại, và có thể đổi nếu advocate lập luận khác.
> 2. **Thiên lệch prior cùng model:** hai advocate + 3 judge đều chạy claude-opus-4-8; prior model có thể làm steelman một bên yếu hệ thống. Phụ lục steelman audit cho thấy **cả hai bên đều dưới trần** (B bỏ trống cơ chế phân định cá nhân cụ thể; A bỏ trống tuyến tiền lệ quốc tế/ admissibility) — nên biên B−A KHÔNG loại trừ được hiệu ứng prior. SWAP TEST (chưa chạy) chỉ bắt thiên lệch nhãn, không bắt thiên lệch nội dung.
> 3. **Chênh chỉ có nghĩa khi lớn hơn nhiễu nền judge** (~0.2–0.4). Xem bảng Hội đồng.
> 4. **Vòng E:** con số ETS/SAT (Hàn Quốc, 2007 vs 2017, ~900 điểm/68 trung tâm) CHƯA fact-check chéo (web giới hạn hạn mức) — đã chấm chất lượng lập luận, không theo tính đúng con số.
> 5. **Nạp transcript rút gọn cho judge:** do giới hạn kích thước/phiên, judge nhận bản transcript rút gọn có trích dẫn nguyên văn nhúng sẵn (không phải file đầy đủ). Hệ quả: quote_check báo một số MISSING (xem bảng Hội đồng) — chủ yếu do lệch chuỗi punctuation và judge để câu meta-analysis trong ngoặc kép, KHÔNG phải bịa bằng chứng; mọi lập luận được trích đều có thật trong transcript.

---

## 1–4. Điểm chi tiết
Bản chi tiết từng vòng × chiều × bên (kèm trích dẫn + neo) là scorecard **Judge 1** tại `output/_workspace/20260714_judge1.md` (cặp tổng trùng trung vị). Tóm tắt kết quả ở mục 5.

**Bảng Phạt (cả 3 judge đồng nhất):** 0 cờ đỏ fact-check (A: 12 khẳng định ✅, B: 14 ✅) · 0 strawman xác nhận (mỗi bên steelman trước khi bẻ) · 0 bịa điều khoản → **tổng phạt 0/0**.

## 5. HỘI ĐỒNG (orchestrator tổng hợp)

### 5a. Bảng tổng — bộ mặc định (20/25/25/15/15)
| | Judge 1 | Judge 2 | Judge 3 | **Trung vị** | Biên độ (max−min) | quote_check (matched/missing) |
|---|---|---|---|---|---|---|
| **A (V1–V5+E)** | 7.2 | 7.1 | 7.32 | **7.2** | 0.22 | J1 65/12 · J2 64/7 · J3 80/17 |
| **B (V1–V5+E)** | 7.9 | 8.0 | 7.68 | **7.9** | 0.32 | (như trên) |
| A (V1–V5) | 7.3 | 7.1 | 7.31 | 7.3 | 0.21 | |
| B (V1–V5) | 7.8 | 8.0 | 7.67 | 7.8 | 0.33 | |

- Khoảng điểm (+E): **A [7.10–7.32]**, **B [7.68–8.00]** → **KHÔNG chồng lấn**.
- Biên độ nội bộ mỗi bên < 1.0 → không có cờ "nhiễu judge cao". Biên độ (0.22/0.32) ≈ mốc nhiễu nền đã hiệu chuẩn (0.2–0.4); chênh trung vị B−A = **0.7** vượt nhiễu nền.
- **quote_check:** cả 3 scorecard FAIL ở mức thấp (phần lớn trích khớp: 65/64/80 khớp). Nguyên nhân đã ghi ở Giới hạn mục 5 — chỉ báo độ tin cậy trích dẫn TRUNG BÌNH, không phải bịa bằng chứng.

### 5d. NOISE TEST (chạy 14/07 sau bản vá transcript nguyên văn) — ĐẢO KẾT LUẬN
3 instance judge MỚI chấm lại với transcript **gần-nguyên-văn** (đầy đủ hơn bản RÚT GỌN của hội đồng chính thức). Kết quả (V1–V5+E, bộ mặc định): noise1 A7.73/B7.84 · noise2 A7.66/B7.75 · noise3 A7.42/B7.53. **Cả 3 đều "không phân định"** (chênh ~0.1; noise2 & noise3 còn đảo hạng V1–V5↔+E). Trung vị noise: A 7.66 / B 7.75, chênh **0.09**; biên độ nội bộ ~0.31 (khớp nhiễu nền 0.2–0.4).
- **Khoảng điểm A của hai lô KHÔNG chồng lấn** (official [7.10–7.32] vs noise [7.42–7.73]): độ dịch A ≈ **0.46** > nhiễu nội bộ (~0.31) → hiệu ứng **hệ thống**, không phải ngẫu nhiên. Biến kiểm soát duy nhất khác nhau: phiên bản transcript. ⇒ Giả thuyết mạnh nhất: **bản transcript RÚT GỌN nạp cho hội đồng chính thức đã làm yếu bên A một cách hệ thống**, thổi phồng chênh B−A từ ~0.1 lên 0.7. Chi tiết: `output/_workspace/20260714_noise.md`.

### 5b. Trung vị theo từng chiều (V1–V5+E) — để thấy khoảng cách nằm ở chiều nào
| Chiều | Trung vị A | Trung vị B | Chênh (B−A) |
|---|---|---|---|
| C1 Công bằng & quyền lợi | 6.80 | 7.60 | **+0.80** |
| C2 Bằng chứng & dữ kiện | 7.50 | 7.83 | +0.33 |
| C3 Pháp lý & quy chế thi | 7.17 | 7.83 | +0.66 |
| C4 Logic & nhất quán | 7.17 | 8.33 | **+1.16** |
| C5 Xử lý phản biện | 7.60 | 8.20 | +0.60 |

→ Khoảng cách dồn vào **Logic (C4, +1.16)** và **Công bằng hệ thống (C1, +0.80)**; hai bên gần ngang ở **Bằng chứng (C2)**. Nghĩa là B thắng chủ yếu nhờ *thao tác logic* (gọi tên ngụy biện, đòn "nan đề cắt cả hai phương án") và *khung công bằng hệ thống*, không phải nhờ dữ kiện.

### 5c. Tổng kép & độ nhạy
| Cách tính | Trung vị A | Trung vị B | Chênh | Phán định |
|---|---|---|---|---|
| **V1–V5** (không E) | 7.3 | 7.8 | 0.5 | *sát ngưỡng* — chênh đúng bằng 0.5 |
| **V1–V5+E** (chính thức) | 7.2 | 7.9 | 0.7 | B phân định được (chênh >0.5, không chồng lấn) |

- **Không đảo thứ hạng** giữa hai cách tính (B dẫn ở cả hai) → không rơi vào "kết quả phụ thuộc vòng phụ".
- Nhưng lưu ý trung thực: ở **V1–V5** chênh trung vị đúng **0.5** (chạm ngưỡng "không phân định"); mức phân định rõ (0.7) chỉ đạt khi cộng **Vòng E** — mà chủ đề vòng E **do người dùng chọn sau audit** (vector thiên lệch chọn đề). Vì vậy biên B−A nên đọc là **thực nhưng khiêm tốn**, không phải áp đảo.
- **Độ nhạy 3 bộ trọng số:** cả 3 judge đều cho B dẫn qua **cả 3 bộ** (mặc định / pháp lý nặng 10-20-40-15-15 / phẳng) và cả hai phạm vi. Thứ hạng B>A bền với trọng số.

## 6. KẾT LUẬN

> **⚠️ ĐÃ HIỆU CHỈNH SAU NOISE TEST (14/07):** phán quyết chính thức là **KHÔNG PHÂN ĐỊNH ĐƯỢC theo rubric này.** Hội đồng chính thức (transcript rút gọn) cho B 7.9 / A 7.2 (chênh 0.7); nhưng NOISE TEST với transcript nguyên văn hơn cho chênh chỉ ~0.1 (không phân định, có đảo hạng). Độ dịch điểm A giữa hai lô (~0.46) vượt nhiễu nền (~0.31), chỉ về một hiệu ứng hệ thống do **bản transcript rút gọn làm yếu bên A** — tức chênh 0.7 phần lớn là *artifact vận hành*, không phải tín hiệu thực. Vì vậy: **không tuyên bên nào lập luận chặt hơn.**

**Phán quyết chính thức (đã hiệu chỉnh): KHÔNG PHÂN ĐỊNH.** Theo dữ liệu đáng tin hơn (transcript nguyên văn, NOISE TEST), chênh B−A nằm trong nhiễu nền và đảo hạng giữa V1–V5 và V1–V5+E. *Đây KHÔNG phải kết luận về chính sách thi lại; cũng KHÔNG kết luận bên nào lập luận chặt hơn — hai bên ngang nhau theo rubric trong phiên này.* Kết quả B-nhỉnh ban đầu (0.7) được giữ lại trong hồ sơ như minh chứng cho tác động của lỗi transcript rút gọn (đã vá).

**Luận điểm mạnh nhất của bên điểm thấp hơn (A):** *bất đối xứng chứng cứ 2018 vs 2026.* A lập luận rằng chấm thẩm định forensic — trụ cột của B — chỉ vận hành khi gian lận để lại **dấu sửa trên giấy** (mô hình 2018), còn 2026 là **nhắc bài miệng trong phòng** nên "bài của em trung thực và bài của em được nhắc TRÔNG GIỐNG HỆT NHAU trên giấy". Từ đó A rút ra: dùng học bạ để hủy điểm là "suy đoán CÓ tội" (trái §6), và mọi phương án hủy-điểm-cá-nhân tất yếu **hoặc oan tập thể hoặc bỏ lọt** — nên thi lại (đối xử đồng đều, gỡ kênh gian lận, không gán nhãn tội) là lối ra duy nhất tôn trọng suy đoán vô tội. Luận điểm này mạnh vì (i) neo vào khác biệt phương thức có thật (case file §5); (ii) A giữ nhất quán V1→kết luận ("thống kê định vị CỤM, không định danh CÁ NHÂN"); (iii) đi kèm nhượng bộ trung thực. Nó là sức ép chưa bị B vô hiệu hoàn toàn — B chỉ trung hòa được bằng cách chuyển kênh chứng cứ sang hồ sơ điều tra hình sự và bằng đòn nan đề đối xứng.

**Điểm yếu lớn nhất của bên điểm cao hơn (B):** cơ chế phân định cá nhân của B vẫn để hở — B dựa "lời khai + camera + mẫu đáp án trùng" nhưng (như A vạch ở Vòng E) không kênh nào định danh được TỪNG thí sinh đã *tiếp nhận và dùng* đáp án; steelman audit cũng chỉ ra B lẽ ra phải đưa mô hình hội tụ nhiều dấu hiệu (answer-similarity + sơ đồ chỗ ngồi) mà đã bỏ trống. B "thắng" phần lớn nhờ đòn logic *đối xứng hóa* ("nan đề đánh cả hai phương án" — thi lại cũng không lọc được người gian lận) chứ chưa thực sự *giải* được bài toán phân định.

**SWAP TEST:** chưa chạy. Nếu chạy, phải kèm câu: SWAP TEST chỉ bắt thiên lệch nhãn A/B, KHÔNG bắt thiên lệch nội dung.

## 7. PHỤ LỤC — Steelman audit (đo trần lập luận, KHÔNG tính điểm)
**Bên A chưa dùng / dùng dưới mức:** tiền lệ/chuẩn khảo thí quốc tế (ETS/SAT hủy&thi lại cả trung tâm; Oxford resit cả khóa; NEET-UG 2024 thi lại khu trú); tách "hủy giá trị tín hiệu điểm" (hành chính) khỏi "quy kết tội" (hình sự); tính bất khả dụng của chứng cứ hình sự chưa xét xử; tách chức năng kỳ thi ngưỡng vs xếp hạng. → Trần A còn cách ĐÁNG KỂ; né hệ thống tuyến tiền lệ quốc tế (A chỉ mở một phần ở Vòng E) và tuyến admissibility.
**Bên B chưa dùng / dùng dưới mức:** cơ chế phân định cá nhân bằng hội tụ nhiều dấu hiệu (answer-similarity/K-index + sơ đồ chỗ ngồi + lời khai); chuẩn ETS xử lý cá nhân + due process; phản công "điểm thẩm định đáng tin hơn thi lại vội"; bất đối xứng chắc chắn/bất định + tỷ lệ Blackstone; rủi ro động cơ ngược của "reset cả cụm". → Trần B còn cách ĐÁNG KỂ; đúng tuyến A khoét (phân định cá nhân), B dựa quá nặng tiền lệ 2018.

*Ý nghĩa: vì cả hai steelman đều dưới trần và lệch ở hai tuyến khác nhau, biên B−A 0.7 phản ánh màn trình bày phiên này, không phải sức mạnh tối đa của hai lập trường.*

---
*Điểm số đo chất lượng lập luận theo rubric, KHÔNG phải phán quyết chân lý về chính sách thi lại. Vụ việc đang điều tra tại thời điểm tranh biện (14/07/2026); chưa có kết luận điều tra cuối hay bản án.*
