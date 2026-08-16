# Debate Arena

Hệ thống tranh luận có cấu trúc chạy trên Claude Code: 2 advocate đối xứng + hội đồng judge chấm theo rubric neo điểm, có fact-checker và 2 gate duyệt của con người. Chủ đề gốc là chiến tranh Nga–Ukraine; harness đã mở rộng cho nhiều bộ chủ đề (xem dưới).

## Bộ chủ đề

Mỗi chủ đề là một bộ file cùng hậu tố; **không trộn file giữa hai bộ** (nghiêm trọng nhất là `judge_notes` — nạp nhầm là lệch neo im lặng, không script nào bắt được).

| Bộ | Hậu tố | Chủ đề | Trạng thái |
|---|---|---|---|
| mặc định | *(không)* | Chiến tranh Nga–Ukraine | ĐÓNG |
| Tuyên Quang | `_tuyenquang` | Có nên cho thi lại môn Toán ở khu vực nghi gian lận điểm thi 2026 | ĐÓNG |
| gốc cây 55 | `_gochoa` | Trong bối cảnh chính quyền đang ngăn cản, có nên tiếp tục đặt hoa tại gốc cây 55 Nguyễn Huy Tự | **ĐANG DIỄN RA** |

Bộ file gồm: `knowledge/case_file_<topic>.md`, `knowledge/judge_notes_<topic>.md` (chỉ nạp cho judge), `rubrics/scoring_rubric_<topic>.md`, `agents/advocate_template_<topic>.md`, `agents/position_{A,B}_<topic>.md`.

## Chạy nhanh
```bash
cd debate
claude
```
Sau đó gõ lần lượt:
1. `START PHASE 0` → Claude hoàn thiện case file bằng web search → bạn duyệt → gõ `APPROVE CASE FILE`
2. `START DEBATE` → 5 vòng tranh luận → đọc transcript → gõ `APPROVE TRANSCRIPT`
3. `START JUDGING` → nhận bảng điểm trong `output/`

Lệnh bổ sung: `EXTRA ROUND [chủ đề]`, `SWAP TEST` (kiểm tra thiên lệch nhãn của judge), `NOISE TEST` (đo nhiễu nền của judge).

## Cơ chế chống thiên lệch
- Một prompt advocate duy nhất, vị trí chỉ là tham số → đối xứng tuyệt đối
- Advocate không thấy rubric lẫn `knowledge/judge_notes.md` (khung chấm theo chủ đề — chỉ nạp cho judge); judge không thấy debate cho đến khi xong — **thực thi bằng cách ly hai tầng**: mỗi vai chạy trong subagent riêng (`.claude/agents/debate-*.md`) với `tools:` bị giới hạn (không đọc được file cục bộ), orchestrator (skill `debate-orchestrator`) nạp cho mỗi vai đúng phần được phép thấy
- **Hội đồng 3 judge độc lập, lấy trung vị**; scorecard kèm biên độ hội đồng — chênh lệch chỉ có ý nghĩa khi vượt nhiễu nền
- SWAP TEST do một instance judge mới chấm bản hoán nhãn (judge cũ không tự chấm lại) — lưu ý: chỉ bắt được thiên lệch nhãn, không bắt được thiên lệch nội dung
- **Steelman audit** trước GATE 2: instance riêng liệt kê lập luận mạnh mỗi bên chưa dùng → đo trần steelman (vì cả hai advocate chạy cùng một model), vào phụ lục scorecard
- Rubric neo điểm hành vi + bắt buộc trích dẫn biện minh cho từng ô điểm — trích dẫn được script `quote_check` đối chiếu máy với transcript (chống judge bịa bằng chứng)
- Case file ghim bằng git hash tại GATE 1 (bổ sung sau gate phải qua `APPROVE CASE FILE ADDENDUM`); header transcript/scorecard ghi model + ngày chạy
- Có vòng phụ (EXTRA ROUND) → tổng báo cáo kép V1–V5 và V1–V5+E, nhưng **điểm chính thức = V1–V5** (vòng E chỉ vào phán quyết khi chủ đề đối xứng + qua gate riêng — chống thiên lệch chọn đề); đảo thứ hạng giữa hai cách tính → "không phân định"
- Phân tích độ nhạy 3 bộ trọng số + SWAP TEST + NOISE TEST
- Ngưỡng "không phân định": chênh trung vị ≤5% hoặc khoảng điểm hai bên chồng lấn — không ép ra người thắng
- **Chủ đề ĐANG DIỄN RA:** dữ kiện đóng băng tại GATE 1; advocate không được tra web để cập nhật tin (advocate vòng sau đứng trên nền dữ kiện khác advocate vòng đầu = phá đối xứng); diễn biến mới vào phiên chỉ qua `APPROVE CASE FILE ADDENDUM` kèm ghi rõ từ vòng nào advocate được biết; judge không phạt vì không biết tương lai và không thưởng vì biết tương lai; diễn biến lật **tiền đề đề bài** → đóng phiên sớm, mở phiên mới, không vá

## Điều hệ thống này KHÔNG làm
Không phán quyết "bên nào đúng" về chân lý lịch sử/đạo đức. Nó đo bên nào *lập luận chặt chẽ hơn theo rubric* trong một phiên cụ thể.
