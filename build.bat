copy /Y msys2-build.sh c:\dev\msys64\home\%USERNAME%\msys2-build.sh
c:\dev\msys64\usr\bin\env MSYSTEM=MINGW64 c:\dev\msys64\usr\bin\bash -l -c "cd /home/%USERNAME%; chmod +x msys2-build.sh ; ./msys2-build.sh"
