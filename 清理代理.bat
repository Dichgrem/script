@echo off
REM 清理代理设置
REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /f
REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer /f
echo 代理设置已清除

