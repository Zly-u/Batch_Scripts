@echo off

SET OUT_DIR=%1

IF "%OUT_DIR%"=="" (
	echo [33mFile is not specified, using default name for it...[0m
	SET OUT_DIR=output
	TIMEOUT /T 3 >nul 2>nul
)

mkdir %OUT_DIR%

FOR %%A IN (*) DO (
	IF "%%~xA"==".mp4" (
		ffmpeg -y -i "%%A" "%%~dpA\%OUT_DIR%\%%~nA"_converted.mp4
	)
)

echo.
echo [42mConverting is complete![0m
echo.
pause