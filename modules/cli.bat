:: OpenDisc online updater & installer
:: Copyleft 2014-2015 Junde Yi.
::
:: This program is licensed under WTFPL; you can DO WHAT THE FUCK YOU WANT TO, as you please.


@echo off

:_show_interface_and_judge
cls
set choice=
if "%lang%"=="1" (
    echo  =====================＞＞＞ 欢迎使用 OpenDisc 安装程序 ＜＜＜======================
    echo.
    echo 本程序将引导您轻松地安装 OpenDisc 所有软件。
    echo.
    echo.
    echo * 要马上开始安装，请直接敲击 回车 键；
    echo.
    echo * 要自定义安装，请键入 c 然后敲击 回车 键；
    echo.
    echo * 关于本程序，请键入 a 然后敲击 回车 键；
    echo.
    echo * 退出本程序，请键入 e 然后敲击 回车 键。
    echo.
    echo.
    set /p choice=选择一个选项：
)
if "%lang%"=="2" (
    echo  ==============================＞＞＞ Welcome! ＜＜＜===============================
    echo.
    echo This program will guide you to complete the processess of installing all of the
    echo software in OpenDisc easily.
    echo.
    echo.
    echo * To start installation, please hit [ENTER];
    echo.
    echo * To start custom installation, please input "c" and hit [ENTER];
    echo.
    echo * To view the about information, please input "a" and hit [ENTER];
    echo.
    echo * If you want to quit, please input "e" and hit [ENTER];
    echo.
    echo.
    set /p choice=Please make a choice:
)

if /i "%choice%"==""  exit /b 1
if /i "%choice%"=="c" exit /b 2
if /i "%choice%"=="a" exit /b 3
if /i "%choice%"=="e" exit /b 4
goto _show_interface_and_judge

