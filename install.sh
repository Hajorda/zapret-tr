#!/bin/bash

echo "======================================="
echo " Zapret-TR Kurulumuna Hoş Geldiniz..."
echo "======================================="

INSTALL_DIR="/opt/zapret-tr"

if [ "$EUID" -ne 0 ]; then
  echo "Lütfen kurulumu root haklarıyla (sudo) çalıştırın."
  echo "Örnek: curl -fsSL https://raw.githubusercontent.com/Hajorda/zapret-tr/master/install.sh | sudo bash"
  exit 1
fi

echo "[1/4] Kurulum dizini hazırlanıyor: $INSTALL_DIR"
rm -rf "$INSTALL_DIR"
mkdir -p "$INSTALL_DIR"

echo "[2/4] GitHub'dan dosyalar indiriliyor..."
git clone https://github.com/Hajorda/zapret-tr.git "$INSTALL_DIR"

echo "[3/4] macOS için derleniyor..."
cd "$INSTALL_DIR" || exit 1
make mac

echo "[4/4] Kurulum tamamlandı!"
echo ""
echo "Programı çalıştırmak için terminalinize şunu yazabilirsiniz:"
echo "sudo $INSTALL_DIR/macos_turkey_config.sh"
echo "======================================="
