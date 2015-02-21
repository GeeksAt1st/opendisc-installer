:: OpenDisc online updater & installer
:: Copyleft 2014-2015 Junde Yi.
::
:: This program is licensed under WTFPL; you can DO WHAT THE FUCK YOU WANT TO, as you please.


@echo off
setlocal enabledelayedexpansion

call :_list_stuffs
if %errorlevel% equ 1 call :_begin_install
if %errorlevel% equ 2 exit /b 0 & REM Fall back to main.bat and goto :loop. _begin_install won't have such errorlevel.

setlocal disabledelayedexpansion
exit /b



:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: Procedures
:_list_stuffs
cls
if "%lang%"=="1" (
    echo 注意：以下软件包将被安装：
    echo  ===================================================================================
    dir /b | modules\egrep.exe -i "exe|msi"
    echo  ===================================================================================
    echo 按下 [回车] 键后，本程序将逐个、不间断地为您执行每个软件的安装程序。
    echo 您可能需要手动点击与等待每个程序的安装，不能中断。确定吗？
    echo 键入 y 开始安装，否则请键入 n 回到主界面。
    set /p begin=→
)
if "%lang%"=="2" (
    echo Warning: Packages below will be installed:
    echo  ===================================================================================
    dir /b | modules\egrep.exe -i "exe|msi"
    echo  ===================================================================================
    echo After pressing [ENTER], installers will be executed continuously.
    echo You may not break this procedure. Sure?
    echo Input "y" to begin, or input "n" to return to the main interface.
    set /p begin=→
)

if /i "!begin!"=="y" exit /b 1
if /i "!begin!"=="n" exit /b 2
set begin=
goto _list_stuffs


:_begin_install
if "%lang%"=="1" echo 按下任意键继续下一个安装包安装。
if "%lang%"=="2" echo Press any key to continue.
for /f "usebackq" %%i in (`dir /b ^| modules\egrep.exe -i "exe"`) do start %%i && pause > nul
exit /b

