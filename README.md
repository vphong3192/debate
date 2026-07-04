# Debate Arena — Nga–Ukraine

Hệ thống tranh luận có cấu trúc chạy trên Claude Code: 2 advocate đối xứng + 1 judge chấm theo rubric neo điểm, có fact-checker và 2 gate duyệt của con người.

## Chạy nhanh
```bash
cd debate-arena
claude
```
Sau đó gõ lần lượt:
1. `START PHASE 0` → Claude hoàn thiện case file bằng web search → bạn duyệt → gõ `APPROVE CASE FILE`
2. `START DEBATE` → 5 vòng tranh luận → đọc transcript → gõ `APPROVE TRANSCRIPT`
3. `START JUDGING` → nhận bảng điểm trong `output/`

Lệnh bổ sung: `EXTRA ROUND [chủ đề]`, `SWAP TEST` (kiểm tra thiên lệch nhãn của judge).

## Cơ chế chống thiên lệch
- Một prompt advocate duy nhất, vị trí chỉ là tham số → đối xứng tuyệt đối
- Advocate không thấy rubric; judge không thấy debate cho đến khi xong — **thực thi bằng cách ly context**: mỗi vai chạy trong subagent riêng (`.claude/agents/debate-*.md`), orchestrator (skill `debate-orchestrator`) nạp cho mỗi vai đúng phần được phép thấy
- SWAP TEST do một instance judge mới chấm bản hoán nhãn (judge cũ không tự chấm lại)
- Rubric neo điểm hành vi + bắt buộc trích dẫn biện minh cho từng ô điểm
- Phân tích độ nhạy 3 bộ trọng số + SWAP TEST
- Ngưỡng "không phân định" ±5% — không ép ra người thắng

## Điều hệ thống này KHÔNG làm
Không phán quyết "bên nào đúng" về chân lý lịch sử/đạo đức. Nó đo bên nào *lập luận chặt chẽ hơn theo rubric* trong một phiên cụ thể.
