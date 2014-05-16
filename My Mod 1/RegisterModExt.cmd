reg delete HKLM\Software\Classes\.mod /f
reg delete HKCU\Software\Classes\.mod /f
reg delete HKLM\Software\Classes\modfile /f
reg delete HKCU\Software\Classes\modfile /f
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.mod /f
reg delete HKCU\Software\Microsoft\Windows\Roaming\OpenWith\FileExts\.mod /f

reg add HKCU\Software\Classes\.mod /ve /d "modfile" /f

reg add "HKCU\Software\Classes\modfile\shell\Open\Command" /ve /t REG_EXPAND_SZ /d "\"%~dp0ModManager.exe\" open \"%%1\"" /f
reg add "HKCU\Software\Classes\modfile\shell\Export\Command" /ve /t REG_EXPAND_SZ /d "\"%~dp0ModManager.exe\" export \"%%1\"" /f
reg add "HKCU\Software\Classes\modfile\shell\Restore\Command" /ve /t REG_EXPAND_SZ /d "\"%~dp0ModManager.exe\" restore \"%%1\"" /f

reg add "HKCU\Software\Classes\modfile\shell\Open" /ve /d "Open" /f
reg add "HKCU\Software\Classes\modfile\shell\Export" /ve /d "Export My Mod" /f
reg add "HKCU\Software\Classes\modfile\shell\Restore" /ve /d "Restore Net" /f

reg add HKCU\Software\Classes\modfile /ve /d "YD Mod File" /f
