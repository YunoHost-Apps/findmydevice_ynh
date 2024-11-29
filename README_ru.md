<!--
Важно: этот README был автоматически сгенерирован <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Он НЕ ДОЛЖЕН редактироваться вручную.
-->

# Find My Device для YunoHost

[![Уровень интеграции](https://apps.yunohost.org/badge/integration/findmydevice)](https://ci-apps.yunohost.org/ci/apps/findmydevice/)
![Состояние работы](https://apps.yunohost.org/badge/state/findmydevice)
![Состояние сопровождения](https://apps.yunohost.org/badge/maintained/findmydevice)

[![Установите Find My Device с YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=findmydevice)

*[Прочтите этот README на других языках.](./ALL_README.md)*

> *Этот пакет позволяет Вам установить Find My Device быстро и просто на YunoHost-сервер.*  
> *Если у Вас нет YunoHost, пожалуйста, посмотрите [инструкцию](https://yunohost.org/install), чтобы узнать, как установить его.*

## Обзор

The FMD app can register an account on FMD Server. The app can then upload its location at regular intervals.
You can also push commands to the FMD app on your device from FMD Server, e.g. to make your device ring.

**Поставляемая версия:** 0.8.0~ynh1

## Снимки экрана

![Снимок экрана Find My Device](./doc/screenshots/screenshot.png)

## Документация и ресурсы

- Репозиторий кода главной ветки приложения: <https://gitlab.com/Nulide/findmydeviceserver>
- Магазин YunoHost: <https://apps.yunohost.org/app/findmydevice>
- Сообщите об ошибке: <https://github.com/YunoHost-Apps/findmydevice_ynh/issues>

## Информация для разработчиков

Пришлите Ваш запрос на слияние в [ветку `testing`](https://github.com/YunoHost-Apps/findmydevice_ynh/tree/testing).

Чтобы попробовать ветку `testing`, пожалуйста, сделайте что-то вроде этого:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/findmydevice_ynh/tree/testing --debug
или
sudo yunohost app upgrade findmydevice -u https://github.com/YunoHost-Apps/findmydevice_ynh/tree/testing --debug
```

**Больше информации о пакетировании приложений:** <https://yunohost.org/packaging_apps>
