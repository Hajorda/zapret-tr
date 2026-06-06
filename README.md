# zapret-tr - macOS İçin GoodbyeDPI Alternatifi

Bu kılavuz, Türkiye'deki (Superonline, TurkTelekom, Kablonet vb.) DPI (Derin Paket İnceleme) engellemelerini aşmak için tasarlanmış olan **GoodbyeDPI-Turkey** projesinin **macOS** üzerindeki alternatifidir. 

Windows kullananlar [GoodbyeDPI-Turkey](https://github.com/cagritaskn/GoodbyeDPI-Turkey) deposunu kullanabilirler. Ancak macOS sistemlerde GoodbyeDPI çalışmadığı için, bu repodaki (zapret) `tpws` aracını kullanarak aynı DPI aşma işlemlerini tek tıkla gerçekleştirebilirsiniz.

> [!IMPORTANT]
> **ÖNEMLİ: Güvenli DNS Zorunluluğu (DNS Zehirlenmesi)**
> Türkiye'deki birçok internet sağlayıcısı Discord gibi siteleri engellerken DNS Zehirlenmesi (DNS Hijacking) yapar. Eğer yasaklı sitelere girerken "Bağlantınız Gizli Değil" (ERR_CERT_AUTHORITY_INVALID) hatası alıyorsanız bunun sebebi budur.
> **Çözüm:** Tarayıcınızın veya sisteminizin ayarlarından mutlaka **Güvenli DNS (DNS-over-HTTPS)** özelliğini açın ve Cloudflare (1.1.1.1) veya Google (8.8.8.8) seçin. Zapret sadece DPI engellerini aşar, DNS engellerini aşmak için Güvenli DNS şarttır.

## Kurulum ve Kullanım (Önerilen)

Zapret-TR'yi macOS üzerinde hızlıca kurmak ve çalıştırmak için terminalinize şu komutu yapıştırın:
```bash
curl -fsSL https://raw.githubusercontent.com/Hajorda/zapret-tr/master/install.sh | sudo bash
```

Kurulum tamamlandığında karşınıza interaktif bir menü çıkacaktır. Bu menü üzerinden programı ister terminal açık kaldığı sürece **geçici** olarak, isterseniz de bilgisayarınız her açıldığında arkada gizlice çalışacak bir **macOS Arkaplan Servisi (LaunchDaemon)** olarak ayarlayabilirsiniz.

### Programı Sistemden Kaldırmak
Eğer programı bilgisayarınızdan tamamen silmek ve tüm ağ/güvenlik duvarı ayarlarını orijinal haline sıfırlamak isterseniz şu komutu kullanabilirsiniz:
```bash
curl -fsSL https://raw.githubusercontent.com/Hajorda/zapret-tr/master/uninstall.sh | sudo bash
```

## Manuel Kurulum (Geliştiriciler İçin)

1. Terminal'i açın ve projeyi bilgisayarınıza indirin:
   ```bash
   git clone https://github.com/Hajorda/zapret-tr.git
   cd zapret-tr
   ```

2. Mac'inizde `tpws` programını derlemek için gerekli araçları yükleyin ve derleyin:
   ```bash
   make mac
   ```

3. Kurulum tamamlandıktan sonra, macOS güvenlik duvarı (PF) kurallarını otomatik ve güvenli bir şekilde entegre eden başlatıcı script'i kullanabilirsiniz:
   ```bash
   sudo ./macos_turkey_config.sh
   ```

## Sık Karşılaşılan Sorunlar

- **Sitelere girerken "Bağlantınız Gizli Değil" (HSTS / ERR_CERT_AUTHORITY_INVALID) hatası alıyorum:** 
  İnternet sağlayıcınız DNS zehirlenmesi yapıyor. Tarayıcınızdan Güvenli DNS (Secure DNS) özelliğini açın.
- **Discord hala açılmıyor veya resimler yüklenmiyor:** 
  Script içerisindeki *Alternatif 2 (Disorder)* veya *Alternatif 3 (TLS Pad)* seçeneklerini deneyin. Farklı internet sağlayıcıları (Superonline vs. TurkTelekom) farklı DPI cihazları kullandığı için paket parçalama ayarları değişiklik gösterebilir.
- **İnternet bağlantım tamamen koptu / Hata alıyorum:** 
  Scripti kapatın. Orijinal macOS güvenlik duvarı (PF) kurallarını sıfırlamak için terminale `sudo pfctl -F all -f /etc/pf.conf` yazın. Veya doğrudan `uninstall.sh` komutunu çalıştırarak her şeyi sıfırlayın.

---

Diğer tüm detaylı teknik özellikler, Linux ve yönlendirici (OpenWrt) kurulumları için orijinal belgelere göz atabilirsiniz:
- [English README](readme.en.md)
- [Russian README](readme.md)
- [MacOS & BSD Detayları](bsd.en.md)
