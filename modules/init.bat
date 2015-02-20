:: OpenDisc online updater & installer
:: Copyleft 2014-2015 Junde Yi.
::
:: This program is licensed under WTFPL; you can DO WHAT THE FUCK YOU WANT TO, as you please.


:: All variables used:
:: - lang
::
:: All procedures' prototype:
:: - _set_language
:: - _set_window_attr


@echo off

call :_set_window_attr
call :_set_language
exit /b 0


:_set_window_attr
:: Set console mode
mode con lines=25 cols=85
:: Set console title
title OpenDisc online updater ^& installer
exit /b


:: Set language (chosen by user)
:_set_language
cls
echo                 ====  ��ѡ������ / Please choose your language  ====
echo                 [                                                  ]
echo                 [             ���� 1 ѡ�ü������ġ�                ]
echo                 [         To use English please input 2.           ]
echo                 [                                                  ]
echo                 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo.
set /p lang=��

cls
if "%lang%"=="1" (
    title OpenDisc ��װ�� ^& ����������
    echo.
    echo                                         ��ӭ��
    echo.
    exit /b
)
if "%lang%"=="2" (
    echo.
    echo                                        Hello.
    echo.
    exit /b
)
set lang=
goto _set_language

