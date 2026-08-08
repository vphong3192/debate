# BIÊN BẢN TRANH LUẬN — 08/08/2026

**Chủ đề:** "Việc bệnh viện công yêu cầu bác sĩ điểm danh chấm công hàng ngày thay cho đánh giá theo hiệu quả công việc, đồng thời miễn chấm công cho lãnh đạo khoa phòng, có công bằng và chính đáng không?"
**Bộ chủ đề:** `_chamcong` — `knowledge/case_file_chamcong.md`, `knowledge/judge_notes_chamcong.md`, `rubrics/scoring_rubric_chamcong.md`, `agents/advocate_template_chamcong.md`, `agents/position_{A,B}_chamcong.md`
**Advocate A:** Khung lập luận "chính sách này KHÔNG công bằng, phải cải cách" (steelman)
**Advocate B:** Khung lập luận "chính sách này CHÍNH ĐÁNG, biện minh được" (steelman)
**Case file phiên bản:** ngày duyệt GATE 1 08/08/2026 — commit `c8ecf8d`; addendum (nếu có): chưa có
**Ngày duyệt GATE 2:** [chưa duyệt]
**Model:** subagent = alias `opus` (model ID `claude-opus-5`); orchestrator = `claude-opus-5`; ngày chạy = 08/08/2026

> *Lưu ý cho người đọc: hai advocate được giao nhiệm vụ trình bày phiên bản mạnh nhất của mỗi khung lập luận. Nội dung không đại diện quan điểm của hệ thống hay người vận hành. Điểm số ở scorecard đo chất lượng lập luận theo rubric, KHÔNG phải phán quyết về chân lý của vấn đề.*

---

## Vòng 1 — Mở đầu
### Mở đầu — Advocate A

`[vượt ngân sách từ: 988/800 — đã yêu cầu cắt gọn một lần (1049 → 988), vẫn vượt trần +10% (880); ghi nhận theo quy tắc harness]`

**Đặt vấn đề.** Tôi bảo vệ luận điểm: chế độ lấy điểm danh hàng ngày làm căn cứ **chính** để đánh giá lao động chuyên môn, thay cho đánh giá kết quả, đồng thời **miễn** nghĩa vụ đó cho lãnh đạo khoa phòng, là bất công và phải cải cách căn bản. Tách ba mệnh đề `[Case file §1]`: (a) *có nên quản lý bác sĩ bằng chấm công không* — tôi **không** phủ nhận; quản lý thời gian là quyền hợp pháp. Tôi công kích (b) chấm công **thay thế** đánh giá kết quả, và (c) miễn trừ **theo cấp bậc**.

**Trục 1 — Công bằng tổ chức & thiết kế khuyến khích.** Khiếm khuyết trung tâm nằm ở **công bằng thủ tục (procedural justice)**, không ở việc lãnh đạo có đặc quyền — đặc quyền theo chức vụ tự nó hợp pháp. Cái không đứng vững là: **lý do biện minh cho miễn trừ chính là lý do bị bác bỏ khi bác sĩ nêu** — "công việc di động, không đo được bằng giờ có mặt", "đã có cơ chế trách nhiệm giải trình khác" `[Case file §9]`. Một nguyên tắc chỉ có giá trị cho người ban hành và bị từ chối cho người chịu nó thì không còn là nguyên tắc, mà là phân bổ theo địa vị. **Phép thử công khai (publicity test)** `[Case file §9]`: nếu lý do miễn trừ được viết đầy đủ và niêm yết ở khoa, nó có đứng vững trước chính đội ngũ không? **Phép thử tổng quát hóa (universalizability)**: bác sĩ hội chẩn liên khoa, đi buồng, làm thủ thuật cũng "di động" — nếu di động là lý do chính đáng, nó phải mở cho mọi người thỏa điều kiện đó.

Về **công bằng phân phối** và **liên nhân–thông tin**: bốn chiều công bằng đóng góp phần phương sai riêng vào cảm nhận công bằng và có quan hệ riêng với kết quả tổ chức; niềm tin là biến tương quan của công bằng thủ tục `[Nguồn: Colquitt và cộng sự, JAP 2001 — Case file §7]`. Một chế độ đúng luật vẫn có thể hỏng ở chiều thủ tục và thông tin.

**Hệ quả khuyến khích — áp cho cả phương án của tôi.** Quy luật Goodhart cắt hai chiều `[Case file §9]`: chấm công bị tối ưu hóa bằng "ngồi hết giờ"; bộ chỉ số kết quả bị **gaming** và có thể tạo động cơ **né bệnh nhân nặng (patient selection)** do case-mix. Tôi thừa nhận cả hai. Khác biệt: khi chỉ số bị gaming, cái được tối ưu ít nhất vẫn nằm trên trục chăm sóc; khi chấm công là căn cứ **chính**, cái được tối ưu là sự hiện diện — biến gần như không tương quan với chất lượng lâm sàng.

**Trục 2 — Bằng chứng & dữ kiện.** Tôi không có bằng chứng thực nghiệm trực tiếp về chấm công, và tôi khai báo điều đó. Ba khối tôi dùng đều là **loại suy (analogy)**: (i) P4P/QOF cho thấy chất lượng cải thiện ở mốc 1 năm nhưng kém nhất quán ở mốc 3 năm, mạnh nhất với chỉ số quy trình vốn thực hiện thấp `[Nguồn: systematic review PMC12188983 — Case file §5]` — khối này nói về trả theo chỉ số, **không** phải chấm công; tôi dùng nó để tự hạn chế chính đề xuất của mình. (ii) Can thiệp bị cảm nhận là **kiểm soát** có thể làm suy giảm động lực nội tại, còn cảm nhận là **hỗ trợ** thì có thể làm tăng `[Nguồn: Frey & Jegen, Journal of Economic Surveys 2001 — Case file §7]`. Đây **không** phải kết luận đã đóng — các phân tích gộp mâu thuẫn nhau `[Case file §7]`. Điều kiểm chứng được là **điều kiện** tri giác kiểm soát hay hỗ trợ — biến mà thiết kế chính sách tác động được. (iii) 9.680 nhân viên y tế thôi việc/bỏ việc trong ~18 tháng 2021–2022 `[Nguồn: Cổng thông tin Bộ Y tế — Case file §8]`. Dữ liệu này thuộc bối cảnh hậu COVID-19, **không** được thu thập để đo tác động chấm công; suy nhân quả từ đây là sai — tôi dùng nó **chỉ** làm bối cảnh rủi ro giữ chân nhân lực.

**Trục 3 — Pháp lý & quy chế.** Bác sĩ bệnh viện công là **viên chức**, không phải công chức `[Case file §1]`. Thứ nhất, nội quy lao động phải bằng văn bản khi từ 10 người lao động trở lên, nội dung không trái pháp luật, và trước khi ban hành/sửa đổi phải **tham khảo ý kiến tổ chức đại diện người lao động tại cơ sở**, việc tham khảo lập thành văn bản `[Nguồn: BLLĐ 2019 Điều 118 — Case file §2]`. Nếu miễn trừ cho lãnh đạo là thực hành ngầm ngoài nội quy đã qua thủ tục này, khiếm khuyết là thủ tục pháp lý, không chỉ đạo đức. Thứ hai, khung đánh giá viên chức gồm **cả** nhóm hành vi ("tác phong, lề lối làm việc") **lẫn** "kết quả thực hiện chức trách, nhiệm vụ được giao" `[Nguồn: NĐ 90/2020/NĐ-CP — Case file §2]`. Tôi không nói chấm công trái luật; tôi nói dùng nó làm căn cứ **chính** khiến một nhóm tiêu chí nuốt trọn phần còn lại. Thứ ba, phụ cấp đặc thù y tế tính theo **phiên trực** — trực 12/24 giờ = 0,5 lần, 16/24 giờ = 0,75 lần, ngày nghỉ hằng tuần = 1,3 lần `[Nguồn: QĐ 73/2011/QĐ-TTg — Case file §3]` — tức pháp luật đã đo nghĩa vụ hiện diện bằng **ca được phân công**, không bằng điểm danh hành chính. Khung KPI viên chức từ 01/7/2026 còn mang nhãn dự kiến `[CẦN KIỂM CHỨNG — Case file §2]`; tôi **không** viện dẫn nó như quy định bắt buộc.

**Trục 4 — Logic & thiết kế thay thế.** Đề bài ngầm chứa **false dilemma**: hoặc chấm công, hoặc buông lỏng. Phương án thứ ba: tách **nghĩa vụ hiện diện** (trực, giao ban, bàn giao ca, thời gian đáp ứng — quản lý bằng lịch trực và điểm danh **theo sự kiện**) khỏi **nghĩa vụ kết quả** (bộ chỉ số), áp **cả hai** cho **mọi cấp**, kể cả trưởng khoa — người có lý do hiện diện mạnh nhất khi hội chẩn ca nặng. Miễn trừ nếu có phải theo **tính chất công việc, có đăng ký lịch, mở cho mọi người đủ điều kiện** — không theo cấp bậc. Đây là **đề xuất sửa cách thiết kế nội quy**, không phải khẳng định chế độ hiện hành trái luật.

**Nguồn trích dẫn trong lượt này:**
- Case file §1, §2, §3, §5, §7, §8, §9
- BLLĐ 2019 Điều 118 — https://hethongphapluat.com/bo-luat-lao-dong-2019/dieu-118
- BLLĐ 2019 Điều 105 (đối chiếu, không dùng làm căn cứ trung tâm) — https://thuvienphapluat.vn/lao-dong-tien-luong/thoi-gio-lam-viec-binh-thuong-duoc-quy-dinh-toi-da-la-bao-nhieu-gio-trong-1-ngay-1-tuan-1070.html
- Nghị định 90/2020/NĐ-CP; Quyết định 73/2011/QĐ-TTg
- Colquitt và cộng sự, *Journal of Applied Psychology* 2001; Frey & Jegen, *Journal of Economic Surveys* 2001
- Systematic review QOF, PMC12188983
- Cổng thông tin Bộ Y tế (số liệu thôi việc 2021–2022)

### Mở đầu — Advocate B
[đang chạy]

## Vòng 2 — Phản biện 1
[chưa chạy]

## Vòng 3 — Phản biện 2
[chưa chạy]

## Vòng 4 — Chất vấn chéo
[chưa chạy]

## Vòng 5 — Kết luận
[chưa chạy]

---
> **Quy ước heading phụ lục (BẮT BUỘC giữ nguyên văn):** `scripts/make_judge_input.sh` cắt input cho judge từ `## Vòng 1 — Mở đầu` đến TRƯỚC `## Phụ lục B` — đổi các heading dưới đây (kể cả chữ "Phụ lục B") sẽ làm steelman audit lọt vào input của judge hoặc làm input rỗng. Phụ lục A (fact-check) đặt TRƯỚC Phụ lục B.

## Phụ lục A — Fact-check (phạm vi: [chưa chạy])
[bảng của fact-checker]

## Phụ lục B — Steelman audit (đo trần lập luận — KHÔNG cộng/trừ điểm, KHÔNG nạp cho judge)
[báo cáo 2 auditor — orchestrator dán sau GATE 2]

## Phụ lục C — Ghi chú vận hành

**Ngân sách từ (thước đo: `scripts/word_count.sh`, dùng cùng một script cho mọi lượt của cả hai bên):**

| Lượt | Giới hạn | Trần +10% | Đo được | Xử lý |
|---|---|---|---|---|
| V1 — A | 800 | 880 | bản đầu 1049 → sau cắt **988** | Đã yêu cầu chính instance đó cắt gọn MỘT lần theo quy tắc harness; vẫn vượt → ghi chú thích vượt ngân sách ngay trong lượt để judge biết (rubric: judge trừ chiều 5 nếu phần vượt tạo lợi thế) |

**Điều kiện thí nghiệm cần khai báo:** advocate B ở V1 được nhắc rõ trong spec rằng bản đầu của A đã vượt trần và phải cắt — đây là thông tin vận hành, không phải nội dung lập luận của A, nhưng ghi lại để minh bạch điều kiện không hoàn toàn đối xứng giữa hai lượt V1.
