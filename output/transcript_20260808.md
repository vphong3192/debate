# BIÊN BẢN TRANH LUẬN — 08/08/2026

**Chủ đề:** Mức quyết tâm của Việt Nam với mục tiêu tăng trưởng hai con số năm 2026 có hợp lý không
**Đề chính thức:** *"Mức quyết tâm mà Việt Nam đang áp dụng cho mục tiêu tăng trưởng hai con số năm 2026 — kiên định kịch bản ≥10%, không xây phương án điều hành dưới 10%, giao chỉ tiêu tới từng địa phương kèm giám sát hằng quý, đồng thời tuyên bố không đánh đổi ổn định vĩ mô — có hợp lý không?"*
**Bộ chủ đề:** `_vn2026` — `knowledge/case_file_vn2026.md`, `knowledge/judge_notes_vn2026.md`, `knowledge/source_policy_vn2026.md`, `rubrics/scoring_rubric_vn2026.md`, `agents/advocate_template_vn2026.md`, `agents/position_{A,B}_vn2026.md`
**Advocate A:** mức quyết tâm hiện hành là HỢP LÝ, nên giữ nguyên (steelman)
**Advocate B:** mức quyết tâm hiện hành là QUÁ LIỀU, nên hiệu chỉnh (steelman)
**Case file phiên bản:** ngày duyệt GATE 1 08/08/2026 — commit `9998fd2`; addendum: (chưa có)
**Ngày duyệt GATE 2:** (chưa duyệt)
**Model:** subagent = alias `opus` (frontmatter `.claude/agents/debate-*.md`); orchestrator = cùng họ model. *Model ID chính xác không ghi vào artifact đẩy lên repo theo quy định môi trường chạy; ghi nhận trong log phiên.* Ngày chạy = 08/08/2026.

> *Lưu ý cho người đọc: hai advocate được giao nhiệm vụ trình bày phiên bản mạnh nhất của mỗi khung lập luận. Nội dung không đại diện quan điểm của hệ thống hay người vận hành.*
>
> *Ràng buộc hạ tầng phiên này: `WebFetch` bị chặn với mọi tên miền đã thử; case file và fact-check chỉ dựa được vào `WebSearch`. Xem `knowledge/source_policy_vn2026.md` quy tắc 6.*

---

## Vòng 1 — Mở đầu

> *Quy ước: hai lượt mở đầu chạy MÙ và ĐỐI XỨNG — không advocate nào thấy lượt mở đầu của bên kia trước khi viết. Từ vòng 2 trở đi, advocate thấy toàn bộ các lượt đã phát biểu. Ngân sách 800 từ/lượt; đo được: A = 877, B = 877 (max cho phép 880).*

### LƯỢT MỞ ĐẦU — Advocate A

**1. Khung mục tiêu & đánh đổi.** Hàm mục tiêu tôi dùng không phải GDP một năm, mà **mức thu nhập bình quân đầu người đạt được trước khi cửa sổ dân số vàng khép lại** — đo bằng lộ trình GDP/người 5.400–5.500 USD (2026) → ~8.500 USD (2030) → thu nhập cao (2045) `[Case file §2]`, trong khung thời gian một thế hệ chứ không phải một chu kỳ ngân sách. Tiêu chí phân định khi mục tiêu xung đột: **ràng buộc ổn định là trần cứng, tăng trưởng ép ở phần dư địa bên dưới trần** — đúng thứ tự mà văn kiện đặt ra khi buộc nợ công, bội chi, lạm phát nằm "trong giới hạn quy định" `[Case file §2]`.

Ai chịu chi phí ở từng phương án? Nếu phá trần lạm phát, người thu nhập cố định và người gửi tiền trả giá trước — nên tôi **không** đề xuất phương án đó. Nếu hạ mục tiêu về vùng dự báo 6,8–7,5% `[Case file §9]`, người trả giá là thế hệ bước vào thị trường lao động sau 2035, khi tỷ lệ phụ thuộc đã tăng và quỹ an sinh phải nuôi một dân số già trên một nền thu nhập trung bình. Chi phí thứ hai không xuất hiện trong bất kỳ báo cáo quý nào, nên nó có xu hướng bị chiết khấu về không.

**2. Bằng chứng & dữ kiện.** Xin phân loại rõ: **chỉ tiêu** là "phấn đấu từ 10% trở lên" `[Case file §2]`; **kịch bản** điều hành sau điều chỉnh là quý II 10,5% – quý III 10,6% – quý IV 10,74% `[Case file §4]`; **dự báo** là IMF 7,5% (nâng từ 7,1%), ADB 7,2%, WB 6,8% `[Case file §9]`; **số liệu thực hiện** là 2025 đạt 8,02% — cao nhất từ 2011 — và 6 tháng 2026 **ước** 8,18% so với 7,63% cùng kỳ `[Case file §3]`. Tôi không trình chỉ tiêu như dự báo, cũng không trình kịch bản như kết quả.

Trạng thái các trần: CPI bình quân 6 tháng 4,38%, **dưới** chỉ tiêu ~4,5% `[Case file §6]`; tín dụng đến 26/6 tăng 7,41%, **thấp hơn** cùng kỳ 2025 (8,3%) `[Case file §6]`. Dữ kiện thứ hai là bản lề: nếu mục tiêu đang được đuổi bằng bơm tiền, tín dụng phải chạy **nhanh hơn** năm trước, không phải chậm hơn.

**3. Cơ chế kinh tế & khả thi định lượng.** Nguồn tăng trưởng tôi viện dẫn là **vốn đã bố trí nhưng chưa ra nền kinh tế**, không phải tín dụng mới. Kế hoạch vốn NSNN 2026 là 1.013.443,4 tỷ đồng; đến 16/7 giải ngân 378,01 nghìn tỷ (37,3%), còn 25 bộ/cơ quan TW và 11 địa phương dưới bình quân; lũy kế đến 11/6 ngân sách bội thu gần 495.000 tỷ `[Case file §5]` `[CẦN KIỂM CHỨNG với con số bội thu]`. Nghĩa là hơn 600.000 tỷ đồng đã được Quốc hội phê chuẩn đang nằm im. Chi tiêu số vốn này **không** làm tăng cung tiền theo cách tín dụng thương mại làm, vì nguồn đã có trong dự toán — đây là lý do vế cứng và vế mềm không phải cắn nhau.

Về ICOR 6,4 `[Case file §5]`: đúng, tăng trưởng hiện vẫn mua bằng vốn. Nhưng ICOR là **tỷ số kế toán vốn/sản lượng**, không phải hằng số công nghệ; phần lớn độ dôi của nó đến từ vốn nằm chờ và dự án kéo dài — đúng khâu mà cơ chế giao chỉ tiêu kèm báo cáo hằng quý về Bộ Tài chính `[Case file §2.2]` nhắm vào. Chỉ báo phía cung đang xác nhận: IIP 6 tháng +10,8%, chế biến chế tạo +11,4%; xuất nhập khẩu ~550 tỷ USD, +27% `[Nguồn: Tuổi Trẻ/Dân Việt 14/7/2026 — H3]` `[Case file §7]`.

**4. Logic.** Phản biện nguy hiểm nhất với tôi: *nửa cuối năm cần ~11,6–11,7% `[Case file §4]`, mà CPI đã 4,38%/trần 4,5% — nên không thể vừa từ chối mọi kịch bản dưới 10% vừa hứa không đánh đổi ổn định; một lời hứa phải gãy.* Tôi trả lời trực diện: hai cam kết **chi phối hai biến khác nhau**. Vế cứng ràng buộc **mức nỗ lực và trách nhiệm giải trình** — cấm hệ thống tự hạ chuẩn rồi đàm phán lại chỉ tiêu. Vế mềm ràng buộc **bộ công cụ được phép dùng** — cấm mua sản lượng bằng nới tiền tệ, tỷ giá, kỷ luật ngân sách. Khi số học không cho phép cả hai, thứ gãy là **kết quả** (con số 10%), không phải một trong hai cam kết; và Bộ Tài chính vẫn "không điều hành theo phương án dưới 10%" `[Nguồn: họp báo Bộ Tài chính 17/6/2026, Thứ trưởng Nguyễn Đức Chi, qua CafeF/Thời báo Tài chính — H3]`, tức tiếp tục ép ở khâu thực thi. Đó là cấu hình nhất quán, không phải nghịch lý.

Suy từ "khó đạt" sang "không nên đặt" là **đánh tráo khái niệm** khả thi ↔ hợp lý. Và cấu trúc sai số bất đối xứng: đặt cao mà trượt thì mất một năm chỉ tiêu nhưng giữ lại hạ tầng, thể chế, năng lực giải ngân; đặt thấp mà đạt thì **năng lực không bao giờ được huy động**, và thời gian nhân khẩu học không mua lại được `[Case file §10]`.

Cuối cùng, một chỉ báo tôi tự đặt ra để có thể bị bác: nếu chỉ tiêu chỉ tạo báo cáo đẹp, các chuỗi **độc lập với báo cáo địa phương** — hải quan, thu nội địa, điện thương phẩm — sẽ không tăng tương ứng. Hải quan và IIP hiện đang tăng tương ứng. Độ vênh điện–GDP năm 2025 (~6,5% trong 11 tháng) `[Case file §8]` là câu hỏi còn mở; chưa có chuỗi điện 2026 để kết luận theo chiều nào.

**Nguồn trích dẫn trong lượt này:** Case file §2, §2.2, §3, §4, §5, §6, §7, §8, §9, §10; Tuổi Trẻ / Dân Việt (14/7/2026, H3) về GDP 6 tháng 8,18%, IIP +10,8%, chế biến chế tạo +11,4%; CafeF / Thời báo Tài chính Việt Nam (họp báo Bộ Tài chính 17/6/2026, H3) về việc không xây kịch bản dưới 10%.

### MỞ ĐẦU — Advocate B

**Tôi tranh luận với chính sách có thật, không với phiên bản dễ đánh.** Chính sách đang bàn không phải "tăng trưởng bằng mọi giá": văn kiện ghi "phấn đấu từ 10% trở lên", nghị quyết gắn tăng trưởng với trần CPI khoảng 4,5% và giới hạn nợ công, bội chi; Thủ tướng tuyên bố tuyệt đối không đánh đổi ổn định vĩ mô để lấy tăng trưởng nóng `[Case file §2, §2.2]`. Tôi thừa nhận vế mềm đó là thật. Luận điểm của tôi chính là vì nó thật: nó không thể cùng tồn tại với vế cứng, và khi hai cam kết va nhau, cam kết nào có cơ chế cưỡng chế sẽ thắng.

**Trục 1 — Khung mục tiêu và đánh đổi.** Hàm mục tiêu tôi dùng: tăng trưởng phục vụ việc vượt bẫy thu nhập trung bình trước khi dân số già `[Case file §10]`, đo bằng **tổng lũy kế thu nhập đầu người và tỷ trọng TFP trong 10–15 năm**, không phải tốc độ của một năm. Tiêu chí phân định khi mục tiêu xung đột: **tính bất đối xứng của khả năng phục hồi**. Hụt tăng trưởng một năm phục hồi được trong một năm; mất neo lạm phát, nợ xấu hình thành, một tầng công trình kém hiệu quả thì mất nhiều năm và ăn vào chính TFP mà mục tiêu 2045 cần. Ai trả giá: CPI 6 tháng 2026 tăng 4,38%, trong đó nhà ở – điện nước – vật liệu xây dựng +6,72%, giao thông +5,23%, ăn uống +4,79% `[Nguồn: Cục Thống kê qua Nhân Dân, VietnamPlus, 07/2026 — H1/H3]` — đúng rổ chi của người thu nhập cố định, nhóm không có công cụ phòng vệ và không có ghế trong quyết định vĩ mô. Lạm phát lõi bình quân 4,12% cho thấy áp lực là diện rộng, không phải cú sốc cung nhất thời `[Nguồn: markettimes dẫn Cục Thống kê, 07/2026 — H1/H3]`. Bên hưởng lợi ngắn hạn là khu vực thâm dụng vốn và FDI (~80% kim ngạch xuất khẩu `[Case file §7]`); bên gánh là hộ gia đình và doanh nghiệp nội địa vay vốn.

**Trục 2 — Bằng chứng, phân theo bốn loại con số.** *Chỉ tiêu:* ≥10%. *Kịch bản:* ban đầu 9,1 – 10,2 – 10,2 – 10,4; sau khi quý I hụt, nâng lên 10,5 – 10,6 – 10,74 `[Case file §4]`; sau khi 6 tháng chỉ đạt 8,18%, mức cần thiết được cập nhật tiếp lên **11,16% quý III và 12,09% quý IV** `[Nguồn: Cục Thống kê qua VietnamPlus, 07/2026 — H1/H3]`. *Số liệu thực hiện (ước):* quý I 7,83%, quý II 8,39%, 6 tháng 8,18% `[Case file §3]`. *Dự báo:* IMF 7,5%, ADB 7,2%, WB 6,8% `[Case file §9]`. Đây là ba lần điều chỉnh liên tiếp theo hướng **lên**, trong khi độ chệch **nới rộng** từ 1,27 lên 2,11 điểm % `[Case file §4]`. Một mục tiêu được nâng mỗi lần thực tế hụt thì đã mất chức năng thông tin.

**Trục 3 — Cơ chế và khả thi định lượng.** Đường duy nhất còn lại để bù ~3,5 điểm % trong 5 tháng là vốn: ICOR 2021–2025 là 6,4 `[Case file §5]`; năng suất lao động cần 8,5%/năm so với 5,8% hiện tại `[Case file §5, CẦN KIỂM CHỨNG]`. Năng suất không tăng theo mệnh lệnh trong 5 tháng; vốn thì có. Ràng buộc vật lý cũng thật: cảnh báo nguy cơ mất cân đối cung–cầu điện 2026–2028 và chỉ đạo tiết kiệm tối thiểu 3% điện năng `[Case file §8]`. **Tự kiểm tra phương án của tôi:** công khai hiệu chỉnh về 8–8,5% có nghĩa là chấp nhận mất ~1,5–2 điểm % sản lượng năm 2026 so với chỉ tiêu — đổi lấy việc không phải nới đồng thời tài khóa và tiền tệ khi đệm lạm phát chỉ còn 0,12 điểm %. Xây kịch bản dưới 10% tốn **chi phí ngân sách bằng không**; nó chỉ tốn uy tín của một tuyên bố.

**Trục 4 — Logic, và phản biện mạnh nhất chống lại tôi.** Phản biện đó là: *trần ổn định đã được công bố ở cấp cao nhất; tín dụng 6 tháng tăng 7,41%, thấp hơn 8,3% cùng kỳ 2025 `[Case file §6]`; chưa số liệu nào cho thấy trần bị phá — cảnh báo của anh là suy đoán về tương lai.* Tôi nhận phản biện này ở dạng mạnh nhất và trả lời ba điểm. **Một:** tôi không khẳng định trần đã bị phá; tôi khẳng định **dư địa đã cạn** — 4,38% so với 4,5% là 0,12 điểm %, và kịch bản bất lợi đưa cả năm lên ~4,8% `[Case file §6]`. **Hai:** đòi bằng chứng hậu nghiệm cho một quyết định phòng ngừa là đảo ngược logic quản trị rủi ro — theo chuẩn đó, không kịch bản dự phòng nào từng được lập kịp. **Ba:** chính con số tín dụng thấp là bằng chứng của tôi. Nếu 6 tháng chỉ đạt 8,18% với tín dụng 7,41%, thì 11,7% nửa cuối năm đòi một thứ gì đó phải khác đi rất mạnh; dự báo tín dụng cả năm ~15% `[Case file §6]` hàm ý nửa cuối phải bơm thêm gần gấp đôi nửa đầu. "Chưa bơm" không phải bằng chứng "sẽ không phải bơm".

Tôi nêu sẵn **chỉ báo bác bỏ** lập luận mình: nếu quý III đạt ≥11% mà CPI bình quân vẫn ≤4,5% và tín dụng cả năm ≤15%, tôi sai. Xin cảnh báo trước hai ngụy biện có thể xuất hiện: **false dilemma** ("hoặc kiên định, hoặc buông xuôi" — hiệu chỉnh có kỷ luật là phương án thứ ba) và **survivorship bias** khi dẫn Hàn Quốc, Đài Loan mà bỏ qua các trường hợp tăng trưởng ép bằng tín dụng dẫn tới đổ vỡ `[Case file §10]`.

**Nguồn trích dẫn trong lượt này:**
- `[Case file §2, §2.2, §3, §4, §5, §6, §7, §8, §9, §10]`
- Cục Thống kê, CPI bình quân 6 tháng 2026 tăng 4,38% (Nhân Dân, VietnamPlus, 07/2026 — H1/H3)
- Lạm phát lõi bình quân 6 tháng 2026 là 4,12% (markettimes dẫn Cục Thống kê, 07/2026 — H1/H3)
- Cục Thống kê: nửa cuối năm cần tăng 11,7%; kịch bản cập nhật quý III 11,16%, quý IV 12,09% (VietnamPlus, 07/2026 — H1/H3)


## Vòng 2 — Phản biện 1

> *Ngân sách 600 từ/lượt (trần 660).*

### PHẢN BIỆN 1 — Advocate B

**Steelman.** A lập luận: hàm mục tiêu là thu nhập đầu người đạt được trước khi cửa sổ dân số vàng khép; ràng buộc ổn định là trần cứng và tăng trưởng chỉ được ép ở dư địa dưới trần; nguồn tăng trưởng viện dẫn là hơn 600.000 tỷ đồng vốn ngân sách đã được phê chuẩn nhưng chưa giải ngân — chi số vốn này không tạo cung tiền mới như tín dụng thương mại. Cầu nối trung tâm: hai cam kết chi phối hai biến khác nhau — vế cứng ràng buộc **mức nỗ lực**, vế mềm ràng buộc **bộ công cụ**; khi số học không cho phép cả hai, thứ gãy là **kết quả**, không phải cam kết. Tôi xác nhận hai dữ kiện A đưa ngoài case file đều đúng: IIP 6 tháng +10,8% (cao nhất từ 2019), chế biến chế tạo +11,4% `[Nguồn: Cục Thống kê qua VnEconomy/Báo Văn hóa, 07/2026 — H1/H3]`; và phát ngôn "không điều hành theo phương án dưới 10%" đúng là của Thứ trưởng Nguyễn Đức Chi tại họp báo 17/6 `[Nguồn: CafeF/Báo Tin tức, 17/6/2026 — H3]`.

**1. Cầu nối của A tự vô hiệu hóa vế cứng.** Nếu thứ được phép gãy là *kết quả*, thì A vừa mô tả một stretch goal — đúng lối tắt case file cấm: rút mức quyết tâm xuống "không ràng buộc kết quả" `[Case file §11.9]`. Hãy hỏi: kịch bản điều hành dưới 10% dùng để làm gì? Để quản trị chính cái kết quả A vừa thừa nhận sẽ gãy. A chấp nhận kết quả có thể về vùng 8% nhưng vẫn bảo vệ việc **không lập phương án cho vùng đó**. Từ chối lập kịch bản không làm tăng nỗ lực; nó chỉ bảo đảm rằng khi kết quả gãy, hệ thống chưa có phương án phân bổ. A đã nhận tiền đề của tôi mà không nhận kết luận.

**2. "Nỗ lực" và "công cụ" không độc lập — đây là phân tách sai.** Nỗ lực được đo bằng chỉ tiêu GRDP giao đích danh, báo cáo hằng quý gửi Bộ Tài chính trước ngày 25 tháng cuối quý, các bộ "kiến nghị giải pháp để bảo đảm hoàn thành chỉ tiêu" `[Case file §2.2]`. Khóa công cụ vĩ mô **và** cho phép kết quả gãy thì ràng buộc dồn hết lên đại lượng duy nhất còn đo được ở cấp tỉnh: tốc độ giải ngân và con số báo cáo. Đó là cơ chế Goodhart — trình như **giả thuyết**, chỉ báo kiểm chứng: ICOR 2026 và tỷ trọng vốn dồn vào quý IV. Dấu của nó ngược với A: A cần ICOR giảm 1,6 điểm `[Case file §5]`, nhưng cơ chế A viện dẫn chọn dự án theo tốc độ hấp thụ vốn, không theo suất sinh lời.

**3. Số học đóng góp bác bỏ "vốn nằm im là đủ".** Quý II: công nghiệp–xây dựng +10,51% đóng góp 50,07% mức tăng; dịch vụ +7,87% (44,28%); nông–lâm–thủy sản +4,06% (5,65%) `[Case file §3]`. Giữ nguyên hai khu vực sau, để tổng đạt 11,7% thì công nghiệp–xây dựng phải tăng **khoảng 18–19%** `[phép tính từ tỷ trọng đóng góp, Case file §3–§4]`; kể cả khi dịch vụ tăng tốc lên 9% vẫn cần ~17%. Trong khi IIP đã ở mức cao nhất 7 năm, và có cảnh báo mất cân đối cung–cầu điện 2026–2028 kèm chỉ đạo tiết kiệm tối thiểu 3% `[Case file §8]`. Chuỗi mạnh nhất đã chạy hai con số mà tổng chỉ 8,18% (ước): biên còn lại không nằm ở nơi vốn ngân sách chạm tới.

**4. Thế lưỡng nan cho luận điểm "chi vốn đã bố trí nên không tạo áp lực giá".** Hoặc xung lực cầu đủ lớn để bù ~3,5 điểm % — thì cũng đủ lớn để đẩy giá khi đệm CPI còn 0,12 điểm % và lạm phát lõi đã 4,12% `[Case file §6]`; hoặc xung lực nhỏ, đúng như ICOR 6,4 hàm ý — thì không bù được. A không lấy được cả hai. "Đã có trong dự toán" là mệnh đề kế toán về **nguồn tài trợ**, không nói gì về tác động cầu khi tiền rời tồn quỹ vào lưu thông; đồng nhất thức kế toán không thay cho quan hệ nhân quả.

**5. Phép thử tự bác bỏ của A không phân biệt được giả thuyết.** Hải quan và IIP tăng nhờ chu kỳ điện tử và cầu ngoài, với FDI chiếm ~80% kim ngạch xuất khẩu `[Case file §7]`; chúng tăng dù có hay không có NQ 169. Chỉ báo không phân biệt thì không phải phép thử.

**Nguồn trích dẫn trong lượt này:** Case file §2.2, §3, §4, §5, §6, §7, §8, §11.9; Cục Thống kê qua VnEconomy / Báo Văn hóa (07/2026) — IIP 6 tháng +10,8%, chế biến chế tạo +11,4%; CafeF / Báo Tin tức (17/6/2026) — họp báo Bộ Tài chính, Thứ trưởng Nguyễn Đức Chi, "không điều hành theo phương án dưới 10%".

> `[vượt ngân sách từ: 713/600 — trần cho phép 660]` Lượt này đo được 724 từ ở bản đầu; orchestrator đã yêu cầu cắt gọn MỘT lần theo protocol, bản cắt còn 713 từ, vẫn vượt trần 53 từ. Ghi nhận để Judge cân nhắc ở Chiều 5 nếu phần vượt tạo lợi thế.

### PHẢN BIỆN 1 — Advocate A

**Steelman.** B lập luận: nếu thứ được phép gãy là *kết quả*, thì vế cứng chẳng ràng buộc ai và tôi đã rút chính sách xuống thành stretch goal — đúng lối tắt bị cấm; "nỗ lực" và "công cụ" không tách rời được, nên khóa công cụ vĩ mô mà vẫn ép kết quả sẽ dồn toàn bộ ràng buộc lên đại lượng duy nhất đo được ở cấp tỉnh là tốc độ giải ngân và con số báo cáo; và số học đóng góp cho thấy biên còn lại không nằm ở nơi vốn ngân sách chạm tới. B đã nêu chỉ báo phân biệt cụ thể (ICOR 2026, tỷ trọng vốn dồn quý IV) — B đáp đúng yêu cầu tôi đặt ở vòng 1, tôi không lặp lại nó.

**1. Nhận phần bất lợi trước.** Kịch bản cập nhật đúng như B dẫn: quý III 11,16%, quý IV 12,09% `[Nguồn: Cục Thống kê qua VietnamPlus, 07/2026 — H1/H3]`, nặng hơn mức 10,74% tôi trích ở vòng 1. Tôi nhận bản nặng hơn. Tôi cũng kiểm lại phép tính của B: từ §3 suy ra tỷ trọng CN–XD ~40%, dịch vụ ~47%, NLTS ~12%; giữ nguyên hai khu vực sau, CN–XD phải tăng ~18,8% để tổng đạt 11,7%; dịch vụ lên 9% thì ~17,5% `[phép tính từ Case file §3–§4]`. **Phép tính của B đúng, tôi không bác.**

**2. Nhưng đó là số học của câu hỏi dự báo.** Nó chứng minh 10% rất khó đạt — điều tôi chưa bao giờ phủ nhận. Suy từ đó sang "mức quyết tâm sai" là bước nhảy bị `[Case file §11.2]` chặn, và là đánh tráo khái niệm khả thi ↔ hợp lý. Câu hỏi chuẩn tắc quyết ở biên khác: giữa 9,0% và 8,2%, không giữa 10% và 8%.

**3. Gọng kìm §11.9 — trả lời trực diện.** Cam kết chính sách ràng buộc **hành vi mà chủ thể kiểm soát**, không ràng buộc một biến ngẫu nhiên; không cam kết nào ràng buộc được kết quả GDP. Phép thử stretch goal không phải "kết quả có gãy không" mà "hệ thống có trả giá khi gãy không": chủ tịch tỉnh báo cáo hằng quý trước ngày 25, các bộ kiến nghị giải pháp bảo đảm chỉ tiêu `[Case file §2.2]` — stretch goal không có bộ máy đó. Câu hỏi "kịch bản dưới 10% để làm gì" đã có đáp án trong dữ kiện: Bộ Tài chính xây **nhiều kịch bản điều hành**, thứ bị loại là kịch bản **đặt mục tiêu** dưới 10% `[Case file §2.2]` `[CẦN KIỂM CHỨNG câu chữ nguyên văn]`. Năng lực phân bổ dự phòng không bị xóa; cái bị xóa là quyền tự hạ chuẩn.

**Phản công:** B không thể giữ cả điểm 1 lẫn điểm 2. Nếu vế cứng chỉ là stretch goal vô hại, nó không đủ lực bẻ cong hành vi cấp tỉnh; nếu đủ lực gây Goodhart, nó ràng buộc thật — đúng cấu hình "ràng buộc hành vi, không ràng buộc kết quả" tôi mô tả, B chỉ đánh giá nó xấu.

**4. Goodhart — tôi nhận chỉ báo của B làm phép thử chung.** Nhưng Goodhart cắn ở **biên chọn dự án**, mà danh mục 2026 đã chốt trong kế hoạch vốn 1.013.443,4 tỷ đồng `[Case file §5]`. Giải ngân nhanh một danh mục đã chọn làm **giảm** ICOR (rút ngắn thời gian vốn nằm chờ), không tăng. Rủi ro B nêu là rủi ro 2027–2030. Điều kiện tự nhận thua: nếu ICOR 2026 xấu đi so 6,4 và tỷ trọng giải ngân quý IV vượt rõ thông lệ, luận điểm này của tôi sai.

**5. Thế lưỡng nan là lưỡng nan giả.** Nó gán cho tôi tiền đề "600.000 tỷ bù đủ 3,5 điểm %" — tôi không nói vậy. Vốn hạ tầng điện–giao thông còn có cấu phần **nới ràng buộc cung** ngay trong năm, nên tác động giá không đồng dạng với một cú bơm cầu cùng quy mô. Dữ kiện: giải ngân tăng mạnh trong tháng 6 `[Case file §5]` nhưng CPI tháng 6 **giảm 0,39%** so tháng trước, và lạm phát lõi 4,12% **thấp hơn** CPI 4,38% — chênh đến từ xăng dầu, gas theo giá thế giới `[Nguồn: Cục Thống kê, Thông cáo giá tháng 6/2026 — H1]`. Đó là áp lực nhập khẩu, không phải cầu nội địa quá nóng.

**Nguồn trích dẫn trong lượt này:** Case file §2.2, §3, §4, §5, §11.2, §11.9; Cục Thống kê qua VietnamPlus (07/2026) — kịch bản quý III 11,16%, quý IV 12,09%; Cục Thống kê, Thông cáo báo chí tình hình giá tháng 6/quý II/6 tháng 2026 (nso.gov.vn) — CPI tháng 6 giảm 0,39% so tháng trước, lạm phát cơ bản 6 tháng 4,12%, nguyên nhân chính từ giá xăng dầu và gas thế giới.

> `[vượt ngân sách từ: 667/600 — trần cho phép 660]` Lượt này đo được 685 từ ở bản đầu; orchestrator đã yêu cầu cắt gọn MỘT lần theo protocol (cùng thủ tục đã áp cho B), bản cắt còn 667 từ, vượt trần 7 từ.

> **Ghi chú đối xứng vòng 2 (orchestrator):** cả hai lượt đều vượt trần 660 sau một lần cắt — B 713 từ (+53), A 667 từ (+7). Chênh lệch giữa hai bên là 46 từ (~7% ngân sách). Judge cân nhắc ở Chiều 5 nếu phần vượt tạo lợi thế thực chất.


## Vòng 3 — Phản biện 2

> *Ngân sách 600 từ/lượt (trần 660).*

### PHẢN BIỆN 2 — Advocate A

**Steelman.** Vị thế mạnh nhất của B sau vòng 2: mức quyết tâm hiện hành khóa công cụ vĩ mô nhưng vẫn ép kết quả, nên ràng buộc dồn xuống đại lượng duy nhất đo được ở cấp tỉnh — tốc độ giải ngân và con số báo cáo (Goodhart, kèm chỉ báo kiểm chứng ICOR 2026 và tỷ trọng vốn quý IV); tính bất đối xứng phục hồi: hụt một năm bù được trong một năm, mất neo lạm phát thì mất nhiều năm; và với đệm CPI 0,12 điểm % `[Case file §6]`, đòi bằng chứng hậu nghiệm cho một quyết định phòng ngừa là đảo ngược logic quản trị rủi ro. Tôi giữ nguyên các nhượng bộ vòng 2: mức cần thiết là 11,16% quý III và 12,09% quý IV `[Nguồn: Cục Thống kê qua VietnamPlus, 07/2026 — H1/H3]`; phép tính đóng góp của B đúng.

**1. B bác được đầu mút, chưa biện minh được điểm B chọn.** Toàn bộ bằng chứng của B — 11,16/12,09%, ICOR 6,4, ràng buộc điện — bác mức 10%. Không có bước nào trong đó đi tới **8–8,5%**. Nếu cơ chế thiệt hại là áp lực giá do cầu, nó tăng liên tục theo mức ép chứ không nhảy bậc tại một ngưỡng; vậy vì sao 8,4% an toàn mà 9,2% thì không? B nợ một hàm chi phí theo mức mục tiêu và chưa đưa. Bác một đầu mút rồi công bố một điểm cụ thể là **non sequitur**: nó xác định miền loại trừ, không xác định điểm tối ưu. Câu hỏi chuẩn tắc quyết ở biên 9,0 vs 8,2 — B chưa đứng vào biên đó lần nào.

**2. Phương án của B chưa được cân bằng chính hàm mục tiêu của B.** B tự khai hiệu chỉnh này "chấp nhận mất ~1,5–2 điểm % sản lượng 2026" — trên quy mô ~514 tỷ USD (2025) `[Case file §3]` là **khoảng 7,7–10,3 tỷ USD** `[phép tính thô từ §3, chưa tính nền 2026 lớn hơn]`, và khoản hụt này vào nền của mọi năm sau, tức đánh thẳng vào **tổng lũy kế** 10–15 năm mà B tuyên bố tối đa hóa. Đối trọng B đặt lên bàn cân là gì? Chính B nói: "tôi không khẳng định trần đã bị phá". Vế chi phí chắc chắn, do B tự khai; vế lợi ích là xác suất × thiệt hại chưa lượng hóa. Tôi không nói rủi ro lạm phát nhỏ — tôi nói cán cân này chưa được cân. Thêm nữa, nhóm gánh phần sản lượng mất (việc làm xây dựng, dịch vụ, nguồn thu tài trợ an sinh) trùng phần lớn nhóm thu nhập cố định mà B bảo vệ khỏi 0,12 điểm % lạm phát.

**3. "Chi phí ngân sách bằng không" tự bác lập luận Goodhart của B.** B nói công bố hiệu chỉnh "chỉ tốn uy tín của một tuyên bố". Nhưng giá trị của **mọi** thiết bị cam kết trong mọi khung lý thuyết chính là chi phí rút lui; nếu chi phí đó ≈ 0 thì không thiết bị cam kết nào tồn tại — và một chỉ tiêu rút lại được miễn phí thì cũng không đủ lực bẻ cong hành vi 34 địa phương tới mức gây Goodhart. B đang định giá **cùng một tuyên bố** hai lần trái ngược: mạnh khi cần buộc tội, yếu khi cần rút. Đó là **equivocation** trên từ "cam kết", và là thế lưỡng nan tôi đặt ở vòng 2 mà B chưa trả lời.

**4. Chỉ báo phân biệt — đường tín dụng đang siết, không nới.** B dùng "dự báo cả năm ~15% hàm ý nửa cuối bơm gần gấp đôi". Ba đính chính. Một: 15% là **định hướng điều hành của NHNN**, kèm khẳng định điều chỉnh để bảo đảm kiểm soát lạm phát `[Nguồn: họp báo NHNN 02/7/2026, Phó Thống đốc Phạm Thanh Hà, qua Dân Việt/Công Thương — H1/H3]` — trần định hướng, không phải cam kết bơm. Hai: 2025 nửa đầu 8,3% mà cả năm khoảng 18–19% `[Nguồn: Thanh Niên/VnEconomy, 01/2026 — H3]` `[CẦN KIỂM CHỨNG: các nguồn nêu 17,87–19,01%]`, nên "nửa cuối nhanh hơn nửa đầu" là hình dạng thông lệ. Ba, điểm quyết định: **15% cho 2026 thấp hơn mức thực hiện 2025** — trong năm chỉ tiêu cao nhất, biến tiền tệ được đặt chặt hơn năm trước. Nếu vế cứng đang lấn vế mềm, biến này phải đi hướng ngược lại.

**5. Hai câu hỏi cho B.** (a) Cơ chế nào cho biết trần ổn định giữ được ở 8,4% nhưng vỡ ở 9,2%? (b) Nếu rút chỉ tiêu tốn chi phí bằng không, vì sao chỉ tiêu ấy lại đủ mạnh để gây Goodhart?

**Nguồn trích dẫn trong lượt này:** Case file §3, §6; Cục Thống kê qua VietnamPlus (07/2026) — kịch bản quý III 11,16%, quý IV 12,09%; họp báo NHNN 02/7/2026 (Phó Thống đốc Phạm Thanh Hà) qua Dân Việt / Công Thương — tín dụng tăng 7,41%, định hướng cả năm ~15%; tín dụng cả năm 2025 qua Thanh Niên / VnEconomy (01/2026) — khoảng 17,87–19,01%.

> `[vượt ngân sách từ: 725/600 — trần cho phép 660]` Bản đầu 764 từ; đã yêu cầu cắt gọn MỘT lần theo protocol, bản cắt còn 725 từ, vượt trần 65 từ.

### PHẢN BIỆN 2 — Advocate B

**Steelman.** Ba đòn của A đều đúng địa chỉ. (1) *Non sequitur:* tôi bác được đầu mút 10% nhưng công bố một điểm 8–8,5% mà không đưa hàm chi phí theo mức mục tiêu; câu hỏi chuẩn tắc quyết ở biên 9,0 vs 8,2 và tôi chưa đứng vào đó. (2) *Equivocation:* tôi định giá cùng một tuyên bố mạnh khi buộc tội, yếu khi rút. (3) *Cán cân:* chi phí tôi tự khai là chắc chắn và vào nền mọi năm sau, còn lợi ích chỉ là xác suất nhân thiệt hại chưa lượng hóa.

**0. Đính chính của tôi trước.** Vòng 1 tôi viết định hướng tín dụng ~15% "hàm ý nửa cuối phải bơm gần gấp đôi nửa đầu". Sai: 7,41% đến 26/6 cộng ~7,6% là 15%, nhịp gần bằng nhau. Tôi rút phát biểu đó.

Nhưng dữ kiện A dựng lên trên đó không đứng vững. Kiểm chứng: 2025 định hướng **16%**, thực hiện **~19,1%** `[Nguồn: NHNN qua VnEconomy / Người Lao Động, 12/2025–01/2026 — H1/H3]` — vượt hơn 3 điểm % ngay trong năm GDP đạt 8,02%. Con số 2026 lại được công bố kèm mệnh đề "điều chỉnh tăng/giảm phù hợp diễn biến thực tế" `[Nguồn: Chỉ thị 01/CT-NHNN, 01/2026 — H1]`. Vậy 15% là **định hướng co giãn**, không phải trần cứng, và tiền lệ gần nhất là nó bị vượt khi tăng trưởng cần thêm. Nó chứng minh vế mềm **chưa bị gọi tên**, không chứng minh vế mềm sẽ thắng khi bị gọi.

**1. Nhận phần A đúng — và nó vẫn dẫn về kết luận của tôi.** Giả sử 15% giữ được, chia đều các quý, siết bất động sản `[Nguồn: Chỉ thị 01/CT-NHNN, 01/2026 — H1]`: kênh tín dụng bị khóa. Cộng ràng buộc điện `[Case file §8]` và ICOR 6,4 `[Case file §5]`, không kênh nào còn lại bù nổi ~3,5 điểm %. Kết luận buộc phải là: kết quả về vùng 8 — đúng vùng mà hệ thống từ chối lập kịch bản. A và tôi giờ gần như đồng ý về trạng thái thế giới; chúng tôi khác nhau ở chỗ **có nên chuẩn bị cho nó hay không**.

**2. Câu (a) — hàm chi phí.** Nhượng bộ thẳng: bằng chứng của tôi xác định một **miền**, không một **điểm**; ở biên 9,0 vs 8,2 nó không phân định được và tôi không giả vờ ngược lại. Nhưng chi phí không trơn như A giả định: trần CPI 4,5% là neo danh nghĩa có hiệu lực rời rạc, cân đối điện 2026–2028 là ràng buộc vật lý `[Case file §8]`, tín dụng là hạn mức hành chính — cả ba đều là **ngưỡng**, không phải dốc tuyến tính. Neo cho miền: 8,02% là mức 2025 đạt được **với CPI trong trần** `[Case file §3, §6]`, tức mức quan sát được ở ICOR và tiềm năng hiện hành; 8–8,5% là mức đó cộng biên cải thiện giải ngân. Quan trọng hơn: **đề nghị trung tâm của tôi không cần hàm chi phí.** "Xây kịch bản điều hành dưới 10%" là quyết định nhị phân về quản trị rủi ro, đúng ở mọi điểm trong miền.

**3. Câu (b) — hai người trả tiền khác nhau, không phải equivocation.** Chi phí rút chỉ tiêu là uy tín, ở trung ương, **không tiêu nguồn lực thực** — tôi viết "chi phí ngân sách bằng không", không viết "chi phí bằng không", và cùng câu đó đã ghi "nó tốn uy tín của một tuyên bố". Lực Goodhart rơi xuống chỗ khác: 34 chủ tịch tỉnh có chỉ tiêu GRDP đích danh và nghĩa vụ báo cáo hằng quý trước ngày 25 `[Case file §2.2]`. Một thiết bị cam kết rẻ với người **đặt** và đắt với người **bị đo** là bất đối xứng chuẩn của quan hệ ủy quyền, không phải mâu thuẫn.

**4. Cán cân — A định giá sai đại lượng.** Tôi viết mất 1,5–2 điểm % "so với **chỉ tiêu**", không phải so với sản lượng thực sẽ đạt. Quy nó thành 7,7–10,3 tỷ USD hàng hóa thật chỉ đúng nếu **bản thân con số chỉ tiêu sản xuất ra sản lượng**. Nếu chỉ tiêu có sức mạnh nhân quả đó thì nó cũng đủ mạnh để bẻ cong hành vi cấp tỉnh — A không thể giữ cả hai. Còn chi phí lạm phát không phải xác suất: nó đã hiện và đo được — 4,38%, nhà ở–điện nước–vật liệu xây dựng +6,72%.

**Nguồn trích dẫn trong lượt này:** Case file §2.2, §3, §5, §6, §8; NHNN qua VnEconomy / Người Lao Động (12/2025–01/2026, H1/H3) — tín dụng 2025 định hướng 16%, thực hiện ~19,1%; Chỉ thị 01/CT-NHNN (01/2026, H1) — định hướng tín dụng 2026 ~15%, kèm mệnh đề điều chỉnh phù hợp diễn biến thực tế, siết bất động sản; Cục Thống kê (CPI 6 tháng 2026, đã dẫn vòng 1).

> `[vượt ngân sách từ: 688/600 — trần cho phép 660]` Bản đầu 694 từ; đã yêu cầu cắt gọn MỘT lần theo protocol, bản cắt còn 688 từ, vượt trần 28 từ.

> **Ghi chú đối xứng vòng 3 (orchestrator):** A 725 từ (+65), B 688 từ (+28). Tổng hợp cả bốn lượt phản biện V2–V3: B 713 / A 667 / A 725 / B 688 — **không lượt nào nằm trong trần 660**. Chênh lệch tích lũy giữa hai bên: A 1.392 từ, B 1.401 từ (lệch 9 từ, ~0,6%) — về tổng thể ngân sách vẫn đối xứng, dù từng lượt đều vượt.

## Vòng 4 — Chất vấn chéo

> *Ngân sách: 3 câu hỏi/bên, mỗi câu ≤100 từ; mỗi câu trả lời ≤300 từ. B hỏi trước theo `protocol/debate_protocol.md`.*
>
> *Quy tắc vòng: câu hỏi phải nhắm vào nội dung đối phương ĐÃ phát biểu và trích kèm; người trả lời phải trả lời trực diện trước rồi mới bổ sung bối cảnh; cấm hỏi dồn nhiều câu trong một câu.*

### CHẤT VẤN — Advocate B hỏi Advocate A

**Câu 1.** Anh viết: "Câu hỏi chuẩn tắc quyết ở biên khác: giữa 9,0% và 8,2%, không giữa 10% và 8%." Chính sách đang tranh biện loại bỏ mọi kịch bản điều hành đặt mục tiêu dưới 10% `[Case file §2.2]`. Xin trả lời đúng một điều: trong khung của anh, một kịch bản điều hành đặt mục tiêu 9,0% có được phép tồn tại hay không?

**Câu 2.** Anh khẳng định: "Giải ngân nhanh một danh mục đã chọn làm giảm ICOR (rút ngắn thời gian vốn nằm chờ), không tăng." Đây là khẳng định về **dấu** của một quan hệ, đưa ra không kèm nguồn. Xin nêu một bằng chứng cụ thể — chuỗi số liệu, nghiên cứu, hoặc phép tính từ §5 — cho thấy dấu đó là giảm.

**Câu 3.** Anh định nghĩa: "Vế mềm ràng buộc bộ công cụ được phép dùng — cấm mua sản lượng bằng nới tiền tệ, tỷ giá, kỷ luật ngân sách." Anh đã nêu chỉ báo tự bác cho luận điểm Goodhart. Xin nêu đúng một chỉ báo quan sát được trong quý III–IV/2026 mà nếu nó xuất hiện, anh chấp nhận rằng ràng buộc bộ công cụ này đã bị phá.

> *Đo được: Câu 1 = 64 từ, Câu 2 = 61 từ, Câu 3 = 68 từ (tổng 193/300). Cả ba câu trong trần 100 — không phải cắt gọn.*


---

> **Quy ước heading phụ lục (BẮT BUỘC giữ nguyên văn):** `scripts/make_judge_input.sh` cắt input cho judge từ `## Vòng 1 — Mở đầu` đến TRƯỚC `## Phụ lục B`. Phụ lục A (fact-check) đặt TRƯỚC Phụ lục B.

## Phụ lục A — Fact-check (phạm vi: CHƯA CHẠY)

⛔ **CHƯA CHẠY.** Fact-check chưa được thực hiện cho bất kỳ vòng nào. Mọi tổng điểm chấm trên transcript ở trạng thái này phải gắn nhãn **"chưa fact-check"**, và KHÔNG được phát biểu "0 cờ đỏ" cho bất kỳ vòng nào.

**Danh sách khẳng định ngoài case file cần kiểm ưu tiên khi chạy fact-check:**

| # | Khẳng định | Bên đưa | Vòng |
|---|---|---|---|
| 1 | IIP 6 tháng 2026 +10,8% (cao nhất từ 2019); chế biến chế tạo +11,4% | A (B đã tự xác nhận đúng) | V1, V2 |
| 2 | Phát ngôn "không điều hành theo phương án dưới 10%" là của Thứ trưởng Nguyễn Đức Chi, họp báo Bộ Tài chính 17/6/2026 | A (B đã tự xác nhận đúng) | V1, V2 |
| 3 | Cấu phần CPI 6 tháng: nhà ở–điện nước–VLXD +6,72%; giao thông +5,23%; ăn uống +4,79% | B | V1 |
| 4 | Lạm phát cơ bản bình quân 6 tháng 2026 = 4,12% | B (A dùng lại) | V1, V2 |
| 5 | Kịch bản Cục Thống kê cập nhật: quý III 11,16%, quý IV 12,09% | B (A xác nhận và nhận bản nặng hơn) | V1, V2, V3 |
| 6 | CPI tháng 6/2026 giảm 0,39% so tháng trước; chênh CPI–lõi do xăng dầu, gas thế giới | A | V2 |
| 7 | Họp báo NHNN 02/7/2026, Phó Thống đốc Phạm Thanh Hà; định hướng tín dụng 2026 ~15% | A | V3 |
| 8 | **Tín dụng 2025: định hướng 16%, thực hiện ~19,1%** — A dẫn "~17,87–19,01%", B dẫn "~19,1%"; hai bên vênh nhau về cùng một đại lượng | A và B | V3 |
| 9 | **Chỉ thị 01/CT-NHNN (01/2026)** — số hiệu, và mệnh đề "điều chỉnh tăng/giảm phù hợp diễn biến thực tế" | B | V3 |
| 10 | Phép tính tự dựng: để tổng đạt 11,7% thì CN–XD phải tăng ~18–19% (B), ~18,8% / ~17,5% (A tính lại) | B, A xác nhận | V2 |
| 11 | Phép tính tự dựng: 1,5–2 điểm % sản lượng ≈ 7,7–10,3 tỷ USD | A | V3 |

> Mục 8 và 9 là ưu tiên cao nhất: chúng là nền của đòn phản công quyết định ở vòng 3 của cả hai bên, và hai bên đưa con số vênh nhau.

## Phụ lục B — Steelman audit (đo trần lập luận — KHÔNG cộng/trừ điểm, KHÔNG nạp cho judge)

⛔ **CHƯA CHẠY.** Bắt buộc chạy trước GATE 2, đối xứng hai bên.

## Phụ lục C — Ghi chú vận hành

### C1. Trạng thái phiên

**Phiên DỪNG sau vòng 3** vì hết ngân sách context của orchestrator, không phải vì lỗi nội dung. Điểm dừng nằm đúng ranh giới một vòng hoàn chỉnh.

| Hạng mục | Trạng thái |
|---|---|
| GATE 1 (case file) | ✅ Đã duyệt 08/08/2026, ghim commit `9998fd2` |
| Vòng 1 — Mở đầu | ✅ Hoàn thành (A 877, B 877) |
| Vòng 2 — Phản biện 1 | ✅ Hoàn thành (B 713, A 667) |
| Vòng 3 — Phản biện 2 | ✅ Hoàn thành (A 725, B 688) |
| Vòng 4 — Chất vấn chéo | ⬜ Chưa chạy |
| Vòng 5 — Kết luận | ⬜ Chưa chạy |
| Fact-check V1–V5 | ⬜ Chưa chạy (danh sách ưu tiên ở Phụ lục A) |
| Steelman audit ×2 | ⬜ Chưa chạy |
| GATE 2 | ⬜ Chưa tới |
| Phase 2 — hội đồng 3 judge | ⬜ Chưa chạy |

### C2. Sai lệch giao thức có chủ ý (khai báo bắt buộc)

**C2.1 — Case file rút gọn cho advocate ở vòng 2 và vòng 3 (lỗi của orchestrator).** Skill quy định advocate/fact-checker/auditor nhận case file **ĐẦY ĐỦ**; chỉ judge mới được nhận bản rút gọn, và phải rút bằng `make_case_file_input.sh`. Để tiết kiệm context, orchestrator đã dán cho advocate một bản case file **tự nén** ở vòng 2 và vòng 3.

- **Cái bị lược:** các câu "Lưu ý phương pháp" ở §2 (văn kiện không nói bên nào thắng khi hai vế xung đột), §8 (cảnh báo hai chiều về chỉ báo điện–GDP), §9 (dự báo định chế thận trọng có hệ thống); một số diễn giải ở §10.
- **Cái được giữ nguyên:** toàn bộ số liệu, mốc ngày, phân hạng nguồn, và **mọi nhãn `[CẦN KIỂM CHỨNG]`**.
- **Tính đối xứng:** bản nén được áp giống nhau cho cả A và B trong cùng vòng → nếu có thiên lệch thì là thiên lệch chung, không nghiêng về một bên.
- **Khắc phục:** lượt V3-B trở đi đã khôi phục bản đầy đủ. Vòng 4, 5 và mọi subagent sau đó dùng bản đầy đủ.
- **Đánh giá rủi ro:** các câu bị lược là **ràng buộc lập luận**, tức thứ định hình hành vi advocate — cùng lớp rủi ro với bài học P0-2 (14/07/2026). Hội đồng judge và người đọc cần chiết khấu tương ứng khi diễn giải vòng 2–3. Orchestrator KHÔNG chạy lại hai vòng đó để xóa dấu vết, vì transcript phải phản ánh cái đã thực sự xảy ra.

**C2.2 — Fact-check gộp thay vì theo từng vòng.** Skill cho phép fact-check theo vòng là tùy chọn. Orchestrator quyết định chạy **một lần bao trọn V1–V5 sau vòng 5** thay vì sau mỗi vòng, để tiết kiệm context. Hệ quả phải khai báo: **advocate KHÔNG nhận được cờ fact-check giữa chừng để tự đính chính** — khác điều kiện thí nghiệm so với phiên 12/06 và 14/07.

**C2.3 — Vòng 1 chạy mù đối xứng.** Hai lượt mở đầu được chạy độc lập, không bên nào thấy lượt của bên kia trước khi viết. Theo tiền lệ phiên 14/07 (lượt mở đầu của B không tham chiếu A). Ghi nhận vì bảng nạp context của skill nói advocate được thấy "transcript các lượt đã phát biểu", có thể đọc theo nghĩa B được thấy lượt A ở vòng 1.

### C3. Ngân sách từ — phát hiện harness

**Cả 4/4 lượt phản biện đều vượt trần 660**, kể cả sau khi mỗi lượt đã được yêu cầu cắt gọn đúng một lần theo protocol:

| Lượt | Bản đầu | Sau cắt | Vượt trần |
|---|---|---|---|
| V2 B | 724 | 713 | +53 |
| V2 A | 685 | 667 | +7 |
| V3 A | 764 | 725 | +65 |
| V3 B | 694 | 688 | +28 |

Tổng tích lũy V2–V3: **A 1.392 từ, B 1.401 từ** (lệch 9 từ, ~0,6%) — đối xứng ở cấp tổng dù từng lượt đều vượt.

Hai lượt mở đầu (ngân sách 800, trần 880) đều đạt **đúng 877 từ** — trong trần. Chỉ các lượt 600 từ mới vượt.

**Đề xuất sửa harness sau phiên:** ngân sách 600 từ cho vòng phản biện có thể quá chật với chủ đề mật độ số liệu cao (mỗi lượt phải steelman + xử lý 4–5 mũi tấn công + dẫn số có nguồn). Cân nhắc một trong hai: (a) nâng ngân sách vòng phản biện lên 700–750 từ cho các bộ chủ đề định lượng; hoặc (b) buộc advocate tự chạy phép đếm và tự cắt TRƯỚC khi xuất, thay vì để orchestrator phát hiện sau.

### C4. Ràng buộc hạ tầng

`WebFetch` bị chặn với **mọi** tên miền đã thử (chinhphu.vn, xaydungchinhsach.chinhphu.vn, vneconomy.vn, eastasiaforum.org). Toàn bộ case file và mọi kiểm chứng của advocate chỉ dựa được vào `WebSearch` (tiêu đề + trích đoạn + tóm tắt máy), không phải đọc trực tiếp trang gốc. Case file mang **16 nhãn `[CẦN KIỂM CHỨNG]`**. Xem `knowledge/source_policy_vn2026.md` quy tắc 6.

### C5. Cách resume phiên

1. Nạp lại `knowledge/case_file_vn2026.md` tại commit `9998fd2` (**bản đầy đủ**, không nén).
2. Chạy vòng 4 (chất vấn chéo — B hỏi trước, 3 câu/bên, ≤100 từ/câu, ≤300 từ/trả lời) và vòng 5 (kết luận — A trước, B sau, 800 từ/lượt, **bắt buộc có mục "Giới hạn của lập luận phía tôi"**).
3. Chạy `debate-fact-checker` bao V1–V5 theo danh sách ưu tiên ở Phụ lục A.
4. Chạy 2 instance `debate-auditor` đối xứng → Phụ lục B.
5. Trình GATE 2, chờ `APPROVE TRANSCRIPT`.
6. Phase 2: `make_judge_input.sh` + `make_case_file_input.sh` → hội đồng 3 judge → `quote_check.sh` từng scorecard → tổng hợp trung vị.

