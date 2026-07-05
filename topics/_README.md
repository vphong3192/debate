# topics/ — Nội dung theo từng chủ đề tranh biện

Harness (protocol, orchestrator, template advocate/judge/fact-checker, rubric mặc định, source policy) là **chủ đề-trung lập**. Mọi thứ gắn với MỘT chủ đề cụ thể sống trong `topics/<slug>/`.

## Cấu trúc một chủ đề
```
topics/<slug>/
  case_file.md            # BẮT BUỘC — nền sự kiện chung, chỉ dữ kiện kiểm chứng được (không diễn giải)
  position_A.md           # BẮT BUỘC — tham số vị trí A (khung lập luận A)
  position_B.md           # BẮT BUỘC — tham số vị trí B (khung lập luận B, đối xứng A)
  rubric.md               # TÙY CHỌN — nếu bỏ qua, dùng rubrics/scoring_rubric.md mặc định.
                          #   Nếu có, phải giữ NĂM BẤT BIẾN nêu trong rubric mặc định.
  source_policy.md        # TÙY CHỌN — bổ sung ví dụ nguồn đặc thù (giữ 4 hạng)
  advocate_template.md    # TÙY CHỌN — chỉ khi bộ trục khác mặc định cần prompt advocate khớp trục
  output/                 # transcript_*.md + scorecard_*.md của các phiên chủ đề này
```

## Dựng một chủ đề mới
1. Copy `topics/_TEMPLATE/` thành `topics/<slug-của-bạn>/`.
2. Điền `case_file.md` (dùng WebSearch theo source policy; đánh dấu `[CẦN KIỂM CHỨNG]` khi chưa chắc — CẤM bịa).
3. Viết `position_A.md` / `position_B.md` đối xứng (cùng ràng buộc steelman, chỉ khác POSITION).
4. Nếu chủ đề cần trục chấm khác bộ mặc định → tạo `rubric.md` (giữ năm bất biến) và, nếu cần, `advocate_template.md` khớp trục.
5. Chạy qua skill `debate-orchestrator` (`START PHASE 0` / `FULL RUN`), chỉ rõ slug chủ đề. Hai gate người duyệt là bắt buộc.

## Ví dụ đã hoàn thành (tham chiếu)
- `topics/russia-ukraine/` — chiến tranh Nga–Ukraine; rubric trục 1 = **just war theory**; 2 phiên + EXTRA ROUND.
- `topics/economic-crime/` — giảm án cho tội phạm kinh tế/tham nhũng bằng khắc phục hậu quả (VN, so sánh TQ); rubric **6 trục** (thêm "triết lý hình phạt" và "công lý & bình đẳng"); 1 phiên + SWAP TEST.

Xem `README.md` của từng chủ đề để biết bối cảnh và kết quả.
