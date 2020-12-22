; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Git-Crypt for Windows"
#define MyAppVersion "0.6.0"
#define MyAppPublisher "SIL International"
#define MyAppExeName "git-crypt.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{5DB7741A-7D6A-4100-B8B6-7FC620383977}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
CreateAppDir=no
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputBaseFilename=Setup
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "C:\dev\msys64\home\{%USERNAME}\git-crypt\git-crypt.exe"; DestDir: "{win}"; Flags: ignoreversion
Source: "C:\dev\msys64\mingw64\bin\libcrypto-1_1-x64.dll"; DestDir: "{win}"; Flags: ignoreversion
Source: "C:\dev\msys64\mingw64\bin\libgcc_s_seh-1.dll"; DestDir: "{win}"; Flags: ignoreversion
Source: "C:\dev\msys64\mingw64\bin\libstdc++-6.dll"; DestDir: "{win}"; Flags: ignoreversion
Source: "C:\dev\msys64\mingw64\bin\libwinpthread-1.dll"; DestDir: "{win}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

