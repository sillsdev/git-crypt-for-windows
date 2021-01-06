@echo off

REM Set HOME to the current directory so that it is the current directory for the
REM msys2 shell
setlocal
set HOME=.
IF NOT DEFINED MSYS2_DIR set /p MSYS2_DIR="Enter the folder for the MSYS2 installation (C:\dev\msys64):"
IF NOT DEFINED MSYS2_DIR set MSYS2_DIR=C:\dev\msys64
IF NOT EXIST Installer mkdir Installer
%MSYS2_DIR%\usr\bin\env MSYSTEM=MINGW64 %MSYS2_DIR%\usr\bin\bash -l -c "chmod +x msys2-build.sh ; ./msys2-build.sh"

REM Create the installer package
set Path=%PATH%;"C:\Program Files (x86)\Inno Setup 6"

iscc.exe .\git-crypt-setup.iss

endlocal
