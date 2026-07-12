---
name: debate-orchestrator
description: Điều phối toàn bộ quy trình tranh biện debate-arena (Nga–Ukraine). BẮT BUỘC dùng skill này khi người dùng gõ START PHASE 0, START DEBATE, START JUDGING, FULL RUN, EXTRA ROUND, SWAP TEST, NOISE TEST, APPROVE CASE FILE, APPROVE TRANSCRIPT — hoặc yêu cầu bằng lời thường như "chạy tranh biện", "chạy lại phiên", "thêm vòng về chủ đề X", "chấm lại", "cập nhật case file", "so sánh hai phiên", "kiểm tra thiên lệch judge", "đo nhiễu judge", "audit steelman". Mọi việc vận hành debate đều đi qua skill này; không tự đóng vai advocate/judge trong context chính.
---

# Debate Orchestrator

Bạn là orchestrator — người DUY NHẤT trong context chính. Advocate, fact-checker, judge chạy bằng subagent (`debate-advocate`, `debate-fact-checker`, `debate-judge`, luôn `model: "opus"`). Lý do bất khả nhượng: quy tắc thông tin trong `protocol/debate_protocol.md` chỉ thực thi được khi mỗi vai có context riêng do bạn nạp thủ công. Bạn không lập luận thay advocate, không chấm thay judge, không sửa nội dung lượt phát biểu (ngoài yêu cầu cắt gọn ngân sách từ).

## Phase 0 của mọi lần kích hoạt — xác định bối cảnh

1. Liệt kê `output/`. Trên Windows có OneDrive: dùng PowerShell `Get-ChildItem`, KHÔNG dùng Glob (cloud placeholder làm Glob bỏ sót file). Trên môi trường cloud/Linux: `ls` qua Bash là đủ.
2. Phân loại yêu cầu:
   - Chưa có transcript nào + `START PHASE 0`/`FULL RUN` → chạy từ đầu.
   - Đã có transcript + yêu cầu phiên mới → tên file mới theo quy ước hậu tố (`transcript_YYYYMMDD.md`, trùng ngày → `_v2`, `_v3`…).
   - `EXTRA ROUND [chủ đề]` → nối vào transcript mới nhất chưa chấm, hoặc tạo phụ lục vòng E cho transcript đã chấm (scorecard phải chấm lại nếu người dùng muốn tính E vào điểm). Nếu chủ đề cần bổ sung case file → đi qua `APPROVE CASE FILE ADDENDUM` (xem Phase 0 nghiệp vụ, bước 3).
   - `SWAP TEST` / `NOISE TEST` / "chấm lại" / "so sánh phiên" → chỉ Phase 2, không chạy lại debate.
3. Đọc `CLAUDE.md` (nguyên tắc nền tảng — áp cho mọi subagent qua ngữ cảnh dự án) và `protocol/debate_protocol.md`.

## Phase 0 (nghiệp vụ) — Case file & GATE 1

1. Đọc `knowledge/case_file.md`. Nếu còn `[CẦN BỔ SUNG]`/`[CẦN KIỂM CHỨNG]` mà chủ đề phiên sắp chạy sẽ động đến → hoàn thiện bằng WebSearch theo `knowledge/source_policy.md` (giữ nguyên số §, chỉ thêm mục mới). **Khi bổ sung chủ đề mới:** sự kiện + cảnh báo phương pháp trung lập → case file; mọi khung "bên X được điểm / bị trừ khi" → `knowledge/judge_notes.md` (cùng số § để đối chiếu), TUYỆT ĐỐI không viết vào case file.
2. **GATE 1 — DỪNG.** Báo người dùng duyệt. Chỉ qua gate khi người dùng gõ `APPROVE CASE FILE`. Sau khi duyệt: (a) ghi ngày duyệt vào đầu case file; (b) **ghim phiên bản** — commit `knowledge/` với message `GATE 1: case file phiên <ngày>`, lấy `git rev-parse --short HEAD`, ghi hash này vào header transcript sắp tạo. Bản được judge chấm phải đúng bản mang hash đã duyệt.
3. **Bổ sung case file SAU GATE 1** (vd phục vụ EXTRA ROUND): soạn phần bổ sung (sự kiện → case file; khung chấm → judge_notes, như quy tắc ở bước 1) → **DỪNG**, trình người dùng → chỉ áp dụng khi người dùng gõ `APPROVE CASE FILE ADDENDUM` → commit mới (`GATE 1 addendum: §<x> <ngày>`), ghi thêm hash addendum vào header transcript kèm phạm vi (§ nào). Không bao giờ sửa ngầm case file giữa hai gate.

## Phase 1 — Tranh luận (START DEBATE, sau GATE 1)

Chạy 5 vòng theo `protocol/debate_protocol.md`. Với MỖI lượt:

1. Gọi subagent `debate-advocate` (instance mới mỗi lượt), nạp đúng bảng context dưới đây — dán NỘI DUNG vào prompt, không chỉ đường dẫn, để subagent không phải tự đọc file:

| Subagent | Được nạp | Tuyệt đối không nạp |
|---|---|---|
| debate-advocate (bên X) | advocate_template.md; position của X; case_file.md; transcript các lượt đã phát biểu; cờ fact-check về lượt trước CỦA X; spec lượt hiện tại (vòng, giới hạn từ) | rubric; **judge_notes.md**; position bên kia; judge.md; scorecard; cờ fact-check về bên kia; báo cáo steelman audit |
| debate-fact-checker | fact_checker.md; các lượt của vòng vừa xong; case_file.md; source_policy.md | rubric; judge_notes.md; positions; scorecard |
| debate-judge | judge.md; scoring_rubric.md; **judge_notes.md**; transcript hoàn chỉnh; toàn bộ cờ fact-check; case_file.md; scorecard_template.md | positions; advocate_template; scorecard phiên khác (trừ khi so sánh theo yêu cầu); điểm của các judge khác trong hội đồng |
| debate-auditor (bên X) | position của X; case_file.md; transcript hoàn chỉnh; source_policy.md | rubric; judge_notes.md; judge.md; position bên kia; scorecard; cờ fact-check |

Cách ly được thực thi hai tầng: (a) bảng nạp này — dán nội dung, không dán đường dẫn; (b) `tools:` trong frontmatter mỗi agent đã bị giới hạn (advocate/fact-checker/auditor: chỉ WebSearch+WebFetch; judge: chỉ Write) nên subagent KHÔNG có khả năng kỹ thuật đọc file cục bộ ngoài danh sách được nạp. Không nới `tools:` của các agent này khi sửa harness.

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
3. Ghi lượt vào transcript theo `templates/transcript_template.md`. Khi TẠO transcript, điền đủ khối metadata của template: ngày chạy, hash case file GATE 1 (+ hash addendum nếu có), model của subagent (alias trong frontmatter + model ID chính xác nếu biết, vd từ system prompt của orchestrator), model của orchestrator — không so sánh điểm giữa các phiên chạy khác model mà không ghi chú.
4. Sau mỗi vòng (nếu bật fact-checker): gọi `debate-fact-checker`, lưu bảng cờ vào `_workspace/`, đưa vào phụ lục transcript khi vòng ĐÃ kết thúc. Cờ về bên X được nạp cho X ở lượt kế tiếp để đính chính.
5. Hết vòng 5: **Steelman audit (bắt buộc, trước GATE 2).** Gọi HAI instance `debate-auditor` (một cho mỗi bên, context theo bảng trên — đối xứng tuyệt đối), lưu báo cáo vào `_workspace/{phiên}_audit_{bên}.md`. Trình tóm tắt cả hai báo cáo cho người dùng cùng transcript. Báo cáo audit KHÔNG BAO GIỜ được nạp cho advocate — kể cả khi người dùng gọi EXTRA ROUND sau đó (nếu người dùng muốn ép advocate dùng lập luận từ audit, đó là ngoại lệ giao thức phải ghi rõ vào transcript như điều kiện thí nghiệm).
6. **GATE 2 — DỪNG.** Người dùng đọc transcript + audit; có thể `EXTRA ROUND [chủ đề]` (quay lại bước 1 với cặp lượt phản biện chủ đề hẹp). Chỉ tiếp khi `APPROVE TRANSCRIPT` — ghi ngày duyệt vào đầu transcript.

## Phase 2 — Chấm điểm (START JUDGING, sau GATE 2)

1. **Hội đồng 3 judge:** gọi BA instance `debate-judge` độc lập (cùng input, context theo bảng trên; không instance nào biết về các instance khác), mỗi instance xuất scorecard đầy đủ vào `_workspace/{phiên}_judge{1,2,3}.md`.
2. Kiểm tra từng scorecard đủ mục bắt buộc (bảng điểm từng vòng có trích dẫn + neo; bảng Phạt; tổng hợp N/A đúng quy tắc; độ nhạy 3 bộ; tổng V1–V5 tách riêng khi có vòng E; "luận điểm mạnh nhất của bên điểm thấp"; "giới hạn của phương pháp"). Thiếu → yêu cầu instance đó bổ sung.
   **Kiểm trích dẫn (chống judge bịa trích):** chạy trên TỪNG scorecard:
   ```sh
   # Cloud / Linux / macOS
   sh .claude/skills/debate-orchestrator/scripts/quote_check.sh <scorecard> <transcript>
   ```
   ```powershell
   # Windows
   powershell -File .claude/skills/debate-orchestrator/scripts/quote_check.ps1 -Scorecard <file> -Transcript <file>
   ```
   Có MISSING → trả lại đúng instance đó danh sách MISSING, yêu cầu thay bằng trích nguyên văn (hoặc chấm lại ô nếu bằng chứng không tồn tại) MỘT lần; chạy lại script. Vẫn FAIL → ghi số trích dẫn không xác minh được vào mục Hội đồng của scorecard chính thức, coi là chỉ báo độ tin cậy thấp của instance đó khi chọn bản chi tiết.
3. **Tổng hợp hội đồng (orchestrator làm, không gọi thêm judge):**
   - Điểm chính thức mỗi bên = **trung vị** của 3 tổng điểm (bộ trọng số mặc định; làm tương tự cho 2 bộ thay thế).
   - Scorecard chính thức (`output/scorecard_*.md` cùng hậu tố transcript) = bản của instance có cặp tổng (A, B) gần trung vị nhất, bổ sung: (a) **bảng hội đồng** — tổng A/B của cả 3 instance + trung vị + biên độ (max−min) từng bên + kết quả quote_check từng instance; (b) phụ lục **steelman audit** hai bên (từ Phase 1 bước 5); (c) đoạn "Giới hạn của phương pháp" theo template mới (thiên lệch prior cùng model, SWAP TEST chỉ bắt thiên lệch nhãn); (d) khối **metadata** — ngày chấm, hash case file, model judge/advocate.
   - Phiên có vòng E: mọi tổng báo cáo kép **"V1–V5"** và **"V1–V5+E"**; điểm chính thức vẫn là V1–V5+E (quy tắc hiện hành), nhưng nếu hai cách tính đảo thứ hạng → bắt buộc ghi "kết quả phụ thuộc vòng phụ do người dùng chọn chủ đề" và xử lý như "không phân định".
   - **Phán định "không phân định":** tuyên bố khi |trung vị A − trung vị B| ≤ 0.5 HOẶC khoảng [min,max] của hai bên chồng lấn. Biên độ nội bộ một bên > 1.0 → ghi rõ "nhiễu judge cao, độ tin cậy thấp" ngay cạnh kết luận.
4. `SWAP TEST` (khi người dùng yêu cầu): tạo bản transcript hoán nhãn A↔B trong `_workspace/` (đổi nhãn, giữ nguyên nội dung) → gọi MỘT instance `debate-judge` MỚI → so tổng điểm với **trung vị hội đồng**; lệch >max(0.5, biên độ hội đồng của bên tương ứng) → ghi chú độ tin cậy thấp vào scorecard chính thức. Khi báo kết quả, luôn nói rõ: SWAP TEST chỉ phát hiện thiên lệch NHÃN; nó không phát hiện được thiên lệch nội dung (judge nhận ra bên nào biện hộ cho ai bất kể nhãn).
5. `NOISE TEST` (chẩn đoán, khi người dùng yêu cầu): gọi N instance `debate-judge` mới (mặc định 3) chấm lại CÙNG transcript, không hoán đổi gì → báo cáo bảng tổng điểm từng instance + biên độ từng bên → lưu `_workspace/{phiên}_noise.md` và ghi biên độ đo được vào scorecard chính thức. Dùng nó để trả lời "chênh lệch X điểm có lớn hơn nhiễu nền không".
6. Báo cáo kết quả cho người dùng: trung vị hội đồng + biên độ, luôn kèm câu "điểm đo chất lượng lập luận theo rubric, không phải phán quyết chân lý".

## Xử lý lỗi

- Subagent lỗi/treo → gọi lại 1 lần với cùng input; vẫn lỗi → dừng, báo người dùng, không tự lập luận thay.
- Advocate vi phạm điều cấm (bịa nguồn, phi nhân hóa, phủ nhận sự kiện đã xác lập §13-loại) → KHÔNG ghi vào transcript; gọi lại instance mới kèm chỉ rõ vi phạm; tái phạm → ghi vào transcript kèm cờ để judge áp neo 0.
- WebSearch không xác minh được (fact-checker) → giữ nhãn `⚠️ KHÔNG XÁC MINH ĐƯỢC`, không leo thang thành 🔴.
- File output đã tồn tại → không ghi đè; tăng hậu tố `_vN`.

## Sau mỗi phiên

- Hỏi người dùng một câu phản hồi về quy trình (không ép). Phản hồi lặp ≥2 lần → đề xuất sửa harness (cập nhật file tương ứng + dòng Change log trong CLAUDE.md).

## Test scenario

- **Luồng chuẩn:** `FULL RUN` → Phase 0 đọc case file (đã hoàn thiện, không còn nhãn thiếu) → GATE 1 chờ APPROVE → commit + ghi hash vào header transcript → 5 vòng × (advocate → word_count → transcript), fact-check mỗi vòng → steelman audit 2 bên → GATE 2 chờ APPROVE → hội đồng 3 judge → quote_check từng scorecard (MISSING → trả judge sửa 1 lần) → tổng hợp trung vị + bảng hội đồng + phụ lục audit + metadata → báo cáo kèm disclaimer.
- **Luồng lỗi:** vòng 3, advocate A trả 950 từ (giới hạn 600) → word_count báo vượt → yêu cầu cắt còn ≤660 → nhận bản 640 từ → ghi transcript bình thường. Vòng 4, fact-checker không xác minh được một trích dẫn ICJ sau 2 lần tìm → gắn ⚠️, không 🔴, judge không phạt.
- **Luồng hội đồng lệch:** 3 judge trả tổng A = 7.2 / 7.8 / 7.5 và B = 8.0 / 8.1 / 8.0 → trung vị A 7.5, B 8.0; biên độ A 0.6 → chênh trung vị 0.5 ≤ 0.5 → tuyên "không phân định", kèm ghi chú biên độ A đáng kể.
