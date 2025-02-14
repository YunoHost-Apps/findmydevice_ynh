<!--
Este archivo README esta generado automaticamente<https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
No se debe editar a mano.
-->

# Find My Device para Yunohost

[![Nivel de integración](https://apps.yunohost.org/badge/integration/findmydevice)](https://ci-apps.yunohost.org/ci/apps/findmydevice/)
![Estado funcional](https://apps.yunohost.org/badge/state/findmydevice)
![Estado En Mantención](https://apps.yunohost.org/badge/maintained/findmydevice)

[![Instalar Find My Device con Yunhost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=findmydevice)

*[Leer este README en otros idiomas.](./ALL_README.md)*

> *Este paquete le permite instalarFind My Device rapidamente y simplement en un servidor YunoHost.*  
> *Si no tiene YunoHost, visita [the guide](https://yunohost.org/install) para aprender como instalarla.*

## Descripción general

The FMD app can register an account on FMD Server. The app can then upload its location at regular intervals.
You can also push commands to the FMD app on your device from FMD Server, e.g. to make your device ring.

**Versión actual:** 0.10.0~ynh1

## Capturas

![Captura de Find My Device](./doc/screenshots/screenshot.png)

## Documentaciones y recursos

- Repositorio del código fuente oficial de la aplicación : <https://gitlab.com/Nulide/findmydeviceserver>
- Catálogo YunoHost: <https://apps.yunohost.org/app/findmydevice>
- Reportar un error: <https://github.com/YunoHost-Apps/findmydevice_ynh/issues>

## Información para desarrolladores

Por favor enviar sus correcciones a la [rama `testing`](https://github.com/YunoHost-Apps/findmydevice_ynh/tree/testing).

Para probar la rama `testing`, sigue asÍ:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/findmydevice_ynh/tree/testing --debug
o
sudo yunohost app upgrade findmydevice -u https://github.com/YunoHost-Apps/findmydevice_ynh/tree/testing --debug
```

**Mas informaciones sobre el empaquetado de aplicaciones:** <https://yunohost.org/packaging_apps>
