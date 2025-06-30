# 🧙‍♂️ Wesa - Terminal Araç Menüsü

[![Last Commit](https://img.shields.io/github/last-commit/ahmethsnl/wesa_shell?style=flat)](https://github.com/ahmethsnl/wesa_shell/commits)

## Genel Bakış

**Wesa**, Linux/macOS terminalinde çalışan, tüm sık kullandığım araçları tek bir yerden başlatmayı sağlayan bir **küçük menü** scriptidir.  
Alias olarak `wesa` komutuyla çağrılır ve açıldığında üç seçeneği sunar:  

- `wclean` — Sistem temizleyici  
- `wpom` — Pomodoro zamanlayıcısı  
- `wstart` — Proje oluşturucu (ProjectStarter)  

---

## Özellikler

- ✅ Tek komutla tüm araçlara hızlı erişim  
- 🎨 Basit, renkli menü (terminal renkleri destekleniyorsa)  
- 🔄 Hızlı ve bağımsız, sadece bash gerektirir  
- 📂 `~/.wesa/` klasöründe barındırılır, kolay yönetilir  
- 🛠️ Alias'lar otomatik tanımlanır (installer sayesinde)  
- 🧑‍💻 Günlük terminal iş akışını hızlandırır  

---

## Kurulum

1. Depoyu klonlayın veya `wesa.sh` dosyasını indirin.  
2. `wesa.sh` dosyasını `~/.wesa/` dizinine koyun:  

```bash
mkdir -p ~/.wesa
cp wesa.sh ~/.wesa/
chmod +x ~/.wesa/wesa.sh
```

3. `.bashrc` veya `.zshrc` dosyanıza aşağıdaki alias'ı ekleyin:  

```bash
alias wesa='bash ~/.wesa/wesa.sh'
```

4. Terminalinizi yeniden başlatın veya aşağıdaki komutu çalıştırın:

```bash
source ~/.bashrc  # veya source ~/.zshrc
```

---

## Kullanım

Terminalde `wesa` yazıp enter'a bastığınızda karşınıza şu menü çıkar:

```
👋 Merhaba Wesa, hangi aracı çalıştırmak istersin?
1) WCleaner  🧹  (wclean)
2) WPomodoro ⏱️  (wpom)
3) ProjectStarter 🏗️ (wstart)
0) Çıkış 🚪
Seçimin [1-3]:
```

İstediğiniz aracı seçip enter’a bastığınızda, ilgili komut alias'ı çalışır ve araç başlar.

---

## Notlar ve Tavsiyeler

- Bu script, `wclean`, `wpom` ve `wstart` alias'larının önceden sisteminizde kurulmuş ve tanımlanmış olmasına bağlıdır.  
- İsterseniz menüyü daha şık ve interaktif yapmak için `fzf` veya `dialog` gibi araçlarla geliştirilebilir.  
- Script tamamen bash ile yazılmıştır, başka bağımlılık içermez.  
- İleride yeni araçlar eklemek de çok kolaydır, menüye sadece satır eklemek yeterlidir.  

---

## Lisans

MIT Lisansı — Herkese açık ve ücretsiz. Katkı ve önerileriniz için GitHub üzerinden iletişim kurabilirsiniz.

---

## Son Söz (Kendi Görüşüm)

Bence `wesa` gibi küçük ama etkili bir menü, günlük terminal kullanımında zamandan ve efordan büyük tasarruf sağlar. Sadece üç aracın bile böyle kolay ulaşılması, seni bir terminal ninjasına dönüştürür. Tabii bu benim kişisel görüşüm, senin için ne kadar faydalı olur zamanla anlayacağız. Ama açıkçası ben olsam böyle bir aracı olmazsa olmaz yapardım, denemekten zarar gelmez, değil mi? 😉

---

Başka istek olursa, detaylandırmaya hazırım!
