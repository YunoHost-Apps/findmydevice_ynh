<!--
注意：此 README 由 <https://github.com/YunoHost/apps/tree/master/tools/readme_generator> 自动生成
请勿手动编辑。
-->

# YunoHost 上的 Find My Device

[![集成程度](https://apps.yunohost.org/badge/integration/findmydevice)](https://ci-apps.yunohost.org/ci/apps/findmydevice/)
![工作状态](https://apps.yunohost.org/badge/state/findmydevice)
![维护状态](https://apps.yunohost.org/badge/maintained/findmydevice)

[![使用 YunoHost 安装 Find My Device](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=findmydevice)

*[阅读此 README 的其它语言版本。](./ALL_README.md)*

> *通过此软件包，您可以在 YunoHost 服务器上快速、简单地安装 Find My Device。*  
> *如果您还没有 YunoHost，请参阅[指南](https://yunohost.org/install)了解如何安装它。*

## 概况

The FMD app can register an account on FMD Server. The app can then upload its location at regular intervals.
You can also push commands to the FMD app on your device from FMD Server, e.g. to make your device ring.

**分发版本：** 0.10.0~ynh2

## 截图

![Find My Device 的截图](./doc/screenshots/screenshot.png)

## 文档与资源

- 上游应用代码库： <https://gitlab.com/Nulide/findmydeviceserver>
- YunoHost 商店： <https://apps.yunohost.org/app/findmydevice>
- 报告 bug： <https://github.com/YunoHost-Apps/findmydevice_ynh/issues>

## 开发者信息

请向 [`testing` 分支](https://github.com/YunoHost-Apps/findmydevice_ynh/tree/testing) 发送拉取请求。

如要尝试 `testing` 分支，请这样操作：

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/findmydevice_ynh/tree/testing --debug
或
sudo yunohost app upgrade findmydevice -u https://github.com/YunoHost-Apps/findmydevice_ynh/tree/testing --debug
```

**有关应用打包的更多信息：** <https://yunohost.org/packaging_apps>
