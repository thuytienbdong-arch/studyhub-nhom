# StudyHub — Nền Tảng Học Tập & Kho Tri Thức Nhóm Đa Thiết Bị

Ứng dụng web học tập tối ưu hóa đồng thời cho **Máy tính (PC/Laptop)** và **Điện thoại (iOS/Android - PWA)**, tích hợp:
- **Kho bài giảng Markdown chuẩn học thuật** (hỗ trợ Code block, Bảng biểu, Thẻ chủ đề, Tìm kiếm tức thì).
- **Mở rộng kiến thức tự động**: Tích hợp trực tiếp **Wikipedia API** (tra cứu định nghĩa mở rộng) & **Gemini AI** (tự động tạo bài học + trắc nghiệm từ tài liệu thô, gia sư AI giải thích tại chỗ).
- **Hệ thống trắc nghiệm thông minh**: Chấm điểm tự động, giải thích chi tiết từng đáp án, và chế độ **Ôn tập câu làm sai (Spaced Repetition)**.
- **Học nhóm thời gian thực (Supabase)**: Cả nhóm dùng chung kho bài giảng, đóng góp câu hỏi, bình luận thảo luận, chia sẻ link 1 chạm và đua top bảng xếp hạng.

---

## Bước 1: Chạy thử ngay lập tức
Mở trực tiếp file `index.html` trên trình duyệt (hoặc dùng Live Server trong VS Code). Web đã có sẵn dữ liệu mẫu và lưu tiến độ tự động trên máy.

## Bước 2: Đưa web lên mạng cho cả nhóm cùng dùng (Miễn phí 100%)
1. Tạo tài khoản tại [Netlify](https://www.netlify.com/) hoặc [Vercel](https://vercel.com/).
2. Kéo thả toàn bộ thư mục chứa `index.html`, `manifest.json`, `sw.js` vào Netlify Drop (hoặc đẩy lên GitHub rồi liên kết với Netlify).
3. Bạn sẽ nhận được đường link dạng `https://ten-nhom-ban.netlify.app` để gửi cho bạn bè mở trên điện thoại và máy tính.

## Bước 3: Kết nối Supabase để đồng bộ dữ liệu cả nhóm
1. Tạo dự án miễn phí tại [Supabase.com](https://supabase.com/).
2. Vào mục **SQL Editor** ➔ dán toàn bộ nội dung file `supabase-schema.sql` ➔ bấm **Run**.
3. Vào **Project Settings ➔ API**, copy **Project URL** và **anon public key**.
4. Mở trang web của bạn ➔ vào tab **Cài đặt** ➔ dán 2 thông tin trên và bấm **Lưu & Đồng bộ**. Từ lúc này, bất kỳ ai trong nhóm thêm bài học, câu hỏi hay bình luận đều hiện ngay cho tất cả mọi người!

## Bước 4: Cài đặt như App trên Điện thoại
- **iPhone (Safari):** Mở link web ➔ bấm nút **Chia sẻ (Share)** ➔ chọn **Thêm vào Màn hình chính (Add to Home Screen)**.
- **Android (Chrome):** Mở link web ➔ bấm dấu **3 chấm** ➔ chọn **Cài đặt ứng dụng (Install App)**.
