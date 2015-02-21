# opendisc-installer

One-Key Installer & updater for our OpenDisc version, using WinBatch.

# Build

There's no need to build the main program. But the batches need the stuffs below:

- md5sum.exe (gnuWin32)
- egrep.exe (gnuWin32)

And of course their dependencies:

- libiconv2.dll (though we don't need it)
- libintl3.dll
- pcre3.dll
- regex2.dll

All of them must be placed in directory "modules\". We don't bundle their source codes into ours.

# Structure
In `installer.bat`, we make all of the unnecessary procedures as modules and put them into directory "modules\". They are:

- init.bat (Initialize)
- chkfiles.bat (Check files' availability)
- cli.bat (Main interface)
- install-all.bat (All install script)
- install-custom.bat (Custom install script)
- about.bat (Show about information)
- error-handling.bat (Error handling)

# License

Licensed under DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE. You just DO WHAT THE FUCK YOU WANT TO.
