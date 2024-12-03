# Yêu cầu 
Tải git 

Tải github cli

# Đăng nhập 
## Git 
```bash
git config --global user.name "Your Name"
git config --global user.email "your_email@example.com"
```
## GitHub cli
```bash
gh auth login
```
Nó hỏi authen thì trả lời là `NO` và đăng nhập bằng website
# Cách dùng
B1: Copy file RunGit.bat vào folder cần push 

B2: Chạy file RunGit.bat (nếu chưa có repository trên github thì nó sẽ tự tạo theo tên thư mục)
# Git basic
Mở git bash (chuột phải) trong folder trống muốn tải package github trên mạng về 

	B1:	git clone <URL của repository> 

	B1.5:	git checkout -b ten_nhanh (nếu muốn chuyển sang nhánh khác)

	B2:	git add .

	B3:	git commit -m "Mô tả về các thay đổi"
 # Có câu hỏi thì comment

	B4:	git push origin main (nếu là nhánh khác thì thay "main" bằng tên nhánh khác)

	B5: 	|Nhập TK Quanghusst |MK: ****** (Expires https://github.com/settings/tokens)
	
xem các nhánh có trong git: 	git branch -r
