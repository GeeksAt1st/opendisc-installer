:: OpenDisc online updater & installer
:: Copyleft 2014-2015 Junde Yi.
::
:: This program is licensed under WTFPL; you can DO WHAT THE FUCK YOU WANT TO, as you please.


@echo off

:_show_interface_and_judge
cls
set choice=
if "%lang%"=="1" (
    echo  =====================������ ��ӭʹ�� OpenDisc ��װ���� ������======================
    echo.
    echo ���������������ɵذ�װ OpenDisc ���������
    echo.
    echo.
    echo * Ҫ���Ͽ�ʼ��װ����ֱ���û� �س� ����
    echo.
    echo * Ҫ�Զ��尲װ������� c Ȼ���û� �س� ����
    echo.
    echo * ���ڱ���������� a Ȼ���û� �س� ����
    echo.
    echo * �˳������������ e Ȼ���û� �س� ����
    echo.
    echo.
    set /p choice=ѡ��һ��ѡ�
)
if "%lang%"=="2" (
    echo  ==============================������ Welcome! ������===============================
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

