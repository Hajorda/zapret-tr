#!/bin/bash

echo "======================================="
echo " Zapret-TR Kaldırma İşlemi Başlıyor..."
echo "======================================="

INSTALL_DIR="/opt/zapret-tr"

if [ "$EUID" -ne 0 ]; then
  echo "Lütfen root haklarıyla (sudo) çalıştırın."
  echo "Örnek: curl -fsSL https://raw.githubusercontent.com/Hajorda/zapret-tr/master/uninstall.sh | sudo bash"
  exit 1
fi

if [ -d "$INSTALL_DIR" ]; then
    echo "Zapret-TR dosyaları siliniyor ($INSTALL_DIR)..."
    rm -rf "$INSTALL_DIR"
    echo "Kaldırma işlemi tamamlandı!"
else
    echo "Zapret-TR sisteminizde bulunamadı."
fi
echo "======================================="
