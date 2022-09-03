@title hacking mp3s
@echo off

echo syntax: converter_run.bat <out format> <file1> [file2] [file3] [file..]

set FORMAT=%1

python converter.py %FORMAT% %*