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
- Advocate KHÔNG được thấy: rubric chi tiết, ghi chú của fact-checker về phía đối phương trước khi vòng kết thúc, file position của đối phương.
- Judge không được thấy gì cho đến Phase 2 (chấm trên transcript hoàn chỉnh).
- **Cơ chế thực thi:** cách ly KHÔNG dựa vào lời hứa "không nhìn". Mỗi lượt advocate, mỗi lần fact-check, mỗi phiên chấm chạy trong một **subagent context mới**; orchestrator (skill `debate-orchestrator`) nạp cho mỗi subagent đúng danh sách file/nội dung được phép và không gì khác. Chạy cả 5 vai trong một context chung là vi phạm protocol.

## Kiểm soát ngân sách từ
- Sau mỗi lượt, orchestrator đếm từ bằng `scripts/word_count.ps1` (trong skill debate-orchestrator). Quá giới hạn +10% → yêu cầu advocate cắt gọn MỘT lần; nếu vẫn quá, ghi vào transcript kèm chú thích vượt ngân sách để Judge biết (Judge trừ ở chiều 5 nếu phần vượt tạo lợi thế).

## Mở rộng tùy chọn
- `EXTRA ROUND [chủ đề]`: người dùng có thể yêu cầu thêm một cặp phản biện về một chủ đề hẹp (vd: chỉ về Bản ghi nhớ Budapest). Vòng này được chấm như vòng phản biện (xem "Quy tắc áp dụng theo vòng" trong rubric) và vào trung bình như mọi vòng.
- `SWAP TEST`: chạy lại Phase 2 với nhãn A/B hoán đổi trong transcript, do một **instance judge mới** thực hiện (không phải judge đã chấm lần đầu). Nếu điểm lệch >0.5 → báo cáo phải ghi chú độ tin cậy thấp.

## Quy ước file output
- Transcript: `output/transcript_YYYYMMDD.md`; chạy lại cùng ngày → thêm hậu tố `_v2`, `_v3`… Scorecard cùng hậu tố với transcript nó chấm.
- Đầu transcript ghi: ngày duyệt GATE 1 (phiên bản case file) và ngày duyệt GATE 2.
- File làm việc trung gian đặt trong `output/_workspace/` (không phải sản phẩm cuối).
