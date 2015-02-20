:: OpenDisc online updater & installer
:: Copyleft 2014-2015 Junde Yi.
::
:: This program is licensed under WTFPL; you can DO WHAT THE FUCK YOU WANT TO, as you please.


:: All variables used:
:: - Nope.
::
:: All procedures' prototype:
:: - Nope.


@echo off

if not exist "checksums.md5" call modules\error_handling.bat "file_not_found" %0 checksums.md5
if not exist "modules\md5sum.exe" call modules\error_handling.bat "file_not_found" %0 modules\md5sum.exe

:: Invoke md5sum.exe to verify them
call modules\md5sum.exe -c checksums.md5
if not %errorlevel% equ 0 call modules\error_handling.bat "procedure_failure" %0 %errorlevel%

exit /b 0

