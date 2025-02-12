# MiuiFboEnabler Magisk Module

This Magisk module automatically sets `persist.sys.stability.miui_fbo_enable` to `true` at 00:30 daily.

## Installation
1. Download the latest release from [Releases](https://github.com/yourusername/MiuiFboEnabler/releases).
2. Install the module via Magisk Manager.
3. Reboot your device.

## Logs
The output of `getprop | grep fbo` is saved to `/data/fbo_log.txt`.
