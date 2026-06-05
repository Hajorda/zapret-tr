#!/bin/bash

echo "=========================================================="
echo " Zapret macOS Configurator (GoodbyeDPI-Turkey Alternative)"
echo "=========================================================="
echo ""
echo "Bu script, macOS sistemlerde Türkiye'deki DPI (Derin Paket İnceleme)"
echo "engellemelerini aşmak için 'tpws' aracını yapılandırır."
echo "GoodbyeDPI-Turkey ayarları (Superonline, TurkTelekom vb. için)"
echo "ile uyumlu çalışacak şekilde tasarlanmıştır."
echo ""

if [ "$EUID" -ne 0 ]; then
  echo "LÜTFEN DİKKAT: tpws şeffaf modda çalışabilmek için root yetkilerine ihtiyaç duyar."
  echo "Lütfen script'i 'sudo' ile çalıştırın: sudo ./macos_turkey_config.sh"
  exit 1
fi

echo "Hangi alternatifi kullanmak istersiniz?"
echo "1) Varsayılan GoodbyeDPI-Turkey ayarı (-5 parametresi eşdeğeri)"
echo "2) Alternatif 2 (Disorder/Sıra dışı paket - bazı ISP'lerde daha iyi çalışır)"
echo "3) Alternatif 3 (TLS Pad - Sadece SNI ayrıştırması ve padding)"
echo "4) Çıkış"
read -p "Seçiminiz (1/2/3/4): " choice

case $choice in
    1)
        echo "Başlatılıyor: Varsayılan Ayar (Split at 2 + OOB)..."
        # GoodbyeDPI -5 equivalent: fragment at 2, wrong-seq/chksum replaced with OOB to bypass DPI state
        /opt/zapret/tpws/tpws --user=root --port=988 --bind-addr=127.0.0.1 --split-http-req=method --split-tls=sni --split-pos=2 --oob
        ;;
    2)
        echo "Başlatılıyor: Alternatif 2 (Disorder)..."
        /opt/zapret/tpws/tpws --user=root --port=988 --bind-addr=127.0.0.1 --split-http-req=method --split-tls=sni --split-pos=2 --disorder
        ;;
    3)
        echo "Başlatılıyor: Alternatif 3 (TLS Pad)..."
        /opt/zapret/tpws/tpws --user=root --port=988 --bind-addr=127.0.0.1 --split-tls=sni --tlsrec=sni
        ;;
    4)
        echo "Çıkış yapılıyor."
        exit 0
        ;;
    *)
        echo "Geçersiz seçim!"
        exit 1
        ;;
esac

# Note: pfctl port forwarding rules should be configured beforehand or instructed in the readme.
