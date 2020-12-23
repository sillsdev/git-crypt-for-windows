@echo off

REM Set HOME to the current directory so that it is the current directory for the
REM msys2 shell
set HOME=.
IF NOT EXIST Installer mkdir Installer
c:\dev\msys64\usr\bin\env MSYSTEM=MINGW64 c:\dev\msys64\usr\bin\bash -l -c "chmod +x msys2-build.sh ; ./msys2-build.sh"

REM Create the installer package
setlocal
set Path=%PATH%;"C:\Program Files (x86)\Inno Setup 6"

iscc.exe .\git-crypt-setup.iss
