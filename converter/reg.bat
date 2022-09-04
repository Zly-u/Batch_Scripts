@echo off
reg add "HKEY_CLASSES_ROOT\*\shell\ffmpeg_MP3\command" /d "%~dp0converter_mp3_run.bat "%%V""
:: reg add "HKEY_CLASSES_ROOT\*\shell\ffmpeg_MP4\command" /d "%~dp0convert_mp4.bat "%%V""
:: reg add "HKEY_CLASSES_ROOT\*\shell\ffmpeg_WAV\command" /d "%~dp0convert_wav.bat "%%V""
pause