#!/bin/bash

export PATH="/usr/local/bin:/opt/homebrew/bin:$PATH"

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m'

clear
echo -e "${CYAN}=======================================${NC}"
echo -e "${GREEN} Zapret-TR Kurulumuna Hoş Geldiniz...${NC}"
echo -e "${CYAN}=======================================${NC}"
echo ""

INSTALL_DIR="/opt/zapret-tr"

if [ "$EUID" -ne 0 ]; then
  echo -e "${RED}[HATA] Lütfen kurulumu root haklarıyla (sudo) çalıştırın.${NC}"
  echo -e "${YELLOW}Örnek: curl -fsSL https://raw.githubusercontent.com/Hajorda/zapret-tr/master/install.sh | sudo bash${NC}"
  exit 1
fi

echo -e "${YELLOW}[1/4] Kurulum dizini hazırlanıyor: $INSTALL_DIR${NC}"
rm -rf "$INSTALL_DIR"
mkdir -p "$INSTALL_DIR"

echo -e "${YELLOW}[2/4] GitHub'dan dosyalar indiriliyor...${NC}"
git clone https://github.com/Hajorda/zapret-tr.git "$INSTALL_DIR"

echo -e "${YELLOW}[3/4] macOS için derleniyor...${NC}"
cd "$INSTALL_DIR" || exit 1
make mac

echo ""
echo -e "${GREEN}[4/4] Kurulum tamamlandı!${NC}"
echo -e "${CYAN}=======================================${NC}"
echo -e "Programı başlatmak için terminale şunu yazın:"
echo -e "${GREEN}sudo $INSTALL_DIR/macos_turkey_config.sh${NC}"
echo -e "${CYAN}=======================================${NC}"
