:: OpenDisc online updater & installer
:: Copyleft 2014-2015 Junde Yi.
::
:: This program is licensed under WTFPL; you can DO WHAT THE FUCK YOU WANT TO, as you please.


:: All variables used:
:: - choice
::
:: All procedures' prototype:
:: - _show_interface_and_judge


@echo off

:_show_interface_and_judge
echo  =====================＞＞＞ 欢迎使用 OpenDisc 安装程序 ＜＜＜======================
echo.
echo 本程序将引导您轻松地安装 OpenDisc 所有软件。
echo.
echo.
echo * 要马上开始安装，请直接敲击 回车 键；
echo * 要自定义安装，请键入 c 然后敲击 回车 键；
echo * 关于本程序，请键入 a 然后敲击 回车 键；
echo * 退出本程序，请键入 e 然后敲击 回车 键。
echo.
set /p choice=选择一个选项：

if "%choice%"==""  exit /b 1
if "%choice%"=="c" exit /b 2
if "%choice%"=="a" exit /b 3
if "%choice%"=="e" exit /b 4
set choice=
pause
goto _show_interface_and_judge

