Đây là một ứng dụng Java Spring Boot  được xây dựng với phiên bản MVP và triển khai cơ sở dữ liệu bằng MYSQL.
Cấu trúc mã gồm các pagekage: 
	Controller: Chứa các controller để xử lý những request mà view đưa lên
	Entity: Chứa những entity
	Repository: Chứa các class JpaRepository để thao tác với db
	Service: Xử lý ở giữa controller với db
Ngoài ra folder static chứa các resource của web như css, js, img,...
Folder templates để chứa các file html
Các bước để chạy ứng dụng:
	- Chuẩn bị và cài đặt IDEA và mysql trên máy tính
	- Mở project lên
	- Khởi chạy mysql
	- Import midterm.sql vào mysql
	- Config tham số trong file application.properties phù hợp với mysql ở máy hiện tại
	- Chạy ứng dụng bằng cách ấn nút Run hoặc chạy nó từ dòng lệnh  "mvn spring-boot:run"
	- Truy cập vào trình duyệt bằng đường dẫn "http://localhost:8080/" 

	