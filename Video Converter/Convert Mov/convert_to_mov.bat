@echo off

REM Check if the input file exists
if not exist %1 (
    echo Input file does not exist.
    exit /b
)

REM Get the file name without extension
for %%F in (%1) do set "filename=%%~nF"

REM Convert the input audio file to MOV format
ffmpeg -i %1 %filename%.mov

PAUSE