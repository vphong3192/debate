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
3. **Chọn BỘ FILE CHỦ ĐỀ (bắt buộc, trước khi nạp bất kỳ context nào cho subagent):** harness chứa nhiều chủ đề. Bộ mặc định (Nga–Ukraine): `case_file.md` / `judge_notes.md` / `scoring_rubric.md` / `advocate_template.md` + `position_{A,B}.md`. Chủ đề khác dùng bộ topic-scoped cùng hậu tố (vd `_tuyenquang`): `case_file_<topic>.md` / `judge_notes_<topic>.md` / `scoring_rubric_<topic>.md` / `advocate_template_<topic>.md` + `position_{A,B}_<topic>.md`. Quy tắc:
   - Mọi tham chiếu file trong skill này hiểu là "file của bộ đã chọn".
   - **KHÔNG trộn file giữa hai bộ** — nghiêm trọng nhất là judge_notes: nạp judge_notes của chủ đề khác cho judge là lệch neo im lặng (không script nào bắt được).
   - Ghi bộ đã chọn vào khối metadata của transcript VÀ scorecard: `bộ chủ đề: mặc định (Nga–Ukraine)` hoặc `bộ chủ đề: <hậu tố>`, kèm danh sách file.
   - Chủ đề mới chưa có bộ file → tạo ĐỦ bộ theo hậu tố mới (như phiên 14/07), không đè bản gốc, và đi qua GATE 1 cho case file mới.
4. Đọc `CLAUDE.md` (nguyên tắc nền tảng — áp cho mọi subagent qua ngữ cảnh dự án) và `protocol/debate_protocol.md`.

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
| debate-judge | judge.md; scoring_rubric.md; **judge_notes.md**; transcript **NGUYÊN VĂN** (không rút gọn — xem quy tắc dưới bảng); toàn bộ cờ fact-check; case_file.md **RÚT GỌN** (xem quy tắc dưới bảng); scorecard_template.md | positions; advocate_template; scorecard phiên khác (trừ khi so sánh theo yêu cầu); điểm của các judge khác trong hội đồng |
| debate-auditor (bên X) | position của X; case_file.md; transcript hoàn chỉnh; source_policy.md | rubric; judge_notes.md; judge.md; position bên kia; scorecard; cờ fact-check |

Cách ly được thực thi hai tầng: (a) bảng nạp này — dán nội dung, không dán đường dẫn; (b) `tools:` trong frontmatter mỗi agent đã bị giới hạn (advocate/fact-checker/auditor: chỉ WebSearch+WebFetch; judge: chỉ Write) nên subagent KHÔNG có khả năng kỹ thuật đọc file cục bộ ngoài danh sách được nạp. Không nới `tools:` của các agent này khi sửa harness.

**Case file RÚT GỌN cho judge (từ 13/07/2026 — giảm chi phí nạp, đo được từ NOISE TEST; CƠ GIỚI HÓA 07/08/2026):** vì mọi input của judge phải dán qua prompt (×3 instance hội đồng), judge nhận bản case file rút gọn thay vì nguyên văn. **Sinh bằng script, CẤM soạn tay** (cùng lý do P0-2: soạn tay là paraphrase, paraphrase làm lệch — bài học transcript rút gọn 14/07 áp dụng y nguyên cho case file):
   ```sh
   sh .claude/skills/debate-orchestrator/scripts/make_case_file_input.sh knowledge/case_file.md output/_workspace/{phiên}_judge_input.md output/_workspace/{phiên}_case_file_input.md
   ```
   Script giữ NGUYÊN VĂN header + §2, §3 (văn kiện pháp lý & phán quyết — lõi đối chiếu) + toàn bộ các § mà transcript có trích (quét tag `[Case file §x]` trong file judge_input, hợp cả hai bên; § con như §6.4 quy về § cấp 1); các § không được trích thay bằng một dòng stub `### §N — […đã lược]`. Tham số thứ hai nên là `_judge_input.md` (không phải transcript gốc) để tag trích trong phụ lục audit không kéo thêm § judge không cần. Dòng metadata `case file rút gọn (giữ: §…)` script in sẵn ở stderr — copy vào scorecard. Advocate/fact-checker/auditor vẫn nhận case file ĐẦY ĐỦ (họ cần biết vật liệu nào tồn tại). Script báo "lược được ≤1 §" → dán đầy đủ luôn, không lược lắt nhắt.

**TRANSCRIPT nạp cho judge phải NGUYÊN VĂN — KHÔNG rút gọn (từ 14/07/2026, sau khi quote_check FAIL oan):** khác với case file (được phép rút gọn), transcript dán cho judge phải là **bản sao nguyên văn** của file `output/transcript_*.md` đã duyệt GATE 2 (các lượt V1–V5 + vòng E + phụ lục fact-check; KHÔNG cần dán phụ lục steelman audit). KHÔNG được thay bằng bản tóm tắt/diễn giải/"trích nhúng". Lý do bất khả nhượng: `quote_check` đối chiếu TỪNG trích dẫn trong scorecard với **FILE transcript**; nếu judge chỉ thấy bản rút gọn, trích của judge sẽ lệch chuỗi (dấu câu, ghép cụm bị cắt) so với file và bị báo **MISSING oan hàng loạt**, làm hỏng chính phép kiểm chống-bịa-trích (quan sát 14/07: nạp bản rút gọn → 3/3 scorecard FAIL 7–17 MISSING dù lập luận đều có thật). Nếu transcript quá lớn để dán một lần → **nạp NHIỀU PHẦN nguyên văn** (quy trình "Nạp nhiều phần" ngay dưới), tuyệt đối không paraphrase. Chỉ CASE FILE mới được rút gọn; TRANSCRIPT thì không.

**Nạp nhiều phần & phục hồi gián đoạn (đã kiểm chứng 13/07/2026):** context lớn nạp làm nhiều phần qua tin nhắn nối tiếp (mỗi phần kết thúc bằng yêu cầu xác nhận; chỉ bắt đầu làm việc khi nhận marker `[ĐỦ CONTEXT — BẮT ĐẦU CHẤM]`). Subagent chết giữa chừng vì lỗi HẠ TẦNG (session limit, API error — không phải lỗi nội dung): transcript hội thoại của nó còn nguyên → **resume bằng một tin nhắn ngắn xác nhận đã đủ context và yêu cầu tiếp tục; KHÔNG khởi tạo instance mới** (khởi tạo lại vừa tốn ×2 vừa làm instance đó không còn cùng điều kiện với các instance khác trong phép đo). Chỉ khởi tạo mới khi instance chết TRƯỚC khi nhận đủ context hoặc output của nó có dấu hiệu hỏng. Ghi mọi lần gián đoạn/resume vào báo cáo như biến nhiễu vận hành.

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
   - **Fact-check EXTRA ROUND (bắt buộc, P1-2 14/07/2026):** mỗi vòng E phải chạy `debate-fact-checker` TRƯỚC khi vòng đó vào bất kỳ tổng nào; nếu vòng E chứa khẳng định không kiểm chứng được (vd tiền lệ nước ngoài khi web giới hạn) → giữ nhãn `[CẦN KIỂM CHỨNG]` và ghi vào bảng Phạt của scorecard dòng "phạm vi fact-check: các vòng …" (vòng nào chưa được phủ thì tổng chứa vòng đó phải gắn nhãn "chưa fact-check đầy đủ"). Câu "fact-check sạch, 0 cờ đỏ" chỉ được nói cho các vòng ĐÃ fact-check.

## Phase 2 — Chấm điểm (START JUDGING, sau GATE 2)

0. **Chuẩn bị transcript nạp judge (BẮT BUỘC — P0-2, 14/07/2026):** KHÔNG gõ lại/tóm tắt transcript cho judge (đã chứng minh làm LỆCH ĐIỂM, không chỉ hỏng quote_check — xem `_workspace/*_noise.md`). Sinh file nạp bằng script cơ học:
   ```sh
   sh .claude/skills/debate-orchestrator/scripts/make_judge_input.sh output/transcript_YYYYMMDD.md output/_workspace/{phiên}_judge_input.md
   ```
   Nạp cho MỌI judge (hội đồng, NOISE, SWAP, chấm E riêng) bằng cách dán **NGUYÊN VĂN nội dung file `_judge_input.md`** (đọc bằng Read rồi copy đúng khối, KHÔNG diễn giải). Quá lớn → nạp nhiều phần nguyên văn (quy trình "Nạp nhiều phần"), tuyệt đối không paraphrase. File này gồm các lượt + fact-check, đã tự loại phụ lục steelman audit (script FAIL nếu heading phụ lục lệch quy ước — sửa heading transcript, không gõ lại tay).
   Ngay sau đó sinh bản case file rút gọn cho judge từ chính file này: `make_case_file_input.sh <case file của bộ chủ đề> _judge_input.md _case_file_input.md` (quy tắc chi tiết ở đoạn "Case file RÚT GỌN" Phase 1) — cả hai file nạp judge đều sinh bằng script, không soạn tay.
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
   **Chạy trên MỌI lô judge (P0-1, 14/07/2026):** không chỉ hội đồng chính thức mà cả NOISE, SWAP, chấm E riêng — mỗi scorecard đều phải qua quote_check + chu trình trả-sửa; bỏ qua ở lô chẩn đoán là sai (đã xảy ra). Script `.sh` tự ưu tiên `quote_check.py` (python3, casefold Unicode, chuẩn hóa dấu câu, trích đa dòng); thêm chỉ số `cells_unquoted` (ô điểm không có trích hợp lệ — cảnh báo né kiểm).
   Có MISSING → **trước tiên nghi lỗi NẠP, không nghi judge**: nếu MISSING nhiều (>5) hoặc rải đều, gần như chắc do orchestrator nạp transcript không đúng nguyên văn (xem bước 0) → sinh lại `_judge_input.md` và nạp lại đúng. Nếu nạp đã đúng mà vẫn MISSING → trả lại đúng instance đó danh sách MISSING, yêu cầu thay bằng trích nguyên văn (hoặc *in nghiêng* nếu đó là câu phân tích của judge; hoặc chấm lại ô nếu bằng chứng không tồn tại) MỘT lần; chạy lại script. Vẫn FAIL → ghi số trích dẫn không xác minh được vào mục Hội đồng của scorecard chính thức, coi là chỉ báo độ tin cậy thấp của instance đó.
3. **Tổng hợp hội đồng (orchestrator làm, không gọi thêm judge):**
   - Điểm chính thức mỗi bên = **trung vị** của 3 tổng điểm (bộ trọng số mặc định; làm tương tự cho 2 bộ thay thế). Tính thêm **trung vị theo từng chiều** (5 chiều × 2 bên) — để thấy khoảng cách/nhiễu tập trung ở chiều nào, không chỉ ở tổng.
   - Scorecard chính thức (`output/scorecard_*.md` cùng hậu tố transcript) = bản của instance có cặp tổng (A, B) gần trung vị nhất, bổ sung: (a) **bảng hội đồng** — tổng A/B của cả 3 instance + trung vị + biên độ (max−min) từng bên + kết quả quote_check từng instance; (b) phụ lục **steelman audit** hai bên (từ Phase 1 bước 5); (c) đoạn "Giới hạn của phương pháp" theo template mới (thiên lệch prior cùng model, SWAP TEST chỉ bắt thiên lệch nhãn); (d) khối **metadata** — ngày chấm, hash case file, model judge/advocate.
   - **Phiên có vòng E (quy tắc mới P1, 14/07/2026 — chống thiên lệch chọn đề):** mọi tổng báo cáo kép **"V1–V5"** và **"V1–V5+E(…)"**. **Điểm CHÍNH THỨC = V1–V5** (5 vòng chuẩn, đối xứng do harness kiểm soát). Vòng E chỉ được nâng lên "tính vào phán quyết chính thức" khi **chủ đề E đối xứng** — mỗi bên (hoặc auditor mỗi bên) đề cử một chủ đề hẹp và chạy cả hai cặp lượt — VÀ đã qua gate `APPROVE TRANSCRIPT ADDENDUM`. Vòng E do NGƯỜI DÙNG chọn một chủ đề (như phiên 14/07) là **chẩn đoán**, vào báo cáo kép nhưng KHÔNG làm đổi phán quyết chính thức; nếu tổng +E đảo hạng so với V1–V5 → ghi "kết quả phụ thuộc vòng phụ do người dùng chọn chủ đề". Chủ đề E rút từ steelman audit → bắt buộc ghi dòng "điều kiện thí nghiệm: chủ đề nhiễm audit" vào transcript.
   - **Phán định "không phân định":** tuyên bố khi |trung vị A − trung vị B| ≤ 0.5 HOẶC khoảng [min,max] của hai bên chồng lấn. Biên độ nội bộ một bên > 1.0 → ghi rõ "nhiễu judge cao, độ tin cậy thấp" ngay cạnh kết luận.
   - **"Ước lượng biên" (quy chế mới P1, 14/07/2026):** khi vì ràng buộc token/phiên mà chỉ chấm một phần (vd chấm riêng vòng E rồi ghép vào nền của lô khác), kết quả đó **trộn hai quần thể judge** → sai số không định lượng được. Ước lượng biên CHỈ được đặt ở `_workspace/` và mục "chẩn đoán" của scorecard, **KHÔNG BAO GIỜ** là cơ sở duy nhất để đổi/giữ phán quyết khi chênh ước lượng nằm trong ±(nhiễu nền). Muốn một vòng E vào phán quyết → hội đồng 3 judge MỚI chấm lại TOÀN BỘ transcript nguyên văn (không ghép biên).
4. `SWAP TEST` (khi người dùng yêu cầu): tạo bản transcript hoán nhãn A↔B trong `_workspace/` (đổi nhãn, giữ nguyên nội dung — dùng file `_judge_input.md` nguyên văn làm nền) → gọi MỘT instance `debate-judge` MỚI → **chạy quote_check trên scorecard đó** (đối chiếu với transcript ĐÃ hoán nhãn) → so tổng điểm với **trung vị hội đồng**; lệch >max(0.5, biên độ hội đồng của bên tương ứng) → ghi chú độ tin cậy thấp vào scorecard chính thức. Khi báo kết quả, luôn nói rõ: SWAP TEST chỉ phát hiện thiên lệch NHÃN; nó không phát hiện được thiên lệch nội dung (judge nhận ra bên nào biện hộ cho ai bất kể nhãn).
5. `NOISE TEST` (chẩn đoán, khi người dùng yêu cầu): gọi N instance `debate-judge` mới (mặc định 3) chấm lại CÙNG transcript (nạp bằng `_judge_input.md` nguyên văn — bước 0), không hoán đổi gì → **chạy quote_check trên từng scorecard noise** → báo cáo bảng tổng điểm từng instance + biên độ từng bên → lưu `_workspace/{phiên}_noise.md` và ghi biên độ đo được vào scorecard chính thức. Dùng nó để trả lời "chênh lệch X điểm có lớn hơn nhiễu nền không". **Cảnh báo diễn giải:** nếu lô NOISE và hội đồng chính thức nhận transcript KHÁC phiên bản (vd một lô rút gọn) thì chênh giữa hai lô trộn cả nhiễu lẫn hiệu ứng phiên bản — phải khai báo, không quy hết cho nhiễu.
   - **Chẩn đoán prior cùng model (tùy chọn):** khi khoảng cách dồn vào chiều "thao tác logic/văn phong" (vd Logic), có thể gọi 1 instance judge KHÁC MODEL (không vào trung vị) chỉ để so HƯỚNG lệch; đổi model bắt buộc hiệu chuẩn lại nhiễu nền trước khi tin phán định.
6. Báo cáo kết quả cho người dùng: trung vị hội đồng + biên độ, luôn kèm câu "điểm đo chất lượng lập luận theo rubric, không phải phán quyết chân lý".

## Xử lý lỗi

- Subagent lỗi/treo → gọi lại 1 lần với cùng input; vẫn lỗi → dừng, báo người dùng, không tự lập luận thay.
- Advocate vi phạm điều cấm (bịa nguồn, phi nhân hóa, phủ nhận sự kiện đã xác lập §13-loại) → KHÔNG ghi vào transcript; gọi lại instance mới kèm chỉ rõ vi phạm; tái phạm → ghi vào transcript kèm cờ để judge áp neo 0.
- WebSearch không xác minh được (fact-checker) → giữ nhãn `⚠️ KHÔNG XÁC MINH ĐƯỢC`, không leo thang thành 🔴.
- File output đã tồn tại → không ghi đè; tăng hậu tố `_vN`.

## Vệ sinh hồ sơ & scorecard (bắt buộc — P2, 14/07/2026)

- **Checklist file `_workspace/` trước GATE 2:** xác nhận đủ file lượt của cả 5 vòng (`{phiên}_v{1..5}_{A,B}.md`, vòng 4 gồm cả câu hỏi/trả lời) + fact-check + 2 audit. Thiếu file lượt nào → ngân sách từ vòng đó không tái kiểm được; bổ sung trước khi chấm.
- **Banner SUPERSEDED (chống hiểu sai artifact đã publish):** khi một mục/bảng trong scorecard bị mục sau lật lại (vd NOISE TEST hiệu chỉnh phán quyết), phải chèn banner `⛔ SUPERSEDED — xem mục X` NGAY TẠI ĐẦU mục bị thay, không chỉ ghi ở kết luận. Người đọc trích riêng mục đó không được hiểu sai.
- **Phạm vi fact-check trong scorecard:** bảng Phạt luôn ghi rõ "phạm vi fact-check: vòng …". "0 cờ đỏ" chỉ áp cho vòng đã fact-check; vòng chưa phủ (vd vòng E chạy khi web giới hạn) phải gắn nhãn "chưa fact-check đầy đủ" cạnh mọi tổng chứa nó.

## Sau mỗi phiên

- Hỏi người dùng một câu phản hồi về quy trình (không ép). Phản hồi lặp ≥2 lần → đề xuất sửa harness (cập nhật file tương ứng + dòng Change log trong CLAUDE.md).

## Test scenario

- **Luồng chuẩn:** `FULL RUN` → Phase 0 đọc case file (đã hoàn thiện, không còn nhãn thiếu) → GATE 1 chờ APPROVE → commit + ghi hash vào header transcript → 5 vòng × (advocate → word_count → transcript), fact-check mỗi vòng → steelman audit 2 bên → GATE 2 chờ APPROVE → **`make_judge_input.sh` sinh file nạp nguyên văn** → hội đồng 3 judge (nạp nguyên văn) → quote_check từng scorecard (MISSING nhiều → nghi lỗi nạp trước, nạp lại; còn MISSING → trả judge sửa 1 lần) → tổng hợp trung vị + bảng hội đồng + phụ lục audit + metadata → báo cáo kèm disclaimer. **Điểm chính thức = V1–V5**; vòng E (nếu có) vào báo cáo kép/chẩn đoán.
- **Luồng quote_check (hồi quy P0-1):** nạp cho judge bản transcript RÚT GỌN/paraphrase → 3/3 scorecard FAIL 7–17 MISSING oan + LỆCH ĐIỂM (bên bị nén yếu đi ~0.5) → sửa: dùng `make_judge_input.sh` + dán nguyên văn; judge đặt câu phân tích vào ngoặc kép → quote_check vẫn FAIL dù transcript nguyên văn → sửa: chỉ thị "ngoặc kép chỉ cho trích transcript, phân tích in nghiêng" + tự kiểm.
- **Luồng lỗi:** vòng 3, advocate A trả 950 từ (giới hạn 600) → word_count báo vượt → yêu cầu cắt còn ≤660 → nhận bản 640 từ → ghi transcript bình thường. Vòng 4, fact-checker không xác minh được một trích dẫn ICJ sau 2 lần tìm → gắn ⚠️, không 🔴, judge không phạt.
- **Luồng hội đồng lệch:** 3 judge trả tổng A = 7.2 / 7.8 / 7.5 và B = 8.0 / 8.1 / 8.0 → trung vị A 7.5, B 8.0; biên độ A 0.6 → chênh trung vị 0.5 ≤ 0.5 → tuyên "không phân định", kèm ghi chú biên độ A đáng kể.
