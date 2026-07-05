# output/ — Thư mục làm việc của phiên đang chạy

Thư mục này để trống giữa các phiên (chỉ giữ `.gitkeep`). Nó là nơi orchestrator ghi sản phẩm của **phiên đang chạy** trước khi bạn quyết định lưu chúng về đúng chủ đề.

- File trung gian từng lượt: `output/_workspace/` (bị `.gitignore`).
- Sản phẩm cuối của một chủ đề (transcript + scorecard) nên nằm ở `topics/<slug>/output/`.

Xem các phiên đã hoàn thành làm ví dụ:
- `topics/russia-ukraine/output/`
- `topics/economic-crime/output/`
