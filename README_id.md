<!--
N.B.: README ini dibuat secara otomatis oleh <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Ini TIDAK boleh diedit dengan tangan.
-->

# Find My Device untuk YunoHost

[![Tingkat integrasi](https://apps.yunohost.org/badge/integration/findmydevice)](https://ci-apps.yunohost.org/ci/apps/findmydevice/)
![Status kerja](https://apps.yunohost.org/badge/state/findmydevice)
![Status pemeliharaan](https://apps.yunohost.org/badge/maintained/findmydevice)

[![Pasang Find My Device dengan YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=findmydevice)

*[Baca README ini dengan bahasa yang lain.](./ALL_README.md)*

> *Paket ini memperbolehkan Anda untuk memasang Find My Device secara cepat dan mudah pada server YunoHost.*  
> *Bila Anda tidak mempunyai YunoHost, silakan berkonsultasi dengan [panduan](https://yunohost.org/install) untuk mempelajari bagaimana untuk memasangnya.*

## Ringkasan

The FMD app can register an account on FMD Server. The app can then upload its location at regular intervals.
You can also push commands to the FMD app on your device from FMD Server, e.g. to make your device ring.

**Versi terkirim:** 0.8.0~ynh1

## Tangkapan Layar

![Tangkapan Layar pada Find My Device](./doc/screenshots/screenshot.png)

## Dokumentasi dan sumber daya

- Depot kode aplikasi hulu: <https://gitlab.com/Nulide/findmydeviceserver>
- Gudang YunoHost: <https://apps.yunohost.org/app/findmydevice>
- Laporkan bug: <https://github.com/YunoHost-Apps/findmydevice_ynh/issues>

## Info developer

Silakan kirim pull request ke [`testing` branch](https://github.com/YunoHost-Apps/findmydevice_ynh/tree/testing).

Untuk mencoba branch `testing`, silakan dilanjutkan seperti:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/findmydevice_ynh/tree/testing --debug
atau
sudo yunohost app upgrade findmydevice -u https://github.com/YunoHost-Apps/findmydevice_ynh/tree/testing --debug
```

**Info lebih lanjut mengenai pemaketan aplikasi:** <https://yunohost.org/packaging_apps>
