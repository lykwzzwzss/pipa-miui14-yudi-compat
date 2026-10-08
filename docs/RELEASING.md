# 发布与OTA维护

1. 修改module/module.prop的version、递增versionCode，保持id、author和updateJson；更新CHANGELOG.md。更新后的框架必须先通过实机验证。
2. 在仓库根目录运行 `python package.py`，生成dist安装包。检查manifest、依赖预检、隐藏设置重启保持、Dock/滑动条和核心进程。
3. 提交发布内容到main，创建与模块版本一致的tag（如v1.0.1）。在GitHub创建Draft Release，上传 `pipa-miui14-yudi-compat-1.0.1.zip` 及SHA256SUMS，再将该Release发布为稳定版。不要先发布后补传ZIP。
4. 等待 **Publish stable OTA** 工作流成功。它校验模块ID、署名、版本、OTA入口、载荷哈希和GitHub资产摘要，写入update.json与版本更新说明。versionCode只允许递增；同号重传不同包会被拒绝。预发布版不会更新稳定通道。
5. 访问根目录update.json，确认版本号、ZIP地址及更新说明可公开读取。模块管理器可能有网络缓存，刷新后会提示更新；用户确认安装并重启生效。

失败时在Actions查看错误，修复后可从workflow_dispatch指定已发布tag重试。不要通过修改同一版本安装包绕过版本单调检查；应发布新的version/versionCode。

`updateJson` 使用标准模块更新字段version、versionCode、zipUrl、changelog；额外sha256用于维护校验。发布脚本校验不代表所有模块管理器一定验证此额外字段。

在线更新仍执行原有兼容条件与安装预检，不负责更新原版完美横屏计划或PIF。框架所有权和原版模块更新入口保持独立。
