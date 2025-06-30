#!/bin/bash

# Scriptlerin tam path'leri
wclean='bash /home/ahmsanli/WClean/WesaClean.sh'
wpom='bash /home/ahmsanli/pomodoro.sh'
wstart='bash /home/ahmsanli/.project_start/project_start.sh'

echo -e "\n👋 Merhaba Wesa, hangi aracı çalıştırmak istersin?"
echo "1) WCleaner  🧹"
echo "2) WPomodoro ⏱️"
echo "3) ProjectStarter 🏗️"
echo "0) Çıkış 🚪"
read -p "Seçimin [0-3]: " choice

case "$choice" in
    1)
        echo -e "\n🧹 WCleaner çalıştırılıyor...\n"
        eval "$wclean"
        ;;
    2)
        echo -e "\n⏱️ WPomodoro çalıştırılıyor...\n"
        eval "$wpom"
        ;;
    3)
        echo -e "\n🏗️ ProjectStarter çalıştırılıyor...\n"
        eval "$wstart"
        ;;
    0)
        echo "👋 Görüşürüz Wesa!"
        ;;
    *)
        echo "❌ Geçersiz seçim!"
        ;;
esac
