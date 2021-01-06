# git-crypt-for-windows

`git-crypt-for-windows` contains
 * instructions for building [AQWA/git-crypt](https://github.com/AGWA/git-crypt) for Windows 10; and
 * an installer package that:
   - installs `git-crypt.exe`;
   - installs the required DLLs for `git-crypt.exe`.

## Requirements
  - `git` client for Windows, such as the package from [git-scm.com](https://git-scm.com/download/win)
  - `gpg` tool for Windows.  `gpg` is installed as part of the `git` client above.
    If it is not installed on your system, you can download it from [GnuPG](https://gnupg.org/).
  - [Inno Setup 6](https://jrsoftware.org/isdl.php)

## `git-crypt` Installer
A pre-built installer is available in the releases section of this repository.

## Building `git-crypt` for Windows

To build `git-crypt.exe`:
  1. Install `msys2` and `g++` for windows using the instructions at
     [Installing GCC & MSYS2](https://github.com/orlp/dev-on-windows/wiki/Installing-GCC--&-MSYS2).
     This instructions direct you to install MSYS2 in `C:\dev\msys64`.  You may
     install it in any directory that you choose.
  2. Open the `System` app and create an environment variable, `MSYS2_DIR`, set
     to the value of the MSYS2 installation directory.
  3. Verify that `g++` and `git` are in your Path.
  4. Run `.\build.bat`

At this point, you will have a working copy of `git-crypt.exe` in the `git-crypt`
directory and an installer package in `.\Installer\git-crypt-setup.exe`.

## Assumptions
  1. The build script assumes that the installation folder for _Inno Setup_ is
     `C:\Program Files (x86)\Inno Setup 6`
  2. The `git` client is intalled in `C:\Program Files\Git` and that `git-crypt.exe`
     should be installed in `C:\Program Files\Git\cmd`.  This is the default location
     that is used by the installer and can be changed by the user.
