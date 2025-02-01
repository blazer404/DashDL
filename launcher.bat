@echo off
setlocal enabledelayedexpansion
title DASH DL Launcher by BlazeR404

:menu
cls
echo ==============================
echo Что делаем?
echo 1. Запустить скачивание
echo 2. Открыть файл со ссылками
echo.
echo 0. Указать директорию для загрузки
echo ==============================
set /p choice="Ваш выбор: "

if "%choice%"=="1" goto run_downloader
if "%choice%"=="2" goto open_links_file
if "%choice%"=="0" goto open_output_file
goto menu

:run_downloader
set "downloader=downloader.bat"
start "" "%downloader%"
goto menu

:open_links_file
set "links=links.txt"
start "" "%links%"
goto menu

:open_output_file
set "links=output.txt"
start "" "%links%"
goto menu