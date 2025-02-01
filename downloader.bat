@echo off
setlocal enabledelayedexpansion
title DASH DL by BlazeR404

set "yt_dlp=bin\yt-dlp.exe"
set "links_file=links.txt"
set "output_file=output.txt"
set /p output_dir=<%output_file%

if not exist "%yt_dlp%" (
    echo �訡��: yt-dlp.exe �� ������!
    pause>nul
    exit /b 1
)

if not exist "%links_file%" (
    echo �訡��: %links_file% �� ������!
    pause>nul
    exit /b 1
)

if not exist "%output_file%" (
    echo ���� %output_file% �� ������!
    pause>nul
    exit /b 1
)


if not defined output_dir (
    echo �訡��: ���� %output_file% ����.
    pause>nul
    exit /b 1
)

if not exist "%output_dir%" ( 
    mkdir "%output_dir%"
    if errorlevel 1 (
        echo �訡��: �� 㤠���� ᮧ���� ��४��� "%output_dir%"
        pause>nul
        exit /b 1
    )
)

set "count=0"

for /f "usebackq delims=" %%i in ("%links_file%") do (
    set "line=%%i"
    set "line=!line: =!"

    if defined line if not "!line:~0,1!"=="#" (
        set /a count+=1

        if !count! lss 10 (
            set "output_filename=e00!count!"
        ) else if !count! lss 100 (
            set "output_filename=e0!count!"
        ) else (
            set "output_filename=e!count!"
        )

        echo ==============
        echo ����㦠��: !output_filename!
        "%yt_dlp%" -f best/bestvideo+bestaudio "%%i" -o "%output_dir%\!output_filename!.mp4"
        echo.
    )
)

if !count!==0 (
    echo � 䠩�� %links_file% ��� ��뫮� ��� ����㧪�.
    pause>nul
    exit /b 1
)

echo.
echo �� ����㧪� �����襭�!
pause>nul