@echo off

IF "%1"=="" (
	echo Specify an output folder...
	pause > nul
	exit
)

mkdir %1

FOR %%A IN (*) DO (
	IF "%%~xA"==".mp4" (
		ffmpeg -y -i "%%A" "%%~dpA\%1\%%~nA"_converted.mp4
	)
)

pause