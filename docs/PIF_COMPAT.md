# PIF v4.7-1-inject-s 强制卸载兼容补丁

作者：lykwzzwzss、Codex。

[从 1.0.0 Release 下载独立补丁包](https://github.com/lykwzzwzss/pipa-miui14-yudi-compat/releases/download/v1.0.0/pif-v4.7-1-inject-s-unmount-compat-1.0.0.zip)。

此包安装在已有 PIF 上，仅把匹配版本的 arm64 和 arm32 库各一处 `FORCE_DENYLIST_UNMOUNT` 调用改为同长度空指令，避免 GMS 进程卸载新框架后与系统框架混用。字节变更与此前本机已验证的兼容修复一致。

## 使用条件

- 已安装 PIF `v4.7-1-inject-s`，两份库必须匹配[校验清单](https://github.com/lykwzzwzss/pipa-miui14-yudi-compat/blob/pif-unmount-compat-v1.0.0/pif-compat/module/manifest.json)中的原始或已补丁 SHA-256。安装器自动检查；仅版本名相同而文件不同也会拒绝。
- 不适用于其他 PIF 版本，不是完整 PIF 安装包；不包含 PIF 原生库，使用设备上已有的库完成字节修改。
- PIF 不能处于待安装更新状态。本机验证环境为 pipa MIUI14、ResukiSU/KernelSU、Hybrid Mount、Zygisk Next；其他环境未验证。
- Hybrid Mount 的 `disable_umount=true` 仍需保留；此补丁不会修改挂载设置、指纹配置或 PIF 其他代码，也不保证 Play Integrity/Root 检测结果。
- PIF 未安装、已禁用，或只使用脚本模式时，主兼容层不要求此注入补丁。

## 安装

1. 首次配置时保持框架兼容层与原版完美横屏计划两个模块均禁用。先安装匹配的 PIF；若有 PIF 待更新，先在双模块禁用状态完成更新及重启。
2. 在 Root 管理器中安装独立补丁 ZIP，确认出现 `PIF_UNMOUNT_COMPAT=PASS`。
3. 配好 Hybrid Mount、原版完美横屏计划的6 Max/yudi分支和主兼容层，检查主兼容层预检通过，再同时启用框架双模块并重启。
4. 补丁模块的「操作」按钮可检查实际 PIF 库。它不启动常驻服务，也不会自动重打补丁。

本机此前已应用相同字节补丁，无需为下载附件而重复安装。独立安装包可识别已经打过补丁的库，重复安装不重复修改。

## 备份、停用与卸载

安装时在 `/data/adb/pif-inject-s-unmount-compat-v4.7-1/` 保存经过原始哈希核对的库备份。已有补丁的输入可通过反向字节修改重建并校验原库。

禁用此补丁模块不会撤销已经写入 PIF 的修改。卸载时，脚本只对仍然匹配的 PIF 库恢复原始字节，并先禁用依赖它的框架兼容层及原版完美横屏计划，避免新框架与强制卸载同时启用。按管理器要求重启；需要继续使用框架双模块时，先恢复相应兼容条件。

PIF 如果已更新或被其他工具修改，卸载不会覆盖那些未知文件。PIF 更新可能覆盖本补丁，不能把旧偏移用于新版；主兼容层会核对实际库哈希，补丁模块存在不等于兼容条件仍满足。

## 验证范围

这两处指令变更已在本机验证过。新独立安装器使用真实二进制样本，在本地隔离环境和本机Android独立临时目录完成原库安装、已补丁输入、重复安装、备份、失败回退、恢复和版本拒绝测试。Android测试实际核对了root属主、0644权限及system_lib_file安全标签。测试未改动正在使用的PIF或框架，也未重新启动设备；其他Root环境仍未验证。

原项目来源：[KOWX712/PlayIntegrityFix inject_s](https://github.com/KOWX712/PlayIntegrityFix/tree/inject_s)。
