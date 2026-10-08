# Pipa MIUI14 · 6 Max 框架兼容层

作者：**lykwzzwzss、Codex**。

小米平板6（pipa）原厂 MIUI14 的局部框架兼容层。搭配独立的原版完美横屏计划6 Max/yudi分支使用，提供原生平行窗口滑动条、框架接口和导航/Dock修补。

## 下载与功能

从 [Releases](https://github.com/lykwzzwzss/pipa-miui14-yudi-compat/releases) 下载 `pipa-miui14-yudi-compat-版本号.zip`，在已验证的 Root 管理器中安装。GitHub 的 Source code ZIP 不能作为模块安装包。

- 原生平行窗口滑动条，松手后保留调整比例。
- 恢复桌面系统导航方式中的「隐藏手势提示线」，系统/桌面重启保留选择。
- 隐藏提示线时保持桌面 Dock 高度和底部间距。
- 减少布局过程的重复反射、资源同步和不必要的加载跟踪。
- 安装及开机预检；下一次启动的临时保护在稳定后自行退出，超时尝试禁用双模块并恢复原厂框架。

## 使用条件

- 仅小米平板6 **pipa / Android13 / MIUI14 V14.0.3.0.TMZCNXM**。
- 本机已验证桌面 `RELEASE-4.40.0.5727-04071453`；完整文件校验见[使用说明](module/使用说明.md)。
- 原版 `pad-miui-based-on-tiramisu-3.03.08.zip` 独立安装，选择 **6 Max / yudi**，两个模块同时启用或停用。
- 已验证 ResukiSU/KernelSU35171 + Hybrid Mount4.2.0-1815，**禁用umount必须开启**。
- 启用注入版 PIF 时，保留本机已验证的 v4.7-1-inject-s 强制卸载兼容补丁；本包不附带该补丁。
- 不与替换相同框架文件的其他模块同时启用。系统更新前先停用/卸载双模块并重启恢复原厂框架。

完整[安装、升级、恢复及限制说明](module/使用说明.md)。这是局部兼容层，原版完美横屏计划的 embedding JAR、规则、WebUI 和更新入口独立保留。原版新增框架或变更 embedding、系统、桌面、PIF/挂载环境变化时需重新验证，不能保证所有未来版本直接兼容。

## OTA 更新

模块管理器使用 `module.prop` 的 `updateJson` 入口检查更新：

`https://raw.githubusercontent.com/lykwzzwzss/pipa-miui14-yudi-compat/main/update.json`

发布稳定版 Release 后，GitHub Actions 校验包的ID、版本、署名、更新入口和载荷哈希，再更新版本号、下载链接及更新说明。预发布版不进入稳定通道。管理器提示更新后由使用者确认安装、重启；兼容检查仍会执行。

后续发布步骤见[发布与OTA维护](docs/RELEASING.md)。

## 源码与验证

`src/` 为Java兼容辅助代码，`patches/`、`navigation/patches/` 为最终smali补丁；`module/` 包含已验证载荷和安装脚本。`package.py` 可从这些载荷重新打包；完整ROM载荷重建需要指定原厂/供体输入和Android工具，见[构建说明](docs/BUILD.md)。

1.0.0本机验证：核心进程及GMS框架视图一致；系统/桌面重启保留隐藏设置；竖屏Dock显示/隐藏前后均高217像素、底部间距40像素。未做长期电池对照测试。设备原有云服务cloudidprovider缺失崩溃在双模块关闭时亦存在，本模块不处理该问题。

本仓库不包含本机备份、设备调试日志或整套ROM。来源与署名见 [NOTICE](NOTICE.md)。
