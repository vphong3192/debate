# CASE FILE — Phong trào đặt hoa tại "gốc cây 55" Nguyễn Huy Tự, Hà Nội (nền sự kiện chung)

> Chủ đề tranh biện: **"Trong bối cảnh chính quyền đang ngăn cản, giới trẻ có nên tiếp tục đặt hoa tại gốc cây 55 Nguyễn Huy Tự không?"**
> - **Position A = NÊN tiếp tục đặt hoa.**
> - **Position B = KHÔNG NÊN tiếp tục** — chuyển sang hình thức khác để theo đuổi **cùng một mục tiêu** (khởi tố / công bố kết luận điều tra).
>
> Trạng thái: **DRAFT — CHƯA DUYỆT GATE 1.** Xem §0 để biết những gì Phase 0 BẮT BUỘC phải hoàn thiện trước khi trình `APPROVE CASE FILE`.
> Loại chủ đề: **SỰ KIỆN ĐANG DIỄN RA** — áp quy tắc đóng băng dữ kiện trong `protocol/debate_protocol.md`, mục "Chủ đề SỰ KIỆN ĐANG DIỄN RA". Mốc đóng băng dữ kiện ghi tại GATE 1.
> Nguyên tắc: file này chỉ chứa SỰ KIỆN có thể kiểm chứng và CẢNH BÁO PHƯƠNG PHÁP trung lập (áp đối xứng cho cả hai bên), KHÔNG chứa diễn giải và KHÔNG chứa khung được/mất điểm (khung chấm nằm ở `knowledge/judge_notes_gochoa.md`, chỉ nạp cho judge).

## Quy ước hạng nguồn cho chủ đề này (thay bảng của `source_policy.md`, giữ nguyên triết lý)

| Hạng | Gồm |
|---|---|
| **H1** | Văn bản quy phạm gốc (Hiến pháp 2013, Bộ luật Hình sự, Bộ luật Tố tụng hình sự, nghị định, thông tư); thông cáo/thông báo chính thức của cơ quan nhà nước có thẩm quyền |
| **H2** | Nghiên cứu học thuật bình duyệt về phong trào xã hội, luật hiến pháp, xã hội học truyền thông |
| **H3** | Báo chí có quy trình kiểm chứng (trong nước: VnExpress, Tuổi Trẻ, Thanh Niên, Dân Trí…; quốc tế: Reuters, AFP, BBC…) |
| **H4** | **Không dùng làm bằng chứng SỰ KIỆN — chỉ chứng minh "thông điệp đã được phát đi"** |

**Quy tắc H4 đối xứng (bắt buộc, đặc thù chủ đề này).** Cả hai dải truyền thông ở hai đầu quang phổ đều là H4, cùng một lý do và cùng một mức chiết khấu:
- **Đầu này:** truyền thông vận động của tổ chức chính trị đối lập (vd Việt Tân) và blog vận động — là bên có lợi ích trong cách kể chuyện.
- **Đầu kia:** bài "đấu tranh phản bác luận điệu sai trái" trên cổng thông tin ngành, chuyên mục chống "diễn biến hòa bình" — cũng là bên có lợi ích trong cách kể chuyện.
- Báo chí độc lập chuyên đề pháp luật (vd Luật Khoa) và đài quốc tế phát tiếng Việt (RFA, BBC Tiếng Việt, VOA) tính **H3 có điều kiện**: dùng được cho dữ kiện, nhưng khẳng định gây tranh cãi cần **≥2 nguồn H3 độc lập** hoặc 1 nguồn H1–H2.
- **Cấm loại nguồn vì "thuộc phe kia"** nếu nguồn đạt hạng — tiêu chuẩn áp cho nguồn, không áp cho lập trường của nguồn (kế thừa `source_policy.md` quy tắc 4).

**Bất đối xứng nguồn phải khai báo (đặc thù chủ đề này).** Tính đến mốc lập file, báo chí nhà nước **gần như không đưa tin** về vụ việc và về phong trào đặt hoa. Hệ quả: gần như toàn bộ dữ kiện khả dụng đến từ một dải nguồn hẹp có cùng khuynh hướng. Đây là **giới hạn của case file**, không phải bằng chứng cho bất kỳ luận điểm nào của bên nào. Advocate KHÔNG được dùng chính sự im lặng đó làm bằng chứng sự kiện ("báo chí không đăng nghĩa là không có" / "báo chí im lặng chứng minh có chỉ đạo bịt tin") — cả hai suy diễn đều vượt quá dữ kiện.

---

## Lệnh sinh bản rút gọn cho judge (bộ chủ đề này)

```sh
KEEP_EXTRA="5 8 9 10" sh .claude/skills/debate-orchestrator/scripts/make_case_file_input.sh \
  knowledge/case_file_gochoa.md output/_workspace/{phiên}_judge_input.md output/_workspace/{phiên}_case_file_input.md
```

`KEEP_EXTRA` là bắt buộc với bộ này: §5 (dữ kiện cấm dùng làm tiền đề), §8 (cảnh báo phương pháp), §9 (quy tắc sự kiện đang diễn ra), §10 (khai báo bắt buộc) là các mục **judge cần để áp neo** nhưng advocate gần như không bao giờ trích tag — quét tag sẽ lược mất chúng. Đã kiểm chứng: không có `KEEP_EXTRA`, script stub cả §5 lẫn §8.

---

## §0. Việc BẮT BUỘC phải hoàn thiện trước GATE 1

Case file này được soạn trong điều kiện truy cập web hạn chế (một số tên miền bị chặn ở môi trường soạn thảo). Phase 0 phải làm đủ các việc sau bằng WebSearch/WebFetch trước khi trình duyệt:

1. **Xác minh toàn bộ §2 (khung pháp lý).** Mọi số điều trong §2 hiện mang nhãn `[CẦN KIỂM CHỨNG]`. Rubric chiều 2 cho **neo 0** khi bịa điều khoản — nếu để advocate trích số điều chưa xác minh, lỗi thuộc về orchestrator chứ không phải advocate. Đây là hạng mục ưu tiên số 1.
2. ~~**Xác minh §5.1**~~ — **ĐÃ LÀM 16/8/2026**: nâng từ hạng C lên **hạng B (dùng được có điều kiện)**; nhân thân + chức vụ bà Lâm Thị Phương Thanh xác minh được ở mức H1. Còn lại: đọc toàn văn hai bài RFA/Luật Khoa để xác định chúng có **thực sự độc lập** hay cùng lặp một nguồn gốc (egress bị chặn ở phiên soạn thảo). §5.2–§5.5 **vẫn hạng C**, giữ nguyên lệnh cấm.
3. **Bổ sung §6 (tiền lệ trong nước).** Hiện là `[CẦN BỔ SUNG]`. Không có tiền lệ được xác minh thì chiều "Hệ quả & phân bổ rủi ro" sẽ chỉ còn suy đoán thuần túy ở cả hai bên.
4. **Kiểm tra diễn biến mới** tính đến ngày chạy phiên; mọi diễn biến sau mốc đóng băng xử lý theo §9.
5. **Ghi mốc đóng băng** (ngày + giờ UTC) vào §9 và vào header transcript.

---

## §1. Dòng thời gian — vụ tai nạn

- **30/5/2025** — Trên đường Nguyễn Huy Tự (quận Hai Bà Trưng, Hà Nội), một xe ô tô BMW va chạm với xe máy chở hai cha con, sau đó đâm vào một gốc cây trên vỉa hè. Nữ sinh 18 tuổi ngồi trên xe máy **bị đứt lìa chân**. `[Nguồn: RFA tiếng Việt 13/8/2026; Luật Khoa 8/2026 — H3 có điều kiện, ≥2 nguồn]`
- **Khoảng đầu tháng 6/2025** — Nạn nhân **tử vong tại bệnh viện** sau khoảng một tuần điều trị. `[Nguồn: như trên — H3]` `[CẦN KIỂM CHỨNG ngày tử vong chính xác]`
- **Người điều khiển xe được các nguồn nêu tên** là **ông Nguyễn Sỹ Cương**, cựu Đại biểu Quốc hội (được nêu là khóa XIII–XIV, 2011–2021). `[Nguồn: RFA, Luật Khoa, Wikipedia tiếng Việt "Vụ tông xe ở Hà Nội 2025" — H3]` `[CẦN KIỂM CHỨNG: khóa ĐBQH chính xác; và liệu danh tính người lái đã được CƠ QUAN CHỨC NĂNG xác nhận công khai hay mới chỉ do báo chí/mạng xã hội nêu]`
- **Hồ sơ được nêu là đã chuyển sang Cơ quan Cảnh sát điều tra Công an TP Hà Nội thụ lý.** `[Nguồn: tổng hợp báo chí — H3]` `[CẦN KIỂM CHỨNG]`
- **Tính đến mốc lập file (giữa tháng 8/2026)** — **chưa có quyết định khởi tố bị can được công bố, chưa có kết luận điều tra công khai**, tức đã hơn **14 tháng** kể từ ngày xảy ra tai nạn. `[Nguồn: RFA, Luật Khoa 8/2026 — H3]` `[Trạng thái vụ việc — đang diễn tiến]`
- **Chưa ghi nhận phát ngôn công khai nào của ông Nguyễn Sỹ Cương về vụ việc.** `[Nguồn: tổng hợp — H3]`

> **Lưu ý phương pháp (bắt buộc, áp đối xứng).** "Chưa khởi tố" là một **trạng thái tố tụng**, không phải kết luận về việc có hay không có tội, cũng không tự nó chứng minh có can thiệp. Đồng thời, "chưa khởi tố sau 14 tháng" là một **dữ kiện có thật** mà không bên nào được phủ nhận. Advocate KHÔNG được viết như thể ông Cương đã bị kết tội (nguyên tắc **suy đoán vô tội** áp cho mọi cá nhân, kể cả người bị dư luận phản đối), cũng KHÔNG được viết như thể việc chậm trễ đã được giải thích thỏa đáng.

## §2. Khung pháp lý cốt lõi — **TOÀN BỘ MỤC NÀY CHƯA XÁC MINH, PHẢI HOÀN THIỆN TRƯỚC GATE 1**

> ⚠️ Không advocate nào được trích nguyên văn số điều từ mục này chừng nào nhãn `[CẦN KIỂM CHỨNG]` chưa được gỡ. Rubric chiều 2 neo **0** cho việc bịa điều khoản.

**Quyền hiến định liên quan**
- **Hiến pháp 2013, Điều 25** — công dân có quyền tự do ngôn luận, tự do báo chí, tiếp cận thông tin, **hội họp**, lập hội, biểu tình; "việc thực hiện các quyền này do pháp luật quy định". `[CẦN KIỂM CHỨNG nguyên văn + số điều]`
- **Hiến pháp 2013, Điều 14 khoản 2** — quyền con người, quyền công dân **chỉ có thể bị hạn chế theo quy định của luật** trong trường hợp cần thiết vì lý do quốc phòng, an ninh quốc gia, trật tự an toàn xã hội, đạo đức xã hội, sức khỏe cộng đồng. `[CẦN KIỂM CHỨNG nguyên văn + số điều]`
- **Hiến pháp 2013, Điều 16** — mọi người **bình đẳng trước pháp luật**. `[CẦN KIỂM CHỨNG số điều]`
- **Hiến pháp 2013, Điều 30** — quyền khiếu nại, tố cáo với cơ quan nhà nước có thẩm quyền. `[CẦN KIỂM CHỨNG số điều]`
- **Chưa có Luật Biểu tình.** Quyền biểu tình được Hiến pháp ghi nhận nhưng luật cụ thể hóa nhiều lần được đưa vào rồi rút khỏi chương trình xây dựng luật. `[CẦN KIỂM CHỨNG tình trạng tính đến 2026]`
  > *Lưu ý phương pháp:* đây là dữ kiện **cả hai bên đều dùng được theo hai chiều đối lập** (khoảng trống luật = không có cơ sở luật để cấm / = không có cơ sở luật để bảo vệ). Advocate phải nêu rõ mình đang suy ra chiều nào và bằng lập luận gì, không được trình như thể chiều mình chọn là hiển nhiên.

**Chế định hành chính & hình sự có thể được viện dẫn**
- **Quy định về tập trung đông người nơi công cộng** (Nghị định 38/2005/NĐ-CP và văn bản hướng dẫn). `[CẦN KIỂM CHỨNG: số hiệu, còn hiệu lực hay đã được thay thế tính đến 2026]`
- **Nghị định 144/2021/NĐ-CP** — xử phạt vi phạm hành chính trong lĩnh vực an ninh, trật tự, an toàn xã hội. `[CẦN KIỂM CHỨNG số hiệu + điều khoản liên quan]`
- **Bộ luật Hình sự 2015 (sửa đổi, bổ sung 2017), Điều 318** — tội "Gây rối trật tự công cộng". `[CẦN KIỂM CHỨNG số điều]`
- **Bộ luật Hình sự, Điều 260** — tội "Vi phạm quy định về tham gia giao thông đường bộ" (khung tội danh thường áp cho người gây tai nạn chết người). `[CẦN KIỂM CHỨNG số điều]`
- **Bộ luật Tố tụng hình sự 2015 — thời hạn giải quyết tố giác, tin báo về tội phạm và thời hạn điều tra.** Đây là neo pháp lý **trung tâm** của chủ đề: nó cho phép trả lời câu hỏi "14 tháng có vượt thời hạn luật định không" bằng văn bản thay vì bằng cảm tính. `[CẦN KIỂM CHỨNG số điều + các mốc thời hạn + quy định gia hạn/tạm đình chỉ]`
  > *Lưu ý phương pháp:* nếu xác minh cho thấy **có** cơ chế hợp pháp kéo dài thời hạn (tạm đình chỉ chờ giám định…), thì dữ kiện đó thuộc về cả hai bên và không bên nào được lờ đi.

**Quy định về quản lý thông tin trên mạng**
- Quy định về gỡ/hạn chế nội dung theo yêu cầu cơ quan có thẩm quyền (Luật An ninh mạng 2018; nghị định về quản lý dịch vụ Internet và thông tin trên mạng). `[CẦN KIỂM CHỨNG số hiệu văn bản hiện hành 2026]`

## §3. Diễn biến phong trào đặt hoa (tháng 8/2026)

- **Đầu tháng 8/2026** — Vụ việc lan rộng trên **Threads**; xuất hiện lời kêu gọi đặt hoa / chụp ảnh tại gốc cây nơi xảy ra tai nạn, gọi là **"gốc cây công lý"** / **"gốc cây số 55"** (số 55 Nguyễn Huy Tự). `[Nguồn: Luật Khoa, RFA — H3]`
- **Quy mô lan truyền — HAI CON SỐ MÂU THUẪN, phải trình cả hai:** trên **230.000 bài đăng** tính đến 14/8/2026; và **hơn 1.000.000 bài viết** tính đến 14h ngày 12/8/2026. `[Nguồn: Luật Khoa, các bài khác nhau — H3]` `[CẦN KIỂM CHỨNG: hai con số này ngược chiều thời gian (số lớn hơn ở mốc SỚM hơn) → gần như chắc chắn khác phương pháp/phạm vi đếm]`
  > *Lưu ý phương pháp (bắt buộc):* bên nào **chỉ trích một trong hai con số** để phục vụ lập luận của mình mà không nêu con số kia là **cherry-picking** — neo thấp chiều 2. Ngoài ra **bài đăng ≠ người**: không con số nào trong hai con số này đo được số người tham gia.
- **13/8/2026** — Lượng hoa đặt dưới gốc cây tăng đáng kể trong ngày. `[Nguồn: RFA — H3]`
- **Yêu sách được nêu công khai trong phong trào:** khởi tố / điều tra / công bố kết luận điều tra vụ tai nạn. `[Nguồn: RFA, Luật Khoa — H3]` `[CẦN KIỂM CHỨNG: liệu có yêu sách nào KHÁC ngoài yêu sách tố tụng này được nêu phổ biến không — dữ kiện này then chốt cho cả hai bên]`
- **Hình thức tham gia được ghi nhận:** đặt hoa, chụp ảnh check-in tại chỗ, đăng bài trên mạng xã hội. `[Nguồn: RFA, Luật Khoa — H3]`
- **Chưa ghi nhận:** tổ chức đứng tên, ban điều phối, quỹ tài trợ, biểu tượng in ấn phát tay, hay yêu sách chính trị vượt khỏi phạm vi vụ án. `[Trạng thái: KHÔNG CÓ BẰNG CHỨNG CÔNG KHAI — xem lưu ý phương pháp bên dưới]`

> **Lưu ý phương pháp (bắt buộc, áp đối xứng).** "Không có bằng chứng công khai về X" **không** đồng nghĩa với "đã chứng minh không có X", và cũng **không** đồng nghĩa với "có X nhưng chưa lộ". Cả hai bên đều bị cấm hoán đổi hai mệnh đề này. Bên nào khẳng định **có** điều phối/tài trợ phải đưa bằng chứng; bên nào khẳng định **chắc chắn không có** cũng phải nói rõ mình đang suy ra từ sự vắng mặt của bằng chứng.

## §4. Phản ứng của cơ quan chức năng

- **13–14/8/2026** — Hoa tưởng niệm tại gốc cây **bị dọn dẹp**; việc dọn diễn ra **có sự hiện diện/giám sát của lực lượng công an**; có ghi nhận việc **giải tán người đến đặt hoa**. `[Nguồn: Luật Khoa, Thông Luận — H3 có điều kiện]` `[CẦN KIỂM CHỨNG: có nguồn H3 độc lập thứ hai không; có văn bản/phát ngôn chính thức nào giải thích căn cứ pháp lý của việc dọn dẹp không]`
- **Sau khi bị cản trở tại chỗ** — Xuất hiện **"Cây tưởng niệm số 55" bản trực tuyến**, cho phép gửi hoa, thắp nến, viết lời tưởng niệm ảo. `[Nguồn: Luật Khoa — H3]`
- **Rạng sáng 13/8/2026 — nhiều tài khoản Threads báo bài viết của họ về vụ việc "không hiển thị tại Việt Nam"**, kèm thông báo nền tảng có nội dung: *"Bộ Văn hóa, Thể thao và Du lịch Việt Nam đề nghị hạn chế khả năng tiếp cận bài viết của bạn"*. `[Nguồn: Luật Khoa 8/2026, bài "Bộ Văn hóa chặn thông tin tố cáo Nguyễn Sỹ Cương trên Threads"; ảnh chụp màn hình của người dùng — H3]` `[CẦN KIỂM CHỨNG: nguyên văn chính xác của thông báo; số lượng tài khoản bị ảnh hưởng; có nguồn H3 độc lập thứ hai không]`
  > *Lưu ý phương pháp (bắt buộc):* thông báo do **nền tảng** hiển thị cho người dùng là một **hạng bằng chứng khác** với tin đồn — nó không phải lời kể của một bên có lợi ích. Nhưng nó chỉ chứng minh **Meta nói rằng đã nhận đề nghị từ cơ quan được nêu tên**; nó không tự nó chứng minh nội dung, căn cứ pháp lý, hay ai trong cơ quan đó ra quyết định. Advocate KHÔNG được suy trực tiếp từ thông báo này sang kết luận về động cơ hay về cá nhân cụ thể nào (xem §5.1 cảnh báo 2 và 3).
- **Chưa ghi nhận thông cáo chính thức nào** của Công an TP Hà Nội hoặc cơ quan nhà nước khác về vụ tai nạn hoặc về việc dọn hoa, tính đến mốc lập file. `[Trạng thái vụ việc]`
- **Chưa xác minh được** bất kỳ phát ngôn chính thức nào gán cho phong trào này các khung "cách mạng màu", "diễn biến hòa bình", "thế lực thù địch". `[Trạng thái: TÌM CHƯA THẤY — không được trình như "đã có" cũng không được trình như "chắc chắn không có"]`

## §5. Dữ kiện theo HẠNG XÁC MINH — đọc kỹ quy tắc sử dụng của từng hạng

> Mục đặc thù của chủ đề này. **Hai hạng, hai quy tắc khác nhau — nhầm hạng là lỗi chiều 2.**
> - **HẠNG B — dùng được CÓ ĐIỀU KIỆN:** đạt ngưỡng ≥2 nguồn H3 độc lập nhưng **không có nguồn H1/H2**. Được dùng làm tiền đề **chỉ khi** dẫn kèm (a) tên nguồn cụ thể và (b) câu nêu rõ chưa có xác nhận chính thức. Dùng mà bỏ một trong hai điều kiện → neo thấp chiều 2.
> - **HẠNG C — CẤM dùng làm tiền đề:** chưa đạt ngưỡng nguồn. Được phép **nhắc tới sự tồn tại của tin đồn** ("một thông tin chưa kiểm chứng đang lan truyền rằng…") nhưng **không được dùng nội dung của nó để suy ra bất cứ điều gì**. Vi phạm → cờ đỏ fact-check + neo 1 chiều 2.

### §5.1 — Quan hệ hôn nhân giữa ông Nguyễn Sỹ Cương và bà Lâm Thị Phương Thanh — **HẠNG B** (nâng hạng 16/8/2026, từ "chưa xác minh")

**Đã xác minh, H1 — về nhân thân bà Lâm Thị Phương Thanh (độc lập với câu hỏi hôn nhân):**
- Sinh 26/7/1967, quê Ninh Bình; Thạc sĩ Luật, Cử nhân Lịch sử; Ủy viên Trung ương Đảng các khóa XII, XIII, XIV. `[Nguồn: tiểu sử chính thức trên xaydungchinhsach.chinhphu.vn, baochinhphu.vn, daibieunhandan.vn, daihoidang.vn — H1]` `[CẦN KIỂM CHỨNG chi tiết quê quán: nguồn ghi "xã Gia Tân, huyện Gia Viễn" và "xã Gia Phong" — chênh nhau]`
- **8/4/2026** — Quốc hội khóa XVI, Kỳ họp thứ Nhất, phê chuẩn bổ nhiệm bà giữ chức **Bộ trưởng Bộ Văn hóa, Thể thao và Du lịch** nhiệm kỳ 2026–2031, **481/481** đại biểu tán thành. Trước đó là **Thứ trưởng Thường trực** cùng bộ. `[Nguồn: VOV, VietnamPlus, Người Lao Động, Báo Văn Hóa, Tạp chí Tòa án — H1/H3]`
- Các chức vụ trước đó được nêu: **Bí thư Tỉnh ủy Lạng Sơn**, **Phó Chánh Văn phòng Trung ương Đảng**; tháng 8/2025 được bầu làm **Bí thư Đảng ủy Văn phòng Trung ương Đảng** nhiệm kỳ 2025–2030. `[Nguồn: tiểu sử chính thức — H1; RFA 7/8/2025 — H3]`

**Về quan hệ hôn nhân — trạng thái bằng chứng:**
- **KHÔNG có nguồn H1/H2 nào xác nhận.** Không tìm thấy văn bản chính thức, phát ngôn cơ quan nhà nước, hay báo chí nhà nước nào nêu quan hệ này.
- **Đạt ngưỡng ≥2 nguồn H3 độc lập** (`source_policy.md` quy tắc 1): **RFA tiếng Việt, 7/8/2025**, bài "Vợ của đại biểu Nguyễn Sỹ Cương làm bí thư văn phòng trung ương Đảng"; và **Luật Khoa, 8/2026**, bài "Bộ Văn hóa chặn thông tin tố cáo Nguyễn Sỹ Cương trên Threads" — hai tòa soạn khác nhau, khẳng định độc lập về mặt tổ chức.
- **Mốc thời gian đáng chú ý:** khẳng định này xuất hiện từ **tháng 6–8/2025** (Thời Báo 20/6/2025 — H4; RFA 7/8/2025 — H3), tức **trước phong trào đặt hoa khoảng 14 tháng**. Nó **không phải sản phẩm của làn sóng tháng 8/2026**.
- **Không tìm thấy đính chính, phủ nhận, hay phản bác nào** từ bất kỳ phía nào, kể cả từ cơ quan nhà nước hay báo chí nhà nước.
- `[CẦN KIỂM CHỨNG còn lại: (a) RFA và Luật Khoa dựa vào nguồn gốc nào — nếu cả hai cùng lặp lại MỘT nguồn ban đầu thì tính độc lập chỉ là hình thức; hai bài này bị chặn egress ở môi trường soạn thảo nên chưa đọc được toàn văn; (b) Wikipedia tiếng Việt (hai bài "Lâm Thị Phương Thanh" và "Vụ tông xe ở Hà Nội 2025") dẫn nguồn gì cho khẳng định này]`

> **Ba cảnh báo phương pháp bắt buộc, áp đối xứng:**
> 1. **Vắng mặt trong tiểu sử chính thức KHÔNG phải bằng chứng phủ định.** Tiểu sử cán bộ Việt Nam **hệ thống** không ghi thông tin vợ/chồng — dù quan hệ có thật hay không thì tiểu sử đều im lặng như nhau. Bên B **không được** lập luận "tiểu sử chính thức không nhắc đến nên tin này là bịa".
> 2. **Quan hệ hôn nhân KHÔNG tự nó chứng minh can thiệp.** Kể cả khi §5.1 được xác nhận hoàn toàn, nó mới xác lập một **quan hệ**, chưa xác lập bất kỳ hành vi tác động nào vào tiến trình tố tụng. Bước suy từ quan hệ sang can thiệp là một bước riêng, cần bằng chứng riêng, và vẫn thuộc **§5.2 hạng C**. Bên A trượt từ (1) sang (2) mà không có bước trung gian → ngụy biện, neo thấp chiều 4.
> 3. **Xung đột lợi ích là một mệnh đề CẤU TRÚC, khác với mệnh đề về hành vi.** "Bộ có thẩm quyền yêu cầu hạn chế nội dung do vợ người bị tố cáo đứng đầu" là một nhận định về **cấu trúc thẩm quyền** — nếu §5.1 và §4 đều đúng thì nó đúng theo định nghĩa, không cần chứng minh động cơ. Nó **không** đồng nghĩa với "bà Thanh đã đích thân can thiệp". Bên nào gộp hai mệnh đề này làm một → neo thấp chiều 4.

### §5.2–§5.5 — **HẠNG C: CẤM dùng làm tiền đề**

- **§5.2 — Nguyên nhân của việc chưa khởi tố.** Các giả thuyết đang lưu hành (can thiệp, chờ giám định, vướng thủ tục, hồ sơ phức tạp) đều **chưa có nguồn**. Không bên nào được trình bất kỳ giả thuyết nào như nguyên nhân đã xác lập. **Lưu ý:** §5.1 được nâng lên hạng B **không** kéo theo §5.2 — quan hệ hôn nhân là một chuyện, nguyên nhân của việc chưa khởi tố là chuyện khác và vẫn chưa có bằng chứng nào.
- **§5.3 — Thành phần và động cơ của người tham gia.** Không có khảo sát, không có dữ liệu nhân khẩu. Mọi khẳng định kiểu "phần lớn là Gen Z", "phần lớn làm vì muốn được chú ý", "phần lớn hiểu rõ vụ việc" đều **không có nguồn**. Cấm cả hai bên khẳng định về động cơ tập thể của người tham gia.
- **§5.4 — Có hay không sự điều phối, tài trợ, tổ chức đứng sau.** Không có bằng chứng công khai theo cả hai chiều. Xem lưu ý phương pháp §3.
- **§5.5 — Hậu quả pháp lý thực tế đã xảy ra với người đặt hoa** (bị mời làm việc, xử phạt hành chính, khởi tố…). **CHƯA CÓ DỮ LIỆU.** `[CẦN BỔ SUNG — trực tiếp quyết định chất lượng chiều "Hệ quả & phân bổ rủi ro"; nếu vẫn trống tại GATE 1 thì cả hai bên chỉ được lập luận về rủi ro ở dạng khả năng, không dạng thực tế]`

## §6. Tiền lệ trong nước — `[CẦN BỔ SUNG TRƯỚC GATE 1]`

Cần bổ sung 3–5 trường hợp **đã được xác minh** trong đó áp lực dư luận/mạng xã hội đi trước một quyết định tố tụng, kèm **kết cục thực tế** của cả vụ án lẫn của người tạo áp lực. Yêu cầu bắt buộc khi bổ sung:

- Ghi cả trường hợp áp lực **có** hiệu quả lẫn trường hợp **không** hiệu quả hoặc phản tác dụng — chọn lọc một chiều là thiên lệch case file.
- Với mỗi trường hợp, ghi rõ **điểm khác biệt** so với vụ hiện tại (thân thế người bị tố, hình thức tạo áp lực, có/không hiện diện vật lý tại một địa điểm).
- Vụ **gian lận điểm thi Tuyên Quang 2026** (xem `knowledge/case_file_tuyenquang.md`) là một tiền lệ dùng được về *áp lực dư luận trước một quyết định hành chính/tố tụng*, nhưng khác biệt lớn: ở đó không có hiện diện vật lý tại một địa điểm và không có việc giải tán.
- Tiền lệ quốc tế chỉ được dùng kèm phân tích **giống–khác định chế**; loại suy trần trụi ("ở nước X đã thế nên ở đây cũng thế") bị neo thấp ở chiều Logic.

## §7. Hồ sơ nguyên tắc & tranh cãi (đây là DIỄN GIẢI, không phải sự kiện — cả hai bên đều dùng)

- **Nghĩa vụ công dân vs. rủi ro cá nhân.** Ai gánh chi phí của hành động, và người kêu gọi có gánh cùng không? Nguyên tắc "không kêu gọi người khác trả cái giá mình không trả" đặt cạnh nguyên tắc "quyền không được bảo vệ nếu không ai thực hiện nó".
- **Tương xứng (proportionality) của hành vi công dân.** Tưởng niệm là hành vi phi bạo lực ở mức thấp nhất trong thang phản kháng; câu hỏi là hành vi ở mức đó có tương xứng với mục tiêu, và việc duy trì nó khi bị ngăn cản có làm thay đổi bản chất hành vi hay không.
- **Giá trị biên vs. giá trị biểu tượng.** Bó hoa thứ N có giá trị công cụ giảm dần; nhưng việc **dừng** có thể mang giá trị biểu tượng âm (thiết lập rằng ngăn cản có tác dụng). Hai đại lượng này không cùng đơn vị đo — bên nào cũng phải nói rõ mình đang tối ưu đại lượng nào.
- **Rủi ro công cụ hóa bởi bên thứ ba.** Một phong trào không lãnh đạo không kiểm soát được ai khuếch đại mình và theo khung nào. Câu hỏi tranh biện: rủi ro đó có phải lý do đủ để người tham gia dừng, hay là lý do để họ giữ yêu sách hẹp và nói rõ giới hạn của mình.
- **Phân biệt "được khuếch đại" với "được tạo ra".** Một sự kiện được bên thứ ba đưa tin đậm không đồng nghĩa với việc bên thứ ba khởi phát nó. Đánh đồng hai mệnh đề này là lỗi nhân quả — **cấm cả hai bên** dùng theo chiều ngược nhau (A không được suy "khuếch đại nhiều nghĩa là chính đáng", B không được suy "khuếch đại nhiều nghĩa là bị dắt").
- **Hiệu ứng phản tác dụng (backfire) của việc ngăn cản.** Trong nghiên cứu phong trào xã hội, việc trấn áp một hành vi phản kháng ôn hòa đôi khi làm tăng quy mô tham gia. Đây là giả thuyết học thuật, không phải quy luật — bên nào viện dẫn phải dẫn nguồn H2 và nêu điều kiện áp dụng.
- **Thay thế hình thức có phải là rút lui không?** Chuyển sang kênh khác (bản trực tuyến, đơn kiến nghị có danh tính, luật sư của gia đình, báo chí trong nước, chất vấn qua đại biểu Quốc hội) giữ nguyên hay làm loãng áp lực — đây là điểm căng lõi giữa hai bên.
- **Tính chính đáng của yêu sách vs. tính hiệu quả của phương tiện.** Hai câu hỏi tách rời nhau. Một yêu sách chính đáng vẫn có thể được theo đuổi bằng phương tiện kém hiệu quả, và ngược lại. Bên nào trộn hai câu hỏi này bị neo thấp ở chiều Logic.

## §8. Cảnh báo phương pháp chung (áp đối xứng cho cả hai advocate)

1. **Suy đoán vô tội áp cho MỌI cá nhân được nêu tên**, kể cả người đang bị dư luận phản đối. Không viết như thể ông Nguyễn Sỹ Cương đã bị kết tội. Không công kích cá nhân ông, gia đình ông, hay gia đình nạn nhân.
2. **Không quy chụp động cơ tập thể.** Cấm cả "người đặt hoa đều vì công lý" lẫn "người đặt hoa đều làm màu" (§5.3 — không có dữ liệu). Tranh biện về **hành động**, không về **nội tâm người tham gia**.
3. **Không suy diễn về tổ chức đứng sau theo cả hai chiều** (§3, §5.4).
4. **Điều khoản pháp lý phải chính xác.** Dẫn đúng số hiệu văn bản và số điều; không nhớ chính xác → `[CẦN KIỂM CHỨNG]`, không bịa. Bịa điều khoản = neo 0.
5. **Phân biệt "chưa khởi tố" với "không có tội"**, và "quá thời hạn luật định" với "lâu hơn kỳ vọng của công chúng". Hai cặp này khác nhau và §2 sẽ cho câu trả lời khi được xác minh.
6. **Không dùng ngôn ngữ kích động, không kêu gọi hành động cụ thể.** Đây là phân tích học thuật về chất lượng lập luận, không phải lời khuyên hành động gửi tới người thật đang chịu rủi ro thật (xem §10).
7. **Tôn trọng nạn nhân và gia đình.** Không mô tả chi tiết thương tích quá mức cần thiết cho lập luận; không suy đoán về đời tư.
8. **Mọi con số phải dẫn nguồn** (230.000 bài đăng, 14 tháng, ngày tháng…) hoặc `[Case file §x]`.

## §9. Quy tắc SỰ KIỆN ĐANG DIỄN RA (áp riêng cho chủ đề này)

- **Mốc đóng băng dữ kiện:** `[ĐIỀN TẠI GATE 1 — ngày + giờ UTC]`. Toàn bộ phiên tranh biện chấm trên nền dữ kiện tính đến mốc này.
- **Advocate KHÔNG được đưa diễn biến sau mốc đóng băng vào lượt của mình**, kể cả khi tìm thấy bằng WebSearch. Lý do: advocate vòng 5 sẽ có nền dữ kiện khác advocate vòng 1 → phá đối xứng (Nguyên tắc 2 của `CLAUDE.md`). WebSearch của advocate chỉ dùng để **xác minh/định vị nguồn** cho dữ kiện đã có trong case file, không dùng để **cập nhật tin**.
- **Diễn biến mới chỉ vào phiên qua `APPROVE CASE FILE ADDENDUM`**, kèm ghi rõ **từ vòng nào trở đi** advocate được biết. Các vòng chạy TRƯỚC addendum không bị chấm bằng dữ kiện của addendum.
- **Điều kiện DỪNG PHIÊN (không vá bằng addendum):** khi diễn biến mới lật **tiền đề của đề bài** — cụ thể với chủ đề này là (a) cơ quan điều tra **khởi tố** hoặc **công bố kết luận**, hoặc (b) chính quyền **ngừng ngăn cản** việc đặt hoa. Khi đó tiền đề "trong bối cảnh chính quyền đang ngăn cản" và/hoặc yêu sách gốc không còn đúng → đóng phiên theo quy trình trong `protocol/debate_protocol.md`, mở phiên mới với đề bài cập nhật.
- **Nhãn thời gian bắt buộc** trên transcript và scorecard: "dữ kiện tính đến `<mốc>`; kết luận không tự động áp cho thời điểm đọc".

## §10. Khai báo bắt buộc trong mọi báo cáo của chủ đề này

Khác với các chủ đề hồ sơ đóng của harness, chủ đề này nói về **hành động mà người thật có thể thực hiện và một rủi ro pháp lý mà người thật có thể phải gánh**. Mọi transcript và scorecard phải mang khai báo:

> *Đây là phân tích **chất lượng lập luận theo rubric**, không phải phán quyết chân lý và **không phải khuyến nghị hành động cho bất kỳ cá nhân nào**. Điểm số đo bên nào lập luận chặt chẽ hơn, không đo bên nào đúng. Không nội dung nào trong tài liệu này nên được dùng làm cơ sở cho một quyết định cá nhân về việc có tham gia hay không tham gia một hoạt động nào đó.*
