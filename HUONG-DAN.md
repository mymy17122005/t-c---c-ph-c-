# Trình chỉnh sửa Tấc

Sửa web ngay trên trang và đăng lên mạng bằng một nút bấm.

Trong thư mục:
- `co-phuc-shop`: web bán hàng (mở `index.html` là xem được web, không cần trình chỉnh sửa).
- `tac-editor`: trình chỉnh sửa.
- `Mo trinh chinh sua.bat`: bấm đúp để mở trình chỉnh sửa.

## Mở
Bấm đúp **Mo trinh chinh sua.bat**. Trình duyệt tự mở `http://localhost:4300/__editor/`.
Giữ cửa sổ đen mở trong lúc sửa; đóng nó là tắt trình chỉnh sửa.
Máy cần cài Node.js (bản LTS, miễn phí tại https://nodejs.org). Nếu chưa có, cửa sổ đen sẽ báo.
Giữ nguyên hai thư mục `co-phuc-shop` và `tac-editor` cạnh nhau, không đổi tên.

## Sửa
- **Chữ**: bấm vào chữ trên trang rồi gõ. Enter để xong, Esc để bỏ. Ctrl+I in nghiêng.
- **Ảnh**: bấm vào ảnh để thay (từ máy hoặc từ ảnh có sẵn), hoặc kéo ảnh từ máy thả thẳng vào ảnh.
  Ảnh tự nén thành webp 1100px và 520px, lưu trong `co-phuc-shop/assets/photos/tac`.
- **Đi theo đường link** khi đang sửa: giữ Ctrl rồi bấm, hoặc dùng các nút trang ở thanh trên.
- **Tab Trang**: thứ tự, ẩn hiện các khối trang chủ; dải mũ mão; thông tin cửa hàng; tên loại; hình thức bán; bản lưu cũ.
- **Tab Sản phẩm**: thêm, sửa, nhân bản, xoá, sắp xếp sản phẩm; giá; ảnh.
- **Tab Giao diện**: màu, nền vải đỏ, font tiêu đề.
- Hoàn tác Ctrl+Z, làm lại Ctrl+Y, lưu Ctrl+S.

## Lưu
Nội dung nằm trong `co-phuc-shop/assets/content.js`. Mỗi lần Lưu, bản trước được cất trong `tac-editor/history` (giữ 60 bản gần nhất).

## Đăng lên mạng (tab Đăng web)
1. Tạo khoá truy cập Netlify (làm một lần), dán vào ô khoá. Khoá chỉ lưu trong `tac-editor/config.json` trên máy đang dùng; khi gửi thư mục cho người khác, xoá tệp này đi.
2. Tạo trang mới (thành `tên.netlify.app`) hoặc chọn trang đã có.
3. Bấm **Đăng lên mạng**. Trình chỉnh sửa tự lưu, kiểm tra lỗi rồi chỉ tải các tệp đã đổi.
Muốn quay lại bản trước: mục "Các lần đăng gần đây" → **Quay lại bản này**.

Tên miền riêng (vd. tac.vn): mua ở nhà cung cấp tên miền, rồi gắn trong Netlify → Domain management. Netlify tự cấp https.
