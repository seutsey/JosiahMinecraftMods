reg delete HKLM\Software\Classes\.ydgimppng /f
reg delete HKCU\Software\Classes\.ydgimppng /f
reg delete HKLM\Software\Classes\ydgimppng /f
reg delete HKCU\Software\Classes\ydgimppng /f

reg add HKCU\Software\Classes\.ydgimppng /ve /d "Gimp PNG" /f

reg add "HKCU\Software\Classes\ydgimppng\shell\Open\Command" /ve /t REG_EXPAND_SZ /d "\"%%appdata%%\\Youth Digital\\Software\\Gimp\\GIMP.exe\"" /f

reg add "HKCU\Software\Classes\ydgimppng\shell\Open" /ve /d "Open" /f

reg add "HKCU\Software\Classes\ydgimppng\shell" /ve /d "Open" /f

reg add HKCU\Software\Classes\ydgimppng\DefaultIcon /ve /t REG_EXPAND_SZ /d "\"%%appdata%%\\Youth Digital\\Software\\Gimp\\GIMP.exe\",0" /f
reg add HKCU\Software\Classes\ydgimppng /ve /d "Gimp PNG" /f
