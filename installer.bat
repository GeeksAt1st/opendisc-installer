:: OpenDisc on-line updater & installer
:: Copyleft 2014-2015 Junde Yi.
::
:: This program is licensed under WTFPL; you can DO WHAT THE FUCK YOU WANT TO, as you please.


@echo off

:: First check if modules are valid. If not, abort.
call :_check_valid

:: Initialize the program, including window attributes, languages, and so on.
call modules\init.bat
:: Check the files' avaliability.
call modules\chkfiles.bat
:loop
:: Show main dialogue
call modules\cli.bat
if %errorlevel% equ 1 call modules\install-all.bat
if %errorlevel% equ 2 call modules\install-custom.bat
if %errorlevel% equ 3 call modules\about.bat
if %errorlevel% equ 4 exit 0
goto loop





:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: Procedures
:_check_valid
:: FIXME: Using "for" loop may be tidier here.
if not exist modules call :_err_file_not_found "modules\"
if not exist modules\error_handling.bat call :_err_file_not_found "modules\error_handling.bat"
if not exist modules\init.bat call :_err_file_not_found "modules\init.bat"
if not exist modules\chkfiles.bat call :_err_file_not_found "modules\chkfiles.bat"
if not exist modules\cli.bat call :_err_file_not_found "modules\cli.bat"
if not exist modules\install-all.bat call :_err_file_not_found "modules\install-all.bat"
if not exist modules\install-custom.bat call :_err_file_not_found "modules\install-custom.bat"
if not exist modules\about.bat call :_err_file_not_found "modules\about.bat"
exit /b

:_err_file_not_found
echo *** ������������ģ����ļ� %~1 δ�ҵ�����ֹ��
echo *** ERROR : Fatal: Module or file %~1 not found. Abort.
pause
exit 2
