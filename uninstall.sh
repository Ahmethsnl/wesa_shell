#!/bin/bash
# uninstall_wesa.sh

INSTALL_DIR="$HOME/.wesa"
SCRIPT_PATH="$INSTALL_DIR/wesa.sh"
ALIAS_NAME="wesa"
BASHRC="$HOME/.bashrc"
ZSHRC="$HOME/.zshrc"

sed -i "/alias $ALIAS_NAME=/d" "$BASHRC"
sed -i "/alias $ALIAS_NAME=/d" "$ZSHRC"

if [ -d "$INSTALL_DIR" ]; then
  rm -rf "$INSTALL_DIR"
  echo "✅ $ALIAS_NAME kaldırıldı ve $INSTALL_DIR silindi."
else
  echo "ℹ️  $INSTALL_DIR zaten yoktu."
fi

echo "🔁 Terminali yeniden başlat veya 'source ~/.bashrc' çalıştır."
