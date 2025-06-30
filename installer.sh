#!/bin/bash

SCRIPT_NAME="wesa.sh"
REPO_NAME="WesaLauncher"
HOME_DIR="$HOME"
TARGET_DIR="$HOME/.wesa"
TARGET_PATH="$TARGET_DIR/$SCRIPT_NAME"

# 1. Script dosyası var mı kontrol et
if [ ! -f "$SCRIPT_NAME" ]; then
    echo "❌ Hata: $SCRIPT_NAME bu dizinde bulunamadı!"
    exit 1
fi

# 2. Hedef klasöre taşı
mkdir -p "$TARGET_DIR"
mv -f "$SCRIPT_NAME" "$TARGET_PATH"
chmod +x "$TARGET_PATH"
echo "✅ $SCRIPT_NAME → $TARGET_PATH konumuna taşındı."

# 3. Alias komutu
ALIAS_CMD="alias wesa='bash $TARGET_PATH'"

# 4. Shell config dosyaları
BASHRC="$HOME_DIR/.bashrc"
ZSHRC="$HOME_DIR/.zshrc"

# 5. .bashrc güncelle
if [ -f "$BASHRC" ]; then
    grep -v "^alias wesa=" "$BASHRC" 2>/dev/null > "$BASHRC.tmp" && mv "$BASHRC.tmp" "$BASHRC"
    echo "$ALIAS_CMD" >> "$BASHRC"
    echo "✅ Alias 'wesa' .bashrc dosyasına eklendi."
fi

# 6. .zshrc güncelle
if [ -f "$ZSHRC" ]; then
    grep -v "^alias wesa=" "$ZSHRC" 2>/dev/null > "$ZSHRC.tmp" && mv "$ZSHRC.tmp" "$ZSHRC"
    echo "$ALIAS_CMD" >> "$ZSHRC"
    echo "✅ Alias 'wesa' .zshrc dosyasına eklendi."
fi

# 7. Bir üst dizine çık ve repo klasörünü sil
cd .. || exit
if [ -d "$REPO_NAME" ]; then
    rm -rf "$REPO_NAME"
    echo "🧹 $REPO_NAME klasörü silindi."
else
    echo "ℹ️ $REPO_NAME klasörü zaten yoktu veya silinemedi."
fi

# 8. Bilgilendirme
echo -e "\n✅ Kurulum tamamlandı! Terminale şunu yazıp test edebilirsin:\n"
echo -e "   \033[1mwesa\033[0m"
echo -e "\n🔁 Terminali yeniden başlat veya şunu çalıştır:"
echo -e "   \033[1msource ~/.bashrc\033[0m   veya   \033[1msource ~/.zshrc\033[0m\n"
