 
::Windows auomatic updates
reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU /v AutoInstallMinorUpdates /t REG_DWORD /d 0 /f
reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU /v NoAutoUpdate /t REG_DWORD /d 0 /f
reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU /v AUOptions /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update" /v AUOptions /t REG_DWORD /d 4 /f
reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate /v DisableWindowsUpdateAccess /t REG_DWORD /d 1 /f
reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate /v ElevateNonAdmins /t REG_DWORD /d 1 /f
reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoWindowsUpdate /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\Internet Communication Management\Internet Communication" /v DisableWindowsUpdateAccess /t REG_DWORD /d 1 /f
reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\WindowsUpdate /v DisableWindowsUpdateAccess /t REG_DWORD /d 1 /f
sc config wuauserv start=auto
sc start wuauserv
sc config WaaSMedicSvc start=auto
sc start WaaSMedicSvc
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\InstallService\State /v AutoUpdateLastSuccessTime /t REG_SZ /d "2000-01-01T00:00:00+08:00" /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings /v PauseFeatureUpdatesStartTime /t REG_SZ /d "2000-01-01T00:00:00Z" /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings /v PauseQualityUpdatesStartTime /t REG_SZ /d "2000-01-01T00:00:00Z" /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings /v PauseUpdatesExpiryTime /t REG_SZ /d "2000-01-01T00:00:00Z" /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings /v PauseFeatureUpdatesEndTime /t REG_SZ /d "2000-01-01T00:00:00Z" /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings /v PauseQualityUpdatesEndTime /t REG_SZ /d "2000-01-01T00:00:00Z" /f
pause
