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
echo  =====================������ ��ӭʹ�� OpenDisc ��װ���� ������======================
echo.
echo ���������������ɵذ�װ OpenDisc ���������
echo.
echo.
echo * Ҫ���Ͽ�ʼ��װ����ֱ���û� �س� ����
echo * Ҫ�Զ��尲װ������� c Ȼ���û� �س� ����
echo * ���ڱ���������� a Ȼ���û� �س� ����
echo * �˳������������ e Ȼ���û� �س� ����
echo.
set /p choice=ѡ��һ��ѡ�

if "%choice%"==""  exit /b 1
if "%choice%"=="c" exit /b 2
if "%choice%"=="a" exit /b 3
if "%choice%"=="e" exit /b 4
set choice=
pause
goto _show_interface_and_judge

