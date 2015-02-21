:: OpenDisc online updater & installer
:: Copyleft 2014-2015 Junde Yi.
::
:: This program is licensed under WTFPL; you can DO WHAT THE FUCK YOU WANT TO, as you please.


:: All procedures' prototype:
:: - (MAIN)
::     - procedure_failure   %error_procedure% %return_code%
::     - normal_error        %error_procedure% %processing_what%
::     - file_not_found      %error_procedure% %which_file%
::
:: - _err_procedure_failed   %error_procedure% %return_code%
:: - _err_normal             %error_procedure% %processing_what%
:: - _err_file_not_found     %error_procedure% %which_file%


@echo off

if "%~1"=="procedure_failure" call :_err_procedure_failed %2 %3
if "%~1"=="normal_error" call :_err_normal %2 %3
if "%~1"=="file_not_found" call :_err_file_not_found %2 %3





:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: Procedures
:_err_procedure_failed
if "%lang%"=="1" echo *** 错误：过程 %~1 遇到错误 (%2)。中止。
if "%lang%"=="2" echo *** ERROR: Failed in procedure: %~1 (%2). Abort.
pause
exit 1

:_err_normal
if "%lang%"=="1" echo *** 错误：处理 %~1 时遇到错误 %2 。中止。
if "%lang%"=="2" echo *** ERROR: Exception %2 was thrown while processing %~1. Abort.
pause
exit 1

:_err_file_not_found
if "%lang%"=="1" echo *** 错误：处理 %~1 时找不到文件 %~2 。中止。
if "%lang%"=="2" echo *** ERROR: Cannot found %~2 while processing %~1. Abort.
pause
exit 2

