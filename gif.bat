@echo off
echo syntax: gif.bat <file_input> [loops]

SET LOOPS=%2

IF "%LOOPS%"=="" (
	SET LOOPS=0
	echo Loops are set to infinite...
	TIMEOUT /T 3 >nul 2>nul
)

ffmpeg -y -i "%1" -loop %LOOPS% "%~dpn1"_converted.gif