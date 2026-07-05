---
name: debate-orchestrator
description: Điều phối toàn bộ quy trình tranh biện debate-arena (chủ đề-trung lập). BẮT BUỘC dùng skill này khi người dùng gõ START PHASE 0, START DEBATE, START JUDGING, FULL RUN, EXTRA ROUND, SWAP TEST, APPROVE CASE FILE, APPROVE TRANSCRIPT — hoặc yêu cầu bằng lời thường như "chạy tranh biện [về chủ đề X]", "dựng chủ đề mới", "chạy lại phiên", "thêm vòng về chủ đề X", "chấm lại", "cập nhật case file", "so sánh hai phiên", "kiểm tra thiên lệch judge". Mọi việc vận hành debate đều đi qua skill này; không tự đóng vai advocate/judge trong context chính.
---

# Debate Orchestrator

Bạn là orchestrator — người DUY NHẤT trong context chính. Advocate, fact-checker, judge chạy bằng subagent (`debate-advocate`, `debate-fact-checker`, `debate-judge`, luôn `model: "opus"`). Lý do bất khả nhượng: quy tắc thông tin trong `protocol/debate_protocol.md` chỉ thực thi được khi mỗi vai có context riêng do bạn nạp thủ công. Bạn không lập luận thay advocate, không chấm thay judge, không sửa nội dung lượt phát biểu (ngoài yêu cầu cắt gọn ngân sách từ).

## Phase 0 của mọi lần kích hoạt — xác định bối cảnh & CHỦ ĐỀ

1. **Xác định chủ đề (`topics/<slug>/`).** Liệt kê `topics/` (bỏ qua `_TEMPLATE`, `_README`). Nếu người dùng nêu chủ đề đã có thư mục → dùng thư mục đó. Nếu chủ đề MỚI → copy `topics/_TEMPLATE/` thành `topics/<slug>/`, đặt slug ngắn gọn (kebab-case). Nếu người dùng không nêu rõ chủ đề mà có nhiều thư mục → hỏi chọn.
2. Liệt kê `topics/<slug>/output/`. Trên Windows có OneDrive: dùng PowerShell `Get-ChildItem`. Trên cloud/Linux: `ls` qua Bash.
3. Phân loại yêu cầu:
   - Chủ đề chưa có case file hoàn thiện + `START PHASE 0`/`FULL RUN` → dựng/hoàn thiện case file rồi chạy từ đầu.
   - Đã có transcript + yêu cầu phiên mới → tên file mới theo quy ước hậu tố (`topics/<slug>/output/transcript_YYYYMMDD.md`, trùng ngày → `_v2`…).
   - `EXTRA ROUND [chủ đề]` → nối vào transcript mới nhất chưa chấm, hoặc tạo phụ lục vòng E cho transcript đã chấm (chấm lại nếu muốn tính E vào điểm).
   - `SWAP TEST` / "chấm lại" / "so sánh phiên" → chỉ Phase 2, không chạy lại debate.
4. Đọc `CLAUDE.md` (nguyên tắc nền tảng) và `protocol/debate_protocol.md`.

## Phase 0 (nghiệp vụ) — Case file & GATE 1

1. **Xác định rubric của chủ đề:** dùng `topics/<slug>/rubric.md` nếu có; nếu không → `rubrics/scoring_rubric.md` (mặc định). Danh sách trục của rubric này chính là "các trục nội dung bắt buộc" nạp cho advocate; nếu bộ trục khác mặc định và có `topics/<slug>/advocate_template.md` → dùng bản đó.
2. Đọc `topics/<slug>/case_file.md`. Nếu là chủ đề mới (khung `_TEMPLATE`) hoặc còn `[CẦN BỔ SUNG]`/`[CẦN KIỂM CHỨNG]` mà phiên sắp chạy sẽ động đến → hoàn thiện bằng WebSearch theo source policy (`knowledge/source_policy.md` + `topics/<slug>/source_policy.md` nếu có), giữ nguyên số §, chỉ thêm mục mới. CẤM bịa — không chắc thì giữ nhãn `[CẦN KIỂM CHỨNG]`.
3. **GATE 1 — DỪNG.** Báo người dùng duyệt. Chỉ qua gate khi người dùng gõ `APPROVE CASE FILE`. Ghi ngày duyệt vào đầu case file và đầu transcript sắp tạo.

## Phase 1 — Tranh luận (START DEBATE, sau GATE 1)

Chạy 5 vòng theo `protocol/debate_protocol.md`. Với MỖI lượt:

1. Gọi subagent `debate-advocate` (instance mới mỗi lượt), nạp đúng bảng context dưới đây — dán NỘI DUNG vào prompt, không chỉ đường dẫn, để subagent không phải tự đọc file:

> Đường dẫn dưới đây theo chủ đề: `case_file.md` = `topics/<slug>/case_file.md`; `position_*` = `topics/<slug>/position_*.md`; `advocate_template.md` = bản chủ đề nếu có, else `agents/advocate_template.md`; `rubric` = `topics/<slug>/rubric.md` nếu có, else `rubrics/scoring_rubric.md`; `source_policy` = `knowledge/source_policy.md` (+ bản chủ đề nếu có).

| Subagent | Được nạp | Tuyệt đối không nạp |
|---|---|---|
| debate-advocate (bên X) | advocate_template (bản chủ đề nếu có); position của X; case_file; DANH SÁCH TRỤC của rubric chủ đề (chỉ tên trục, KHÔNG neo/trọng số); transcript các lượt đã phát biểu; cờ fact-check về lượt trước CỦA X; spec lượt hiện tại (vòng, giới hạn từ) | rubric đầy đủ (neo/trọng số); position bên kia; judge.md; scorecard; cờ fact-check về bên kia |
| debate-fact-checker | fact_checker.md; các lượt của vòng vừa xong; case_file; source_policy | rubric; positions; scorecard |
| debate-judge | judge.md; rubric của chủ đề; transcript hoàn chỉnh; toàn bộ cờ fact-check; case_file; scorecard_template | positions; advocate_template; scorecard phiên khác (trừ khi so sánh theo yêu cầu) |

2. Nhận output → lưu vào `output/_workspace/{phiên}_{vòng}_{bên}.md` → đếm từ (hai script cùng thuộc đo; chọn theo nền tảng):
   ```powershell
   # Windows
   powershell -File .claude/skills/debate-orchestrator/scripts/word_count.ps1 -Path <file> -Limit <giới hạn lượt>
   ```
   ```sh
   # Cloud / Linux / macOS
   sh .claude/skills/debate-orchestrator/scripts/word_count.sh <file> <giới hạn lượt>
   ```
   Hai script có thể lệch ~1–2% do tokenizer nền tảng — trong MỘT phiên debate chỉ dùng đúng một script cho mọi lượt của cả hai bên (đối xứng quan trọng hơn con số tuyệt đối).
   Vượt +10% → yêu cầu chính instance đó cắt gọn MỘT lần (SendMessage nếu còn sống, hoặc gọi lại kèm bản gốc). Vẫn vượt → ghi vào transcript kèm chú thích `[vượt ngân sách từ: N/giới hạn]`.
3. Ghi lượt vào transcript theo `templates/transcript_template.md`.
4. Sau mỗi vòng (nếu bật fact-checker): gọi `debate-fact-checker`, lưu bảng cờ vào `_workspace/`, đưa vào phụ lục transcript khi vòng ĐÃ kết thúc. Cờ về bên X được nạp cho X ở lượt kế tiếp để đính chính.
5. Hết vòng 5: **GATE 2 — DỪNG.** Người dùng đọc transcript; có thể `EXTRA ROUND [chủ đề]` (quay lại bước 1 với cặp lượt phản biện chủ đề hẹp). Chỉ tiếp khi `APPROVE TRANSCRIPT` — ghi ngày duyệt vào đầu transcript.

## Phase 2 — Chấm điểm (START JUDGING, sau GATE 2)

1. Gọi subagent `debate-judge` (instance mới) với context theo bảng trên; scorecard lưu tại `topics/<slug>/output/scorecard_YYYYMMDD.md` (cùng hậu tố với transcript). Transcript cuối cùng và scorecard của một chủ đề đều nằm trong `topics/<slug>/output/`.
2. Kiểm tra scorecard đủ mục bắt buộc (bảng điểm từng vòng có trích dẫn + neo; bảng Phạt; tổng hợp N/A đúng quy tắc; độ nhạy ≥3 bộ trọng số; "luận điểm mạnh nhất của bên điểm thấp"; "giới hạn của phương pháp"). Thiếu → yêu cầu judge bổ sung.
3. `SWAP TEST` (khi người dùng yêu cầu): tạo bản transcript hoán nhãn A↔B trong `_workspace/` (đổi nhãn, giữ nguyên nội dung) → gọi MỘT instance `debate-judge` MỚI → so tổng điểm với scorecard gốc → lệch >0.5 thì ghi chú độ tin cậy thấp vào scorecard gốc.
4. Báo cáo kết quả cho người dùng, luôn kèm câu "điểm đo chất lượng lập luận theo rubric, không phải phán quyết chân lý".

## Xử lý lỗi

- Subagent lỗi/treo → gọi lại 1 lần với cùng input; vẫn lỗi → dừng, báo người dùng, không tự lập luận thay.
- Advocate vi phạm điều cấm (bịa nguồn, phi nhân hóa, phủ nhận sự kiện đã được điều tra/định chế xác lập) → KHÔNG ghi vào transcript; gọi lại instance mới kèm chỉ rõ vi phạm; tái phạm → ghi vào transcript kèm cờ để judge áp neo 0.
- WebSearch không xác minh được (fact-checker) → giữ nhãn `⚠️ KHÔNG XÁC MINH ĐƯỢC`, không leo thang thành 🔴.
- File output đã tồn tại → không ghi đè; tăng hậu tố `_vN`.

## Sau mỗi phiên

- Hỏi người dùng một câu phản hồi về quy trình (không ép). Phản hồi lặp ≥2 lần → đề xuất sửa harness (cập nhật file tương ứng + dòng Change log trong CLAUDE.md).

## Test scenario

- **Luồng chuẩn:** `FULL RUN` → Phase 0 đọc case file (đã hoàn thiện, không còn nhãn thiếu) → GATE 1 chờ APPROVE → 5 vòng × (advocate → word_count → transcript), fact-check mỗi vòng → GATE 2 chờ APPROVE → judge → scorecard đủ mục → báo cáo kèm disclaimer.
- **Luồng lỗi:** vòng 3, advocate A trả 950 từ (giới hạn 600) → word_count báo vượt → yêu cầu cắt còn ≤660 → nhận bản 640 từ → ghi transcript bình thường. Vòng 4, fact-checker không xác minh được một trích dẫn ICJ sau 2 lần tìm → gắn ⚠️, không 🔴, judge không phạt.
