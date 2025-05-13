# 🚀 Auto Create Commit & Push to GitHub

## 🧩 Yêu cầu cài đặt

### ✅ Bắt buộc
- [x] [Git](https://git-scm.com/downloads)
- [x] [GitHub CLI (`gh`)](https://cli.github.com/)

---

## 🔑 Đăng nhập Git và GitHub

### Git
```bash
git config --global user.name "Your Name"
git config --global user.email "your_email@example.com"
````

### GitHub CLI

```bash
gh auth login
```

> ❗ Khi được hỏi `Authenticate Git with your GitHub credentials?`, chọn `No` và làm theo hướng dẫn mở trình duyệt.

---

## 🚚 Cài đặt để dùng lệnh `runGit` từ bất kỳ đâu

### 🪟 Windows

1. **Chạy `autoSetPath.bat`** để thêm thư mục vào `PATH`:

```cmd
.\autoSetPath.bat
```

> ✅ Sau đó bạn có thể gõ `runGit` ở bất kỳ nơi nào trong CMD mới.

---

### 🐧 Linux / WSL / macOS

1. **Chạy `setup.sh`** để thêm thư mục vào `PATH`:

```bash
chmod +x setup.sh
./setup.sh
```

> ✅ Sau đó mở terminal mới và gõ `runGit` từ bất kỳ đâu.

---

## 🚀 Cách sử dụng

### Cách 1: Tự động với `runGit`

> Đảm bảo file `runGit.bat` (Windows) hoặc `runGit.sh` (Linux) nằm trong thư mục chứa project.

```bash
runGit
```

* Script sẽ:

  * Tự tạo repo GitHub trùng tên thư mục hiện tại.
  * Khởi tạo `.gitignore`.
  * Tự động `init`, `add`, `commit`, `push` lên GitHub.

---

### Cách 2: Tự làm thủ công với Git

```bash
git clone <URL-repo>
cd <folder>

git checkout -b <ten-nhanh-moi>   # nếu muốn tạo nhanh mới

git add .
git commit -m "Mô tả thay đổi"
git push origin main              # hoặc tên nhánh khác
```

---

## 🧠 Mẹo và thông tin thêm

* Xem các nhánh trên remote:

  ```bash
  git branch -r
  ```

* Lỗi token/mật khẩu:

  * Tạo token mới: [https://github.com/settings/tokens](https://github.com/settings/tokens)
  * Dùng GitHub CLI để tránh phải nhập mỗi lần.

---

## ❓ Câu hỏi? Góp ý?

Comment trực tiếp tại repository hoặc mở issue!

```

---


