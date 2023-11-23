@echo off
chcp 65001
cls

SET TITLE="%%(upload_date>%%Y-%%m-%%d)s - %%(uploader)s - %%(title)s.%%(ext)s"
SET FORMAT="bv*[ext=mp4]+ba[ext=m4a]/b[ext=mp4] / bv*+ba/b"

SET /P "URL=Enter URL: "

@echo.
@echo [1m[32mStarting the download[0m
@echo.

yt-dlp -f %FORMAT% -S vcodec:h264 --embed-metadata --embed-info-json  --add-metadata --parse-metadata "description:(?s)(?P<webpage_url>.+)" --write-description -o %TITLE% %URL%

@echo.
@echo [1m[33mNow fix the descriptions file formats:[0m
@echo.

:: Rename .description files to .txt
for %%i in (*.description) do (
    @echo [32m^>[0m [1m%%~nxi[0m -^> [36m.txt[0m
    ren "%%~nxi" "%%~ni.txt"
)

@echo.

pause