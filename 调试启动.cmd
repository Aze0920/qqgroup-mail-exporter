@echo off
chcp 65001 >nul
cd /d %~dp0
title QQ群用户邮件列表导出工具 - 调试启动
echo 正在启动调试模式...
echo.
node\node.exe server.js
pause
