# zapret - macOS İçin GoodbyeDPI-Turkey Alternatifi

Bu kılavuz, Türkiye'deki (Superonline, TurkTelekom, Kablonet vb.) DPI (Derin Paket İnceleme) engellemelerini aşmak için tasarlanmış olan **GoodbyeDPI-Turkey** projesinin **macOS** üzerindeki alternatifidir. 

Windows kullananlar [GoodbyeDPI-Turkey](https://github.com/cagritaskn/GoodbyeDPI-Turkey) deposunu kullanabilirler. Ancak macOS sistemlerde GoodbyeDPI çalışmadığı için, bu repodaki (zapret) `tpws` aracı ile aynı işlemleri gerçekleştirebiliriz.

## Ön Gereksinimler

- Güvenilir bir DNS kullanmalısınız (Tavsiye edilen: Yandex DNS - 77.88.8.8 / 77.88.8.1 veya Cloudflare DNS - 1.1.1.1 / 1.0.0.1). macOS Sistem Ayarları -> Ağ -> Wi-Fi -> Ayrıntılar -> DNS sekmesinden DNS adreslerinizi değiştirebilirsiniz. Veya tarayıcınızdan "DNS over HTTPS (DoH)" özelliğini açabilirsiniz.
- Terminal kullanımına aşina olmalısınız.

## Kurulum ve Kullanım

1. Terminal'i açın ve projeyi bilgisayarınıza indirin (ya da indirdiğiniz ZIP dosyasını klasöre çıkartın):
   ```bash
   git clone https://github.com/bol-van/zapret.git
   cd zapret
   ```

2. Mac'inizde `tpws` programını derlemek için gerekli araçları yükleyin ve derleyin:
   ```bash
   make mac
   ```

3. Kurulum tamamlandıktan sonra, macOS güvenlik duvarı (PF) kurallarını ayarlamanız ve `tpws` aracını çalıştırmanız gerekir. Proje ana dizininde bulunan ve Türkiye için özel olarak hazırladığımız betiği kullanabilirsiniz:
   ```bash
   sudo ./macos_turkey_config.sh
   ```
   *Not: tpws, trafiği manipüle edebilmek için root haklarına (sudo) ihtiyaç duyar.*

## Alternatif Yöntemler (Betiği Kullanmak İstemeyenler İçin)

Eğer betiği kullanmak istemiyorsanız veya PF yönlendirmelerini kendiniz yapmak istiyorsanız, öncelikle Terminal'de aşağıdaki pf komutlarıyla 80 ve 443 portlarını `tpws`'nin dinlediği porta (örn. 988) yönlendirmeniz gerekir:

`/etc/pf.conf` dosyanızın uygun yerine aşağıdaki kuralları ekleyin (veya geçici olarak yükleyin):
```pf
rdr pass on lo0 inet  proto tcp from !127.0.0.0/8 to any port {80,443} -> 127.0.0.1 port 988
rdr pass on lo0 inet6 proto tcp from !::1 to any port {80,443} -> fe80::1 port 988
pass out route-to (lo0 127.0.0.1) inet proto tcp from any to any port {80,443} user { >root }
```
Sonra kuralları aktif edin:
```bash
sudo pfctl -ef /etc/pf.conf
```

Ardından GoodbyeDPI-Turkey profillerine denk gelen şu komutlardan birini çalıştırın:

**Varsayılan GoodbyeDPI-Turkey (-5 parametresi) eşdeğeri:**
```bash
sudo /opt/zapret/tpws/tpws --user=root --port=988 --bind-addr=127.0.0.1 --split-http-req=method --split-tls=sni --split-pos=2 --oob
```

**Superonline / Alternatif 2 eşdeğeri (Disorder):**
```bash
sudo /opt/zapret/tpws/tpws --user=root --port=988 --bind-addr=127.0.0.1 --split-http-req=method --split-tls=sni --split-pos=2 --disorder
```

## Sık Karşılaşılan Sorunlar

- **Discord'a giremiyorum / siteler yavaş:** Betik içerisindeki Alternatif 2 veya Alternatif 3'ü deneyin. `tpws` aracının TCP seviyesindeki parçalama özellikleri ISS'den ISS'ye farklılık gösterebilir.
- **İnternet bağlantım tamamen koptu:** Terminal penceresini kapatarak (veya `Ctrl+C` ile) `tpws` uygulamasını durdurun ve ardından PF (Packet Filter) kurallarını sıfırlayın: `sudo pfctl -F all -f /etc/pf.conf`.

---

Diğer tüm detaylı teknik özellikler, Linux ve yönlendirici (OpenWrt) kurulumları için ana İngilizce veya Rusça belgelere göz atabilirsiniz:
- [English README](readme.en.md)
- [Russian README](readme.md)
- [MacOS & BSD Detayları](bsd.en.md)
