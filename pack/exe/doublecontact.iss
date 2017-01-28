; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "DoubleContact"
#define MyAppVersion "0.1"
#define MyAppPublisher "DarkHobbit"
#define MyAppURL "https://github.com/DarkHobbit/doublecontact/"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{7F7DFA90-E881-4C7E-80AB-A0342789AB25}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
;AppPublisher={#MyAppPublisher}
;AppPublisherURL={#MyAppURL}
;AppSupportURL={#MyAppURL}
;AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\DarkHobbit\{#MyAppName}
DefaultGroupName=\DarkHobbit\{#MyAppName}
;AllowNoIcons=yes
;OutputBaseFilename=setup
;Compression=lzma
;SolidCompression=yes
LicenseFile=.\doc\COPYING

[Files]
Source: ".\doublecontact.exe"; DestDir: "{app}"; Flags: ignoreversion; Components: DoubleContact
Source: ".\contconv.exe"; DestDir: "{app}"; Flags: ignoreversion; Components: ContConv

Source: ".\iso639-1.utf8"; DestDir: "{app}"; Flags: ignoreversion; Components: Translations
Source: ".\doublecontact_en_GB.qm"; DestDir: "{app}"; Flags: ignoreversion; Components: Translations
Source: ".\doublecontact_ru_RU.qm"; DestDir: "{app}"; Flags: ignoreversion; Components: Translations

Source: ".\libgcc_s_dw2-1.dll"; DestDir: "{app}"; Flags: ignoreversion; Components: Libraries

Source: ".\doc\changelog"; DestDir: "{app}\doc"; Flags: ignoreversion; Components: Docs
Source: ".\doc\COPYING"; DestDir: "{app}\doc"; Flags: ignoreversion; Components: Docs
Source: ".\doc\manual.en.md"; DestDir: "{app}\doc"; Flags: ignoreversion; Components: Docs
Source: ".\doc\manual.rus.md"; DestDir: "{app}\doc"; Flags: ignoreversion; Components: Docs
Source: ".\doc\README.md"; DestDir: "{app}\doc"; Flags: ignoreversion; Components: Docs

[Icons]
;Name: "{group}\DoubleContact"; Filename: "{app}\udphub.exe"; WorkingDir: "{app}"; IconFilename: "{app}\udphub.exe"; IconIndex: 0; Components: Receiver\udphub
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"

[Components]
Name: "DoubleContact"; Description: "DoubleContact GUI program"; Types: full custom doublecontact
Name: "ContConv"; Description: "Console format convertor"; Types: full custom contconv
Name: "Docs"; Description: "Documentation"; Types: custom full doublecontact contconv; Flags: fixed
Name: "Translations"; Description: "Translation files"; Types: custom full doublecontact; Flags: fixed
Name: "Libraries"; Description: "Common libraries"; Types: custom full doublecontact contconv; Flags: fixed

[Types]
Name: "full"; Description: "Full"
Name: "custom"; Description: "Custom"; Flags: iscustom
Name: "doublecontact"; Description: "DoubleContact only"
Name: "contconv"; Description: "ContConv only"

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"
; Name: "ukrainian"; MessagesFile: "compiler:Languages\Ukrainian.isl"

[Dirs]
Name: "{app}"
