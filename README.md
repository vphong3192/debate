# Debate Arena — Hệ thống tranh luận có cấu trúc (chủ đề-trung lập)

Hệ thống tranh luận chạy trên Claude Code: 2 advocate đối xứng + 1 judge chấm theo rubric neo điểm, có fact-checker và 2 gate duyệt của con người. **Dùng được cho mọi chủ đề** — nội dung theo chủ đề sống trong `topics/<slug>/`, lõi harness là chủ đề-trung lập.

## Chạy nhanh
```bash
cd debate
claude
```
Sau đó:
1. Nêu chủ đề (mệnh đề tranh biện). Nếu chưa có `topics/<slug>/` → gõ `START PHASE 0` để dựng case file (web search) → duyệt → `APPROVE CASE FILE`.
2. `START DEBATE` → 5 vòng → đọc transcript → `APPROVE TRANSCRIPT`.
3. `START JUDGING` → nhận bảng điểm.

Lệnh bổ sung: `FULL RUN`, `EXTRA ROUND [chủ đề]`, `SWAP TEST` (kiểm thiên lệch nhãn của judge).

## Cấu trúc
- **Lõi (chủ đề-trung lập):** `protocol/`, `agents/`, `rubrics/scoring_rubric.md` (mặc định), `knowledge/source_policy.md`, `templates/`, `.claude/` (skill + subagent).
- **Chủ đề:** `topics/<slug>/` — case_file, position_A/B, rubric/source_policy/advocate_template (tùy chọn), output. Xem `topics/_README.md` và bộ khung `topics/_TEMPLATE/`.
- **Ví dụ đã chạy:** `topics/russia-ukraine/` (rubric trục 1 = just war), `topics/economic-crime/` (rubric 6 trục).

## Cơ chế chống thiên lệch
- Một prompt advocate duy nhất, vị trí chỉ là tham số → đối xứng tuyệt đối.
- Advocate không thấy rubric; judge không thấy debate cho đến khi xong — **thực thi bằng cách ly context**: mỗi vai chạy trong subagent riêng (`.claude/agents/debate-*.md`), orchestrator (skill `debate-orchestrator`) nạp cho mỗi vai đúng phần được phép thấy.
- SWAP TEST do một instance judge mới chấm bản hoán nhãn.
- Rubric neo điểm hành vi + bắt buộc trích dẫn biện minh cho từng ô điểm.
- Phân tích độ nhạy ≥3 bộ trọng số + SWAP TEST.
- Ngưỡng "không phân định" ±5% — không ép ra người thắng.

## Điều hệ thống này KHÔNG làm
Không phán quyết "bên nào đúng" về chân lý/đạo đức. Nó đo bên nào *lập luận chặt chẽ hơn theo rubric* trong một phiên cụ thể.
