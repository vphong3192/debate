# DEBATE ARENA — Hệ thống tranh luận có cấu trúc về chiến tranh Nga–Ukraine

## Mục đích
Tạo một cuộc tranh luận chất lượng cao giữa hai "chuyên gia" đại diện cho hai khung lập luận đối lập về cuộc chiến Nga–Ukraine, trên 4 trục: **tính chính đáng (just war theory), lịch sử, luật quốc tế, logic**. Kết thúc bằng một bảng điểm định lượng do Judge chấm theo rubric có neo điểm.

## Nguyên tắc nền tảng (KHÔNG ĐƯỢC VI PHẠM — áp cho MỌI vai trò, kể cả subagent)
1. **Chấm chất lượng lập luận, không phán quyết chân lý.** Điểm số đo "bên nào lập luận chặt chẽ hơn theo rubric", không phải "bên nào đúng về mặt đạo đức/lịch sử tuyệt đối". Mọi báo cáo cuối phải ghi rõ điều này.
2. **Đối xứng tuyệt đối.** Hai advocate dùng prompt giống hệt nhau (chỉ khác tham số POSITION). Ngân sách độ dài mỗi vòng bằng nhau (±10%). Thứ tự phát biểu luân phiên qua các vòng.
3. **Steelman bắt buộc.** Mỗi advocate phải trình bày phiên bản mạnh nhất của lập luận phía mình VÀ trước khi phản biện phải tóm tắt trung thực luận điểm đối phương.
4. **Chống bịa đặt (anti-fabrication):**
   - Mọi khẳng định sự kiện phải kèm nguồn: `[Nguồn: tên, năm]` hoặc trích từ `knowledge/case_file.md`.
   - Nếu không chắc về một sự kiện/văn kiện → ghi `[CẦN KIỂM CHỨNG]`, không được viết như sự thật.
   - Cấm bịa số liệu thương vong, ngày tháng, điều khoản hiệp ước, phán quyết tòa án.
   - Văn kiện pháp lý phải dẫn đúng số điều (vd: Điều 2(4) Hiến chương LHQ), nếu không nhớ chính xác → tra cứu hoặc đánh dấu.
5. **Không tuyên truyền.** Đây là phân tích học thuật. Không dùng ngôn ngữ phi nhân hóa, không cổ vũ bạo lực, không phủ nhận tội ác đã được tòa án/điều tra quốc tế xác lập.

## Harness: debate-arena

**Trigger:** mọi lệnh vận hành debate — `START PHASE 0`, `START DEBATE`, `START JUDGING`, `FULL RUN`, `EXTRA ROUND [chủ đề]`, `SWAP TEST`, `APPROVE CASE FILE`, `APPROVE TRANSCRIPT` — hoặc yêu cầu tương đương bằng lời thường (chạy/chạy lại phiên, thêm vòng, chấm lại, cập nhật case file) → dùng skill **`debate-orchestrator`**. Câu hỏi thông thường về nội dung file thì trả lời trực tiếp.

**Kiến trúc:** orchestrator là vai duy nhất trong context chính; advocate / fact-checker / judge chạy bằng subagent (`.claude/agents/debate-*.md`, model opus) với context được nạp riêng từng vai — đây là cơ chế thực thi Quy tắc thông tin trong `protocol/debate_protocol.md`. Chi tiết quy trình, bảng nạp context, xử lý lỗi: xem skill.

**Quy tắc bất biến ngoài skill:**
- Ngôn ngữ output: **tiếng Việt** (thuật ngữ pháp lý kèm tiếng Anh trong ngoặc lần đầu xuất hiện).
- Judge không bao giờ phát biểu trong Phase 1. Advocate không bao giờ tự chấm điểm.
- Hai bên chênh ≤5% tổng điểm → "không phân định được theo rubric này", KHÔNG ép ra người thắng.
- Hai gate người duyệt là bắt buộc, không tự động vượt.

**Change log:**
| Ngày | Thay đổi | Đối tượng | Lý do |
|------|----------|-----------|-------|
| 2026-06-12 | Xây harness ban đầu (agents/, rubrics/, protocol/, knowledge/, templates/) | toàn bộ | — |
| 2026-06-12→13 | Chạy 2 phiên debate + EXTRA ROUND (E4) + case file §10–14 | output/, case_file | vận hành thực tế |
| 2026-07-04 | Vá quy tắc chấm: ô N/A không vào trung bình, bỏ phạt kép cờ đỏ, quy tắc EXTRA ROUND, hợp thức hóa rubric thấu kính thay thế | rubrics/, agents/judge.md | audit 2026-07-04 |
| 2026-07-04 | Cách ly vai trò bằng subagent: `.claude/agents/debate-{advocate,judge,fact-checker}.md` + skill `debate-orchestrator`; SWAP TEST bằng instance judge mới | .claude/, protocol/ | Quy tắc thông tin trước đây không có cơ chế thực thi |
| 2026-07-04 | Script đếm từ (`word_count.ps1`), quy ước hậu tố file `_vN`, ghi ngày duyệt gate vào transcript, thư mục `_workspace/` | skill, protocol/ | ngân sách từ ±10% trước đây không đo được |
