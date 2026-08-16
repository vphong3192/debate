# CASE FILE — Phong trào đặt hoa tại "gốc cây 55" Nguyễn Huy Tự, Hà Nội (nền sự kiện chung)

> Chủ đề tranh biện: **"Trong bối cảnh chính quyền đang ngăn cản, giới trẻ có nên tiếp tục đặt hoa tại gốc cây 55 Nguyễn Huy Tự không?"**
> - **Position A = NÊN tiếp tục đặt hoa.**
> - **Position B = KHÔNG NÊN tiếp tục** — chuyển sang hình thức khác để theo đuổi **cùng một mục tiêu** (khởi tố / công bố kết luận điều tra).
>
> Trạng thái: **ĐÃ DUYỆT GATE 1 — 16/08/2026 13:10 UTC.** Các mục còn nhãn `[CẦN KIỂM CHỨNG]` được duyệt có ý thức: dùng được nếu dẫn kèm nhãn, không được trình như đã xác lập. Xem §0 để biết phần nào đã gỡ nhãn và phần nào chưa.
> Loại chủ đề: **SỰ KIỆN ĐANG DIỄN RA** — áp quy tắc đóng băng dữ kiện trong `protocol/debate_protocol.md`, mục "Chủ đề SỰ KIỆN ĐANG DIỄN RA". **MỐC ĐÓNG BĂNG DỮ KIỆN: 16/08/2026 13:10 UTC.**
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

1. ~~**Xác minh toàn bộ §2**~~ — **ĐÃ LÀM 16/8/2026** (phần lõi). Đã gỡ nhãn: Điều 25 và Điều 14(2) Hiến pháp 2013 (nguyên văn), tình trạng chưa có Luật Biểu tình, Nghị định 38/2005/NĐ-CP + Thông tư 09/2005/TT-BCA, Nghị định 144/2021/NĐ-CP, BLHS Điều 260 và Điều 318, **BLTTHS Điều 147** (thời hạn 20 ngày + gia hạn ≤2 tháng + gia hạn thêm ≤2 tháng). **Còn nhãn:** Điều 16 và Điều 30 Hiến pháp; yếu tố cấu thành Điều 318; điều khoản cụ thể của NĐ 144/2021 về tập trung đông người; ngưỡng "tập trung đông người" của NĐ 38/2005; **số điều về thời hạn điều tra và về tạm đình chỉ giải quyết tố giác**; nghị định quản lý thông tin mạng hiện hành.
2. ~~**Xác minh §5.1**~~ — **ĐÃ LÀM 16/8/2026**: nâng từ hạng C lên **hạng B (dùng được có điều kiện)**; nhân thân + chức vụ bà Lâm Thị Phương Thanh xác minh được ở mức H1. Còn lại: đọc toàn văn hai bài RFA/Luật Khoa để xác định chúng có **thực sự độc lập** hay cùng lặp một nguồn gốc (egress bị chặn ở phiên soạn thảo). §5.2–§5.5 **vẫn hạng C**, giữ nguyên lệnh cấm.
3. ~~**Bổ sung §6 (tiền lệ trong nước)**~~ — **ĐÃ LÀM 16/8/2026, nhưng CÒN THIẾU MỘT CHIỀU.** Có 4 trường hợp (Huấn Hoa Hồng 8/2026; Tuyên Quang 2026; bài quan điểm CAND/VOV; vụ vòi cao áp 8/2026). **Chưa tìm được** trường hợp áp lực dư luận KHÔNG hiệu quả / phản tác dụng, và §5.5 (hậu quả thực tế với người đặt hoa) vẫn trống → §6 hiện thiên lệch một chiều. Xem cảnh báo phạm vi cuối §6.
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

## §2. Khung pháp lý cốt lõi — **ĐÃ XÁC MINH 16/8/2026** (trừ các mục còn gắn nhãn)

> Các mục dưới đây đã được đối chiếu nguồn. Advocate được trích số điều **đã gỡ nhãn**; mục nào còn `[CẦN KIỂM CHỨNG]` thì dẫn kèm nhãn, không được trình như đã xác lập. Bịa điều khoản là vi phạm điều cấm.

**Quyền hiến định — đã xác minh nguyên văn (H1)**
- **Hiến pháp 2013, Điều 25:** *"Công dân có quyền tự do ngôn luận, tự do báo chí, tiếp cận thông tin, hội họp, lập hội, biểu tình. Việc thực hiện các quyền này do pháp luật quy định."* `[Nguồn: Hiến pháp 2013 — H1; đối chiếu Thư viện Pháp luật, Báo Pháp Luật TP.HCM, Tạp chí Tòa án — H3]`
- **Hiến pháp 2013, Điều 14 khoản 2:** *"Quyền con người, quyền công dân chỉ có thể bị hạn chế theo quy định của luật trong trường hợp cần thiết vì lý do quốc phòng, an ninh quốc gia, trật tự, an toàn xã hội, đạo đức xã hội, sức khỏe của cộng đồng."* Đây là lần đầu nguyên tắc hạn chế quyền được hiến định hóa trong Hiến pháp 2013. `[Nguồn: Hiến pháp 2013 — H1; Tạp chí Cộng sản, Bộ Tư pháp, VKSND Tối cao — H1/H3]`
  > *Lưu ý phương pháp (bắt buộc):* hai điều trên tạo thành **cấu trúc hạn chế quyền ba tầng** — (1) quyền được hiến định; (2) chỉ bị hạn chế **bằng LUẬT** (không phải bằng nghị định/thông tư) và chỉ vì các lý do được liệt kê; (3) văn bản cụ thể hóa. Bên nào chỉ nêu tầng 1 hoặc chỉ nêu tầng 3, bỏ tầng 2, là bỏ qua phần then chốt.
- **Hiến pháp 2013, Điều 16** — mọi người bình đẳng trước pháp luật. `[CẦN KIỂM CHỨNG số điều — chưa đối chiếu trực tiếp]`
- **Hiến pháp 2013, Điều 30** — quyền khiếu nại, tố cáo. `[CẦN KIỂM CHỨNG số điều — chưa đối chiếu trực tiếp]`

**Khoảng trống Luật Biểu tình — đã xác minh (H3, nhiều nguồn)**
- **Việt Nam chưa ban hành Luật Biểu tình.** Dự án luật được đưa vào chương trình xây dựng luật khóa XIII theo nghị quyết Quốc hội **26/11/2011**, sau đó **nhiều lần bị lùi** (Chính phủ xin lùi năm 2016). Trong **137 nhiệm vụ lập pháp của nhiệm kỳ Quốc hội khóa XV (2021–2026) KHÔNG có Luật Biểu tình và Luật về Hội**; chương trình xây dựng luật giai đoạn 2023–2026 cũng không có hai luật này. `[Nguồn: Thanh Niên 6/9/2023, Báo Đầu Tư — H3; RFA — H3]` `[CẦN KIỂM CHỨNG: tình trạng trong chương trình lập pháp của Quốc hội khóa XVI (từ 2026) — chưa tra được]`
  > *Lưu ý phương pháp (bắt buộc):* đây là dữ kiện **cả hai bên đều dùng được theo hai chiều đối lập** — khoảng trống luật đọc được thành "không có luật nào cụ thể hóa để cấm" HOẶC "quyền chưa có cơ chế thực thi nên chưa viện dẫn trực tiếp được". Advocate phải nêu rõ mình suy ra chiều nào **và bằng lập luận gì**; không được trình như thể chiều mình chọn là hiển nhiên.

**Chế định hành chính & hình sự**
- **Nghị định 38/2005/NĐ-CP** (18/3/2005) — quy định một số biện pháp bảo đảm trật tự công cộng. **Việc tập trung đông người ở nơi công cộng phải ĐĂNG KÝ TRƯỚC với UBND có thẩm quyền** nơi diễn ra hoạt động và phải thực hiện đúng nội dung đã đăng ký; **không áp dụng** với hoạt động do cơ quan Đảng, Nhà nước, MTTQ và các tổ chức chính trị – xã hội tổ chức. Hướng dẫn thi hành: **Thông tư 09/2005/TT-BCA** (Bộ Công an). **Không tìm thấy thông tin nghị định này bị thay thế hoặc bãi bỏ**; vẫn được cơ quan nhà nước dẫn chiếu. `[Nguồn: Nghị định 38/2005/NĐ-CP, Thông tư 09/2005/TT-BCA — H1; VKSND Tối cao, Công an TP.HCM — H1/H3]` `[CẦN KIỂM CHỨNG: định nghĩa "tập trung đông người" (ngưỡng số người) trong nghị định — chưa tra được nguyên văn]`
- **Nghị định 144/2021/NĐ-CP** (31/12/2021, hiệu lực 1/1/2022) — xử phạt vi phạm hành chính lĩnh vực an ninh, trật tự, an toàn xã hội; phòng chống tệ nạn xã hội; PCCC; cứu nạn cứu hộ; phòng chống bạo lực gia đình. Gồm 4 chương, 82 điều, trong đó 61 điều quy định hành vi vi phạm và mức phạt. `[Nguồn: Nghị định 144/2021/NĐ-CP trên vanban.chinhphu.vn, congbao.chinhphu.vn — H1]` `[CẦN KIỂM CHỨNG: số điều cụ thể áp cho hành vi tập trung đông người gây mất trật tự — chưa tra được]`
- **Bộ luật Hình sự 2015 (sửa đổi 2017), Điều 318** — tội **"Gây rối trật tự công cộng"**. `[Nguồn: BLHS 2015 — H1; đối chiếu nhiều nguồn tư vấn pháp lý — H3]` `[CẦN KIỂM CHỨNG: các yếu tố cấu thành và khung hình phạt cụ thể — chưa tra được nguyên văn]`
- **Bộ luật Hình sự 2015, Điều 260** — tội **"Vi phạm quy định về tham gia giao thông đường bộ"**; khung cơ bản: phạt tiền **30–100 triệu đồng**, cải tạo không giam giữ đến **3 năm**, hoặc tù **1–5 năm** tùy mức độ. Đây là khung tội danh thường áp cho người gây tai nạn chết người. `[Nguồn: BLHS 2015 — H1; Thư viện Pháp luật, LuatVietnam, Tạp chí Luật sư VN — H3]`

**Thời hạn tố tụng — neo pháp lý TRUNG TÂM của chủ đề (đã xác minh)**
- **Bộ luật Tố tụng hình sự 2015, Điều 147 — thời hạn, thủ tục giải quyết tố giác, tin báo về tội phạm, kiến nghị khởi tố:**
  - Thời hạn cơ bản: **không quá 20 ngày** kể từ ngày cơ quan có thẩm quyền nhận tố giác/tin báo.
  - Vụ việc **nhiều tình tiết phức tạp** hoặc phải xác minh ở nhiều địa điểm: có thể **gia hạn nhưng không quá 02 tháng**.
  - Không hoàn thành trong thời hạn đó: Viện trưởng VKS cùng cấp hoặc có thẩm quyền **gia hạn thêm một lần, không quá 02 tháng**.
  - → **Trần thời hạn xác minh theo Điều 147 vào khoảng 20 ngày + 2 tháng + 2 tháng.**
  `[Nguồn: Điều 147 BLTTHS 2015 — H1; Thư viện Pháp luật, Đại biểu Nhân dân, Tạp chí Luật sư VN — H3]`
  > *Lưu ý phương pháp (bắt buộc, áp đối xứng):* con số này **không tự nó chứng minh vi phạm**. Điều 147 quy định thời hạn giải quyết **tố giác/tin báo**; sau khi khởi tố vụ án thì áp thời hạn **điều tra** (điều khoản khác), và luật còn có cơ chế **tạm đình chỉ** giải quyết (vd chờ kết quả giám định) làm dừng đồng hồ. `[CẦN KIỂM CHỨNG: số điều về thời hạn điều tra và về tạm đình chỉ giải quyết tố giác — chưa tra được]` Bên nào dùng "quá 14 tháng" như bằng chứng vi phạm thủ tục **phải** đối diện khả năng tạm đình chỉ hợp pháp; bên nào viện tạm đình chỉ **phải** trung thực rằng đến mốc đóng băng **không có thông báo công khai nào** về việc tạm đình chỉ (§4).

**Quy định về quản lý thông tin trên mạng**
- Cơ chế gỡ/hạn chế nội dung theo yêu cầu cơ quan có thẩm quyền (Luật An ninh mạng 2018 và nghị định về quản lý, cung cấp, sử dụng dịch vụ Internet và thông tin trên mạng). `[CẦN KIỂM CHỨNG: số hiệu nghị định hiện hành 2026 + điều khoản về thẩm quyền yêu cầu hạn chế nội dung của bộ quản lý ngành — chưa tra được; liên quan trực tiếp tới §4]`

## §3. Diễn biến phong trào đặt hoa (tháng 8/2026)

- **Đầu tháng 8/2026** — Vụ việc lan rộng trên **Threads**; xuất hiện lời kêu gọi đặt hoa / chụp ảnh tại gốc cây nơi xảy ra tai nạn, gọi là **"gốc cây công lý"** / **"gốc cây số 55"** (số 55 Nguyễn Huy Tự). `[Nguồn: Luật Khoa, RFA — H3]`
- **Quy mô lan truyền — HAI CON SỐ MÂU THUẪN, phải trình cả hai:** trên **230.000 bài đăng** tính đến 14/8/2026; và **hơn 1.000.000 bài viết** tính đến 14h ngày 12/8/2026. `[Nguồn: Luật Khoa, các bài khác nhau — H3]` `[CẦN KIỂM CHỨNG: hai con số này ngược chiều thời gian (số lớn hơn ở mốc SỚM hơn) → gần như chắc chắn khác phương pháp/phạm vi đếm]`
  > *Lưu ý phương pháp (bắt buộc):* bên nào **chỉ trích một trong hai con số** để phục vụ lập luận của mình mà không nêu con số kia là **cherry-picking**, không được phép. Ngoài ra **bài đăng ≠ người**: không con số nào trong hai con số này đo được số người tham gia.
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

> Mục đặc thù của chủ đề này. **Hai hạng, hai quy tắc khác nhau — nhầm hạng là vi phạm quy tắc dẫn nguồn.**
> - **HẠNG B — dùng được CÓ ĐIỀU KIỆN:** đạt ngưỡng ≥2 nguồn H3 độc lập nhưng **không có nguồn H1/H2**. Được dùng làm tiền đề **chỉ khi** dẫn kèm (a) tên nguồn cụ thể và (b) câu nêu rõ chưa có xác nhận chính thức. Bỏ một trong hai điều kiện là dùng sai hạng.
> - **HẠNG C — CẤM dùng làm tiền đề:** chưa đạt ngưỡng nguồn. Được phép **nhắc tới sự tồn tại của tin đồn** ("một thông tin chưa kiểm chứng đang lan truyền rằng…") nhưng **không được dùng nội dung của nó để suy ra bất cứ điều gì**. Vi phạm → cờ đỏ fact-check.

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
> 2. **Quan hệ hôn nhân KHÔNG tự nó chứng minh can thiệp.** Kể cả khi §5.1 được xác nhận hoàn toàn, nó mới xác lập một **quan hệ**, chưa xác lập bất kỳ hành vi tác động nào vào tiến trình tố tụng. Bước suy từ quan hệ sang can thiệp là một bước riêng, cần bằng chứng riêng, và vẫn thuộc **§5.2 hạng C**. Trượt từ (1) sang (2) mà không có bước trung gian là ngụy biện.
> 3. **Xung đột lợi ích là một mệnh đề CẤU TRÚC, khác với mệnh đề về hành vi.** "Bộ có thẩm quyền yêu cầu hạn chế nội dung do vợ người bị tố cáo đứng đầu" là một nhận định về **cấu trúc thẩm quyền** — nếu §5.1 và §4 đều đúng thì nó đúng theo định nghĩa, không cần chứng minh động cơ. Nó **không** đồng nghĩa với "bà Thanh đã đích thân can thiệp". Không được gộp hai mệnh đề này làm một.

### §5.2–§5.5 — **HẠNG C: CẤM dùng làm tiền đề**

- **§5.2 — Nguyên nhân của việc chưa khởi tố.** Các giả thuyết đang lưu hành (can thiệp, chờ giám định, vướng thủ tục, hồ sơ phức tạp) đều **chưa có nguồn**. Không bên nào được trình bất kỳ giả thuyết nào như nguyên nhân đã xác lập. **Lưu ý:** §5.1 được nâng lên hạng B **không** kéo theo §5.2 — quan hệ hôn nhân là một chuyện, nguyên nhân của việc chưa khởi tố là chuyện khác và vẫn chưa có bằng chứng nào.
- **§5.3 — Thành phần và động cơ của người tham gia.** Không có khảo sát, không có dữ liệu nhân khẩu. Mọi khẳng định kiểu "phần lớn là Gen Z", "phần lớn làm vì muốn được chú ý", "phần lớn hiểu rõ vụ việc" đều **không có nguồn**. Cấm cả hai bên khẳng định về động cơ tập thể của người tham gia.
- **§5.4 — Có hay không sự điều phối, tài trợ, tổ chức đứng sau.** Không có bằng chứng công khai theo cả hai chiều. Xem lưu ý phương pháp §3.
- **§5.5 — Hậu quả pháp lý thực tế đã xảy ra với người đặt hoa** (bị mời làm việc, xử phạt hành chính, khởi tố…). **CHƯA CÓ DỮ LIỆU.** `[CẦN BỔ SUNG — trực tiếp quyết định chất lượng chiều "Hệ quả & phân bổ rủi ro"; nếu vẫn trống tại GATE 1 thì cả hai bên chỉ được lập luận về rủi ro ở dạng khả năng, không dạng thực tế]`

## §6. Tiền lệ trong nước — bổ sung 16/8/2026 (còn mỏng, xem cảnh báo cuối mục)

**§6.1 — Vụ Huấn "Hoa Hồng" (Bùi Xuân Huấn), 8/2026 — tố tụng chạy NHANH trong một vụ nổi tiếng trên mạng.** Khám xét khẩn cấp **6/8/2026**; **10/8/2026** Cơ quan CSĐT Bộ Công an khởi tố Bùi Xuân Huấn và 4 người khác; **14/8/2026** ra quyết định bổ sung khởi tố tội "Lừa đảo chiếm đoạt tài sản". `[Nguồn: Tuổi Trẻ, 24h, Kiến Thức — H3]`
> *Điểm giống–khác bắt buộc phải nêu khi viện dẫn:* giống — cùng là vụ có độ chú ý rất cao trên mạng xã hội, cùng khung thời gian tháng 8/2026, nên loại trừ được giả thuyết "hệ thống tố tụng đang quá tải nên vụ nào cũng chậm". Khác — khác **loại tội** (lừa đảo/chiếm đoạt tài sản vs tai nạn giao thông), khác **cơ quan thụ lý** (Bộ Công an vs Công an TP Hà Nội), và khác **thân thế bị can**. Dùng vụ này làm tiền lệ mà không nêu ba điểm khác này là loại suy trần trụi.

**§6.2 — Vụ gian lận điểm thi Tuyên Quang 2026** (chi tiết ở `knowledge/case_file_tuyenquang.md`): áp lực dư luận sau khi công bố điểm → tạm giữ hình sự trong vòng vài ngày, sau đó khởi tố/xử lý tổng cộng 19 người trong cùng tháng. `[Nguồn: Báo Chính phủ, Vietnamnet, Vietnam News — H1/H3]`
> *Khác biệt lớn:* ở đó áp lực **thuần túy trên mạng và qua báo chí nhà nước**, không có hiện diện vật lý tại một địa điểm, không có việc giải tán. Vụ này vì thế **không** là tiền lệ cho câu hỏi "có nên duy trì hiện diện vật lý khi bị ngăn cản" — nó chỉ là tiền lệ cho "áp lực dư luận có đi trước quyết định tố tụng hay không".

**§6.3 — Quan điểm chính thống về "tòa án mạng" (nguồn nhà nước, dùng được cho CẢ HAI bên).** Bài "Khi mạng xã hội thành nơi 'phán xử'" đăng trên **Công an Nhân dân** và **VOV** nêu:
- *Dư luận có quyền chất vấn nhưng không có quyền phán xử*; mạng xã hội có thể là điểm khởi đầu để tìm công lý nhưng **không thay thế được cơ quan điều tra, viện kiểm sát và tòa án*.
- Phê phán việc "tự trao cho mình quyền điều tra, buộc tội, kết án" dựa trên video ngắn, ảnh thiếu bối cảnh, bài đăng chưa kiểm chứng.
- **Đồng thời:** để hạn chế "tòa án mạng", **cơ quan nhà nước phải kịp thời cung cấp thông tin, giải thích và xử lý vụ việc nghiêm túc, khách quan** — vì **khoảng trống thông tin là mảnh đất màu mỡ cho tin đồn, suy diễn và thuyết âm mưu**.
`[Nguồn: Công an Nhân dân (cand.vn), VOV — H1/H3]`
> *Vì sao mục này trung lập:* vế đầu là lập luận sẵn cho phía B (giới hạn của áp lực dư luận, nguy cơ kết án thay tòa án); vế cuối là lập luận sẵn cho phía A (khoảng trống thông tin là nguyên nhân, và trách nhiệm lấp nó thuộc cơ quan nhà nước) — **do chính báo ngành công an phát biểu**. Trích một vế mà giấu vế kia là cherry-picking.

**§6.4 — Các vụ khác được ghi nhận** (áp lực mạng xã hội đi trước quyết định tố tụng): vụ dùng vòi cao áp xịt nước vào thợ tháo dỡ nhà (video lan truyền Facebook/TikTok → khởi tố, Tuổi Trẻ 5/8/2026). `[Nguồn: Tuổi Trẻ — H3]` `[CẦN BỔ SUNG: chi tiết vụ việc]`

> **⚠️ CẢNH BÁO PHẠM VI (bắt buộc đọc trước khi dùng §6).** Mục này **thiếu chiều đối chứng quan trọng nhất**: chưa tìm được trường hợp nào đã xác minh trong đó áp lực dư luận **không** hiệu quả, hoặc **phản tác dụng**, hoặc trong đó **người tạo áp lực phải chịu hậu quả**. Các tiền lệ hiện có đều nghiêng về phía "áp lực đi trước tố tụng", tức **thiên lệch một chiều có lợi cho phía A**. Hai hệ quả bắt buộc:
> 1. §6 **không phải một tập tiền lệ cân bằng** và không được đọc như vậy.
> 2. **Không bên nào** được trình §6 như bằng chứng thống kê ("các vụ trước đều cho thấy…") — bốn trường hợp được chọn lọc không phải mẫu đại diện. Dùng như **ví dụ minh họa cơ chế** thì được; dùng như **cơ sở suy luận tần suất** thì không.
>
> `[CẦN BỔ SUNG sau GATE 1 nếu người dùng muốn: 2–3 trường hợp áp lực dư luận không dẫn tới kết quả, và dữ liệu về hậu quả với người tham gia — mục này liên thông trực tiếp với §5.5.]`

**Tiền lệ quốc tế:** chỉ được dùng kèm phân tích **giống–khác định chế** (hệ thống pháp luật, có/không luật biểu tình, vai trò tòa án, cơ chế truyền thông). Loại suy trần trụi ("ở nước X đã thế nên ở đây cũng thế") không được chấp nhận.

## §7. Hồ sơ nguyên tắc & tranh cãi (đây là DIỄN GIẢI, không phải sự kiện — cả hai bên đều dùng)

- **Nghĩa vụ công dân vs. rủi ro cá nhân.** Ai gánh chi phí của hành động, và người kêu gọi có gánh cùng không? Nguyên tắc "không kêu gọi người khác trả cái giá mình không trả" đặt cạnh nguyên tắc "quyền không được bảo vệ nếu không ai thực hiện nó".
- **Tương xứng (proportionality) của hành vi công dân.** Tưởng niệm là hành vi phi bạo lực ở mức thấp nhất trong thang phản kháng; câu hỏi là hành vi ở mức đó có tương xứng với mục tiêu, và việc duy trì nó khi bị ngăn cản có làm thay đổi bản chất hành vi hay không.
- **Giá trị biên vs. giá trị biểu tượng.** Bó hoa thứ N có giá trị công cụ giảm dần; nhưng việc **dừng** có thể mang giá trị biểu tượng âm (thiết lập rằng ngăn cản có tác dụng). Hai đại lượng này không cùng đơn vị đo — bên nào cũng phải nói rõ mình đang tối ưu đại lượng nào.
- **Rủi ro công cụ hóa bởi bên thứ ba.** Một phong trào không lãnh đạo không kiểm soát được ai khuếch đại mình và theo khung nào. Câu hỏi tranh biện: rủi ro đó có phải lý do đủ để người tham gia dừng, hay là lý do để họ giữ yêu sách hẹp và nói rõ giới hạn của mình.
- **Phân biệt "được khuếch đại" với "được tạo ra".** Một sự kiện được bên thứ ba đưa tin đậm không đồng nghĩa với việc bên thứ ba khởi phát nó. Đánh đồng hai mệnh đề này là lỗi nhân quả — **cấm cả hai bên** dùng theo chiều ngược nhau (A không được suy "khuếch đại nhiều nghĩa là chính đáng", B không được suy "khuếch đại nhiều nghĩa là bị dắt").
- **Hiệu ứng phản tác dụng (backfire) của việc ngăn cản.** Trong nghiên cứu phong trào xã hội, việc trấn áp một hành vi phản kháng ôn hòa đôi khi làm tăng quy mô tham gia. Đây là giả thuyết học thuật, không phải quy luật — bên nào viện dẫn phải dẫn nguồn H2 và nêu điều kiện áp dụng.
- **Thay thế hình thức có phải là rút lui không?** Chuyển sang kênh khác (bản trực tuyến, đơn kiến nghị có danh tính, luật sư của gia đình, báo chí trong nước, chất vấn qua đại biểu Quốc hội) giữ nguyên hay làm loãng áp lực — đây là điểm căng lõi giữa hai bên.
- **Tính chính đáng của yêu sách vs. tính hiệu quả của phương tiện.** Hai câu hỏi tách rời nhau. Một yêu sách chính đáng vẫn có thể được theo đuổi bằng phương tiện kém hiệu quả, và ngược lại. Không được trộn hai câu hỏi này.

## §8. Cảnh báo phương pháp chung (áp đối xứng cho cả hai advocate)

1. **Suy đoán vô tội áp cho MỌI cá nhân được nêu tên**, kể cả người đang bị dư luận phản đối. Không viết như thể ông Nguyễn Sỹ Cương đã bị kết tội. Không công kích cá nhân ông, gia đình ông, hay gia đình nạn nhân.
2. **Không quy chụp động cơ tập thể.** Cấm cả "người đặt hoa đều vì công lý" lẫn "người đặt hoa đều làm màu" (§5.3 — không có dữ liệu). Tranh biện về **hành động**, không về **nội tâm người tham gia**.
3. **Không suy diễn về tổ chức đứng sau theo cả hai chiều** (§3, §5.4).
4. **Điều khoản pháp lý phải chính xác.** Dẫn đúng số hiệu văn bản và số điều; không nhớ chính xác → `[CẦN KIỂM CHỨNG]`, không bịa.
5. **Phân biệt "chưa khởi tố" với "không có tội"**, và "quá thời hạn luật định" với "lâu hơn kỳ vọng của công chúng". Hai cặp này khác nhau và §2 sẽ cho câu trả lời khi được xác minh.
6. **Không dùng ngôn ngữ kích động, không kêu gọi hành động cụ thể.** Đây là phân tích học thuật về chất lượng lập luận, không phải lời khuyên hành động gửi tới người thật đang chịu rủi ro thật (xem §10).
7. **Tôn trọng nạn nhân và gia đình.** Không mô tả chi tiết thương tích quá mức cần thiết cho lập luận; không suy đoán về đời tư.
8. **Mọi con số phải dẫn nguồn** (230.000 bài đăng, 14 tháng, ngày tháng…) hoặc `[Case file §x]`.

## §9. Quy tắc SỰ KIỆN ĐANG DIỄN RA (áp riêng cho chủ đề này)

- **Mốc đóng băng dữ kiện: 16/08/2026 13:10 UTC** (thời điểm duyệt GATE 1). Toàn bộ phiên tranh biện chấm trên nền dữ kiện tính đến mốc này.
- **Advocate KHÔNG được đưa diễn biến sau mốc đóng băng vào lượt của mình**, kể cả khi tìm thấy bằng WebSearch. Lý do: advocate vòng 5 sẽ có nền dữ kiện khác advocate vòng 1 → phá đối xứng (Nguyên tắc 2 của `CLAUDE.md`). WebSearch của advocate chỉ dùng để **xác minh/định vị nguồn** cho dữ kiện đã có trong case file, không dùng để **cập nhật tin**.
- **Diễn biến mới chỉ vào phiên qua `APPROVE CASE FILE ADDENDUM`**, kèm ghi rõ **từ vòng nào trở đi** advocate được biết. Các vòng chạy TRƯỚC addendum không bị chấm bằng dữ kiện của addendum.
- **Điều kiện DỪNG PHIÊN (không vá bằng addendum):** khi diễn biến mới lật **tiền đề của đề bài** — cụ thể với chủ đề này là (a) cơ quan điều tra **khởi tố** hoặc **công bố kết luận**, hoặc (b) chính quyền **ngừng ngăn cản** việc đặt hoa. Khi đó tiền đề "trong bối cảnh chính quyền đang ngăn cản" và/hoặc yêu sách gốc không còn đúng → đóng phiên theo quy trình trong `protocol/debate_protocol.md`, mở phiên mới với đề bài cập nhật.
- **Nhãn thời gian bắt buộc** trên transcript và scorecard: "dữ kiện tính đến `<mốc>`; kết luận không tự động áp cho thời điểm đọc".

## §10. Khai báo bắt buộc trong mọi báo cáo của chủ đề này

Khác với các chủ đề hồ sơ đóng của harness, chủ đề này nói về **hành động mà người thật có thể thực hiện và một rủi ro pháp lý mà người thật có thể phải gánh**. Mọi transcript và scorecard phải mang khai báo:

> *Đây là phân tích **chất lượng lập luận theo rubric**, không phải phán quyết chân lý và **không phải khuyến nghị hành động cho bất kỳ cá nhân nào**. Điểm số đo bên nào lập luận chặt chẽ hơn, không đo bên nào đúng. Không nội dung nào trong tài liệu này nên được dùng làm cơ sở cho một quyết định cá nhân về việc có tham gia hay không tham gia một hoạt động nào đó.*
