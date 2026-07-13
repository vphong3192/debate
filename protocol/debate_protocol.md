# DEBATE PROTOCOL — Cấu trúc vòng đấu

## Tổng quan: 5 vòng, luân phiên người đi trước

| Vòng | Tên | Ai trước | Giới hạn/lượt | Mục đích |
|---|---|---|---|---|
| 1 | Mở đầu | A | 800 từ | Trình bày khung lập luận đầy đủ trên 4 trục |
| 2 | Phản biện 1 | B | 600 từ | Tấn công luận điểm vòng 1 của đối phương (steelman trước) |
| 3 | Phản biện 2 | A | 600 từ | Bảo vệ + phản công; phải trả lời trực tiếp phản biện vòng 2 |
| 4 | Chất vấn chéo | B hỏi trước | 3 câu hỏi/bên, mỗi câu ≤100 từ, mỗi trả lời ≤300 từ | Ép trả lời điểm yếu cụ thể |
| 5 | Kết luận | A | 800 từ | Tổng hợp; bắt buộc có mục "Giới hạn của lập luận phía tôi" |

> Lưu ý: vòng 5 do bên đi SAU ở vòng 1 kết thúc sau cùng → cân bằng lợi thế lời cuối. Cụ thể: vòng 5 A nói trước, B nói sau.

## Quy tắc vòng chất vấn (vòng 4)
- Câu hỏi phải nhắm vào nội dung đối phương ĐÃ phát biểu (trích kèm).
- Người trả lời phải trả lời trực diện trước, mới được bổ sung bối cảnh. Né tránh → Judge trừ điểm chiều 5.
- Không hỏi dồn nhiều câu trong một câu (loaded/compound question).

## Quy tắc thông tin
- Advocate được thấy: case file + toàn bộ lượt đã phát biểu + cờ fact-check về CHÍNH các lượt trước của mình (để đính chính kịp thời).
- Advocate KHÔNG được thấy: rubric chi tiết, `knowledge/judge_notes.md` (khung chấm theo chủ đề — về bản chất là rubric mở rộng), ghi chú của fact-checker về phía đối phương trước khi vòng kết thúc, file position của đối phương, báo cáo steelman audit.
- Judge không được thấy gì cho đến Phase 2 (chấm trên transcript hoàn chỉnh). Ở Phase 2, judge được nạp thêm `knowledge/judge_notes.md`. Mỗi thành viên hội đồng không thấy điểm của các thành viên khác.
- **Cơ chế thực thi (hai tầng):** cách ly KHÔNG dựa vào lời hứa "không nhìn". (1) Mỗi lượt advocate, mỗi lần fact-check, mỗi lần audit, mỗi phiên chấm chạy trong một **subagent context mới**; orchestrator (skill `debate-orchestrator`) nạp cho mỗi subagent đúng danh sách file/nội dung được phép và không gì khác. (2) `tools:` trong frontmatter các agent bị giới hạn để subagent **không có khả năng kỹ thuật** đọc file cục bộ ngoài danh sách được nạp (advocate/fact-checker/auditor: WebSearch+WebFetch; judge: Write). Chạy các vai trong một context chung, hoặc nới `tools:` của các agent này, là vi phạm protocol.

## Kiểm soát ngân sách từ
- Sau mỗi lượt, orchestrator đếm từ bằng `scripts/word_count.{ps1,sh}` (trong skill debate-orchestrator). Quá giới hạn +10% → yêu cầu advocate cắt gọn MỘT lần; nếu vẫn quá, ghi vào transcript kèm chú thích vượt ngân sách để Judge biết (Judge trừ ở chiều 5 nếu phần vượt tạo lợi thế).
- **Thước đo (từ 12/07/2026):** KHÔNG tính vào ngân sách: dòng tiêu đề lượt, danh sách "Nguồn trích dẫn trong lượt này" cuối lượt, và các tag inline `[Nguồn: …]` / `[Case file §x]` / `[CẦN …]`. Lý do: trích nguồn là hành vi rubric khuyến khích — để nó ăn vào ngân sách từ là tạo động cơ cắt nguồn để tiết kiệm chữ, ngược chiều thiết kế.

## Chấm điểm bằng hội đồng & các phép kiểm

- **Hội đồng 3 judge (mặc định ở Phase 2):** ba instance judge độc lập chấm cùng transcript; điểm chính thức mỗi bên là **trung vị** của ba tổng. Scorecard chính thức phải kèm bảng hội đồng (ba tổng + trung vị + biên độ max−min từng bên). "Không phân định" khi |trung vị A − trung vị B| ≤ 0.5 HOẶC khoảng [min,max] hai bên chồng lấn. Biên độ một bên > 1.0 → ghi chú "nhiễu judge cao, độ tin cậy thấp".
- **Steelman audit (bắt buộc, trước GATE 2):** hai instance auditor độc lập (một cho mỗi bên, đối xứng) liệt kê các lập luận mạnh nhất mỗi bên CHƯA dùng. Mục đích: đo trần steelman — vì hai advocate chạy cùng một model, prior của model có thể làm steelman một bên yếu hệ thống. Báo cáo vào phụ lục scorecard, không cộng/trừ điểm, và không bao giờ đưa cho advocate trong cùng phiên.

## Mở rộng tùy chọn
- `EXTRA ROUND [chủ đề]`: người dùng có thể yêu cầu thêm một cặp phản biện về một chủ đề hẹp (vd: chỉ về Bản ghi nhớ Budapest). Vòng này được chấm như vòng phản biện (xem "Quy tắc áp dụng theo vòng" trong rubric) và vào trung bình như mọi vòng.
- `SWAP TEST`: chạy lại Phase 2 với nhãn A/B hoán đổi trong transcript, do một **instance judge mới** thực hiện (không phải judge đã chấm lần đầu). Nếu tổng lệch so với trung vị hội đồng > max(0.5, biên độ hội đồng của bên tương ứng) → báo cáo phải ghi chú độ tin cậy thấp. **Giới hạn phải khai báo mỗi lần dùng:** SWAP TEST chỉ phát hiện thiên lệch NHÃN (tên gọi A/B); nó KHÔNG phát hiện được thiên lệch nội dung — judge luôn nhận ra bên nào biện hộ cho vị trí nào bất kể nhãn.
- `NOISE TEST`: N instance judge mới (mặc định 3) chấm lại cùng transcript, không hoán đổi gì → đo biên độ dao động (nhiễu nền của judge). Mọi kết luận "bên X hơn Y điểm" chỉ có ý nghĩa khi chênh lệch lớn hơn nhiễu nền đo được.
  - **Mốc hiệu chuẩn đã đo:** 13/07/2026, n=3, transcript_20260612_v2, model opus — nhiễu nền (biên độ max−min mỗi bên) = **0.2–0.4 điểm**, ổn định trên cả 3 bộ trọng số → ngưỡng "không phân định" 0.5 lớn hơn nhiễu nền. Lần NOISE TEST sau so với mốc này; nếu biên độ đo được vượt 0.5 (vd sau khi đổi model), phải hiệu chuẩn lại ngưỡng trước khi tin bất kỳ phán định nào.

## Quy ước file output
- Transcript: `output/transcript_YYYYMMDD.md`; chạy lại cùng ngày → thêm hậu tố `_v2`, `_v3`… Scorecard cùng hậu tố với transcript nó chấm.
- **Ghim phiên bản case file:** khi `APPROVE CASE FILE`, orchestrator commit `knowledge/` và ghi git hash vào header transcript; bổ sung sau GATE 1 phải qua `APPROVE CASE FILE ADDENDUM` với commit + hash riêng. Judge chấm trên đúng bản mang hash đã duyệt.
- **Metadata bắt buộc** ở header transcript và scorecard: ngày chạy/chấm, hash case file, model của subagent (alias + model ID nếu biết) và của orchestrator. So sánh điểm giữa các phiên khác model phải kèm ghi chú.
- Đầu transcript ghi: ngày duyệt GATE 1 và ngày duyệt GATE 2.
- File làm việc trung gian đặt trong `output/_workspace/` (không phải sản phẩm cuối).

## Kiểm trích dẫn scorecard (chống judge bịa bằng chứng)
- Trong scorecard, **dấu ngoặc kép chỉ dành cho trích nguyên văn transcript**; nhấn mạnh hay thuật ngữ dùng *in nghiêng*. Orchestrator chạy `scripts/quote_check.{sh,ps1}` trên từng scorecard: trích dẫn không tìm thấy trong transcript → trả judge sửa một lần; vẫn thiếu → ghi vào bảng Hội đồng như chỉ báo độ tin cậy thấp.

## Vòng E và tổng điểm
- Có vòng E → mọi tổng báo cáo kép "V1–V5" và "V1–V5+E". Điểm chính thức là V1–V5+E, nhưng nếu hai cách tính đảo thứ hạng → ghi "kết quả phụ thuộc vòng phụ do người dùng chọn chủ đề" và xử lý như "không phân định" (chủ đề vòng E do người dùng chọn nên là một vector thiên lệch tiềm tàng — báo cáo kép làm nó nhìn thấy được).
