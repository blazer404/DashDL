@echo off
setlocal enabledelayedexpansion
title DASH DL Launcher by BlazeR404

:menu
cls
echo ==============================
echo �� ������?
echo 1. �������� ᪠稢����
echo 2. ������ 䠩� � ��뫪���
echo ==============================
set /p choice="��� �롮�: "

if "%choice%"=="1" goto run_downloader
if "%choice%"=="2" goto open_links_file

goto menu

:run_downloader
set "downloader=downloader.bat"
start "" "%downloader%"
goto menu

:open_links_file
set "links=links.txt"
start "" "%links%"
goto menu