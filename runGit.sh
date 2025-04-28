
#!/bin/bash

# Lấy tên owner repo từ GitHub CLI
ownerName=$(gh repo view --json owner --jq ".owner.login")
echo "Repository Owner: $ownerName"

# Lấy username GitHub từ gh
username=$(gh api user --jq ".login")
echo "GitHub Username: $username"

# Lấy tên folder hiện tại
folderName=$(basename "$PWD")
echo "Folder Name: $folderName"

echo
echo "  _          _                                                     _                                                 "
echo " | | ___  __| | __ _ _ __   __ _  __ _ _   _  __ _ _ __   __ _  __| | __ _ _ __   __ _  __ _ _   _  __ _ _ __   __ _ "
echo " | |/ _ \/ _\` |/ _\` | '_ \ / _\` |/ _\` | | | |/ _\` | '_ \ / _\` |/ _\` |/ _\` | '_ \ / _\` |/ _\` | | | |/ _\` | '_ \ / _\` |"
echo " | |  __/ (_| | (_| | | | | (_| | (_| | |_| | (_| | | | | (_| | (_| | (_| | | | | (_| | (_| | |_| | (_| | | | | (_| |"
echo " |_|\___|\__,_|\__, |_| |_|\__,_|\__, |\__,_|\__,_|_| |_|\__,_|\__, |\__,_|_| |_|\__,_|\__, |\__,_|\__,_|_| |_|\__,_|"
echo "               |___/              |___/                         |___/                |___/           "
echo

# Yêu cầu nhập commit message
read -p "Please enter a message: " messageString

echo "========================== CREATE REPO ======================================"
echo
gh repo create "$folderName" --public --confirm
echo

echo "========================== CREATE FILE: .gitignore =========================="
echo
if ! grep -q "runGit.sh" .gitignore 2>/dev/null; then
    echo "runGit.sh" >> .gitignore
fi
echo

echo "========================== PULL and PUSH ===================================="
echo
git init
git pull origin main || true  # Bỏ qua lỗi nếu chưa có repo
git add .
git commit -m "$messageString"
git branch -M main
git remote add origin "https://github.com/$username/$folderName.git"
git push -u origin main
echo

echo "================================ END ========================================"
