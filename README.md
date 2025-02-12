# MiuiFboEnabler Magisk Module

这是一个 Magisk 模块，用于每天 00:30 自动设置 `persist.sys.stability.miui_fbo_enable` 为 `true`。

## 安装方法
1. 从 [Releases](https://github.com/yourusername/MiuiFboEnabler/releases) 下载最新版本。
2. 通过 Magisk Manager 安装模块。
3. 重启设备。

## 日志
`getprop | grep fbo` 的输出会保存到 `/data/fbo_log.txt`。
