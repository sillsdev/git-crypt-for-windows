# git-crypt-for-windows

`git-crypt-for-windows` contains
 * instructions for building [AQWA/git-crypt](https://github.com/AGWA/git-crypt) for Windows 10; and
 * an installer package that:
   - installs `git-crypt.exe`;
   - installs the required DLLs for `git-crypt.exe`; and
   - adds the installation directory to the system Path.

## Requirements
  - `git` client for windows
  - [Inno Setup 6](https://jrsoftware.org/isdl.php)

## Assumptions
  1. The build script assumes that the installation folder for _Inno Setup_ is
     `C:\Program Files (x86)\Inno Setup 6`
  2. The `git` client is intalled in `C:\Program Files\Git` and that `git-crypt.exe`
     should be installed in `C:\Program Files\Git\cmd`.  This is the default location
     that is used by the installer and can be changed by the user.

## Pre-built Installer
A pre-built installer is available in this repo at [Installer/git-crypt-setup.exe](Installer/git-crypt-setup.exe)

## Building `git-crypt` for Windows

To build `git-crypt.exe`:
  1. Install `msys2` and `g++` for windows using the instructions at
     [Installing GCC & MSYS2](https://github.com/orlp/dev-on-windows/wiki/Installing-GCC--&-MSYS2).
  2. Verify that `g++` and `git` are in your Path.
  3. Run `.\build.bat`

At this point, you will have a working copy of `git-crypt.exe` in the `git-crypt`
directory and an installer package in `.\Installer\git-crypt-setup.exe`.
