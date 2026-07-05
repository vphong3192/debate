# DEBATE ARENA — Hệ thống tranh luận có cấu trúc (chủ đề-trung lập)

## Mục đích
Tạo một cuộc tranh luận chất lượng cao giữa hai "chuyên gia" đại diện cho hai khung lập luận đối lập về **một mệnh đề bất kỳ**, trên một bộ trục do chủ đề quy định (mặc định: khung chuẩn tắc, bằng chứng/thực chứng, cơ sở khung/pháp lý, logic, xử lý phản biện). Kết thúc bằng một bảng điểm định lượng do Judge chấm theo rubric có neo điểm.

> **Harness là chủ đề-trung lập.** Nội dung gắn với một chủ đề cụ thể sống trong `topics/<slug>/` (case file, hai position, rubric/source_policy/advocate_template tùy chọn, output). Xem `topics/_README.md` để dựng chủ đề mới; `topics/_TEMPLATE/` là bộ khung sạch. Hai chủ đề ví dụ đã hoàn thành: `topics/russia-ukraine/`, `topics/economic-crime/`.

## Nguyên tắc nền tảng (KHÔNG ĐƯỢC VI PHẠM — áp cho MỌI vai trò, kể cả subagent)
1. **Chấm chất lượng lập luận, không phán quyết chân lý.** Điểm số đo "bên nào lập luận chặt chẽ hơn theo rubric", không phải "bên nào đúng về mặt đạo đức/chân lý tuyệt đối". Mọi báo cáo cuối phải ghi rõ điều này.
2. **Đối xứng tuyệt đối.** Hai advocate dùng prompt giống hệt nhau (chỉ khác tham số POSITION). Ngân sách độ dài mỗi vòng bằng nhau (±10%). Thứ tự phát biểu luân phiên qua các vòng.
3. **Steelman bắt buộc.** Mỗi advocate phải trình bày phiên bản mạnh nhất của lập luận phía mình VÀ trước khi phản biện phải tóm tắt trung thực luận điểm đối phương.
4. **Chống bịa đặt (anti-fabrication):**
   - Mọi khẳng định sự kiện phải kèm nguồn: `[Nguồn: tên, năm]` hoặc trích từ `topics/<slug>/case_file.md`.
   - Không chắc về một sự kiện/văn kiện → ghi `[CẦN KIỂM CHỨNG]`, không viết như sự thật.
   - Cấm bịa số liệu, ngày tháng, điều khoản văn bản, phán quyết.
   - Nội dung "cứng" (điều luật, số liệu, mô hình chuyên ngành) phải dẫn đúng; không nhớ chính xác → tra cứu hoặc đánh dấu.
5. **Không tuyên truyền.** Đây là phân tích học thuật. Không dùng ngôn ngữ phi nhân hóa, không cổ vũ bạo lực, không phủ nhận sự kiện đã được điều tra/định chế xác lập.

## Harness: debate-arena

**Trigger:** mọi lệnh vận hành debate — `START PHASE 0`, `START DEBATE`, `START JUDGING`, `FULL RUN`, `EXTRA ROUND [chủ đề]`, `SWAP TEST`, `APPROVE CASE FILE`, `APPROVE TRANSCRIPT` — hoặc yêu cầu tương đương bằng lời thường (chạy/chạy lại phiên, thêm vòng, chấm lại, cập nhật case file, **dựng chủ đề mới**) → dùng skill **`debate-orchestrator`**. Câu hỏi thông thường về nội dung file thì trả lời trực tiếp.

**Kiến trúc:** orchestrator là vai duy nhất trong context chính; advocate / fact-checker / judge chạy bằng subagent (`.claude/agents/debate-*.md`, model opus) với context được nạp riêng từng vai — đây là cơ chế thực thi Quy tắc thông tin trong `protocol/debate_protocol.md`. Chi tiết quy trình, bảng nạp context, xử lý lỗi: xem skill.

**Quy tắc bất biến ngoài skill:**
- Ngôn ngữ output: **tiếng Việt** (thuật ngữ chuyên môn kèm tiếng Anh trong ngoặc lần đầu xuất hiện).
- Judge không bao giờ phát biểu trong Phase 1. Advocate không bao giờ tự chấm điểm.
- Hai bên chênh ≤5% tổng điểm → "không phân định được theo rubric này", KHÔNG ép ra người thắng.
- Hai gate người duyệt là bắt buộc, không tự động vượt.
- **Mỗi phiên gắn với một `topics/<slug>/`.** Nếu người dùng nêu chủ đề mới chưa có thư mục → Phase 0 dựng nó từ `topics/_TEMPLATE/` (kèm WebSearch cho case file) rồi mới tới GATE 1.

**Cấu trúc lõi (chủ đề-trung lập):**
- `protocol/debate_protocol.md` — cấu trúc 5 vòng, ngân sách từ, quy tắc thông tin.
- `agents/advocate_template.md`, `agents/fact_checker.md`, `agents/judge.md` — prompt vai; trục nội dung là tham số theo chủ đề.
- `rubrics/scoring_rubric.md` — rubric MẶC ĐỊNH (5 trục + "năm bất biến"); chủ đề có thể override trong `topics/<slug>/rubric.md`.
- `knowledge/source_policy.md` — phân hạng nguồn mặc định.
- `templates/` — khung transcript & scorecard.

**Change log:**
| Ngày | Thay đổi | Đối tượng | Lý do |
|------|----------|-----------|-------|
| 2026-06-12 | Xây harness ban đầu (agents/, rubrics/, protocol/, knowledge/, templates/) | toàn bộ | — |
| 2026-06-12→13 | Chạy 2 phiên debate Nga–Ukraine + EXTRA ROUND (E4) + case file §10–14 | output/, case_file | vận hành thực tế |
| 2026-07-04 | Vá quy tắc chấm: ô N/A không vào trung bình, bỏ phạt kép cờ đỏ, quy tắc EXTRA ROUND, hợp thức hóa rubric thấu kính thay thế | rubrics/, agents/judge.md | audit 2026-07-04 |
| 2026-07-04 | Cách ly vai trò bằng subagent + skill `debate-orchestrator`; SWAP TEST bằng instance judge mới | .claude/, protocol/ | Quy tắc thông tin trước đây không có cơ chế thực thi |
| 2026-07-04 | Script đếm từ, quy ước hậu tố `_vN`, ghi ngày duyệt gate, thư mục `_workspace/` | skill, protocol/ | ngân sách từ ±10% trước đây không đo được |
| 2026-07-05 | Chạy chủ đề mới "tội phạm kinh tế/tham nhũng" (rubric 6 trục) + SWAP TEST | topics/economic-crime/ | vận hành chủ đề trong nước |
| 2026-07-05 | **Generalize harness thành chủ đề-trung lập:** tách nội dung chủ đề vào `topics/<slug>/`; rubric/source_policy/advocate_template/templates thành mặc định + cơ chế override; lưu trữ 2 phiên cũ dưới `topics/`; thêm `topics/_TEMPLATE/` | toàn bộ lõi, topics/ | tái dùng cho phiên sạch sau này |
