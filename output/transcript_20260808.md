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
[đang chạy]

## Vòng 3 — Phản biện 2
[chưa chạy]

## Vòng 4 — Chất vấn chéo
[chưa chạy]

## Vòng 5 — Kết luận
[chưa chạy]

---
> **Quy ước heading phụ lục (BẮT BUỘC giữ nguyên văn):** `scripts/make_judge_input.sh` cắt input cho judge từ `## Vòng 1 — Mở đầu` đến TRƯỚC `## Phụ lục B` — đổi các heading dưới đây (kể cả chữ "Phụ lục B") sẽ làm steelman audit lọt vào input của judge hoặc làm input rỗng. Phụ lục A (fact-check) đặt TRƯỚC Phụ lục B.

## Phụ lục A — Fact-check (phạm vi: V1)

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

## Phụ lục B — Steelman audit (đo trần lập luận — KHÔNG cộng/trừ điểm, KHÔNG nạp cho judge)
[báo cáo 2 auditor — orchestrator dán sau GATE 2]

## Phụ lục C — Ghi chú vận hành

**Ngân sách từ (thước đo: `scripts/word_count.sh`, dùng cùng một script cho mọi lượt của cả hai bên):**

| Lượt | Giới hạn | Trần +10% | Đo được | Xử lý |
|---|---|---|---|---|
| V1 — A | 800 | 880 | bản đầu 1049 → sau cắt **988** | Đã yêu cầu chính instance đó cắt gọn MỘT lần theo quy tắc harness; vẫn vượt → ghi chú thích vượt ngân sách ngay trong lượt để judge biết (rubric: judge trừ chiều 5 nếu phần vượt tạo lợi thế) |
| V1 — B | 800 | 880 | bản đầu 1010 → sau cắt **990** | Xử lý y hệt lượt A: một lần cắt duy nhất, gửi về chính instance đã viết |

> **Đánh giá đối xứng V1:** hai lượt sau cắt là **988 (A)** và **990 (B)** — lệch **0,2%**, nằm sâu trong ngưỡng ±10% mà nguyên tắc nền tảng đòi hỏi. Tức cả hai bên đều vượt trần tuyệt đối như nhau, và **không bên nào có lợi thế độ dài so với bên kia**. Judge nên đọc cờ vượt ngân sách như một khiếm khuyết chung của vòng 1, không phải lợi thế của một bên.

**Điều kiện thí nghiệm cần khai báo:** advocate B ở V1 được nhắc rõ trong spec rằng bản đầu của A đã vượt trần và phải cắt — đây là thông tin vận hành, không phải nội dung lập luận của A, nhưng ghi lại để minh bạch điều kiện không hoàn toàn đối xứng giữa hai lượt V1.
