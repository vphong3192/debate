# BẢNG ĐIỂM — [Ngày]

**Transcript:** [file] — case file commit `[git hash]` (+ addendum `[hash]` nếu có)
**Model:** judge/advocate = [alias / model ID nếu biết]; orchestrator = [model ID]; ngày chấm = [ngày]

> **Giới hạn của phương pháp (bắt buộc, không rút gọn):**
> 1. Điểm số dưới đây đo *chất lượng lập luận trong khuôn khổ rubric* (bằng chứng, căn cứ pháp lý, logic, xử lý phản biện) trên transcript cụ thể này. Nó KHÔNG phải phán quyết về chân lý lịch sử, pháp lý hay đạo đức của cuộc chiến, và có thể thay đổi nếu advocate lập luận khác đi.
> 2. **Thiên lệch prior cùng model:** cả hai advocate và judge chạy trên cùng một model; prior huấn luyện của model có thể làm steelman của một bên yếu đi một cách hệ thống. Phụ lục Steelman audit là chỉ báo cho khoảng cách này; SWAP TEST không phát hiện được loại thiên lệch này (nó chỉ bắt thiên lệch nhãn A/B).
> 3. Chênh lệch điểm chỉ có ý nghĩa khi lớn hơn nhiễu nền của judge — xem bảng Hội đồng (và NOISE TEST nếu chạy).

## 1. Bảng điểm chi tiết
### Vòng 1 — Mở đầu
| Chiều | A | Biện minh (trích dẫn + neo điểm) | B | Biện minh |
|---|---|---|---|---|
| Tính chính đáng | /10 | "..." — khớp neo [x] | /10 | |
| Lịch sử & bằng chứng | /10 | | /10 | |
| Luật quốc tế | /10 | | /10 | |
| Logic | /10 | | /10 | |
| Xử lý phản biện | — | (chưa áp dụng vòng 1) | — | |

[lặp lại cho vòng 2–5]

## 2. Phạt
| Bên | Lý do (cờ fact-check / strawman) | Điểm trừ |
|---|---|---|

## 3. Tổng hợp
| Chiều | Trọng số | A (TB các vòng) | B (TB các vòng) |
|---|---|---|---|
| Tính chính đáng | 20% | | |
| Lịch sử | 25% | | |
| Luật quốc tế | 25% | | |
| Logic | 15% | | |
| Xử lý phản biện | 15% | | |
| **TỔNG /10** | | **x.x** | **x.x** |

[Nếu có vòng E — bảng tổng kép, bắt buộc:]
| Cách tính | A | B | Thứ hạng đổi so với V1–V5? |
|---|---|---|---|
| V1–V5 (không tính E) | | | — |
| V1–V5+E (chính thức) | | | [Có → ghi "kết quả phụ thuộc vòng phụ", xử lý như không phân định] |

## 4. Phân tích độ nhạy
| Bộ trọng số | A | B | Thứ hạng đổi? |
|---|---|---|---|
| Mặc định (20/25/25/15/15) | | | |
| Pháp lý nặng (10/20/40/15/15) | | | |
| Phẳng (20/20/20/20/20) | | | |

## 5. Hội đồng (orchestrator điền)
| | Judge 1 | Judge 2 | Judge 3 | **Trung vị** | Biên độ (max−min) |
|---|---|---|---|---|---|
| A | | | | | |
| B | | | | | |
| quote_check (checked/missing sau sửa) | | | | — | — |

[Trung vị theo chiều — bắt buộc, để thấy khoảng cách/nhiễu nằm ở chiều nào:]
| Chiều | Trung vị A | Trung vị B | Chênh |
|---|---|---|---|
| Tính chính đáng | | | |
| Lịch sử & bằng chứng | | | |
| Luật quốc tế | | | |
| Logic | | | |
| Xử lý phản biện | | | |

- Bản chi tiết ở mục 1–4 là của Judge [n] (cặp tổng gần trung vị nhất); scorecard đầy đủ của cả 3 instance trong `_workspace/`.
- [Nếu biên độ một bên > 1.0: ghi "nhiễu judge cao, độ tin cậy thấp".]
- **Kết quả NOISE TEST (nếu chạy):** [bảng N instance + biên độ]

## 6. Kết luận
- **Bên lập luận chặt chẽ hơn theo rubric:** [A / B / Không phân định — chênh trung vị ≤0.5 hoặc khoảng [min,max] hai bên chồng lấn]
- **Luận điểm mạnh nhất của bên điểm thấp hơn:** [≥150 từ]
- **Điểm yếu lớn nhất của bên điểm cao hơn:** [...]
- **Kết quả SWAP TEST (nếu chạy):** [... — kèm câu: SWAP TEST chỉ bắt thiên lệch nhãn, không bắt thiên lệch nội dung]

## 7. Phụ lục: Steelman audit (orchestrator dán, không tính điểm)
### Bên A
[báo cáo debate-auditor]
### Bên B
[báo cáo debate-auditor]
