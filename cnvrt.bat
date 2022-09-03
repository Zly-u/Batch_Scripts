@echo off
echo syntax: convert.bat <file_input> [format]

SET FORMAT=.%2

IF "%FORMAT%"=="." (
	SET FORMAT=%~x1
	echo Used original file's format...
	TIMEOUT /T 3 >nul 2>nul
)

ffmpeg -y -i "%~dpnx1" "%~dpn1"_converted%FORMAT%