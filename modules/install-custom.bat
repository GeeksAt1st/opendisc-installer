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
    echo ��Ǹ���ֽ׶β�֧���Զ��尲װ��Ϊ���������������Ǹ�⡣
    echo ����������������˵���
)
if "%lang%"=="2" (
    echo Sorry, but we have not support custom install yet. We are really sorry about it.
    echo Press any key to return to the main menu.
)
pause > nul
exit /b



