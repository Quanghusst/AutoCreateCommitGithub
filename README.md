# Download Git and GitHub Cli in scoop
# Set up
## Git 
```bash
git config --global user.name "Your Name"
git config --global user.email "your_email@example.com"
```
## GitHub cli
```bash
gh auth login
```
# Usage
Để tự tạo repo theo tên folder và commit trên github thì copy file runGit.bat vào folder đó và chạy file đó.
# Git basic
Mở git bash (chuột phải) trong folder trống muốn tải package github trên mạng về 

	B1:	git clone <URL của repository> 

	B1.5:	git checkout -b ten_nhanh (nếu muốn chuyển sang nhánh khác)

	B2:	git add .

	B3:	git commit -m "Mô tả về các thay đổi"

	B4:	git push origin main (nếu là nhánh khác thì thay "main" bằng tên nhánh khác)

	B5: 	|Nhập TK Quanghusst |MK: ****** (Expires https://github.com/settings/tokens)
	
xem các nhánh có trong git: 	git branch -r