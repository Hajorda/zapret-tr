#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m'

clear
echo -e "${CYAN}=======================================${NC}"
echo -e "${RED} Zapret-TR Kaldırma İşlemi Başlıyor...${NC}"
echo -e "${CYAN}=======================================${NC}"
echo ""

INSTALL_DIR="/opt/zapret-tr"

if [ "$EUID" -ne 0 ]; then
  echo -e "${RED}[HATA] Lütfen kaldırma işlemini root haklarıyla (sudo) çalıştırın.${NC}"
  echo -e "${YELLOW}Örnek: curl -fsSL https://raw.githubusercontent.com/Hajorda/zapret-tr/master/uninstall.sh | sudo bash${NC}"
  exit 1
fi

if [ -d "$INSTALL_DIR" ]; then
    echo -e "${YELLOW}macOS Güvenlik Duvarı (PF) orijinal ayarlarına sıfırlanıyor...${NC}"
    sudo pfctl -F all -f /etc/pf.conf &>/dev/null
    
    # Arkaplan servisi varsa durdur ve sil
    if [ -f "/Library/LaunchDaemons/com.zapret.turkey.plist" ]; then
        echo -e "${YELLOW}Arkaplan servisi durduruluyor ve siliniyor...${NC}"
        sudo launchctl unload -w /Library/LaunchDaemons/com.zapret.turkey.plist 2>/dev/null
        sudo rm -f /Library/LaunchDaemons/com.zapret.turkey.plist
    fi

    echo -e "${YELLOW}Zapret-TR dosyaları siliniyor ($INSTALL_DIR)...${NC}"
    rm -rf "$INSTALL_DIR"
    echo -e "${GREEN}Kaldırma işlemi başarıyla tamamlandı!${NC}"
else
    echo -e "${RED}Zapret-TR sisteminizde bulunamadı.${NC}"
fi
echo -e "${CYAN}=======================================${NC}"
