Windows Registry Editor Version 5.00 2>nul

;The following line/commands run and add the current file by "itself"
;@(cls & %__APPDIR__%reg.exe import "%~f0" >nul 2>&1 & goto=:EOF )

[HKEY_CLASSES_ROOT\Directory\shell\Set_Folder_Icon]
@="Set Folder Icon"
"Icon"="\"C:\\\\WINDOWS\\\\System32\\\\shell32.dll,71\""

[HKEY_CLASSES_ROOT\Directory\shell\Set_Folder_Icon\command]
@="\"F:\\\\2020-SU\\\\Q1635169\\\\Q1635169.cmd\" \"%V\""

; Just replace drive and folder\file name...