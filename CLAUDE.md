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

**Trigger:** mọi lệnh vận hành debate — `START PHASE 0`, `START DEBATE`, `START JUDGING`, `FULL RUN`, `EXTRA ROUND [chủ đề]`, `SWAP TEST`, `NOISE TEST`, `APPROVE CASE FILE`, `APPROVE CASE FILE ADDENDUM`, `APPROVE TRANSCRIPT` — hoặc yêu cầu tương đương bằng lời thường (chạy/chạy lại phiên, thêm vòng, chấm lại, cập nhật case file, đo nhiễu judge, audit steelman) → dùng skill **`debate-orchestrator`**. Câu hỏi thông thường về nội dung file thì trả lời trực tiếp.

**Kiến trúc:** orchestrator là vai duy nhất trong context chính; advocate / fact-checker / judge / steelman-auditor chạy bằng subagent (`.claude/agents/debate-*.md`, model opus) với context được nạp riêng từng vai VÀ `tools:` bị giới hạn trong frontmatter để subagent không tự đọc được file ngoài danh sách nạp — hai tầng này là cơ chế thực thi Quy tắc thông tin trong `protocol/debate_protocol.md`. Khung chấm theo chủ đề nằm ở `knowledge/judge_notes.md` — CHỈ nạp cho judge, KHÔNG BAO GIỜ cho advocate/fact-checker/auditor; không thêm nội dung "bên X được điểm/bị trừ" vào case file. Chi tiết quy trình, bảng nạp context, xử lý lỗi: xem skill.

**Quy tắc bất biến ngoài skill:**
- Ngôn ngữ output: **tiếng Việt** (thuật ngữ pháp lý kèm tiếng Anh trong ngoặc lần đầu xuất hiện).
- Judge không bao giờ phát biểu trong Phase 1. Advocate không bao giờ tự chấm điểm.
- Phán quyết chính thức lấy từ **hội đồng 3 judge độc lập, tính trung vị**. Chênh trung vị ≤5% tổng điểm HOẶC khoảng điểm hai bên chồng lấn → "không phân định được theo rubric này", KHÔNG ép ra người thắng.
- Hai gate người duyệt là bắt buộc, không tự động vượt.
- Báo cáo cuối phải khai báo giới hạn: hai advocate và judge chạy cùng một model (prior có thể làm steelman một bên yếu hệ thống); SWAP TEST chỉ bắt thiên lệch nhãn, không bắt thiên lệch nội dung.

**Change log:**
| Ngày | Thay đổi | Đối tượng | Lý do |
|------|----------|-----------|-------|
| 2026-06-12 | Xây harness ban đầu (agents/, rubrics/, protocol/, knowledge/, templates/) | toàn bộ | — |
| 2026-06-12→13 | Chạy 2 phiên debate + EXTRA ROUND (E4) + case file §10–14 | output/, case_file | vận hành thực tế |
| 2026-07-04 | Vá quy tắc chấm: ô N/A không vào trung bình, bỏ phạt kép cờ đỏ, quy tắc EXTRA ROUND, hợp thức hóa rubric thấu kính thay thế | rubrics/, agents/judge.md | audit 2026-07-04 |
| 2026-07-04 | Cách ly vai trò bằng subagent: `.claude/agents/debate-{advocate,judge,fact-checker}.md` + skill `debate-orchestrator`; SWAP TEST bằng instance judge mới | .claude/, protocol/ | Quy tắc thông tin trước đây không có cơ chế thực thi |
| 2026-07-04 | Script đếm từ (`word_count.ps1`), quy ước hậu tố file `_vN`, ghi ngày duyệt gate vào transcript, thư mục `_workspace/` | skill, protocol/ | ngân sách từ ±10% trước đây không đo được |
| 2026-07-12 | Vá rò rỉ rubric: tách các mục "Khung Judge" (§8.3, §9.5, §10.4, §11.4, §12.4, §14.3) khỏi case file sang `knowledge/judge_notes.md` (chỉ nạp cho judge); siết cách ly bằng `tools:` frontmatter (advocate/fact-checker: WebSearch+WebFetch; judge: Write) | knowledge/, .claude/agents/, skill, protocol/ | audit 2026-07-12 (P0): case file nạp cho advocate chứa tiêu chí chấm điểm; cách ly trước đây vẫn dựa một phần vào lời dặn |
| 2026-07-12 | Hội đồng 3 judge lấy trung vị + bảng hội đồng trong scorecard; lệnh `NOISE TEST` đo nhiễu nền judge; ngưỡng "không phân định" định nghĩa lại theo trung vị/chồng lấn | skill, rubrics/, agents/judge.md, templates/ | audit 2026-07-12 (P0): ngưỡng 0.5 trước đây chưa hiệu chuẩn với nhiễu lấy mẫu của judge đơn lẻ |
| 2026-07-12 | Steelman audit bắt buộc trước GATE 2 (agent `debate-auditor`, chạy đối xứng 2 bên, vào phụ lục scorecard); khai báo giới hạn "thiên lệch prior cùng model" + "SWAP TEST chỉ bắt thiên lệch nhãn" vào template scorecard | .claude/agents/, skill, protocol/, templates/ | audit 2026-07-12 (P1): SWAP TEST không phát hiện được thiên lệch nội dung; chưa có phép đo trần steelman |
| 2026-07-12 | Script `quote_check.{sh,ps1}` đối chiếu trích dẫn scorecard với transcript + quy ước "ngoặc kép chỉ dành cho trích nguyên văn"; ghim case file bằng git hash tại GATE 1 + lệnh `APPROVE CASE FILE ADDENDUM`; tổng kép V1–V5 / V1–V5+E khi có vòng E (đảo hạng → không phân định); metadata model + ngày vào header transcript/scorecard | skill scripts/, protocol/, rubrics/, agents/judge.md, templates/ | audit 2026-07-12 (P2): kiểm thử trên scorecard v2 cho thấy 27/34 "trích dẫn" của judge không khớp nguyên văn transcript; case file từng bị sửa sau GATE 1 không gate lại; vòng E là vector thiên lệch chọn chủ đề; đổi model làm mất tính so sánh giữa phiên |
| 2026-07-12 | Thước đo ngân sách từ loại tag trích nguồn inline + danh sách nguồn cuối lượt khỏi phép đếm (`word_count.{sh,ps1}`); quy tắc chống né fact-check trong rubric chiều 2 (lượt mở đầu/kết luận gần như không có khẳng định kiểm chứng được → trần neo 4); sửa đường dẫn README | skill scripts/, protocol/, rubrics/, README | audit 2026-07-12 (P3): thước đo cũ tạo động cơ cắt nguồn để tiết kiệm từ; "không lỗi nguồn nhờ không nói gì kiểm chứng được" trước đây không bị neo nào chặn |
| 2026-07-13 | Vá sau NOISE TEST đầu tiên: case file RÚT GỌN cho judge (giữ §2/§3 + § được transcript trích; các vai khác vẫn nhận đầy đủ); quy trình nạp nhiều phần + resume subagent sau gián đoạn hạ tầng vào skill; `quote_check` lowercase ASCII (hết false positive hoa/thường đầu câu); bảng hội đồng thêm trung vị theo chiều; mốc hiệu chuẩn nhiễu nền 0.2–0.4 vào protocol; banner "chưa tái thẩm" cho scorecard phiên 1; xóa file trùng lặp | skill, scripts/, protocol/, templates/, output/ | vận hành NOISE TEST 12–13/07: nạp ~50k token ×3 instance làm phiên chạm session limit 2 lần; trích giữa câu bị cờ oan vì chữ hoa đầu câu; hội đồng chỉ gom tổng làm mất thông tin chiều nào gây khoảng cách |
