#!/usr/bin/env bash

# Lấy thư mục chứa script
CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
EXPORT_CMD="export PATH=\"\$PATH:$CURRENT_DIR\""

# Xác định shell config file
if [ -n "$ZSH_VERSION" ]; then
    SHELL_RC="$HOME/.zshrc"
elif [ -n "$BASH_VERSION" ]; then
    SHELL_RC="$HOME/.bashrc"
else
    SHELL_RC="$HOME/.profile"
fi

# Kiểm tra xem đã thêm chưa
if grep -Fxq "$EXPORT_CMD" "$SHELL_RC"; then
    echo "✅ Đường dẫn đã tồn tại trong $SHELL_RC, không cần thêm lại."
else
    echo "" >> "$SHELL_RC"
    echo "# Add AutoCreateCommitGithub to PATH" >> "$SHELL_RC"
    echo "$EXPORT_CMD" >> "$SHELL_RC"
    echo "✅ Đã thêm $CURRENT_DIR vào PATH trong $SHELL_RC"
    echo "👉 Vui lòng mở terminal mới hoặc chạy: source $SHELL_RC"
fi
