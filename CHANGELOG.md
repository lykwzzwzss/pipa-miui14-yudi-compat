# 1.0.0

作者：lykwzzwzss、Codex。

- 为 pipa 原厂 MIUI14 提供 6 Max/yudi 分支所需局部框架与原生平行窗口滑动条。
- 修复拖动回弹、布局错位与未组织 TaskFragment 的空引用。
- 恢复隐藏手势提示线开关，系统/桌面重启后保留选择，保持 Dock 高度和底部间距。
- 缓存资源初始化结果、减少配置同步与其他应用的加载跟踪开销；未承诺量化续航提升。
- 增加安全标签检查、依赖预检和仅用于下一次启动的临时超时恢复保护。
- 提供独立 OTA 更新入口；与原版完美横屏计划分开维护。

仅限小米平板6 pipa / Android13 / V14.0.3.0.TMZCNXM。须独立安装原版完美横屏计划3.03.08并选6 Max/yudi，保持已验证的 Hybrid Mount disable_umount=true 和适用的 PIF 兼容补丁。详细条件见 README 与使用说明。

本机实测：系统与桌面重启保留隐藏设置，竖屏 Dock 高217像素、底部间距40像素，电话/GMS/系统框架视图一致。云服务 cloudidprovider 缺失是双模块关闭时也存在的设备异常，此模块不修复该独立问题。

## 独立 PIF 兼容补丁附件

本 Release 另附 `pif-v4.7-1-inject-s-unmount-compat-1.0.0.zip`，在已经安装的匹配 PIF v4.7-1-inject-s 上仅修改两处强制卸载调用。主兼容层 ZIP 保持不变。原版未补丁/已补丁文件均严格校验，带原库备份和失败回退；卸载补丁会恢复匹配 PIF 并禁用依赖的框架双模块。其他 PIF 版本拒绝安装，完整使用条件见 [PIF补丁说明](https://github.com/lykwzzwzss/pipa-miui14-yudi-compat/blob/main/docs/PIF_COMPAT.md)。
