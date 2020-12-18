# git-crypt-for-windows

`git-crypt-for-windows` contains
 * instructions for building [AQWA/git-crypt](https://github.com/AGWA/git-crypt) for Windows 10; and
 * an installer package that:
   - installs `git-crypt.exe`;
   - installs the required DLLs for `git-crypt.exe`; and
   - adds the installation directory to the system Path.

## Requirements
  - `git` client for windows

## Building `git-crypt` for Windows

To build `git-crypt.exe`:
  1. Download the `msys2` installer from [http://www.msys2.org/](http://www.msys2.org/).
  2. Follow the instructions on the download page for installing `msys2`; install `msys2` in `C:\dev\msys64` (_Not_ the folder in the screenshot).  This is will be consistent with the instructions for installing `g++` and for building the installation package.
  3. Open an `msys2` window.
  4. Install `g++` for windows using the instructions at [Installing GCC & MSYS2](https://github.com/orlp/dev-on-windows/wiki/Installing-GCC--&-MSYS2).
  5. Verify that `g++` and `git` are in your Path.
  6. `git clone git@github.com:AGWA/git-crypt`
  7. `make`

At this point, you will have a working copy of `git-crypt.exe` in the `git-crypt`
directory.

## Building the Windows Installer Package
... stay tuned.

Notes:

Required DLLs:
 * libcrypto-1_1-x64.dll
 * libgcc_s_seh-1.dll
 * libstdc++-6.dll
