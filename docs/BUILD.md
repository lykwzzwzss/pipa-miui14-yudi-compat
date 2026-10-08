# 打包与载荷重建

## 从已验证载荷打包

需要Python3。在仓库根目录运行 `python package.py`。输出位于 `dist/`，同时生成安装包SHA-256及载荷清单。此步骤重新打包已验证载荷，不编译新的系统框架。

修改版本时保持模块ID `pipa_miui14_divider_port`，递增versionCode（1.0.0为10000，1.0.1建议10001），更新version和CHANGELOG.md。

## 框架载荷重建

Java源码位于src，最终smali位于patches及navigation/patches；辅助DexTool、AuditTool和VerifyTool源码位于tools，需要相应jadx/dexlib依赖。使用Android33 SDK、JDK、D8/aapt及smali工具，先编译辅助Java、将其dex反汇编合入对应补丁，再与原厂框架dex合并。

所需外部输入：pipa V14.0.3.0.TMZCNXM的framework.jar、services.jar、androidx.window.extensions.jar和指定桌面APK，以及yudi V14.0.6.0.TMHCNXM的原生滑动条资源。完整ROM和桌面APK未作为构建输入附带。navigation/prepare.py记录桌面局部变更，使用前需准备其指定的原厂smali及stock/home.apk。

修改Java后须重新编译并刷新对应smali；只改src不会改变现有module载荷。最终更新module/manifest.json每个output的SHA-256和customize.template.sh认可的基础文件哈希。检查接口引用、字节码、资源配置变化、依赖条件、真实重启与Dock/滑动条行为后再发布。CI的OTA校验不替代实机兼容性验证。
