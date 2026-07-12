# Debate Arena — Nga–Ukraine

Hệ thống tranh luận có cấu trúc chạy trên Claude Code: 2 advocate đối xứng + 1 judge chấm theo rubric neo điểm, có fact-checker và 2 gate duyệt của con người.

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
- Có vòng phụ (EXTRA ROUND) → tổng báo cáo kép V1–V5 và V1–V5+E; đảo thứ hạng giữa hai cách tính → "không phân định"
- Phân tích độ nhạy 3 bộ trọng số + SWAP TEST + NOISE TEST
- Ngưỡng "không phân định": chênh trung vị ≤5% hoặc khoảng điểm hai bên chồng lấn — không ép ra người thắng

## Điều hệ thống này KHÔNG làm
Không phán quyết "bên nào đúng" về chân lý lịch sử/đạo đức. Nó đo bên nào *lập luận chặt chẽ hơn theo rubric* trong một phiên cụ thể.
