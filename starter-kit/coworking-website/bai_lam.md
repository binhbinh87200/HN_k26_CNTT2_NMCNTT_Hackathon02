# BÀI LÀM – HACKATHON 02

- **Mã đề:** 09
- **Họ tên:** Mai Đình Long Bình
- **Lớp:** CNTT2
- **Link repository: [https://github.com/binhbinh87200/HN\_k26\_CNTT2\_NMCNTT\_Hackathon02](https://github.com/binhbinh87200/HN_k26_CNTT2_NMCNTT_Hackathon02)**
- **Hệ điều hành (Windows/macOS):** Windows

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```shell
# Ghi lần lượt các lệnh đã chạy, mỗi lệnh một dòng
B1 : pwd
B2 : gci -force -recurse 
B3 : mv noi_quy_thanh_vien.txt docs
B4 : mkdir backup
B5 : cp data/thue_cho_thang_9.xlsx backup
B6 : rm *.tmp
B7 : cd logs
     ls -recurse
     cd ..
B8 : gci -force -recurse      
```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```text

    Directory: C:\Users\binhb\Downloads\starter-kit\coworking-website


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----        11/11/2026   1:37 PM                backup
d-----        11/11/2026   1:33 PM                data
d-----        11/11/2026   1:36 PM                docs
d-----        11/11/2026   1:32 PM                evidence
d-----        11/11/2026   1:33 PM                logs
d-----        11/11/2026   1:31 PM                web
------         11/3/2026   7:08 AM             72 .env
-a----         11/3/2026   7:08 AM           2409 bai_lam.md


    Directory: C:\Users\binhb\Downloads\starter-kit\coworking-website\backup


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/3/2026   7:08 AM           6162 thue_cho_thang_9.xlsx


    Directory: C:\Users\binhb\Downloads\starter-kit\coworking-website\data


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/3/2026   7:08 AM           6162 thue_cho_thang_9.xlsx


    Directory: C:\Users\binhb\Downloads\starter-kit\coworking-website\docs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/3/2026   7:08 AM            146 noi_quy_thanh_vien.txt


    Directory: C:\Users\binhb\Downloads\starter-kit\coworking-website\logs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/3/2026   7:08 AM            991 member.log


    Directory: C:\Users\binhb\Downloads\starter-kit\coworking-website\web


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----        11/11/2026   1:31 PM                images
------         11/3/2026   7:08 AM            605 app.js
------         11/3/2026   7:08 AM            543 index.html
------         11/3/2026   7:08 AM            460 style.css


    Directory: C:\Users\binhb\Downloads\starter-kit\coworking-website\web\images


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
------         11/3/2026   7:08 AM           3069 logo-coworkhub.png

```

## 4.3. Lọc log truy cập website

### a) Lệnh lọc các dòng status=500

```shell
 gc logs/member.log | sls " status=500" >> logs/loi_500.txt

```

### 2 dòng đầu tiên trong logs/loi_500.txt

```text
2026-09-28 08:10:39 POST /api/dat-cho status=500
2026-09-28 08:12:50 POST /api/dat-cho status=500


```

### b) Lệnh đếm số dòng status=404 và kết quả

```shell
 gc logs/member.log | sls " status=404" | measure-object -line

```

```text
4

```

## 4.4. Chạy script tong_hop (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```shell
 .\tong_hop.ps1

```

### Nội dung file logs/tong_hop.txt

```text
=== BAO CAO SU CO WEBSITE ===

2026-09-28 08:28:45 GET /images/phong-hop-3.jpg status=404
2026-09-28 08:41:40 GET /goi-cu status=404
2026-09-28 08:49:13 GET /images/phong-hop-3.jpg status=404
2026-09-28 08:59:46 GET /images/phong-hop-3.jpg status=404


6


```

## 4.5. README.md và bảo vệ thông tin bí mật

> README.md, .gitignore và .env.example được chấm trực tiếp trên file ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.

- [x] : README.md: Heading 1, mô tả có **in đậm** và *in nghiêng*, bảng, code block, task list, blockquote
- [x] : .gitignore có dòng `.env` (tên file đúng, không có đuôi .txt)
- [x] : .env.example có đủ tên biến, giá trị để trống (tên file đúng, không có đuôi .txt)

## 4.6. Kiểm tra trang web bằng DevTools (F12) và báo cáo lỗi

### Bảng lỗi

| STT | Tab DevTools phát hiện lỗi | Tên file hoặc thông báo lỗi | Cách khắc phục |
| --- | --- | --- | --- |
| 1 |network |(failed)net::ERR_FILE_NOT_FOUND  | vào VS code sửa logo.png thành logocoworkhub.png  |
| 2 | console |app.js:18 Uncaught ReferenceError: hienThiBangThue is not defined  |vào VS code sửa hienthiBangThue thành hienthiGoiThue |

> Ảnh chụp màn hình lưu trong thư mục `evidence/` (network.png, console.png).

### Báo cáo lỗi gửi trưởng nhóm

- **Context:** khi vào file index.html , không hiện logo và nội dung bảng
- **Expected:** bảng hiện thị đầy đủ mã gói, gói thuê và giá tiền
- **Actual:** bảng không hiển thị nội dung mà chỉ hiển thị tiêu đề
- **Log:** Failed to load resource: net::ERR_FILE_NOT_FOUND
app.js:18 , Uncaught ReferenceError: hienThiBangThue is not defined

### Câu tìm kiếm Google

```text
site:stackoverflow.com "Failed to load resource: net::ERR_FILE_NOT_FOUND"

```

## 4.7. Excel

> Phần Excel được chấm trực tiếp trên file `data/thue_cho_thang_9.xlsx`, không cần ghi vào đây.
