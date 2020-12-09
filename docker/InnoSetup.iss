[Icons]
Name: {group}\hydrus client; Filename: {app}\client.exe; WorkingDir: {app}; Tasks: programgroupicons
Name: {group}\hydrus server; Filename: {app}\server.exe; WorkingDir: {app}; Tasks: programgroupicons
Name: {group}\help; Filename: {app}\help\index.html; WorkingDir: {app}; Tasks: programgroupicons
Name: {group}\uninstall hydrus network; Filename: {uninstallexe}; WorkingDir: {app}; Tasks: programgroupicons; IconFilename: {app}\static\cross.ico
Name: {userdesktop}\hydrus client; Filename: {app}\client.exe; WorkingDir: {app}; Tasks: desktopicons
Name: {userdesktop}\hydrus server; Filename: {app}\server.exe; WorkingDir: {app}; Tasks: desktopicons
[Setup]
InternalCompressLevel=ultra64
OutputDir=dist
OutputBaseFilename=Hydrus Network - Windows - Installer
Compression=lzma/ultra64
AppName=Hydrus Network
AppVerName=Hydrus Network
DefaultDirName={sd}\Hydrus Network
DefaultGroupName=Hydrus Network
DisableProgramGroupPage=yes
DisableReadyPage=yes
DisableDirPage=no
ShowLanguageDialog=no
SetupIconFile=hydrus\static\hydrus.ico
Uninstallable=IsComponentSelected('install')
UninstallDisplayIcon={app}\static\hydrus.ico
[Tasks]
Name: desktopicons; Description: Create desktop icons; Flags: unchecked; Components: install
Name: programgroupicons; Description: Create program group icons; Components: install
[Messages]
SelectDirBrowseLabel=To continue, click Next. If you would like to select a different folder, click Browse. Databases will be created beneath the install dir, so make sure the hard drive has enough spare space for your purposes and your user has permission to write there! If you install to program files, you'll need to run the programs as administrator!
[Components]
Name: install; Description: Install; Types: install; Flags: fixed
[Types]
Name: install; Description: Install
Name: extract; Description: Extract only
[Run]
Filename: {app}\help\index.html; Description: Open help/getting started guide (highly recommended for new users); Flags: postinstall unchecked shellexec
Filename: {app}\client.exe; Description: Open the client; Flags: postinstall nowait unchecked
[Files]
Source: dist\Hydrus Network\* ; DestDir: {app}; Flags: ignoreversion recursesubdirs createallsubdirs