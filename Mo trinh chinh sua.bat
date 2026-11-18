@echo off
chcp 65001 >nul
title Trinh chinh sua Tac
cd /d "%~dp0tac-editor"
where node >nul 2>nul || (echo Can cai Node.js truoc: https://nodejs.org & pause & exit /b)
node server.js
pause
