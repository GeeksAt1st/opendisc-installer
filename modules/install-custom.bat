:: OpenDisc online updater & installer
:: Copyleft 2014-2015 Junde Yi.
::
:: This program is licensed under WTFPL; you can DO WHAT THE FUCK YOU WANT TO, as you please.


@echo off
setlocal enabledelayedexpansion

call :_begin_install

setlocal disabledelayedexpansion
exit /b




:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: Procedures
:_begin_install
cls
if "%lang%"=="1" (
    echo 抱歉，现阶段不支持自定义安装！为此我们致以深深的歉意。
    echo 按下任意键返回主菜单。
)
if "%lang%"=="2" (
    echo Sorry, but we have not support custom install yet. We are really sorry about it.
    echo Press any key to return to the main menu.
)
pause > nul
exit /b



