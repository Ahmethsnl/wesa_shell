#!/bin/bash

echo -e "\n👋 Merhaba Wesa, hangi aracı çalıştırmak istersin?"
echo "1) WCleaner  🧹  (wclean)"
echo "2) WPomodoro ⏱️  (wpom)"
echo "3) ProjectStarter 🏗️ (wstart)"
echo "0) Çıkış 🚪"
read -p "Seçimin [1-3]: " choice

case "$choice" in
    1)
        echo -e "\n🧹 WCleaner çalıştırılıyor...\n"
        eval "$(alias wclean)" && wclean
        ;;
    2)
        echo -e "\n⏱️ WPomodoro çalıştırılıyor...\n"
        eval "$(alias wpom)" && wpom
        ;;
    3)
        echo -e "\n🏗️ ProjectStarter çalıştırılıyor...\n"
        eval "$(alias wstart)" && wstart
        ;;
    0)
        echo "👋 Görüşürüz Wesa!"
        ;;
    *)
        echo "❌ Geçersiz seçim!"
        ;;
esac
