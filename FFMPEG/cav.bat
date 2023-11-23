@echo off
echo syntax: cav.bat [out_folder] [EXT]

SET OUT_DIR=%1
SET EXT=.%2

IF "%OUT_DIR%"=="" (
	echo [33mFile is not specified, using default name for it...[0m
	SET OUT_DIR=output
	TIMEOUT /T 1 >nul 2>nul
)

IF "%EXT%"=="." (
	SET EXT=%~x1
	echo [33mUsed original file's format...[0m
	TIMEOUT /T 1 >nul 2>nul
)

mkdir %OUT_DIR%

FOR %%A IN (*) DO (
	IF "%%~xA"==".mp4" (
		ffmpeg -y -i "%%A" "%%~dpA\%OUT_DIR%\%%~nA"_converted%EXT%
	)
)

echo.
echo [42mConverting is complete![0m
echo.
pause