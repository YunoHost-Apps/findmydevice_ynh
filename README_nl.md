<!--
NB: Deze README is automatisch gegenereerd door <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Hij mag NIET handmatig aangepast worden.
-->

# Find My Device voor Yunohost

[![Integratieniveau](https://apps.yunohost.org/badge/integration/findmydevice)](https://ci-apps.yunohost.org/ci/apps/findmydevice/)
![Mate van functioneren](https://apps.yunohost.org/badge/state/findmydevice)
![Onderhoudsstatus](https://apps.yunohost.org/badge/maintained/findmydevice)

[![Find My Device met Yunohost installeren](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=findmydevice)

*[Deze README in een andere taal lezen.](./ALL_README.md)*

> *Met dit pakket kun je Find My Device snel en eenvoudig op een YunoHost-server installeren.*  
> *Als je nog geen YunoHost hebt, lees dan [de installatiehandleiding](https://yunohost.org/install), om te zien hoe je 'm installeert.*

## Overzicht

The FMD app can register an account on FMD Server. The app can then upload its location at regular intervals.
You can also push commands to the FMD app on your device from FMD Server, e.g. to make your device ring.

**Geleverde versie:** 0.10.0~ynh3

## Schermafdrukken

![Schermafdrukken van Find My Device](./doc/screenshots/screenshot.png)

## Documentatie en bronnen

- Upstream app codedepot: <https://gitlab.com/Nulide/findmydeviceserver>
- YunoHost-store: <https://apps.yunohost.org/app/findmydevice>
- Meld een bug: <https://github.com/YunoHost-Apps/findmydevice_ynh/issues>

## Ontwikkelaarsinformatie

Stuur je pull request alsjeblieft naar de [`testing`-branch](https://github.com/YunoHost-Apps/findmydevice_ynh/tree/testing).

Om de `testing`-branch uit te proberen, ga als volgt te werk:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/findmydevice_ynh/tree/testing --debug
of
sudo yunohost app upgrade findmydevice -u https://github.com/YunoHost-Apps/findmydevice_ynh/tree/testing --debug
```

**Verdere informatie over app-packaging:** <https://yunohost.org/packaging_apps>
