@echo off
chcp 65001 >nul
cd /d %~dp0
title QQ群用户邮件列表导出工具

echo ==================================================
echo QQ群用户邮件列表导出工具
echo ==================================================
echo.
echo 正在启动服务...
echo.
echo 如果浏览器没有自动打开，请手动访问：
echo http://localhost:8000
echo.
start http://localhost:8000
node\node.exe server.js

echo.
echo 服务已停止。
pause
