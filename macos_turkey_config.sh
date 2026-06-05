#!/bin/bash

# Homebrew yollarını ekle (sudo ile çalıştırıldığında path kaybolabiliyor)
export PATH="/usr/local/bin:/opt/homebrew/bin:$PATH"

# Renk tanımlamaları
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
MAGENTA='\033[0;35m'
NC='\033[0m' # No Color

# Ekranı temizle
clear

# Başlık (figlet, lolcat, boxes yüklüyse gösterişli, değilse renkli düz metin)
if command -v figlet &> /dev/null && command -v lolcat &> /dev/null && command -v boxes &> /dev/null; then
    figlet "ZAPRET - TR" | boxes -d nuke | lolcat -f
elif command -v figlet &> /dev/null && command -v lolcat &> /dev/null; then
    figlet "ZAPRET - TR" | lolcat -f
else
    echo -e "${MAGENTA}==========================================================${NC}"
    echo -e "${CYAN}   Zapret macOS Configurator (GoodbyeDPI-Turkey Alternative)${NC}"
    echo -e "${MAGENTA}==========================================================${NC}"
fi

echo ""
echo -e "${YELLOW}Bu script, macOS sistemlerde Türkiye'deki DPI (Derin Paket İnceleme)"
echo "engellemelerini aşmak için 'tpws' aracını yapılandırır."
echo "GoodbyeDPI-Turkey ayarları (Superonline, TurkTelekom vb. için)"
echo -e "ile uyumlu çalışacak şekilde tasarlanmıştır.${NC}"
echo ""

# Bulunulan dizini dinamik olarak al
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TPWS_EXEC="$DIR/tpws/tpws"

# Hata Kontrolleri: Root izni
if [ "$EUID" -ne 0 ]; then
  echo -e "${RED}[HATA] tpws şeffaf modda çalışabilmek için root yetkilerine ihtiyaç duyar.${NC}"
  echo -e "${YELLOW}Lütfen script'i 'sudo' ile çalıştırın: sudo $DIR/macos_turkey_config.sh${NC}"
  exit 1
fi

# Hata Kontrolleri: Dosya varlığı
if [ ! -f "$TPWS_EXEC" ]; then
  echo -e "${RED}[HATA] 'tpws' çalıştırılabilir dosyası bulunamadı!${NC}"
  echo -e "${YELLOW}Lütfen kurulumun (make mac) doğru yapıldığından emin olun.${NC}"
  echo -e "Aranan dizin: $TPWS_EXEC"
  exit 1
fi

echo -e "${CYAN}Hangi alternatifi kullanmak istersiniz?${NC}"
echo -e "${GREEN}1)${NC} Varsayılan GoodbyeDPI-Turkey ayarı (-5 parametresi eşdeğeri)"
echo -e "${GREEN}2)${NC} Alternatif 2 (Disorder/Sıra dışı paket - bazı ISP'lerde daha iyi çalışır)"
echo -e "${GREEN}3)${NC} Alternatif 3 (TLS Pad - Sadece SNI ayrıştırması ve padding)"
echo -e "${RED}4)${NC} Çıkış"
echo ""

# Seçim istemini renklendir
read -p "$(echo -e ${CYAN}"Seçiminiz (1/2/3/4): "${NC})" choice

case $choice in
    1)
        echo -e "${GREEN}[+] Başlatılıyor: Varsayılan Ayar (Split at 2 + OOB)...${NC}"
        "$TPWS_EXEC" --user=root --port=988 --bind-addr=127.0.0.1 --split-http-req=method --split-tls=sni --split-pos=2 --oob
        ;;
    2)
        echo -e "${GREEN}[+] Başlatılıyor: Alternatif 2 (Disorder)...${NC}"
        "$TPWS_EXEC" --user=root --port=988 --bind-addr=127.0.0.1 --split-http-req=method --split-tls=sni --split-pos=2 --disorder
        ;;
    3)
        echo -e "${GREEN}[+] Başlatılıyor: Alternatif 3 (TLS Pad)...${NC}"
        "$TPWS_EXEC" --user=root --port=988 --bind-addr=127.0.0.1 --split-tls=sni --tlsrec=sni
        ;;
    4)
        echo -e "${YELLOW}Çıkış yapılıyor. İyi günler!${NC}"
        exit 0
        ;;
    *)
        echo -e "${RED}[HATA] Geçersiz seçim! Lütfen menüden 1, 2, 3 veya 4 seçin.${NC}"
        exit 1
        ;;
esac
