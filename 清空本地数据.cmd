@echo off
chcp 65001 >nul
cd /d %~dp0
title QQ群用户邮件列表导出工具 - 清空本地数据
echo.
echo 这个操作会清空已保存的发件邮箱、授权码和邮件模板。
echo.
set /p confirm=确定清空吗？输入 yes 继续：
if /i not "%confirm%"=="yes" exit /b
if exist data rmdir /s /q data
mkdir data
echo {>data\mail-store.json
echo   "accounts": [],>>data\mail-store.json
echo   "template": {>>data\mail-store.json
echo     "subject": "通知",>>data\mail-store.json
echo     "html": "^<div style=\"border:1px solid #ddd;padding:16px;border-radius:8px;font-family:Arial,Microsoft YaHei,sans-serif;\"^>^<h2^>您好^</h2^>^<p^>这里是邮件内容。^</p^>^</div^>">>data\mail-store.json
echo   },>>data\mail-store.json
echo   "nextIndex": 0>>data\mail-store.json
echo }>>data\mail-store.json
echo 已清空。
pause
