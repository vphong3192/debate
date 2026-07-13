# NOISE TEST — transcript_20260612_v2.md

**Mục đích:** đo nhiễu nền của judge — 3 instance `debate-judge` độc lập, context giống hệt nhau (judge.md + scoring_rubric + judge_notes + transcript + fact-check + case file, nạp 3 phần qua prompt), chấm CÙNG transcript, không hoán đổi gì. Rubric gốc duy nhất.
**Model:** judge = opus (alias frontmatter); orchestrator = claude-fable-5. Ngày chạy: 2026-07-12 → 2026-07-13 (instance 1–2 bị gián đoạn session limit giữa chừng và được resume — ghi nhận như một biến nhiễu vận hành tiềm tàng).
**Scorecard chi tiết:** `transcript_20260612_v2_noise_judge{1,2,3}.md` (cùng thư mục).

## Bảng tổng theo instance (V1–V5 / V1–V5+E)

| Bộ trọng số | Instance 1 (A) | Instance 2 (A) | Instance 3 (A) | **Trung vị A** | Biên độ A | Instance 1 (B) | Instance 2 (B) | Instance 3 (B) | **Trung vị B** | Biên độ B |
|---|---|---|---|---|---|---|---|---|---|---|
| Mặc định, V1–V5 | 6.9 | 7.0 | 7.1 | **7.0** | 0.2 | 7.3 | 7.2 | 7.5 | **7.3** | 0.3 |
| Mặc định, V1–V5+E | 7.0 | 7.1 | 7.2 | **7.1** | 0.2 | 7.4 | 7.3 | 7.6 | **7.4** | 0.3 |
| Pháp lý nặng, V1–V5 | 6.9 | 7.0 | 7.2 | **7.0** | 0.3 | 7.4 | 7.4 | 7.7 | **7.4** | 0.3 |
| Pháp lý nặng, V1–V5+E | 7.0 | 7.1 | 7.3 | **7.1** | 0.3 | 7.4 | 7.5 | 7.8 | **7.5** | 0.4 |
| Phẳng, V1–V5 | 7.0 | 7.1 | 7.3 | **7.1** | 0.3 | 7.4 | 7.2 | 7.6 | **7.4** | 0.4 |
| Phẳng, V1–V5+E | 7.1 | 7.2 | 7.3 | **7.2** | 0.2 | 7.5 | 7.4 | 7.7 | **7.5** | 0.3 |

Phạt: 0 ở cả 3 instance (0 🔴, 0 🟡, 0 strawman). Quote_check (checked/missing): instance 1 = 41/0; instance 2 = 56/3; instance 3 = 69/4 (miss chủ yếu là lệch hoa/thường hoặc diễn giải gần nguyên văn — không có trích bịa nội dung).

## Kết quả đo

1. **Nhiễu nền của judge (biên độ max−min trên cùng input): 0.2–0.4 điểm.** Ngưỡng "không phân định" 0.5 LỚN HƠN nhiễu nền đo được → ngưỡng đứng vững về mặt hiệu chuẩn (trước phép đo này nó là con số chọn tay).
2. **Phán định hội đồng trên transcript v2 (bộ mặc định, V1–V5+E): trung vị A = 7.1, trung vị B = 7.4, chênh 0.3 ≤ 0.5 → KHÔNG PHÂN ĐỊNH, B nghiêng nhẹ.** Cả 3 instance độc lập đều tự đi đến kết luận "không phân định, B nghiêng nhẹ". Khoảng [min,max] hai bên không chồng lấn ở bộ mặc định (A [7.0–7.2], B [7.3–7.6]) — hướng B ≥ A tái lập ở **18/18** cell (3 instance × 3 bộ × 2 phạm vi) → thứ hạng KHÔNG phải sản phẩm của nhiễu; chỉ có *độ lớn* chênh lệch nằm trong vùng không phân định.
3. **So với scorecard chính thức cũ (judge đơn, giao thức cũ, cùng transcript): A 7.6 / B 8.5, chênh 0.9.** Dưới giao thức mới: mức tuyệt đối của cả hai bên tụt ~0.5–1.1 điểm và chênh lệch co từ 0.9 về 0.3. Kết luận *"B thắng rubric gốc"* của scorecard cũ **không tái lập**; kết luận tái lập được là *"không phân định, B nghiêng nhẹ nhất quán"*. Không tách được phần nào của dịch chuyển là nhiễu và phần nào do 3 khác biệt giao thức: (i) khung chấm theo chủ đề giờ nạp riêng (judge_notes) thay vì nằm trong case file; (ii) yêu cầu trích nguyên văn máy-kiểm-được ép kỷ luật bằng chứng chặt hơn; (iii) chấm một rubric thay vì song song hai rubric.

## Hệ quả cho quy trình

- Mọi kết luận thắng/thua dựa trên chênh ≤0.4 của judge ĐƠN là không đáng tin — hội đồng 3 + trung vị (đã thành mặc định từ 12/07/2026) là bắt buộc.
- So sánh điểm tuyệt đối giữa các phiên chấm bằng giao thức khác nhau là vô nghĩa nếu không ghi chú — đúng lý do metadata giao thức/model đã được thêm vào header.

> Điểm số đo chất lượng lập luận theo rubric, không phải phán quyết chân lý.
