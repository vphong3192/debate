# BIÊN BẢN TRANH LUẬN — 08/08/2026

**Chủ đề:** "Việc bệnh viện công yêu cầu bác sĩ điểm danh chấm công hàng ngày thay cho đánh giá theo hiệu quả công việc, đồng thời miễn chấm công cho lãnh đạo khoa phòng, có công bằng và chính đáng không?"
**Bộ chủ đề:** `_chamcong` — `knowledge/case_file_chamcong.md`, `knowledge/judge_notes_chamcong.md`, `rubrics/scoring_rubric_chamcong.md`, `agents/advocate_template_chamcong.md`, `agents/position_{A,B}_chamcong.md`
**Advocate A:** Khung lập luận "chính sách này KHÔNG công bằng, phải cải cách" (steelman)
**Advocate B:** Khung lập luận "chính sách này CHÍNH ĐÁNG, biện minh được" (steelman)
**Case file phiên bản:** ngày duyệt GATE 1 08/08/2026 — commit `c8ecf8d`; **addendum §11** duyệt 08/08/2026 (sau vòng 3) — commit `6c9218b`, phạm vi: **§11** (case file) + **K7** (judge_notes). Lượt V1–V3 chạy trên bản `c8ecf8d`; lượt V4–V5 chạy trên bản `6c9218b`.
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

`[vượt ngân sách từ: 990/800 — đã yêu cầu cắt gọn một lần (1010 → 990), vẫn vượt trần +10% (880); xử lý y hệt lượt A cùng vòng]`

**Đặt vấn đề.** Tôi bảo vệ: chế độ trong đề bài **không bất công**, nên được giữ kèm hoàn thiện chứ không bãi bỏ. Ba mệnh đề tách rời `[Case file §1]`: (a) quản lý bác sĩ bằng chấm công — tôi mạnh nhất ở đây; (c) miễn trừ cho lãnh đạo khoa phòng — chính đáng **nếu** dựa trên khác biệt chức năng thật; (b) chấm công làm căn cứ chính khi chưa có bộ chỉ số vận hành được — tôi bảo vệ ở dạng **có điều kiện**, và trung thực rằng đây là mệnh đề yếu nhất của tôi.

**Steelman đối phương.** Đối phương lập luận rằng khuyết tật trung tâm nằm ở công bằng thủ tục (procedural justice): lý do biện minh cho miễn trừ — công việc di động, đã có cơ chế trách nhiệm khác — chính là lý do bị từ chối khi bác sĩ nêu, nên quy tắc không vượt được phép thử tổng quát hóa và phép thử công khai. Và khi chấm công là căn cứ **chính**, cái được tối ưu hóa là sự hiện diện, biến ít tương quan với chất lượng lâm sàng. Đây là lập luận mạnh; tôi trả lời trực diện.

**Trục 1 — Công bằng tổ chức & khuyến khích.** *Phân phối:* nghĩa vụ chấm công áp cho **toàn bộ** nhân lực bệnh viện — điều dưỡng, kỹ thuật viên, hành chính — không chọn riêng bác sĩ. Theo thuyết công bằng Adams, bất mãn sinh từ so sánh với **nhóm tham chiếu** `[Case file §9]`; nếu nhóm tham chiếu là đồng nghiệp cùng chịu chế độ, tỷ lệ đóng góp/đãi ngộ không lệch. *Thủ tục:* nguyên tắc tổng quát hóa đòi áp đồng đều cho mọi đối tượng **thỏa cùng điều kiện**; điều kiện tôi viện là **chức năng điều hành di động**, không phải cấp bậc — phép thử được thỏa khi bất kỳ ai giữ chức năng đó cũng được miễn, kể cả người không phải lãnh đạo. *Liên nhân–thông tin:* đây là chiều tôi thừa nhận dễ hỏng nhất; hoàn thiện đúng là **công bố văn bản lý do miễn trừ và mở cơ chế khiếu nại** — sửa thủ tục, không bãi bỏ công cụ.

*Hệ quả khuyến khích, áp cho cả phương án của tôi:* chấm công bị tối ưu hóa bằng "ngồi hết giờ" — chi phí thật, tôi không phủ nhận. Nhưng quy luật Goodhart cắt hai chiều: chỉ số kết quả bị **gaming** và tạo động cơ **né bệnh nhân nặng** do case-mix `[Case file §5, §9]`. Còn một chi phí công bằng ít được nói: bỏ chấm công **trước khi** có bộ chỉ số vận hành được thì bệnh viện không chuyển sang đánh giá hiệu quả, mà chuyển sang **đánh giá bằng cảm nhận của người quản lý** — thay tiêu chí khách quan, áp đồng đều, bằng tiêu chí chủ quan. Người thiệt nhất là người làm nhiều nhưng ít được nhìn thấy.

**Trục 2 — Bằng chứng & dữ kiện.** Bằng chứng về trả theo hiệu quả (pay-for-performance) là **loại suy**, không phải bằng chứng trực tiếp về chấm công `[Case file §5]`; khác biệt then chốt: P4P gắn tiền vào **đầu ra**, chấm công gắn vào **đầu vào**. Nêu cả hai mặt: QOF cải thiện chất lượng ở mốc 1 năm nhưng **kém nhất quán ở mốc 3 năm**, mạnh nhất với chỉ số quy trình vốn thực hiện thấp `[Nguồn: systematic review PMC12188983 — Case file §5]`; kèm gaming và **giảm hài lòng, giảm động lực nội tại** `[Nguồn: meta-synthesis PMC7359468 — Case file §5]`. Kết luận đúng mực: khối này **không** chứng minh chấm công tốt — nó hạ kỳ vọng về phương án thay thế. Về gánh nặng hành chính: ngưỡng >90 phút/ngày hồ sơ điện tử ngoài giờ và >60 phút tác vụ hành chính đo **giấy tờ chuyên môn**, không đo thao tác quẹt thẻ vài giây `[Case file §6]`. Ai muốn nói chấm công gây kiệt sức phải bắc cầu bằng **cơ chế tri giác kiểm soát** — mà chính lý thuyết đó là **có điều kiện** (kiểm soát vs hỗ trợ) và các phân tích gộp còn đối lập nhau `[Case file §7]`.

**Trục 3 — Pháp lý & quy chế.** Quản lý thời giờ làm việc không phải sáng kiến tùy tiện: nội quy lao động là **nghĩa vụ luật định**, phải bằng văn bản từ 10 người lao động trở lên, nội dung chủ yếu **bao gồm thời giờ làm việc, thời giờ nghỉ ngơi** `[Nguồn: BLLĐ 2019 Điều 118 — Case file §2]`. Khung đánh giá viên chức chứa **cả** "tác phong, lề lối làm việc" và "ý thức tổ chức kỷ luật", không chỉ nhóm kết quả `[Nguồn: NĐ 90/2020/NĐ-CP — Case file §2]`. Cơ chế tự chủ tài chính trao thẩm quyền quản trị nội bộ đáng kể `[Nguồn: NĐ 60/2021/NĐ-CP, sửa đổi bởi NĐ 111/2025/NĐ-CP — Case file §4]`; điều khoản cụ thể về thu nhập tăng thêm `[CẦN KIỂM CHỨNG — Case file §4]`. Tôi **thừa nhận** phụ cấp đặc thù tính theo **phiên trực** `[Nguồn: QĐ 73/2011/QĐ-TTg — Case file §3]` — nhưng đó là bằng chứng rằng hai chế độ phục vụ hai chức năng khác nhau, không loại trừ nhau. Khung KPI viên chức còn mang nhãn dự kiến `[CẦN KIỂM CHỨNG — Case file §2]`; tôi không viện dẫn.

**Trục 4 — Logic.** "Hợp pháp không đồng nghĩa chính đáng" — tôi chấp nhận, nên không dừng ở thẩm quyền. Chấm công phục vụ ba chức năng **hành chính–pháp lý** mà đánh giá chuyên môn không thay thế được: căn cứ tính lương và chế độ; dữ liệu phân bổ nhân lực, lập lịch trực; xử lý mối lo có thật về rời vị trí trong giờ `[Case file §9]`. Phê phán nó vì "không đo được chất lượng" là **đánh tráo khái niệm** — đòi một công cụ làm việc nó không được thiết kế để làm. Lập luận "cùng lý do, hai kết luận" chỉ thành công nếu hai vị trí **thỏa cùng điều kiện**: lãnh đạo khoa phòng đã chịu cơ chế trách nhiệm giải trình **khác và nặng hơn** — chịu trách nhiệm về chỉ số hoạt động cả khoa và về sự cố y khoa `[Case file §9]`. Miễn một cơ chế kiểm soát khi **đã có** cơ chế thay thế không phải miễn trách nhiệm. Cuối cùng: bên nào áp Goodhart cho công cụ của đối phương mà miễn cho công cụ của mình là **tiêu chuẩn kép**.

**Nguồn trích dẫn trong lượt này:**
- Case file §1, §2, §3, §4, §5, §6, §7, §9
- BLLĐ 2019 Điều 118 — https://thuvienphapluat.vn/lao-dong-tien-luong/noi-quy-lao-dong-la-gi-noi-quy-lao-dong-chua-nhung-noi-dung-nao-10592.html ; https://hethongphapluat.com/bo-luat-lao-dong-2019/dieu-118
- Nghị định 90/2020/NĐ-CP — https://vanban.chinhphu.vn/?pageid=27160&docid=200766 ; https://luatvietnam.vn/can-bo/nghi-dinh-90-2020-nd-cp-danh-gia-xep-loai-chat-luong-can-bo-cong-chuc-vien-chuc-188849-d1.html
- Nghị định 60/2021/NĐ-CP; Nghị định 111/2025/NĐ-CP; Quyết định 73/2011/QĐ-TTg
- Systematic review QOF, PMC12188983; meta-synthesis QOF, PMC7359468
- Frey & Jegen, *Journal of Economic Surveys* 2001 (qua Case file §7)

## Vòng 2 — Phản biện 1
### Phản biện — Advocate B

**Đính chính hai cờ vàng.** (1) Case file §1 chỉ định nghĩa chính sách với **bác sĩ lâm sàng** và miễn trừ lãnh đạo; nó không xác lập phạm vi áp cho điều dưỡng/kỹ thuật viên/hành chính. Tôi **rút** khẳng định đó, và trình bày lại thành giả định có điều kiện: *nếu* chế độ áp đồng đều nhiều nhóm thì trụ phân phối mạnh hơn; nếu không, trụ ấy đứng trên nền còn lại — tính khách quan và áp đồng đều trong nhóm chịu chế độ. (2) §9 chỉ nêu lãnh đạo "đã chịu cơ chế trách nhiệm giải trình khác"; tôi **rút** cụm "nặng hơn" và hai nội dung cụ thể đã liệt kê.

**Steelman.** Đối phương lập luận rằng khiếm khuyết trung tâm không nằm ở chỗ lãnh đạo có đặc quyền — đặc quyền chức vụ tự nó hợp pháp — mà ở chỗ chính những lý do biện minh cho miễn trừ (công việc di động; đã có cơ chế giải trình khác) lại bị từ chối khi bác sĩ nêu; một nguyên tắc chỉ có giá trị cho người ban hành thì không còn là nguyên tắc `[Case file §9]`. Họ đề xuất tách nghĩa vụ hiện diện (điểm danh theo sự kiện) khỏi nghĩa vụ kết quả, áp cả hai cho mọi cấp. Tôi **chấp nhận tiêu chuẩn họ đặt**: miễn trừ chỉ chính đáng nếu dựa trên điều kiện chức năng và mở cho mọi người thỏa điều kiện đó.

Chính vì chấp nhận tiêu chuẩn ấy, tranh chấp thu về: có khác biệt chức năng thật không? Đối phương bỏ trống một khác biệt cấu trúc: lãnh đạo khoa phòng không chỉ là **đối tượng** của cơ chế chấm công mà là người **vận hành** nó — người phụ trách bộ phận chấm công và ký xác nhận bảng chấm công `[Nguồn: mẫu 01a-LĐTL, TT 200/2014/TT-BTC — chế độ kế toán doanh nghiệp; đơn vị sự nghiệp y tế theo TT 107/2017/TT-BTC, CẦN KIỂM CHỨNG mẫu tương ứng]`. Người tự xác nhận dữ liệu của chính mình thì dữ liệu mất giá trị kiểm soát. Đó là lý do **thiết kế**, không tổng quát hóa sang bác sĩ lâm sàng — nhưng nó cũng quy định hình thức đúng của miễn trừ: **thay** bằng cơ chế giải trình khác, không bỏ trống. Ở điểm này tôi đồng ý với đối phương.

Thứ hai, họ tuyên bố áp Goodhart cho cả hai phương án rồi phá ngay tính đối xứng: "khi chỉ số bị gaming, cái được tối ưu ít nhất vẫn nằm trên trục chăm sóc". Case file nói ngược: P4P kèm **lệch phác đồ về phía chỉ số được tính điểm** `[§5]` và rủi ro **né bệnh nhân nặng** do case-mix `[§9]`. Hai hệ quả này dịch chi phí sang chính bệnh nhân nặng; còn chi phí của chấm công — có thật, tôi thừa nhận — rơi trước hết lên thời gian và động lực của bác sĩ `[§7]`. Câu "ít nhất vẫn trên trục chăm sóc" là **đặc tuyển bằng chứng (cherry-picking)** ngay trong khối họ đang trích.

Thứ ba, một **non sequitur**: từ việc phụ cấp trực tính theo phiên `[§3]` suy ra pháp luật đo nghĩa vụ hiện diện bằng ca **chứ không** bằng giờ. QĐ 73 là chế định **chi trả** cho ca trực, không phải chế định quản lý thời giờ làm việc bình thường; nội quy lao động vẫn buộc phải có nội dung thời giờ làm việc `[§2]`. Hai chế định song song, không loại trừ nhau.

Cuối cùng, nhánh "miễn trừ là thực hành ngầm ngoài nội quy" được nêu có điều kiện, nhưng §1 không xác lập điều kiện đó — nhánh này chưa mang tải trọng. Và "phương án thứ ba" của họ **vẫn là chấm công**, chỉ đổi điểm neo. Khoảng cách thật giữa hai bên là câu hỏi: đã có bộ chỉ số nào vận hành được dưới ràng buộc case-mix chưa `[§5, §9]`? Trước khi có, thay chấm công bằng đánh giá của người quản lý là đổi tiêu chí khách quan lấy tiêu chí chủ quan.

**Nguồn trích dẫn trong lượt này:** Case file §1, §2, §3, §5, §7, §9 (`knowledge/case_file_chamcong.md`, commit c8ecf8d); Mẫu số 01a-LĐTL — Bảng chấm công theo Thông tư 200/2014/TT-BTC; Thông tư 107/2017/TT-BTC hướng dẫn chế độ kế toán hành chính, sự nghiệp `[CẦN KIỂM CHỨNG mẫu bảng chấm công tương ứng cho đơn vị sự nghiệp y tế]`.

### Phản biện — Advocate A

**Đính chính hai cờ vàng.** (1) Chi tiết "việc tham khảo lập thành văn bản" không nằm trong Điều 118 và không có trong case file; tôi **rút** chi tiết đó, chỉ giữ nghĩa vụ tham khảo ý kiến tổ chức đại diện người lao động tại cơ sở `[Case file §2]` — yêu cầu về hình thức thuộc văn bản hướng dẫn `[CẦN KIỂM CHỨNG]`. (2) Tôi **rút** khẳng định "hiện diện gần như không tương quan với chất lượng lâm sàng": đó là khẳng định thực nghiệm không nguồn. Thay bằng mệnh đề khái niệm: dữ liệu điểm danh giờ hành chính không **chứa** thông tin về chất lượng lâm sàng — nhận định về nội dung biến đo, không phải về hệ số tương quan.

**Steelman.** Đối phương lập luận rằng có một khác biệt chức năng thật chứ không phải địa vị: lãnh đạo khoa phòng là người **vận hành** cơ chế chấm công và ký xác nhận bảng chấm công, mà ai tự xác nhận dữ liệu của mình thì dữ liệu mất giá trị kiểm soát. Họ đồng thời buộc tôi ba lỗi — cherry-picking ở Goodhart, non sequitur ở phụ cấp trực, và "phương án thứ ba vẫn là chấm công" — và nói rõ hình thức đúng của miễn trừ là **thay** bằng cơ chế giải trình khác, không bỏ trống.

**(i)** Đòn "người vận hành" là đòn mạnh nhất của B, nhưng nó **chứng minh quá mức** (proving too much). Tự xác nhận là vấn đề **thẩm quyền xác nhận**; lời giải chuẩn là chuyển việc xác nhận lên cấp trên, không phải xóa nghĩa vụ — nếu không, mọi người phụ trách đều được miễn mọi cơ chế họ vận hành. Thêm nữa, chính sách đang tranh là điểm danh vân tay/thẻ từ/app `[Case file §1]`: dữ liệu do máy sinh, trưởng khoa không tạo ra nó. Và §1 miễn trừ cho lãnh đạo khoa phòng như một **nhóm**, không cho "người ký bảng chấm công" — điều kiện chức năng của B hẹp hơn diện miễn trừ, nên nó biện minh cho một chính sách khác. Quan trọng nhất: B đòi **thay** bằng cơ chế giải trình khác; §1 không có cơ chế thay thế nào. B đang bảo vệ phương án cải cách của tôi.

**(ii)** Cherry-picking: tôi đã rút câu bị buộc tội và **chấp nhận đối xứng** — Goodhart áp cho cả hai; thiết kế của tôi cũng bị gaming, cũng chịu rủi ro né bệnh nhân nặng `[Case file §5, §9]`. Khác biệt tôi giữ lại là **khả kiểm**: gaming chỉ số để lại dấu vết trong dữ liệu lâm sàng, có thể audit và hiệu chỉnh theo case-mix; khi bảng chấm công đã đủ giờ thì hệ thống không sinh thêm dữ liệu nào để phát hiện sai lệch. Đây là lập luận về cấu trúc thông tin, không phải "bên nào sạch hơn".

**(iii)** Non sequitur: tôi **nhận** phần B nói đúng — QĐ 73 là chế định chi trả, và Điều 118 buộc nội quy có nội dung thời giờ làm việc `[Case file §2, §3]`. Tôi không nói pháp luật cấm đo bằng giờ; tôi tranh mệnh đề **(b)**. NĐ 90/2020 đặt "kết quả thực hiện chức trách, nhiệm vụ được giao" là một trong năm nhóm tiêu chí `[Case file §2]`; chế độ lấy chấm công làm **căn cứ chính** với chỉ số kết quả chỉ **hình thức** `[Case file §1]` khuyết một nhóm tiêu chí bắt buộc. Hợp pháp về công cụ không suy ra hợp quy về căn cứ đánh giá.

**(iv)** "Vẫn là chấm công": đúng — tôi chưa từng tranh mệnh đề (a). Nếu B đồng ý điểm danh **theo sự kiện** áp cho **mọi cấp**, hai bên đã hội tụ, và cái đổ đúng là (b) và (c). Còn "chưa có bộ chỉ số thì rơi vào đánh giá chủ quan" là **lưỡng nan giả**: lịch trực, bàn giao ca, giao ban, thời gian đáp ứng đều là bản ghi khách quan `[Case file §9]`.

**Nguồn trích dẫn trong lượt này:** Case file §1, §2, §3, §5, §9 (BLLĐ 2019 Điều 118; NĐ 90/2020/NĐ-CP; QĐ 73/2011/QĐ-TTg; khối P4P/QOF; hồ sơ nguyên tắc).

## Vòng 3 — Phản biện 2
### Advocate A

**Đính chính ba cờ vàng — một mẫu lỗi.** Cả ba lần tôi gán cho nguồn một thuộc tính nguồn không nêu; tôi **rút** cả ba: "dữ liệu do máy sinh, trưởng khoa không tạo ra nó" (§1 chỉ nêu phương tiện ghi nhận); "gaming để lại dấu vết… hiệu chỉnh theo case-mix" (§9 nêu case-mix là **vấn đề** của đo đầu ra, không xác lập hiệu chỉnh khả thi); bốn ràng buộc hiện diện "đều là bản ghi khách quan" (§9 chỉ nói chúng gắn **thời điểm cụ thể**). Từ đây tôi tách rõ dữ kiện với **suy luận có nhãn**.

**Steelman.** B chấp nhận tiêu chuẩn tôi đặt: miễn trừ chỉ chính đáng nếu dựa trên điều kiện chức năng, mở cho mọi người thỏa điều kiện, và phải **thay** bằng cơ chế giải trình khác chứ không bỏ trống; B cũng rút hai khẳng định vòng 2. Tranh chấp còn lại: chưa có bộ chỉ số vận hành được dưới ràng buộc case-mix thì bỏ chấm công là đổi tiêu chí khách quan lấy tiêu chí chủ quan.

**(I) Tiêu chuẩn của B đã tự phán quyết mệnh đề (c).** Chính sách đang tranh miễn trừ cho lãnh đạo khoa phòng với tư cách **nhóm chức vụ**, không kèm cơ chế thay thế `[Case file §1]`. Ba điều kiện B nêu — theo chức năng, mở cho mọi người thỏa điều kiện, có giải trình thay thế — không điều nào được §1 thỏa; B đang bảo vệ một chính sách khác chính sách trong đề bài. Tôi mời B nói thẳng: nếu miễn trừ phải đăng ký theo chức năng và có giải trình thay thế, thì (c) **đổ**.

**(II) "Chưa có bộ chỉ số" là điều kiện không có lối ra.** B giữ chấm công làm căn cứ **chính** cho đến khi có bộ chỉ số vận hành được. Nhưng chế độ ấy không sinh ra thông tin để xây chính bộ chỉ số đó: dữ liệu giờ vào–ra không chứa biến kết quả. Trạng thái tạm thời tự chặn đường tới điều kiện chấm dứt của nó thì không còn là tạm thời. Tôi hỏi trực tiếp: **mốc thoát là gì, ai chịu trách nhiệm, hạn nào?** Và "kết quả thực hiện chức trách, nhiệm vụ được giao" là một trong năm nhóm tiêu chí `[Nguồn: NĐ 90/2020/NĐ-CP — Case file §2]`; nhóm này không có điều khoản hoãn.

**(III) Khách quan ở khâu đo không phải khách quan ở khâu đánh giá.** Số giờ tự nó không nói ai hoàn thành nhiệm vụ; phải có người quy đổi dữ liệu chấm công thành mức độ hoàn thành nhiệm vụ và thu nhập tăng thêm `[Case file §1]`. Bước quy đổi là phán đoán quản lý, và theo mô tả của chính B, người quy đổi là người vận hành cơ chế. Lưỡng nan "khách quan vs chủ quan" so sai cặp: nó đặt tính khách quan của **phép đo đầu vào** cạnh tính chủ quan của **đánh giá**, mà khâu chủ quan ấy vẫn nguyên trong phương án B.

**(IV) Cùng chuẩn cho phương án của tôi.** Tôi không được khẳng định bốn ràng buộc hiện diện đã tồn tại dưới dạng dữ liệu dùng được: đó là gánh nặng chứng minh của tôi, không của B. Tôi nêu một **suy luận có nhãn**, không phải dữ kiện: phụ cấp thường trực chi trả **theo phiên**, trực 12/24 = 0,5 lần, ngày nghỉ hằng tuần = 1,3 lần `[Nguồn: QĐ 73/2011/QĐ-TTg — Case file §3]`, nên chi trả phải tựa trên một bản ghi phân công ca. Nếu bản ghi ấy chưa đủ dùng, đề xuất của tôi là **xây nó**, chi phí xây thuộc về phía tôi.

**Nguồn trích dẫn trong lượt này:** Case file §1; Case file §2 (NĐ 90/2020/NĐ-CP); Case file §3 (QĐ 73/2011/QĐ-TTg); Case file §9.

### Advocate B

**Đính chính.** (1) **Cờ đỏ:** tôi **rút** "TT 107/2017/TT-BTC" — văn bản này đã bị **TT 24/2024/TT-BTC** thay thế (ban hành 17/4/2024, hiệu lực 01/01/2025, áp dụng từ năm tài chính 2025) `[Nguồn: TT 24/2024/TT-BTC; Cổng Xây dựng chính sách, 2024]`. Tôi không khẳng định mẫu bảng chấm công tương ứng của khu vực sự nghiệp `[CẦN KIỂM CHỨNG]`; mẫu 01a-LĐTL chỉ áp cho **doanh nghiệp** `[TT 200/2014/TT-BTC]`. Đòn "lãnh đạo là người vận hành" tôi hạ xuống **suy luận có nhãn** và dựng lại ở (III). (2) **Cờ vàng:** rút "chi phí… **có thật**"; §7 nói can thiệp ngoại sinh **có thể** suy giảm động lực nội tại **nếu cảm nhận là kiểm soát**, và có **tranh cãi học thuật** `[Case file §7]`; rút cấu phần "thời gian" — §6 đo hồ sơ bệnh án điện tử, không đo quẹt thẻ `[Case file §6]`.

**Steelman.** A rút ba khẳng định và tự nhận gánh nặng chứng minh cho bản ghi phân công ca. A lập luận: ba điều kiện tôi đã chấp nhận không điều nào được §1 thỏa, nên tôi đang bảo vệ một chính sách khác; chấm công không sinh ra thông tin để xây bộ chỉ số mà nó viện làm điều kiện chấm dứt; và khách quan ở khâu **đo** không chuyển thành khách quan ở khâu **đánh giá**.

**(I) Trả lời thẳng, có nhượng bộ.** §1 định danh diện miễn trừ bằng **chức vụ**; §9 nêu lý do khả dĩ là **chức năng**: công việc di động, đã chịu cơ chế trách nhiệm giải trình khác `[Case file §9]`. Định danh một nhóm chức năng bằng danh mục chức vụ là cách làm thông thường, không tự động thành đặc quyền địa vị. Nhưng nếu đọc §1 chặt — miễn trừ **toàn phần, không đăng ký, không cơ chế thay thế** — thì tôi **không bảo vệ** dạng đó, và nói thẳng: miễn trừ **để trống** không chịu được phép thử tổng quát hóa. Cái tôi bảo vệ ở (c) là **cơ sở** của miễn trừ, không phải **hình thức trống** của nó. Nhượng bộ này không chuyển thành kết luận của A: lời giải là **bổ sung** giải trình thay thế — đúng cấu trúc A dùng ở vòng 2 khi nói tự xác nhận được sửa bằng chuyển thẩm quyền lên cấp trên chứ không xóa nghĩa vụ. Phương án A cũng giữ miễn trừ **có điều kiện**.

**(II) Mốc thoát.** Tiền đề của A sai một chỗ: không ai tuyên bố bộ chỉ số kết quả phải được xây **từ** dữ liệu chấm công; nguồn của nó là hồ sơ bệnh án và hệ thống thông tin bệnh viện. "X không sinh ra Y" không kéo theo "X chặn Y" — **non sequitur**. Mốc thoát cụ thể: chu kỳ đánh giá viên chức **trước 15/12 hàng năm** với **đủ năm nhóm tiêu chí**, trong đó có nhóm **kết quả thực hiện chức trách, nhiệm vụ** `[Nguồn: NĐ 90/2020/NĐ-CP — Case file §2]`; chủ thể chịu trách nhiệm là người đứng đầu đơn vị theo thẩm quyền quản trị nội bộ `[Case file §4 — CẦN KIỂM CHỨNG điều khoản về quy chế chi tiêu nội bộ]`. Tôi giữ nguyên tuyên bố vòng 1: **(b) là mệnh đề yếu nhất của tôi**, và tôi chỉ bảo vệ nó ở dạng "căn cứ chính trong giai đoạn quá độ **có mốc**". Nếu chỉ số kết quả chỉ **hình thức** `[Case file §1]`, A đúng rằng khung đánh giá khuyết một nhóm bắt buộc.

**(III) Đo và đánh giá.** Tôi **nhận** phân biệt này; nó đúng. Nhưng kết luận vượt tiền đề: từ "khâu quy đổi vẫn là phán đoán quản lý" không suy ra hai phương án **ngang nhau** về tính chủ quan. Có dữ liệu đầu vào kiểm chứng được thì phán đoán bị **ràng buộc** và người bị đánh giá có vật đối chứng để khiếu nại; không có thì phán đoán không có neo — đó chính là **tính khả kiểm** A giữ lại ở vòng 2. Áp cùng chuẩn cho tôi: đây là chênh lệch **mức độ**, không phải loại, và chấm công chỉ ràng buộc phần "có mặt", không ràng buộc phần "làm gì".

**Nguồn trích dẫn trong lượt này:** Case file §1, §2, §4, §6, §7, §9; NĐ 90/2020/NĐ-CP (qua §2); TT 200/2014/TT-BTC (mẫu 01a-LĐTL, khu vực doanh nghiệp); TT 24/2024/TT-BTC — Công báo Chính phủ; Cổng Xây dựng chính sách: TT 24/2024/TT-BTC hiệu lực 01/01/2025, thay thế TT 107/2017/TT-BTC.

## Vòng 4 — Chất vấn chéo

### B hỏi A

**Câu hỏi 1:** Ở V3, A rút khẳng định bốn ràng buộc hiện diện "đều là bản ghi khách quan" và tự nhận: *"Nếu bản ghi ấy chưa đủ dùng, đề xuất của tôi là xây nó, chi phí xây thuộc về phía tôi."* Câu hỏi một điều: trong khoảng từ lúc bắt đầu xây bản ghi phân công ca đến lúc nó vận hành được, **căn cứ chính** để đánh giá mức độ hoàn thành nhiệm vụ và chi trả thu nhập tăng thêm cho bác sĩ là gì? Xin nêu một căn cứ cụ thể, không nêu nguyên tắc.

**Câu hỏi 2:** A lập luận: *"Trạng thái tạm thời tự chặn đường tới điều kiện chấm dứt của nó thì không còn là tạm thời"*, và hỏi *"mốc thoát là gì, ai chịu trách nhiệm, hạn nào?"*. Case file §11 nêu mốc chậm nhất 30/11/2026 đơn vị sự nghiệp công lập phải ban hành quy chế đánh giá riêng `[CẦN KIỂM CHỨNG]`. Nếu mốc này được xác nhận, A có **rút** khẳng định "điều kiện không có lối ra" không? Xin trả lời có hoặc không trước, rồi giải thích.

**Câu hỏi 3:** A viết: *"phải có người quy đổi dữ liệu chấm công thành mức độ hoàn thành nhiệm vụ và thu nhập tăng thêm"*, và *"Bước quy đổi là phán đoán quản lý"*. Trong phương án của A, bộ chỉ số kết quả cũng phải được quy đổi thành mức xếp loại và mức chi trả. Bước quy đổi trong **phương án của A** có thoát khỏi phán đoán quản lý không? Xin trả lời có hoặc không trước, rồi giải thích.

### A trả lời

**Trả lời 1:** Căn cứ cụ thể: **số phiên trực đã hoàn thành theo bảng phân công trực của khoa**. Chọn nó vì QĐ 73/2011/QĐ-TTg tính phụ cấp thường trực theo **phiên trực**, với hệ số 0,5 (12/24), 0,75 (16/24), 1,3 (ngày nghỉ hằng tuần) `[Case file §3]` `[CẦN KIỂM CHỨNG hệ số lễ/Tết; hiệu lực mức tiền đến 2026]`. Để chi được khoản phụ cấp ấy, bệnh viện đã phải lập và lưu bản ghi phiên trực từ trước — đây là bản ghi đang chạy, không phải thứ tôi hứa xây.

Nhượng bộ thẳng, vì B hỏi đúng chỗ: căn cứ đó chỉ phủ **nghĩa vụ hiện diện**, không phủ **nghĩa vụ kết quả**. Trong khoảng quá độ, phương án của tôi **không có** căn cứ kết quả đủ mạnh để phân hóa thu nhập tăng thêm giữa các bác sĩ. Hệ quả tôi chấp nhận và không giấu: giai đoạn đó, phần thu nhập tăng thêm chi theo mặt bằng/hệ số của quy chế chi tiêu nội bộ hiện hành `[Case file §4]` `[CẦN KIỂM CHỨNG điều khoản về quy chế chi tiêu nội bộ và thu nhập tăng thêm]`, tức **ít phân hóa hơn** phương án của B trong thời gian đó. Chi phí này thuộc về phía tôi, đúng như tôi tự nhận ở V3.

Hai điểm tôi không nhượng. Thứ nhất, việc thiếu căn cứ kết quả không tự nó biến giờ vào–ra hành chính thành căn cứ **chính** hợp lệ: phân hóa thu nhập theo một biến không phải mục tiêu là một lựa chọn, không phải mặc định [suy luận, có nhãn]. Thứ hai, mệnh đề (c) — miễn trừ lãnh đạo khoa phòng — không được giai đoạn quá độ bào chữa chút nào: chi phí hành chính của việc quẹt thẻ áp cho trưởng khoa không cao hơn áp cho bác sĩ dưới quyền [suy luận, có nhãn], nên lý do khả dĩ "chi phí hành chính" `[Case file §9]` không đỡ được (c) trong chính giai đoạn này.

**Trả lời 2:** **Có.** Nếu mốc chậm nhất 30/11/2026 được xác nhận `[Case file §11]` `[CẦN KIỂM CHỨNG]`, tôi rút khẳng định "điều kiện không có lối ra" ở dạng tuyệt đối.

Giải thích. Ở V3 tôi hỏi ba điều: mốc thoát là gì, ai chịu trách nhiệm, hạn nào. Mốc trong §11 trả lời được hai: chủ thể là chính đơn vị sự nghiệp công lập, hạn là 30/11/2026. Một trạng thái có chủ thể và có hạn định thì không còn là trạng thái tự chặn đường thoát của nó. Tôi không giữ khẳng định đã bị dữ kiện mới làm suy yếu.

Tôi cũng hạ cấp tiền đề của mục (II) trong lượt V3: câu "chế độ ấy không sinh ra thông tin để xây bộ chỉ số" là **suy luận của tôi**, không phải dữ kiện §1 xác lập; từ đây tôi chỉ dùng nó dưới nhãn suy luận, không trình như dữ kiện.

Ba điều còn lại sau khi rút. (i) Mốc buộc **ban hành** quy chế, nhưng bản thân mốc không nói quy chế ấy phải chứa gì; §11 có nêu khung kết quả thực hiện nhiệm vụ tối đa 70/100 điểm và nguyên tắc đánh giá qua tiêu chí cụ thể và sản phẩm công việc, song cả số điều lẫn phân bổ điểm lẫn câu chữ đều đang mang nhãn `[CẦN KIỂM CHỨNG]` `[Case file §11]` — tôi không trình chúng như đã xác lập, và §11 không tự nó xác lập rằng chế độ đang tranh là trái pháp luật. (ii) Nếu sau mốc, quy chế được ban hành mà vẫn lấy chấm công làm căn cứ **chính**, thì tranh luận quay về nội dung mệnh đề (b) — không còn được gọi là quá độ. (iii) Mốc này không đụng gì tới mệnh đề (c): không có mốc nào biến miễn trừ theo chức vụ thành tạm thời. Phần tôi rút là (II); (b) và (c) tôi giữ.

**Trả lời 3:** **Không.** Bước quy đổi trong phương án của tôi cũng không thoát khỏi phán đoán quản lý.

Giải thích. Ai chọn chỉ số nào vào bộ, đặt trọng số ra sao, ngưỡng nào là "hoàn thành tốt", hiệu chỉnh case-mix đến đâu — tất cả đều là lựa chọn của người quản lý [suy luận, có nhãn]. Case file §9 đã ghi rõ Goodhart áp cho **cả hai** phương án, kèm case-mix và rủi ro né bệnh nhân nặng; §5 ghi gaming và lệch phác đồ về phía chỉ số được tính điểm, dù chỉ là loại suy. Tôi đã rút ở V3 khẳng định "gaming để lại dấu vết, hiệu chỉnh được theo case-mix" và không viện lại nó ở đây. Vậy tôi không có quyền bán bộ chỉ số như một cơ chế khách quan.

Đính chính kèm theo: ở V3 tôi viết "theo mô tả của chính B, người quy đổi là người vận hành cơ chế". B chỉ nói người ký xác nhận bảng chấm công; tôi đã mở rộng nội hàm khi gán cho B, và tôi rút cách gán đó.

Khác biệt tôi vẫn giữ, và nó không phải "có hay không phán đoán" mà là phán đoán đặt lên cái gì, kiểm tra được đến đâu. (i) Đối tượng: phán đoán về biến gần với mục tiêu chăm sóc người bệnh, so với phán đoán về giờ vào–ra hành chính. (ii) Khả năng phát biểu công khai: tiêu chí kết quả buộc phải viết ra thành tiêu chí và sản phẩm công việc, chịu phép thử công khai `[Case file §9]`; đó là điều kiện để người bị đánh giá phản đối được. (iii) Thủ tục: nội quy về thời giờ làm việc phải tham khảo ý kiến tổ chức đại diện người lao động tại cơ sở `[Case file §2, BLLĐ 2019 Điều 118]`.

Và mệnh đề (c) không phụ thuộc câu trả lời này: dù quy đổi bằng phán đoán, miễn trừ theo chức vụ vẫn thất bại nguyên tắc tổng quát hóa `[Case file §9]`, trừ khi biện minh bằng tính chất công việc, có đăng ký lịch, mở cho mọi người đủ điều kiện.

### A hỏi B

**Câu hỏi 1:** Ở V3, B viết: "nếu đọc §1 chặt — miễn trừ **toàn phần, không đăng ký, không cơ chế thay thế** — thì tôi **không bảo vệ** dạng đó", và "miễn trừ **để trống** không chịu được phép thử tổng quát hóa". Nhưng dạng đó chính là chế độ đang tranh: lãnh đạo khoa phòng được miễn, không kèm cơ chế thay thế nào được mô tả `[Case file §1]`. Xin một câu trả lời dứt khoát: đối với chế độ như §1 mô tả — không phải biến thể giả định có đăng ký lịch — B kết luận nó chính đáng hay bất công?

**Câu hỏi 2:** Ở V3, B đưa "Mốc thoát cụ thể: chu kỳ đánh giá viên chức **trước 15/12 hàng năm** với **đủ năm nhóm tiêu chí**". Case file §11 xác lập NĐ 233/2026/NĐ-CP hiệu lực 01/7/2026, **thay thế** NĐ 90/2020/NĐ-CP `[Case file §11]` — văn bản B dựa vào. Câu hỏi: sau 01/7/2026, mốc thoát ấy còn căn cứ hiệu lực nào không?

**Câu hỏi 3:** Ở V3, B viết: "chấm công chỉ ràng buộc phần 'có mặt', không ràng buộc phần 'làm gì'". Trong chế độ đang tranh, chấm công là **căn cứ chính** để đánh giá mức độ hoàn thành nhiệm vụ, còn bộ chỉ số kết quả **không có hoặc chỉ có hình thức** `[Case file §1]`. Câu hỏi: khi đó, dữ liệu chỉ ràng buộc "có mặt" ràng buộc được phán đoán về **mức độ hoàn thành nhiệm vụ** đến đâu?

### B trả lời

**Trả lời 1:** Dứt khoát, và tôi tách theo ba mệnh đề đúng như `[Case file §1]` cho phép.

(a) Bác sĩ lâm sàng phải chấm công: **chính đáng**.
(b) Lấy chấm công làm căn cứ chính khi chưa có bộ chỉ số kết quả: **chính đáng có điều kiện và có hạn** — chỉ trong giai đoạn quá độ, tới mốc quy chế đánh giá mới (xem Trả lời 2).
(c) Miễn trừ lãnh đạo khoa phòng, đọc chặt như A đề nghị — miễn toàn phần, không đăng ký lịch, không cơ chế thay thế: **bất công**. Tôi giữ nguyên lời V3, không lùi, không đổi sang biến thể giả định.

Lý do tôi kết luận (c) bất công: nghĩa vụ giải trình khi ấy được phân bổ theo **địa vị** chứ không theo **chức năng**, và không chịu được phép thử tổng quát hóa/công khai `[Case file §9]`. Các lý do khả dĩ của miễn trừ — công việc di động, đã chịu cơ chế trách nhiệm giải trình khác, chi phí hành chính `[Case file §9]` — theo tôi là lý do thật, nhưng chúng chỉ biện minh cho **một hình thức giải trình khác**, không biện minh cho **khoảng trống**. Chính phản biện khả dĩ mà §9 ghi — xử lý bằng cơ chế báo vắng/đăng ký lịch thay vì miễn trừ toàn phần — là điều tôi cho là đúng.

Hai hệ quả tôi nhận ngay. Thứ nhất: ở mệnh đề (c), A thắng theo cách đọc chặt §1, và tôi không tranh chỗ đó bằng cách đọc lỏng. Thứ hai: vì §1 nói rõ ba mệnh đề tách rời, thua ở (c) **không** kéo theo thua ở (a) và (b) — và biện pháp khắc phục mà (c) đòi hỏi là **thêm ràng buộc giải trình cho lãnh đạo**, không phải **gỡ chấm công của bác sĩ**. Đó là chỗ tôi và A vẫn khác nhau về kết luận chính sách, dù đã hội tụ về chẩn đoán.

**Trả lời 2:** Trả lời thẳng: **không**. Sau 01/7/2026, mốc "trước 15/12 hàng năm với đủ năm nhóm tiêu chí" mà tôi dẫn ở V3 không còn căn cứ hiệu lực, vì NĐ 233/2026/NĐ-CP hiệu lực 01/7/2026 **thay thế** NĐ 90/2020/NĐ-CP `[Case file §11]`. Tôi **rút** mốc thoát đó.

Tôi thay bằng mốc trong chính §11: chậm nhất **30/11/2026**, đơn vị sự nghiệp công lập phải ban hành quy chế đánh giá riêng `[CẦN KIỂM CHỨNG]` `[Case file §11]`. Đây là mốc cụ thể hơn mốc tôi đã rút: nó không chỉ ấn định thời điểm đánh giá, mà ấn định thời điểm **phải có công cụ đánh giá**. Lập luận "giai đoạn quá độ" của tôi vì thế không mất chỗ đứng — nó đổi chỗ đứng, từ một văn bản hết hiệu lực sang một văn bản đang hiệu lực, và có hạn chót gần hơn.

Nhưng tôi phải nói nốt chiều bất lợi, vì né sẽ là không trung thực. Khung tiêu chí kết quả thực hiện nhiệm vụ tối đa **70/100** điểm, khung tiêu chí chung tối đa **30/100** `[CẦN KIỂM CHỨNG số điều, phân bổ điểm chi tiết, nội dung Phụ lục I]`, cùng nguyên tắc đánh giá **thông qua tiêu chí cụ thể và sản phẩm công việc** `[CẦN KIỂM CHỨNG câu chữ]` `[Case file §11]`, đi ngược chiều mệnh đề (b) của tôi. Nếu các con số ấy được xác nhận, thì sau khi quy chế mới ban hành, chấm công **không thể** giữ vai trò căn cứ chính — cùng lắm là một cấu phần nhỏ trong nhóm ý thức tổ chức kỷ luật.

Nên phát biểu lại (b) cho chính xác: bảo vệ của tôi là bảo vệ **có hạn định thời gian**, không phải bảo vệ vô thời hạn. Tôi cũng ghi nhận §11 không tự nó xác lập chế độ đang tranh là trái pháp luật `[Case file §11]`.

**Trả lời 3:** Trả lời thẳng: **ràng buộc rất yếu, và yếu một chiều**. Dữ liệu hiện diện chỉ chống đỡ được điều kiện **cần**, không chống đỡ điều kiện **đủ**. Nó chặn được phần dưới — loại trừ trường hợp vắng mặt trong khung giờ có nghĩa vụ hiện diện lâm sàng `[Case file §9]` — nhưng không phân hóa được phần trên: giữa một bác sĩ có mặt đủ và làm tốt với một bác sĩ có mặt đủ và làm ở mức tối thiểu, dữ liệu chấm công không nói được gì. Khi bộ chỉ số kết quả không có hoặc chỉ có hình thức `[Case file §1]`, phần phán đoán còn lại về "mức độ hoàn thành nhiệm vụ" **không** đến từ dữ liệu chấm công; nó đến từ phán đoán của người quản lý. Tôi nhận điều đó, và nhận rằng đây là điểm căng nhất trong mệnh đề (b) của tôi.

Điều tôi vẫn giữ, gồm hai ý. Thứ nhất, §1 ghi "căn cứ chính", không ghi "căn cứ duy nhất" `[Case file §1]`; phần bổ khuyết là phán đoán quản lý — và A vừa trả lời **không** rằng bước quy đổi trong phương án của A cũng không thoát khỏi phán đoán quản lý. Vậy khác biệt giữa hai phương án ở khâu này là **mức độ**, đúng như tôi đã nhận ở V3 khi chấp nhận phân biệt đo/đánh giá của A. Thứ hai, hiện diện đúng khung giờ không phải biến ngoại lai với nghĩa vụ chuyên môn; với ràng buộc hiện diện có lý do lâm sàng `[Case file §9]`, nó là **một phần** của nhiệm vụ, chứ không phải chỉ báo thay thế cho nhiệm vụ.

Kết luận thành thật: chấm công đứng được như **sàn kỷ luật tạm thời**, không đứng được như **thước đo hoàn thành nhiệm vụ đầy đủ**. Và như Trả lời 2 đã nói, tỷ trọng 70/30 trong §11 `[CẦN KIỂM CHỨNG]` đặt hạn chót cho vai trò tạm thời ấy.

## Vòng 5 — Kết luận
### Kết luận — Advocate A

`[vượt ngân sách từ: 928/800 — đã yêu cầu cắt gọn một lần (941 → 928), vẫn vượt trần +10% (880); ghi nhận theo quy tắc harness]`

**Đính chính cờ vàng vòng 3.** (1) A-06 — "giờ vào–ra không chứa biến kết quả" và "chế độ ấy không sinh ra thông tin để xây bộ chỉ số" là **suy luận của tôi từ §1**, không phải dữ kiện. (2) A-07 "nhóm này không có điều khoản hoãn": **tôi rút**. (3) "Bước quy đổi là phán đoán quản lý": **suy luận có nhãn**. (4) A-04 "B cũng rút hai khẳng định vòng 2": **tôi rút**, không xác minh được.

**Cái đã hội tụ, cái còn tranh.** (a) tôi không tranh từ V1. Ở (c), B đã kết luận miễn trừ toàn phần — không đăng ký lịch, không cơ chế thay thế — là **bất công** [transcript V4]. Tôi không tuyên bố thắng toàn cục vì điều đó: phần còn tranh thật là (b) và hệ quả chính sách.

**Trục 1 — Công bằng tổ chức & khuyến khích.** Nguyên tắc viện dẫn: **nhất quán** trong công bằng thủ tục — cùng một lý do phải cho cùng một kết quả bất kể ai nêu `[Case file §7; §9]`. Chế độ §1 hỏng ở ba chiều: **phân phối** (thu nhập tăng thêm phân hóa theo hiện diện hành chính, trong khi gánh nặng thật phân bố theo phiên trực và độ nặng ca bệnh); **thủ tục** (miễn trừ để trống); **liên nhân–thông tin** (lý do "công việc di động, đã chịu trách nhiệm giải trình khác" được nhận cho một nhóm, bị bác cho nhóm kia, không giải trình tiêu chí). Áp cho phương án tôi: căn cứ "số phiên trực theo bảng phân công" cũng chịu **Goodhart** — động cơ tranh ca dễ, né ca nặng `[Case file §9]`. Nên nó không phải thước đo kết quả; nó là căn cứ **nghĩa vụ hiện diện có lý do lâm sàng**, phải kèm case-mix khi có bộ chỉ số, và **áp cho mọi cấp**.

**Trục 2 — Bằng chứng & dữ kiện.** Sự kiện: QĐ 73/2011/QĐ-TTg chi trả theo **phiên trực**, không theo điểm danh giờ hành chính `[Case file §3]`. Diễn giải của tôi: hệ thống hiện hành đã có đơn vị đo hợp với công việc lâm sàng hơn — nhưng dữ kiện đó **không** tự chứng minh chấm công trái pháp luật. Ba khối còn lại — QOF `[Case file §5]`, thời gian hồ sơ/hành chính `[Case file §6]`, crowding-out `[Case file §7]` — là **loại suy**, đo chế độ khác; §7 chưa ngã ngũ (Cameron & Pierce 1994 đối lập Deci và cs 1999). Con số 9.680 gắn bối cảnh hậu COVID-19, **không suy nhân quả được** `[Case file §8]`. Tôi không dùng chúng để chứng minh tác hại, mà để đặt gánh nặng chứng minh lên bên đưa một chỉ báo đầu vào vào vai trò **căn cứ chính**.

**Trục 3 — Pháp lý & quy chế.** Bác sĩ bệnh viện công là **viên chức**, không phải công chức `[Case file §1]`. Nghĩa vụ chấm công có cơ sở: nội quy lao động phải quy định thời giờ làm việc `[BLLĐ 2019 Điều 118 — Case file §2]` — nên (a) không tranh. Chính Điều 118 cũng buộc **tham khảo ý kiến tổ chức đại diện người lao động** và **không được trái pháp luật**: cơ chế công bằng thủ tục sẵn có mà §1 không cho thấy đã dùng. **NĐ 233/2026/NĐ-CP** (26/6/2026, hiệu lực 01/7/2026) thay NĐ 90/2020: khung **70/100 điểm cho kết quả thực hiện nhiệm vụ**, 30/100 tiêu chí chung, đánh giá liên tục theo tháng/quý `[Nguồn: Chinhphu.vn – xaydungchinhsach, 2026; LuatVietnam, 2026]` — xác nhận §11; **số điều và Phụ lục I giữ nhãn `[CẦN KIỂM CHỨNG]`**. Điểm bất lợi cho tôi, nêu thẳng: nguồn nêu quy tắc chuyển tiếp — đơn vị chưa ban hành quy chế riêng khi đánh giá cuối năm 2026 thì vẫn dùng quy chế theo NĐ 90/2020 `[Nguồn: LuatVietnam, 2026]`. Đúng như tôi đã rút ở V4: có lối ra. Nhưng là lối ra **tạm và có hạn**, không phải trạng thái ổn định.

**Trục 4 — Logic.** B bảo vệ (b) bằng câu: chấm công đứng được như "sàn kỷ luật tạm thời", không đứng được như "thước đo hoàn thành nhiệm vụ đầy đủ" [transcript V4]. §1 định nghĩa đúng cái thứ hai. Bảo vệ mệnh đề yếu hơn mệnh đề đang tranh là **ignoratio elenchi**; cơ chế: "sàn" chỉ tồn tại nếu có cấu phần kết quả gánh phần chính — mà §1 nói phần đó **không có hoặc chỉ hình thức**. Cùng tiêu chuẩn áp cho tôi: tôi đã nhận phương án mình **không** đủ căn cứ kết quả để phân hóa thu nhập trong quá độ, và bước quy đổi của tôi cũng không thoát phán đoán quản lý. Khác biệt không nằm ở "có phán đoán hay không", mà ở chỗ nghĩa vụ nào được gọi đúng tên và **ai được loại khỏi nó**. Do đó khác biệt chính sách hẹp hơn B mô tả: tôi **không** đòi gỡ nghĩa vụ hiện diện của bác sĩ — tôi đòi gỡ **vai trò căn cứ chính** của chấm công, còn thêm ràng buộc giải trình cho lãnh đạo là điều tôi cũng đòi.

**Giới hạn của lập luận phía tôi:** Nếu phân bổ 70/30 và mốc ban hành quy chế riêng không đúng như §11 mô tả — hai chi tiết vẫn mang nhãn `[CẦN KIỂM CHỨNG]` — thì trụ pháp lý mạnh nhất của tôi mất chỗ dựa, và quy tắc chuyển tiếp về NĐ 90/2020 kéo dài chính cái cửa sổ mà B cần. Nếu ở một đơn vị, bảng phân công trực và sổ bàn giao ca không được ghi chép đủ tin cậy, phương án của tôi không còn căn cứ phân hóa nào ngoài phán đoán quản lý — đúng điều tôi phê bình. Và kết luận (c) của tôi chỉ đứng vững với cách đọc chặt §1: nếu diện miễn trừ thực tế đi kèm cơ chế trách nhiệm giải trình khác có đăng ký, nó yếu đi đáng kể.

**Nguồn trích dẫn trong lượt này:** Case file §1, §2, §3, §5, §6, §7, §8, §9, §11; transcript V4 (lượt B); Chinhphu.vn – xaydungchinhsach, "Nghị định 233/2026/NĐ-CP về đánh giá, xếp loại chất lượng với đơn vị sự nghiệp công lập và viên chức", 2026; LuatVietnam, "Từ 01/7/2026, viên chức được chấm điểm theo tháng, quý…", 2026.

### Kết luận — Advocate B
[đang chạy]

---
> **Quy ước heading phụ lục (BẮT BUỘC giữ nguyên văn):** `scripts/make_judge_input.sh` cắt input cho judge từ `## Vòng 1 — Mở đầu` đến TRƯỚC `## Phụ lục B` — đổi các heading dưới đây (kể cả chữ "Phụ lục B") sẽ làm steelman audit lọt vào input của judge hoặc làm input rỗng. Phụ lục A (fact-check) đặt TRƯỚC Phụ lục B.

## Phụ lục A — Fact-check (phạm vi: V1–V2)

**Đối chiếu:** `knowledge/case_file_chamcong.md` (commit c8ecf8d) → WebSearch (H1–H3 theo bảng hạng trong header case file)

### Bên A — vòng 1

| Bên | Khẳng định (trích nguyên văn) | Kết quả | Nguồn đối chiếu |
|-----|------------------------------|---------|-----------------|
| A | "Tách ba mệnh đề `[Case file §1]`: (a)… (b) chấm công **thay thế** đánh giá kết quả, và (c) miễn trừ **theo cấp bậc**" | ✅ Đúng | §1 nêu đúng ba mệnh đề (a)(b)(c) |
| A | "'công việc di động, không đo được bằng giờ có mặt', 'đã có cơ chế trách nhiệm giải trình khác' `[Case file §9]`" | ✅ Đúng (tag đúng chỗ) | §9 liệt kê lý do khả dĩ của miễn trừ. §9 là mục diễn giải — chỉ kiểm vị trí tag |
| A | "**Phép thử công khai (publicity test)**… **Phép thử tổng quát hóa (universalizability)**" `[Case file §9]` | ✅ Đúng (tag đúng chỗ) | §9: "nguyên tắc tổng quát hóa & phép thử công khai" |
| A | "bốn chiều công bằng đóng góp phần phương sai riêng… niềm tin là biến tương quan của công bằng thủ tục" `[Colquitt và cộng sự, JAP 2001 — §7]` | ✅ Đúng | §7 khớp: 183 nghiên cứu; bốn chiều; niềm tin |
| A | "Quy luật Goodhart cắt hai chiều… **né bệnh nhân nặng (patient selection)** do case-mix" `[Case file §9]` | ✅ Đúng (tag đúng chỗ) | §9 khớp |
| A | "P4P/QOF… cải thiện ở mốc 1 năm nhưng kém nhất quán ở mốc 3 năm, mạnh nhất với chỉ số quy trình vốn thực hiện thấp" `[PMC12188983 — §5]` | ✅ Đúng | §5 khớp gần nguyên văn cả ba vế |
| A | "Ba khối tôi dùng đều là **loại suy (analogy)**… khối này nói về trả theo chỉ số, **không** phải chấm công" | ✅ Đúng (khai báo đúng phạm vi) | Tuân thủ "Lưu ý bắt buộc" §5 |
| A | "Can thiệp bị cảm nhận là **kiểm soát**… cảm nhận là **hỗ trợ** thì có thể làm tăng… **không** phải kết luận đã đóng" `[Frey & Jegen, JES 2001 — §7]` | ✅ Đúng | §7 khớp cả hai vế điều kiện lẫn cảnh báo tranh cãi học thuật |
| A | "9.680 nhân viên y tế thôi việc/bỏ việc trong ~18 tháng 2021–2022… suy nhân quả từ đây là sai" `[Bộ Y tế — §8]` | ✅ Đúng | §8 khớp con số, phạm vi, nguồn H1; khai báo đúng "Lưu ý bắt buộc" §8 |
| A | "Bác sĩ bệnh viện công là **viên chức**, không phải công chức" `[Case file §1]` | ✅ Đúng | §1 khớp |
| A | "nội quy lao động phải bằng văn bản khi từ 10 người lao động trở lên… **tham khảo ý kiến tổ chức đại diện người lao động tại cơ sở**" `[BLLĐ 2019 Điều 118 — §2]` | ✅ Đúng | §2 khớp ba vế; xác nhận độc lập qua tổng hợp Điều 118 (H3) |
| **A-11** | "…**việc tham khảo lập thành văn bản**" `[BLLĐ 2019 Điều 118 — §2]` | **🟡 Thiếu nguồn (gán sai văn bản)** | Chi tiết này KHÔNG có trong §2 và KHÔNG nằm trong Điều 118 BLLĐ 2019. Yêu cầu lập biên bản/văn bản nằm ở **NĐ 145/2020/NĐ-CP**. Nội dung thực chất có cơ sở, nhưng tag nguồn sai điều luật → cờ vàng, không phải cờ đỏ |
| A | "khung đánh giá viên chức gồm **cả** nhóm hành vi… **lẫn** 'kết quả thực hiện chức trách, nhiệm vụ được giao'" `[NĐ 90/2020 — §2]` | ✅ Đúng | §2 liệt kê đúng 5 nhóm; A tuân thủ "Lưu ý trung lập" của §2 |
| A | "trực 12/24 giờ = 0,5 lần, 16/24 giờ = 0,75 lần, ngày nghỉ hằng tuần = 1,3 lần" `[QĐ 73/2011 — §3]` | ✅ Đúng | §3 khớp cả ba hệ số. A **không** dẫn các mức tiền vốn mang nhãn `[CẦN KIỂM CHỨNG]` → không vi phạm gỡ nhãn |
| A | "Khung KPI viên chức từ 01/7/2026 còn mang nhãn dự kiến… tôi **không** viện dẫn nó như quy định bắt buộc" | ✅ Đúng (giữ nguyên nhãn) | Tuân thủ đúng cảnh báo §2 |
| **A-15** | "cái được tối ưu là sự hiện diện — biến **gần như không tương quan với chất lượng lâm sàng**" | **🟡 Thiếu nguồn** | Khẳng định thực nghiệm về mức tương quan, trình bày như sự thật, không tag nguồn, không có trong case file. Không tìm được nguồn H1–H2 trong 2 lần tìm |
| A | *(hạng mục đặc biệt)* có bịa bệnh viện / văn bản nội bộ / khảo sát / vụ việc cụ thể không? | ✅ Không | Tuân thủ "Cấm tuyệt đối" §1 |

### Bên B — vòng 1

| Bên | Khẳng định (trích nguyên văn) | Kết quả | Nguồn đối chiếu |
|-----|------------------------------|---------|-----------------|
| B | "Ba mệnh đề tách rời `[Case file §1]`: (a)… (c)… (b)…" | ✅ Đúng | §1 khớp |
| B | *(Steelman)* "Đối phương lập luận rằng khuyết tật trung tâm nằm ở công bằng thủ tục…" | ✅ Đúng (tóm tắt khớp lượt A) | Đối chiếu trực tiếp lượt A: trùng cả hai luận điểm chính. Không phát hiện xuyên tạc |
| **B-3** | "nghĩa vụ chấm công áp cho **toàn bộ** nhân lực bệnh viện — điều dưỡng, kỹ thuật viên, hành chính — không chọn riêng bác sĩ" | **🟡 Thiếu nguồn** | §1 định nghĩa chính sách chuẩn hóa chỉ nêu "(1) **bác sĩ lâm sàng** phải điểm danh" và "(3) lãnh đạo khoa phòng được MIỄN". Case file KHÔNG xác lập phạm vi áp dụng cho điều dưỡng/kỹ thuật viên/hành chính. Là tiền đề thực tế thêm ngoài đề bài, chưa được xác lập |
| B | "Theo thuyết công bằng Adams, bất mãn sinh từ so sánh với **nhóm tham chiếu**" `[Case file §9]` | ✅ Đúng (tag đúng chỗ) | §9 khớp |
| B | "quy luật Goodhart cắt hai chiều: chỉ số kết quả bị **gaming** và tạo động cơ **né bệnh nhân nặng** do case-mix" `[§5, §9]` | ✅ Đúng | Cả hai tag đúng chỗ |
| B | "QOF cải thiện… ở mốc 1 năm nhưng **kém nhất quán ở mốc 3 năm**…" `[PMC12188983 — §5]` | ✅ Đúng | §5 khớp (cùng nguồn, cùng ba vế như A trích) |
| B | "kèm gaming và **giảm hài lòng, giảm động lực nội tại**" `[PMC7359468 — §5]` | ✅ Đúng | §5 khớp; mã nguồn đúng |
| B | "Bằng chứng về trả theo hiệu quả… là **loại suy**… khối này **không** chứng minh chấm công tốt" `[§5]` | ✅ Đúng (khai báo đúng phạm vi) | Tuân thủ "Lưu ý bắt buộc" §5 |
| B | "ngưỡng >90 phút/ngày hồ sơ điện tử ngoài giờ và >60 phút tác vụ hành chính đo **giấy tờ chuyên môn**, không đo thao tác quẹt thẻ" `[§6]` | ✅ Đúng | §6 khớp + đúng "Lưu ý bắt buộc" §6. B **không** dẫn con số phần trăm Sinsky 2016 (mang nhãn `[CẦN KIỂM CHỨNG]`) |
| B | "chính lý thuyết đó là **có điều kiện** (kiểm soát vs hỗ trợ) và các phân tích gộp còn đối lập nhau" `[§7]` | ✅ Đúng | §7 khớp |
| B | "nội quy lao động là **nghĩa vụ luật định**… nội dung chủ yếu **bao gồm thời giờ làm việc, thời giờ nghỉ ngơi**" `[BLLĐ 2019 Điều 118 — §2]` | ✅ Đúng | §2 khớp; xác nhận độc lập (H3) |
| B | "Khung đánh giá viên chức chứa **cả** 'tác phong, lề lối làm việc' và 'ý thức tổ chức kỷ luật', không chỉ nhóm kết quả" `[NĐ 90/2020 — §2]` | ✅ Đúng | §2 khớp |
| B | "Cơ chế tự chủ tài chính trao thẩm quyền quản trị nội bộ đáng kể… điều khoản cụ thể về thu nhập tăng thêm `[CẦN KIỂM CHỨNG]`" `[NĐ 60/2021 + NĐ 111/2025 — §4]` | ✅ Đúng (giữ nguyên nhãn) | §4 khớp. Tổng hợp H3 xác nhận nguyên tắc "đơn vị được quyết định mức chi… trong quy chế chi tiêu nội bộ" |
| B | "phụ cấp đặc thù tính theo **phiên trực**" `[QĐ 73/2011 — §3]` | ✅ Đúng | §3 + "Ý nghĩa dữ kiện (trung lập)". B không dẫn mức tiền |
| B | "Chấm công phục vụ ba chức năng **hành chính–pháp lý**: căn cứ tính lương và chế độ; dữ liệu phân bổ nhân lực, lập lịch trực; xử lý mối lo có thật về rời vị trí trong giờ" `[§9]` | ✅ Đúng | Tag §9 đúng chỗ. Vế "căn cứ tính lương" có cơ sở độc lập: TT 107/2017/TT-BTC có mẫu Bảng chấm công C01-HD làm căn cứ lập bảng thanh toán lương/phụ cấp/thu nhập tăng thêm `[H1]` — *lưu ý kỹ thuật: C01-HD thuộc nhóm mẫu hướng dẫn, không thuộc nhóm chứng từ bắt buộc; B không khẳng định là "bắt buộc" nên không phát sinh cờ* |
| **B-15** | "lãnh đạo khoa phòng đã chịu cơ chế trách nhiệm giải trình **khác và nặng hơn** — chịu trách nhiệm về **chỉ số hoạt động cả khoa và về sự cố y khoa**" `[§9]` | **🟡 Thiếu nguồn (phần mở rộng)** | §9 chỉ nêu "đã chịu cơ chế trách nhiệm giải trình khác" — KHÔNG có so sánh mức độ ("nặng hơn") và KHÔNG có hai nội dung cụ thể được liệt kê. Quy chế bệnh viện (QĐ 1895/1997) có quy định trưởng khoa "chịu trách nhiệm trước giám đốc về mọi hoạt động của khoa" `[H3 tổng hợp]`, hỗ trợ một phần vế đầu; nhưng §3 ghi rõ nhiều nội dung QĐ 1895 đã bị bãi bỏ. Vế "về sự cố y khoa" và so sánh "nặng hơn" không xác minh được trong 2 lần tìm |
| B | "Khung KPI viên chức còn mang nhãn dự kiến… tôi không viện dẫn" | ✅ Đúng (giữ nguyên nhãn) | §2 khớp |
| B | *(hạng mục đặc biệt)* có bịa bệnh viện / văn bản nội bộ / khảo sát / vụ việc cụ thể không? | ✅ Không | Tuân thủ §1 |

### Tổng hợp cờ — vòng 1

| Cờ | Bên A | Bên B |
|----|-------|-------|
| 🔴 Sai | **0** | **0** |
| 🟡 Thiếu nguồn | **2** (A-11 gán "lập thành văn bản" cho Điều 118 BLLĐ thay vì NĐ 145/2020; A-15 "hiện diện gần như không tương quan với chất lượng lâm sàng") | **2** (B-3 "chấm công áp cho toàn bộ nhân lực bệnh viện"; B-15 "trách nhiệm khác **và nặng hơn**… chỉ số hoạt động cả khoa và sự cố y khoa") |
| ⚠️ Không xác minh được | 0 | 0 |

**Ba hạng mục ưu tiên của vòng này — không bên nào vi phạm:**
1. **Bịa vụ việc cụ thể:** không phát hiện ở cả hai bên.
2. **Gỡ nhãn `[CẦN KIỂM CHỨNG]`:** không phát hiện. Cả hai chủ động giữ nhãn cho khung KPI 01/7/2026; cả hai tránh dẫn mức tiền QĐ 73/2011; B giữ nhãn cho điều khoản thu nhập tăng thêm NĐ 60/2021; B không dẫn con số Sinsky 2016.
3. **Trình bằng chứng loại suy như bằng chứng trực tiếp:** không phát hiện. A khai báo rõ ba khối §5/§7/§8; B khai báo rõ §5 và §6.

### Tự kiểm đối xứng — vòng 1

- **Số khẳng định được kiểm:** A **17** mục; B **18** mục. Chênh 1 mục, trong dung sai; nguyên nhân: B có thêm khối steelman tóm tắt lượt đối phương (được kiểm về tính khớp với văn bản gốc lượt A).
- **Số cờ:** cân bằng tuyệt đối (mỗi bên 0 🔴 / 2 🟡).
- **Cùng tiêu chuẩn khắt khe, áp cho cả hai bên ở ba điểm:** (i) chi tiết pháp lý thêm ngoài case file phải tag đúng văn bản (bắt A-11); (ii) dữ kiện thực tế thêm ngoài định nghĩa chính sách §1 phải có nguồn (bắt B-3); (iii) mở rộng nội dung §9 vượt quá câu chữ của §9 phải có nguồn riêng (bắt B-15, tương ứng A-15 cho khẳng định thực nghiệm không nguồn).
- **Ngân sách tìm kiếm:** 4 WebSearch + 2 WebFetch, không mục nào vượt 2 lần tìm. Hai WebFetch thất bại do egress bị chặn (hethongphapluat.com, thuvienphapluat.vn) — thay bằng nguồn tổng hợp H3; chỉ ảnh hưởng mức độ chắc chắn của A-11, không đổi kết luận.
- **Lưu ý không tính cờ:** A liệt "BLLĐ 2019 Điều 105 (đối chiếu)" trong danh sách nguồn nhưng không đưa khẳng định nào từ Điều 105 vào thân bài — không có nội dung để kiểm.

---

## Fact-check vòng 2

> ⚠️ **KHAI BÁO LỖI VẬN HÀNH CỦA ORCHESTRATOR (đọc trước khi diễn giải bảng này).** Ở lượt fact-check vòng 2, orchestrator **không nạp văn bản các lượt Vòng 1** cho fact-checker. Hậu quả: mọi mục mà fact-checker cần đối chiếu ngược về Vòng 1 — cụ thể là phần **steelman** và phần **trích lại lời đối phương** của bên B — bị gắn `⚠️ Không xác minh được` **vì thiếu dữ liệu nạp, KHÔNG phải vì B nói mơ hồ**. Đây là lý do bảng dưới có chênh lệch ⚠️ 3 (B) – 1 (A). **Judge KHÔNG được đọc chênh lệch ⚠️ này như tín hiệu chất lượng lập luận của B.** Chính fact-checker đã tự phát hiện và yêu cầu orchestrator xử lý; orchestrator đã xử lý ở mục "Hậu kiểm" ngay dưới bảng.

| Bên | Khẳng định (trích nguyên văn) | Kết quả | Nguồn đối chiếu |
|-----|------------------------------|---------|-----------------|
| B | "Case file §1 chỉ định nghĩa chính sách với **bác sĩ lâm sàng** và miễn trừ lãnh đạo; nó không xác lập phạm vi áp cho điều dưỡng/kỹ thuật viên/hành chính." | ✅ Đúng | §1 chỉ nêu "bác sĩ lâm sàng"; không có nhóm nào khác. Đính chính chính xác |
| B | "§9 chỉ nêu lãnh đạo 'đã chịu cơ chế trách nhiệm giải trình khác'" | ✅ Đúng | §9 nguyên văn; không có "nặng hơn", không liệt kê nội dung cụ thể |
| B | "lãnh đạo khoa phòng… là người phụ trách bộ phận chấm công và **ký xác nhận bảng chấm công**" `[mẫu 01a-LĐTL, TT 200/2014/TT-BTC]` — phần mẫu 01a-LĐTL | ✅ Đúng (có bảo lưu) | Mẫu 01a-LĐTL "Bảng chấm công" thuộc TT 200/2014/TT-BTC có thật; chân bảng có 3 chữ ký: **Người chấm công – Phụ trách bộ phận – Người duyệt**; hướng dẫn: "Hàng ngày tổ trưởng (Trưởng ban, phòng, nhóm…) hoặc người được ủy quyền" chấm công. *Bảo lưu:* nguồn khả dụng là H3, không truy được PDF phụ lục gốc (egress chặn) |
| B | "TT 200/2014/TT-BTC — **chế độ kế toán doanh nghiệp**" (B tự khai báo phạm vi) | ✅ Đúng | TT 200/2014/TT-BTC Điều 1: áp dụng đối với **doanh nghiệp** thuộc mọi lĩnh vực, mọi thành phần kinh tế. B khai báo đúng phạm vi và KHÔNG áp thẳng cho bệnh viện công — ghi nhận |
| **B-5** | "đơn vị sự nghiệp y tế **theo TT 107/2017/TT-BTC**, CẦN KIỂM CHỨNG mẫu tương ứng" | **🔴 Sai (văn bản viện dẫn đã hết hiệu lực)** | **TT 107/2017/TT-BTC đã bị thay thế bởi TT 24/2024/TT-BTC** (ban hành 17/4/2024, hiệu lực 01/01/2025, áp dụng từ năm tài chính 2025) `[H1: Công báo Chính phủ, Cổng Xây dựng chính sách]`. Tại thời điểm tranh biện (2026), đơn vị sự nghiệp công lập không còn theo TT 107/2017. *Giảm nhẹ:* B đã tự gắn `[CẦN KIỂM CHỨNG]` cho **mẫu tương ứng**, nhưng **tên văn bản được nêu như đang hiệu lực** |
| B | (hệ quả) mẫu bảng chấm công của đơn vị sự nghiệp y tế và người ký trên mẫu đó | ⚠️ Không xác minh được | Không truy được danh mục chứng từ kèm TT 24/2024 sau 2 lượt tìm. Nhãn `[CẦN KIỂM CHỨNG]` của B ở đây là **đúng quy trình** — không tính cờ |
| B | "P4P kèm **lệch phác đồ về phía chỉ số được tính điểm**" `[§5]` | ✅ Đúng (tag đúng chỗ) | §5 nguyên văn `[PMC7359468]`. Áp cho một phương án dựa trên chỉ số kết quả → **cùng loại bằng chứng**, không phải loại suy sang chấm công |
| B | "rủi ro **né bệnh nhân nặng** do case-mix" `[§9]` | ✅ Đúng (tag đúng chỗ) | §9 liệt kê case-mix, né bệnh nhân nặng |
| **B-9** | "chi phí của chấm công — **có thật**, tôi thừa nhận — rơi trước hết lên **thời gian và động lực** của bác sĩ" `[§7]` | **🟡 Thiếu nguồn (tag chỉ đỡ một phần)** | §7 (Frey & Jegen 2001) nói can thiệp ngoại sinh **"có thể"** suy giảm động lực nội tại **nếu cảm nhận là KIỂM SOÁT**, và §7 ghi rõ có **tranh cãi học thuật**. Trình bày dưới dạng "có thật" bỏ điều kiện + bỏ tranh cãi. Cấu phần "**thời gian**" không nằm ở §7 (gánh nặng thời gian thuộc §6, mà §6 lưu ý đo hồ sơ bệnh án điện tử, KHÔNG đo quẹt thẻ) |
| B | "phụ cấp trực tính **theo phiên**" `[§3]` | ✅ Đúng | §3. B dùng đúng phần không bị gắn `[CẦN KIỂM CHỨNG]` của §3 |
| B | "nội quy lao động vẫn buộc phải có nội dung **thời giờ làm việc**" `[§2]` | ✅ Đúng | §2, BLLĐ 2019 Điều 118 |
| **B-12** | Trích A (Vòng 1): "khi chỉ số bị gaming, cái được tối ưu ít nhất vẫn nằm trên trục chăm sóc" | ⚠️→ **✅ Đúng (orchestrator hậu kiểm)** | Fact-checker gắn ⚠️ vì không được nạp Vòng 1. **Orchestrator đã đối chiếu cơ học với transcript** (chuẩn hóa NFC + casefold + dấu câu): chuỗi **KHỚP nguyên văn** lượt V1 của A. Cáo buộc cherry-picking của B **có nền sự kiện** |
| B | Steelman lập luận đối phương | ⚠️→ **✅ Đúng (orchestrator hậu kiểm)** | Đối chiếu trực tiếp lượt V1-A: bốn chi tiết B tóm tắt (đặc quyền chức vụ tự nó hợp pháp; lý do miễn trừ bị từ chối khi bác sĩ nêu; phép thử tổng quát hóa/công khai; đề xuất tách nghĩa vụ hiện diện khỏi nghĩa vụ kết quả áp cho mọi cấp) đều khớp, không thêm/không bóp méo. Phần gán `[§9]` khớp §9 |
| A | "Chi tiết 'việc tham khảo lập thành văn bản' **không nằm trong Điều 118**" | ✅ Đúng | §2 liệt kê nghĩa vụ tham khảo ý kiến, không có yêu cầu hình thức văn bản cho thủ tục tham khảo. Đính chính chính xác; A gắn `[CẦN KIỂM CHỨNG]` cho phần hướng dẫn → đúng quy trình |
| A | "dữ liệu điểm danh giờ hành chính **không chứa** thông tin về chất lượng lâm sàng — nhận định về nội dung biến đo" | ✅ Đúng (mệnh đề khái niệm, không phải khẳng định thực nghiệm) | §1 định nghĩa biến đo là giờ vào–ra hành chính. Việc rút mệnh đề tương quan thực nghiệm là đính chính hợp lệ |
| A | "chính sách đang tranh là điểm danh **vân tay/thẻ từ/app**" `[§1]` | ✅ Đúng | §1 (1) |
| **A-4** | "**dữ liệu do máy sinh, trưởng khoa không tạo ra nó**" | **🟡 Thiếu nguồn** | §1 chỉ nêu **phương tiện** ghi nhận; không nói gì về ai tạo/ai có quyền sửa dữ liệu. Đây là suy luận từ phương tiện, được trình bày như dữ kiện đối trọng với đòn "người vận hành" của B |
| A | "§1 miễn trừ cho lãnh đạo khoa phòng như một **nhóm**, không cho 'người ký bảng chấm công'" | ✅ Đúng | §1 (3): diện miễn theo **chức danh**, không theo vai trò xác nhận |
| A | "B đòi **thay** bằng cơ chế giải trình khác; **§1 không có cơ chế thay thế nào**" | ✅ Đúng | §1 chỉ nêu "được miễn"; không mô tả cơ chế thay thế. Khớp cả với lượt B vòng 2 |
| A | "thiết kế của tôi cũng bị gaming, cũng chịu rủi ro né bệnh nhân nặng" `[§5, §9]` | ✅ Đúng (tag đúng chỗ) | §5 "gaming"; §9 "Goodhart áp cho **cả hai** phương án" |
| **A-8** | "gaming chỉ số **để lại dấu vết trong dữ liệu lâm sàng, có thể audit và hiệu chỉnh theo case-mix**" | **🟡 Thiếu nguồn** | Case file nêu case-mix như **vấn đề** của đo đầu ra (§9), không xác lập rằng hiệu chỉnh case-mix khả thi/đã vận hành; §5 không nói gaming để lại dấu vết khả kiểm. Khẳng định về tính khả kiểm/khả audit là khẳng định thực nghiệm–kỹ thuật, không nguồn |
| A | "QĐ 73 là chế định chi trả, và Điều 118 buộc nội quy có nội dung thời giờ làm việc" `[§2, §3]` | ✅ Đúng | §2 + §3 |
| A | "NĐ 90/2020 đặt 'kết quả thực hiện chức trách, nhiệm vụ được giao' là **một trong năm nhóm tiêu chí**" `[§2]` | ✅ Đúng | §2 liệt kê đúng 5 nhóm. Ghi nhận: A không tuyên bố NĐ 90 cấm chấm công, và không phủ nhận lưu ý trung lập của §2 |
| A | "chế độ lấy chấm công làm **căn cứ chính** với chỉ số kết quả chỉ **hình thức**" `[§1]` | ✅ Đúng | §1 (2) nguyên văn |
| **A-12** | "lịch trực, bàn giao ca, giao ban, thời gian đáp ứng **đều là bản ghi khách quan**" `[§9]` | **🟡 Thiếu nguồn (tag vượt nội dung)** | §9 nêu bốn thứ này là "**ràng buộc hiện diện có lý do lâm sàng… gắn với thời điểm cụ thể**" — KHÔNG mô tả chúng là "bản ghi khách quan" và không khẳng định chúng đã được ghi nhận thành dữ liệu. Tag đúng chỗ về danh mục, **sai về thuộc tính được gán** |
| A | Steelman lượt B vòng 2 | ✅ Đúng | Đối chiếu trực tiếp lượt B vòng 2: cả bốn chi tiết đều khớp, không thêm/không bóp méo |

### Kiểm tra chuyên đề — vòng 2

**Đính chính có thực chất không** — cả hai bên ✅, không bên nào tái dựa vào khẳng định đã rút:
- B rút "áp đồng đều nhiều nhóm" → phần còn lại chỉ nói "áp đồng đều **trong nhóm chịu chế độ**", nhất quán.
- B rút cụm "nặng hơn" → phần sau chỉ dùng "**thay** bằng cơ chế giải trình khác", không so sánh mức độ.
- A rút "tham khảo lập thành văn bản" → mục (iii) chỉ dùng Điều 118 cho nội dung thời giờ làm việc.
- A rút "hiện diện gần như không tương quan…" → mục (ii) dùng phiên bản khái niệm, không quay lại mệnh đề tương quan.

**Ba hạng mục nền:**
- *Bịa tình huống cụ thể:* không phát hiện ở cả hai bên. ✅
- *Gỡ nhãn `[CẦN KIỂM CHỨNG]`:* không bên nào gỡ nhãn của case file. B giữ nhãn cho mẫu chứng từ hành chính sự nghiệp; A **thêm** nhãn cho yêu cầu hình thức tham khảo. ✅ (Ngoại lệ đã tính riêng: tên văn bản TT 107/2017 nêu như đang hiệu lực → 🔴 B-5.)
- *Dùng bằng chứng loại suy như trực tiếp:* B áp §5 (P4P) vào **phương án dựa trên chỉ số kết quả** của A — cùng loại đối tượng, không phải loại suy sang chấm công → không vi phạm. A cũng chỉ dùng §5/§9 để tự nhận rủi ro cho phương án của mình. Không cờ.

### Tổng hợp cờ — vòng 2

| Cờ | Bên A | Bên B |
|----|-------|-------|
| 🔴 Sai | **0** | **1** (B-5 — TT 107/2017/TT-BTC đã hết hiệu lực từ 01/01/2025, thay bởi TT 24/2024/TT-BTC) |
| 🟡 Thiếu nguồn / tag vượt nội dung | **3** (A-4 "dữ liệu do máy sinh"; A-8 "gaming để lại dấu vết, có thể hiệu chỉnh case-mix"; A-12 "bản ghi khách quan" gán cho §9) | **1** (B-9 — `[§7]` bỏ điều kiện "có thể" và thêm chiều "thời gian") |
| ⚠️ Không xác minh được | 1 | 1 *(sau hậu kiểm của orchestrator: 2 trong 3 ⚠️ ban đầu đã chuyển thành ✅)* |

### Tự kiểm đối xứng — vòng 2

- **Số khẳng định được kiểm:** B **13**; A **12**. Chênh 1 — trong ngưỡng.
- **Cùng tiêu chuẩn "tag phải đỡ đúng thuộc tính được gán"** áp cho cả hai: B bị 🟡 ở `[§7]` (bỏ điều kiện "có thể" + thêm chiều "thời gian"); A bị 🟡 ở `[§9]` (thêm thuộc tính "bản ghi khách quan"). Không bên nào bị kiểm lỏng hơn ở khâu này.
- **Cùng tiêu chuẩn "suy luận từ §1 không phải dữ kiện có nguồn"**: A bị 🟡 ở "dữ liệu do máy sinh"; B không có khẳng định cùng dạng ở lượt này (khẳng định cấu trúc của B **có** viện dẫn văn bản, nên bị kiểm ở trục khác và nhận 🔴 về hiệu lực văn bản). **Khác biệt về LOẠI cờ giữa hai bên phản ánh loại khẳng định họ đưa ra, không phải mức khắt khe khác nhau.**
- **Về chênh lệch ⚠️ ban đầu (3–1):** hoàn toàn do **lỗi nạp của orchestrator**, không do B nói mơ hồ hơn — B nói trước nên phần steelman/trích của B hướng về Vòng 1 (fact-checker không được nạp), trong khi steelman của A hướng về lượt B vòng 2 (có nạp) nên kiểm được. Orchestrator đã hậu kiểm cơ học và giải quyết 2 trong 3 mục.

### Hậu kiểm của orchestrator (bổ sung sau khi fact-checker báo thiếu dữ liệu nạp)

Fact-checker yêu cầu orchestrator đối chiếu chuỗi B trích A với transcript Vòng 1 nguyên văn trước khi Judge dùng cáo buộc cherry-picking. Orchestrator đã chạy đối chiếu cơ học (chuẩn hóa Unicode NFC + casefold + chuẩn hóa dấu câu, khớp chuỗi trên file transcript):

```
TRÍCH CỦA B: "khi chỉ số bị gaming, cái được tối ưu ít nhất vẫn nằm trên trục chăm sóc"
KẾT QUẢ:     KHỚP — có trong transcript
```

→ Trích của B là **nguyên văn**, không bịa, không ghép. *(tiếp mục Hậu kiểm — xem cuối Phụ lục A)*

---

## Fact-check vòng 3

**Nạp:** toàn bộ transcript V1–V3 nguyên văn (đã sửa lỗi nạp của vòng 2). **Kết quả tổng: 0 cờ đỏ ở cả hai bên.**

### Bên A — vòng 3

| Bên | Khẳng định (trích nguyên văn) | Kết quả | Nguồn đối chiếu |
|---|---|---|---|
| A | "§1 chỉ nêu phương tiện ghi nhận" (lý do rút cờ vàng A-4) | ✅ Đúng | §1: "(vân tay/thẻ từ/app)" — nêu phương tiện, không nêu thuộc tính "do máy sinh" |
| A | "§9 nêu case-mix là **vấn đề** của đo đầu ra, không xác lập hiệu chỉnh khả thi" | ✅ Đúng | §9 khớp |
| A | "§9 chỉ nói chúng gắn **thời điểm cụ thể**" | ✅ Đúng | §9 khớp |
| A | Steelman: "B chấp nhận tiêu chuẩn tôi đặt: miễn trừ chỉ chính đáng nếu dựa trên điều kiện chức năng, mở cho mọi người thỏa điều kiện" | ✅ Đúng | V2-B nguyên văn khớp |
| A | Steelman: "phải **thay** bằng cơ chế giải trình khác chứ không bỏ trống" | ✅ Đúng | V2-B nguyên văn khớp |
| **A-04** | "B cũng **rút hai khẳng định vòng 2**" | **⚠️ Không xác minh được** | Không lượt nào trong V2-B chứa hành vi rút khẳng định. A phát biểu **trước** B ở V3 nên không thể dẫn từ V3-B. Nếu A dẫn từ bảng fact-check V2, tài liệu đó không được nạp cho fact-checker. *(Hậu kiểm: V3-B thực tế rút 1 cờ đỏ + 1 cờ vàng — khớp con số "hai", nhưng là trùng khớp sau sự việc)* |
| A | Steelman: "chưa có bộ chỉ số vận hành được… là đổi tiêu chí khách quan lấy tiêu chí chủ quan" | ✅ Đúng | V2-B nguyên văn khớp |
| A | "(I) miễn trừ… với tư cách **nhóm chức vụ**, không kèm cơ chế thay thế" `[§1]` | ✅ Đúng | §1(3) liệt kê theo chức danh; §1 không nêu cơ chế thay thế → suy luận từ im lặng hợp lệ trong phạm vi đề bài |
| A | "Ba điều kiện B nêu — theo chức năng, mở cho mọi người thỏa điều kiện, có giải trình thay thế" | ✅ Đúng | Tóm tắt trung thực V2-B, không thêm điều kiện |
| A | "'kết quả thực hiện chức trách, nhiệm vụ được giao' là một trong **năm nhóm tiêu chí**" `[NĐ 90/2020 — §2]` | ✅ Đúng | §2 + xác minh độc lập NĐ 90/2020 `[H1/H3]` |
| **A-07** | "nhóm này **không có điều khoản hoãn**" | **🟡 Thiếu nguồn** | §2 KHÔNG xác lập mệnh đề này. Là khẳng định **phủ định về nội dung văn bản pháp luật**, không tag, không nhãn. Tra cứu không thấy điều khoản hoãn, nhưng phủ định toàn phần không xác minh được trong 2 lần tìm |
| A | "(III) phải có người quy đổi dữ liệu chấm công thành mức độ hoàn thành nhiệm vụ và thu nhập tăng thêm" `[§1]` | ✅ Đúng (phần dữ kiện) | §1(2) khớp |
| **A** | "Bước quy đổi là **phán đoán quản lý**" | **🟡 Thiếu nguồn** | Không có trong § nào; suy luận không gắn nhãn |
| **A-11** | "theo mô tả của chính B, **người quy đổi là người vận hành cơ chế**" | **🟡 Thiếu nguồn (trích chéo mở rộng)** | V2-B chỉ nói người vận hành là "người phụ trách bộ phận chấm công và **ký xác nhận bảng chấm công**". B KHÔNG nói người vận hành là người **quy đổi dữ liệu thành mức độ hoàn thành nhiệm vụ / thu nhập tăng thêm**. A mở rộng nội hàm khi gán cho B |
| A | "phụ cấp thường trực chi trả **theo phiên**, trực 12/24 = 0,5 lần, ngày nghỉ hằng tuần = 1,3 lần" `[QĐ 73/2011 — §3]` | ✅ Đúng | §3 khớp từng con số. A **không** dùng hệ số ngày lễ/Tết và **không** tuyên bố văn bản còn hiệu lực đến 2026 — hai điểm §3 gắn nhãn; A không gỡ nhãn |
| **A-06** | "dữ liệu giờ vào–ra **không chứa biến kết quả**" / "chế độ ấy **không sinh ra thông tin** để xây chính bộ chỉ số đó" | **🟡 Thiếu nguồn** | Suy luận từ §1 nhưng §1 không xác lập mệnh đề phủ định này; trình như dữ kiện, không gắn nhãn — trái với chuẩn A tự đặt ngay đầu lượt ("tách rõ dữ kiện với suy luận có nhãn") |

### Bên B — vòng 3

| Bên | Khẳng định (trích nguyên văn) | Kết quả | Nguồn đối chiếu |
|---|---|---|---|
| **B-01** | "TT 107/2017/TT-BTC… đã bị **TT 24/2024/TT-BTC** thay thế (ban hành **17/4/2024**, hiệu lực **01/01/2025**, áp dụng từ **năm tài chính 2025**)" | ✅ **Đúng cả bốn dữ kiện** | Công báo Chính phủ; Cổng Xây dựng chính sách `[H1]`. **Đính chính cờ đỏ của B là chính xác** |
| B | "mẫu 01a-LĐTL chỉ áp cho **doanh nghiệp**" `[TT 200/2014/TT-BTC]` | ✅ Đúng | Mẫu 01a-LĐTL thuộc Phụ lục 3 TT 200/2014; TT 200 áp cho doanh nghiệp mọi lĩnh vực, mọi thành phần kinh tế |
| B | "Tôi không khẳng định mẫu bảng chấm công tương ứng của khu vực sự nghiệp `[CẦN KIỂM CHỨNG]`" | ✅ Đúng (giữ nhãn) | Đúng quy tắc chống bịa |
| B | "§7 nói can thiệp ngoại sinh **có thể** suy giảm động lực nội tại **nếu cảm nhận là kiểm soát**, và có **tranh cãi học thuật**" | ✅ Đúng | §7 khớp cả tình thái lẫn tranh cãi |
| B | "rút cấu phần 'thời gian' — §6 đo hồ sơ bệnh án điện tử, không đo quẹt thẻ" | ✅ Đúng | §6 khớp |
| B | Steelman: "A rút ba khẳng định và tự nhận gánh nặng chứng minh cho bản ghi phân công ca" | ✅ Đúng | V3-A khớp |
| B | Steelman ba luận điểm (I)(II)(III) của A | ✅ Đúng | Khớp V3-A, tóm tắt trung thực, không làm yếu |
| B | "(I) §1 định danh diện miễn trừ bằng **chức vụ**" | ✅ Đúng | §1(3) |
| B | "§9 nêu **lý do khả dĩ** là **chức năng**" | ✅ Đúng | §9 khớp; B giữ đúng tình thái "khả dĩ" |
| **B-10** | "Định danh một nhóm chức năng bằng danh mục chức vụ là **cách làm thông thường**" | **🟡 Thiếu nguồn** | Khẳng định về thực tiễn hành chính, không tag, không nguồn, không nhãn |
| B | "đúng cấu trúc A dùng ở vòng 2 khi nói tự xác nhận được sửa bằng **chuyển thẩm quyền lên cấp trên**" | ✅ Đúng | V2-A nguyên văn khớp |
| B | "Phương án A cũng giữ miễn trừ **có điều kiện**" | ✅ Đúng | V1-A nguyên văn khớp |
| B | "(II) không ai tuyên bố bộ chỉ số kết quả phải được xây **từ** dữ liệu chấm công" | ✅ Đúng | Đối chiếu toàn bộ V1-B, V2-B: không có phát ngôn nào như vậy |
| **B-05** | "nguồn của nó là **hồ sơ bệnh án và hệ thống thông tin bệnh viện**" | **🟡 Thiếu nguồn** | Không tag, không nguồn, không nhãn. §6 có nhắc "hồ sơ bệnh án điện tử" nhưng trong bối cảnh **gánh nặng hành chính**, KHÔNG xác lập đây là nguồn dữ liệu xây bộ chỉ số |
| B-03 | "chu kỳ đánh giá viên chức **trước 15/12 hàng năm** với **đủ năm nhóm tiêu chí**" `[NĐ 90/2020 — §2]` | ✅ Đúng | §2 + xác minh độc lập. Chữ "đủ" là bước suy luận từ tính chất "tiêu chí chung" — nhất quán với §2, không tính lỗi |
| **B-04** | "chủ thể chịu trách nhiệm là **người đứng đầu đơn vị** theo thẩm quyền quản trị nội bộ" `[§4 — CẦN KIỂM CHỨNG]` | **🟡 Thiếu nguồn (tag lệch)** | §4 chỉ nêu NĐ 60/2021 + NĐ 111/2025 và **tự nó** ghi `[CHƯA XÁC MINH ĐƯỢC]`; §4 **không** xác lập chủ thể "người đứng đầu đơn vị". *Giảm nhẹ:* B có gắn nhãn ngay tại chỗ → không phải cờ đỏ; nhưng tag `[§4]` đang gán nội dung §4 không chứa |
| B | "Nếu chỉ số kết quả chỉ **hình thức**" `[§1]` | ✅ Đúng | §1(2) nguyên văn |
| B | "Tôi giữ nguyên tuyên bố vòng 1: **(b) là mệnh đề yếu nhất của tôi**" | ✅ Đúng | V1-B nguyên văn khớp |
| **B-09** | "đó chính là **tính khả kiểm** A giữ lại ở vòng 2" | ✅ Đúng (kèm hai ghi chú) | V2-A nguyên văn: "Khác biệt tôi giữ lại là **khả kiểm**…" — trích đúng từ, đúng vòng. **Ghi chú 1:** nội dung A gán cho "khả kiểm" ở V2 là **dữ liệu lâm sàng**, B đang áp khái niệm sang **dữ liệu chấm công**. **Ghi chú 2:** A đã **rút** đúng vế đó ở đầu V3, và B nói **sau** A nhưng không ghi nhận trạng thái đã rút. *Việc điều này có làm hỏng lập luận hay không là việc của Judge* |

### Kiểm tính thực chất của đính chính — vòng 3

| Bên | Khẳng định đã rút | Có tái sử dụng trong V3 không | Kết luận |
|---|---|---|---|
| A | "dữ liệu do máy sinh…" | Không | ✅ Rút thực chất |
| A | "gaming để lại dấu vết… hiệu chỉnh case-mix" | Không tái sử dụng ở bất kỳ mục nào | ✅ Rút thực chất |
| A | "bản ghi khách quan" | Không — (IV) nói ngược lại: "Tôi **không được** khẳng định bốn ràng buộc hiện diện đã tồn tại dưới dạng dữ liệu dùng được" | ✅ Rút thực chất |
| B | "TT 107/2017/TT-BTC" (cờ đỏ) | Không; thay bằng TT 24/2024 đúng | ✅ Rút thực chất |
| B | "lãnh đạo là người vận hành" (hạ xuống suy luận có nhãn) | (III) dựng lại bằng lập luận khác, không dựa vào tiền đề "người vận hành" | ✅ Hạ cấp thực chất |
| B | "chi phí… **có thật**" + cấu phần "thời gian" | Không tái khẳng định như dữ kiện | ✅ Rút thực chất |

> **Điểm bất đối xứng ghi nhận (sự kiện, không phải đánh giá):** B ở (III) viện dẫn "tính khả kiểm A giữ lại ở vòng 2" trong khi A đã rút vế cấu thành khái niệm đó ngay đầu V3, và B nói sau A. Trích nguyên văn V2 vẫn khớp nên **không phải cờ sai**; ghi lại để Judge tự xử.

### Ba hạng mục nền — vòng 3

| Hạng mục | A | B |
|---|---|---|
| Bịa tình huống/bệnh viện/văn bản nội bộ/khảo sát cụ thể | ✅ Không | ✅ Không |
| Gỡ nhãn `[CẦN KIỂM CHỨNG]` / trình dự thảo như quy định có hiệu lực | ✅ Không — dùng §3 nhưng tránh đúng hai điểm §3 gắn nhãn | ✅ Không — chủ động giữ 2 nhãn |
| Dùng bằng chứng loại suy như bằng chứng trực tiếp | ✅ Không — (IV) gắn nhãn "suy luận có nhãn" | 🟡 Một chỗ: B-05 nêu như dữ kiện, không nhãn |

### Tổng hợp cờ — vòng 3

| Cờ | Bên A | Bên B |
|----|-------|-------|
| 🔴 Sai | **0** | **0** |
| 🟡 Thiếu nguồn | **4** (A-06, A-07, A-11, "phán đoán quản lý") | **3** (B-04, B-05, B-10) |
| ⚠️ Không xác minh được | 1 (A-04) | 0 |

### Tự kiểm đối xứng — vòng 3

- **Số khẳng định được kiểm:** A **16**; B **19**. Chênh do **mật độ khẳng định kiểm chứng được** trong lượt, không do tiêu chuẩn khác nhau — lượt B chứa nhiều dữ kiện pháp lý tra cứu được hơn (đính chính TT 24/2024 gồm 4 dữ kiện tách rời, 2 tag văn bản, 5 trích dẫn chéo).
- **Cùng ngưỡng cho 🟡:** mọi suy luận không gắn nhãn được trình bày như dữ kiện đều bị gắn 🟡, bất kể bên nào — A bị 4 lần, B bị 3 lần, cùng một tiêu chí.
- **Trích dẫn chéo:** A 5 mục / 4 khớp + 1 mở rộng nội hàm (A-11); B 5 mục / 5 khớp (1 kèm ghi chú ngữ cảnh: B-09).
- **Tag `[Case file §x]`:** A 5/5 khớp; B 6/5 khớp (lệch: B-04 gán §4).
- **Ngoài phạm vi fact-checker, chuyển Judge:** việc B gọi lập luận của A là "non sequitur"; việc "miễn trừ để trống không chịu được phép thử tổng quát hóa" (§9 là mục DIỄN GIẢI); mọi đánh giá về sức nặng nhượng bộ.

---

## ⚠️ CẢNH BÁO CASE FILE — phát hiện tại vòng 3, ảnh hưởng CẢ HAI BÊN

Fact-checker vòng 3 nêu nghi vấn NĐ 90/2020/NĐ-CP đã bị thay thế nhưng **không xác minh được** (egress bị chặn). **Orchestrator đã xác minh và xác nhận: đúng.** Chi tiết và hướng xử lý ở Phụ lục C, mục "Lỗi vận hành". Tóm tắt: **Nghị định 233/2026/NĐ-CP** (ban hành 26/6/2026, **hiệu lực 01/7/2026**) **thay thế NĐ 90/2020/NĐ-CP** — tức đã có hiệu lực **hơn một tháng trước ngày chạy phiên này (08/08/2026)**. Cả A và B đều xây lập luận pháp lý trên NĐ 90/2020. Đây là **khiếm khuyết của case file do orchestrator soạn**, KHÔNG phải lỗi của advocate: hai bên trích đúng case file đã được duyệt GATE 1. Hai mục ⚠️ của B chuyển thành ✅ trong bảng trên. **Bài học vận hành đã ghi vào Phụ lục C:** từ vòng 3 trở đi, fact-checker phải được nạp **toàn bộ các lượt đã phát biểu**, không chỉ lượt của vòng đang kiểm — nếu không, mọi phần steelman và trích dẫn chéo sẽ bị gắn ⚠️ oan, và bên nói trước trong vòng luôn chịu thiệt hệ thống vì phần steelman của họ hướng về vòng trước.

## Phụ lục B — Steelman audit (đo trần lập luận — KHÔNG cộng/trừ điểm, KHÔNG nạp cho judge)
[báo cáo 2 auditor — orchestrator dán sau GATE 2]

## Phụ lục C — Ghi chú vận hành

**Ngân sách từ (thước đo: `scripts/word_count.sh`, dùng cùng một script cho mọi lượt của cả hai bên):**

| Lượt | Giới hạn | Trần +10% | Đo được | Xử lý |
|---|---|---|---|---|
| V1 — A | 800 | 880 | bản đầu 1049 → sau cắt **988** | Đã yêu cầu chính instance đó cắt gọn MỘT lần theo quy tắc harness; vẫn vượt → ghi chú thích vượt ngân sách ngay trong lượt để judge biết (rubric: judge trừ chiều 5 nếu phần vượt tạo lợi thế) |
| V1 — B | 800 | 880 | bản đầu 1010 → sau cắt **990** | Xử lý y hệt lượt A: một lần cắt duy nhất, gửi về chính instance đã viết |
| V2 — B | 600 | 660 | **644** | ĐẠT ngay bản đầu, không cần cắt |
| V2 — A | 600 | 660 | bản đầu 662 → sau cắt **636** | Vượt trần **2 từ**. Áp quy tắc cơ học (một lần cắt) thay vì miễn trừ theo phán đoán của orchestrator — để orchestrator tự quyết "bao nhiêu là đủ gần trần" chính là loại tùy nghi mà harness thiết kế để loại bỏ. Sau cắt: B 644 / A 636, lệch 1,3% |
| V3 — A | 600 | 660 | bản đầu 676 → sau cắt **593** | Một lần cắt, đạt |
| V3 — B | 600 | 660 | **643** | ĐẠT ngay bản đầu. Vòng 3: A 593 / B 643, lệch 8,4% — trong ngưỡng ±10% |
| V4 — B hỏi | 300 (3×100) | 330 | **268** | ĐẠT |
| V4 — A trả lời | 900 (3×300) | 990 | **945** | ĐẠT |
| V4 — A hỏi | 300 (3×100) | 330 | **234** | ĐẠT |
| V4 — B trả lời | 900 (3×300) | 990 | **909** | ĐẠT |

> **Đối xứng vòng 4:** phần hỏi B 268 / A 234 (chênh 34 từ, cùng nằm dưới trần); phần trả lời A 945 / B 909 (chênh 36 từ, lệch 4,0%). Không bên nào phải cắt gọn ở vòng này.

| V5 — A | 800 | 880 | bản đầu 941 → sau cắt **928** | Đã yêu cầu cắt gọn một lần, vẫn vượt trần → ghi chú thích vượt ngân sách ngay trong lượt để judge biết |

> **Đánh giá đối xứng V1:** hai lượt sau cắt là **988 (A)** và **990 (B)** — lệch **0,2%**, nằm sâu trong ngưỡng ±10% mà nguyên tắc nền tảng đòi hỏi. Tức cả hai bên đều vượt trần tuyệt đối như nhau, và **không bên nào có lợi thế độ dài so với bên kia**. Judge nên đọc cờ vượt ngân sách như một khiếm khuyết chung của vòng 1, không phải lợi thế của một bên.

**Lỗi vận hành của orchestrator (khai báo bắt buộc — ảnh hưởng cách đọc Phụ lục A):**

| # | Lỗi | Phát hiện bởi | Hậu quả | Xử lý |
|---|---|---|---|---|
| 1 | **Nạp thiếu context cho fact-checker vòng 2:** chỉ nạp hai lượt của vòng 2, KHÔNG nạp các lượt vòng 1 | Chính fact-checker tự phát hiện và báo lại | Mọi phần **steelman** và **trích dẫn chéo** của bên B (bên nói trước, nên các phần này hướng về vòng 1) bị gắn `⚠️ Không xác minh được` vì thiếu dữ liệu — tạo chênh lệch ⚠️ 3–1 **không phản ánh chất lượng lập luận**. Đây là thiên lệch **hệ thống chống lại bên nói trước trong mỗi vòng** | Orchestrator hậu kiểm cơ học bằng khớp chuỗi chuẩn hóa Unicode trên file transcript → 2/3 mục ⚠️ của B chuyển thành ✅ (trích của B là nguyên văn). Banner cảnh báo đặt ngay đầu bảng fact-check vòng 2. **Từ vòng 3: nạp toàn bộ các lượt đã phát biểu cho fact-checker, không chỉ lượt của vòng đang kiểm** |

| 2 | **Case file §2 dẫn văn bản đã hết hiệu lực trên trục pháp lý trung tâm:** §2 trình **NĐ 90/2020/NĐ-CP** như khung đánh giá viên chức đang vận hành, trong khi **NĐ 233/2026/NĐ-CP** (ban hành 26/6/2026, **hiệu lực 01/7/2026**) đã **thay thế** nó — có hiệu lực hơn một tháng trước ngày chạy phiên (08/08/2026) | Fact-checker vòng 3 nêu nghi vấn nhưng không xác minh được (egress chặn); orchestrator xác minh và xác nhận | **Nghiêm trọng.** Chiều 3 (Pháp lý & quy chế) chiếm **25%** trọng số rubric. Cả A và B đều xây trụ pháp lý trên NĐ 90/2020 ("5 nhóm tiêu chí chung", "đánh giá trước 15/12"). Nội dung NĐ 233/2026 **không trung lập giữa hai bên**: Điều 11 đặt khung tiêu chí **kết quả thực hiện nhiệm vụ tối đa 70/100 điểm**, khung tiêu chí chung tối đa **30/100 điểm** `[CẦN KIỂM CHỨNG số điều và cách phân bổ điểm]` — tức nghiêng mạnh về đánh giá theo kết quả, đúng hướng mệnh đề (b) mà A đang tranh | **DỪNG, trình người dùng theo thủ tục `APPROVE CASE FILE ADDENDUM`.** Orchestrator KHÔNG tự vá case file sau GATE 1. Xem mục "Addendum chờ duyệt" dưới đây |

**Điều kiện thí nghiệm cần khai báo:** advocate B ở V1 được nhắc rõ trong spec rằng bản đầu của A đã vượt trần và phải cắt — đây là thông tin vận hành, không phải nội dung lập luận của A, nhưng ghi lại để minh bạch điều kiện không hoàn toàn đối xứng giữa hai lượt V1.
