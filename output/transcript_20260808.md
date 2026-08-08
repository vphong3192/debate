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
[đang chạy]

## Vòng 4 — Chất vấn chéo
[chưa chạy]

## Vòng 5 — Kết luận
[chưa chạy]

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

→ Trích của B là **nguyên văn**, không bịa, không ghép. Hai mục ⚠️ của B chuyển thành ✅ trong bảng trên. **Bài học vận hành đã ghi vào Phụ lục C:** từ vòng 3 trở đi, fact-checker phải được nạp **toàn bộ các lượt đã phát biểu**, không chỉ lượt của vòng đang kiểm — nếu không, mọi phần steelman và trích dẫn chéo sẽ bị gắn ⚠️ oan, và bên nói trước trong vòng luôn chịu thiệt hệ thống vì phần steelman của họ hướng về vòng trước.

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

> **Đánh giá đối xứng V1:** hai lượt sau cắt là **988 (A)** và **990 (B)** — lệch **0,2%**, nằm sâu trong ngưỡng ±10% mà nguyên tắc nền tảng đòi hỏi. Tức cả hai bên đều vượt trần tuyệt đối như nhau, và **không bên nào có lợi thế độ dài so với bên kia**. Judge nên đọc cờ vượt ngân sách như một khiếm khuyết chung của vòng 1, không phải lợi thế của một bên.

**Lỗi vận hành của orchestrator (khai báo bắt buộc — ảnh hưởng cách đọc Phụ lục A):**

| # | Lỗi | Phát hiện bởi | Hậu quả | Xử lý |
|---|---|---|---|---|
| 1 | **Nạp thiếu context cho fact-checker vòng 2:** chỉ nạp hai lượt của vòng 2, KHÔNG nạp các lượt vòng 1 | Chính fact-checker tự phát hiện và báo lại | Mọi phần **steelman** và **trích dẫn chéo** của bên B (bên nói trước, nên các phần này hướng về vòng 1) bị gắn `⚠️ Không xác minh được` vì thiếu dữ liệu — tạo chênh lệch ⚠️ 3–1 **không phản ánh chất lượng lập luận**. Đây là thiên lệch **hệ thống chống lại bên nói trước trong mỗi vòng** | Orchestrator hậu kiểm cơ học bằng khớp chuỗi chuẩn hóa Unicode trên file transcript → 2/3 mục ⚠️ của B chuyển thành ✅ (trích của B là nguyên văn). Banner cảnh báo đặt ngay đầu bảng fact-check vòng 2. **Từ vòng 3: nạp toàn bộ các lượt đã phát biểu cho fact-checker, không chỉ lượt của vòng đang kiểm** |

**Điều kiện thí nghiệm cần khai báo:** advocate B ở V1 được nhắc rõ trong spec rằng bản đầu của A đã vượt trần và phải cắt — đây là thông tin vận hành, không phải nội dung lập luận của A, nhưng ghi lại để minh bạch điều kiện không hoàn toàn đối xứng giữa hai lượt V1.
