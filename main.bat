:: OpenDisc on-line updater & installer
:: Copyleft 2014-2015 Junde Yi.
::
:: This program is licensed under WTFPL; you can DO WHAT THE FUCK YOU WANT TO, as you please.


:: All variables used:
:: - Nope.
::
:: All procedures' prototype:
:: - _check_valid
:: - _err_file_not_found %which_file%

:: Return codes:
:: - 0: Success
:: - 1: General error
:: - 2: File not found error


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
goto loop

pause
exit /b 0





:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: Procedures
:_check_valid
if not exist modules call :_err_file_not_found "modules\"
if not exist modules\error_handling.bat call :_err_file_not_found "modules\error_handling.bat"
if not exist modules\init.bat call :_err_file_not_found "modules\init.bat"
if not exist modules\chkfiles.bat call :_err_file_not_found "modules\chkfiles.bat"
goto :EOF

:_err_file_not_found
echo *** 错误：致命错误：模块或文件 %~1 未找到。中止。
echo *** ERROR : Fatal: Module or file %~1 not found. Abort.
pause
exit 2
