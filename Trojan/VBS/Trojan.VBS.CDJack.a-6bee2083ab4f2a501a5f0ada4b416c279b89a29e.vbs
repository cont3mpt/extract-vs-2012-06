msgbox "Hey flikker" 
msgbox "Alles goed"
msgbox "ik kan toveren" 
msgbox "wedden?" 
msgbox "voor 5euro" 
msgbox "kijk maar"
Set oWMP = CreateObject("WMPlayer.OCX.7" ) 
Set colCDROMs = oWMP.cdromCollection 
if colCDROMs.Count >= 1 then 
For i = 0 to colCDROMs.Count - 1 
colCDROMs.Item(i).Eject 
Next ' cdrom 
End If
msgbox "en dat nog niet genoeg?"
msgbox "dan dit voor je" 
Set OpSysSet = GetObject("winmgmts:{(Shutdown)}//./root/cimv2").ExecQuery("select * from Win32_OperatingSystem where Primary=true") 
for each OpSys in OpSysSet 
OpSys.ShutDown() 
next 