@echo off
setlocal enabledelayedexpansion
title DASH DL by BlazeR404

set "yt_dlp=bin\yt-dlp.exe"
set "links_file=links.txt"
set "output_dir=output"

if not exist "%yt_dlp%" (
    echo Ошибка: yt-dlp.exe не найден!
    pause
    exit /b 1
)

if not exist "%links_file%" (
    echo Ошибка: links.txt не найден!
    pause
    exit /b 1
)

if not exist "%output_dir%" ( 
	mkdir "%output_dir%"
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
        echo Загружаем: !output_filename!
        "%yt_dlp%" -f "bestvideo+bestaudio" "%%i" -o "%output_dir%\!output_filename!.mp4"
        echo.
    )
)

if !count!==0 (
    echo В файле links.txt нет ссылок для загрузки.
    pause>nul
    exit /b 1
)

echo.
echo Все загрузки завершены!
pause>nul